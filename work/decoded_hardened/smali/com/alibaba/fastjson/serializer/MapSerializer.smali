.class public Lcom/alibaba/fastjson/serializer/MapSerializer;
.super Lcom/alibaba/fastjson/serializer/SerializeFilterable;
.source "MapSerializer.java"

# interfaces
.implements Lcom/alibaba/fastjson/serializer/ObjectSerializer;


# static fields
.field public static instance:Lcom/alibaba/fastjson/serializer/MapSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 33
    new-instance v0, Lcom/alibaba/fastjson/serializer/MapSerializer;

    invoke-direct {v0}, Lcom/alibaba/fastjson/serializer/MapSerializer;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/serializer/MapSerializer;->instance:Lcom/alibaba/fastjson/serializer/MapSerializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/alibaba/fastjson/serializer/SerializeFilterable;-><init>()V

    return-void
.end method


# virtual methods
.method public write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    .locals 34
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
    .line 37
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->out:Lcom/alibaba/fastjson/serializer/SerializeWriter;

    move-object/from16 v25, v0

    .line 39
    .local v25, "out":Lcom/alibaba/fastjson/serializer/SerializeWriter;
    if-nez p2, :cond_0

    .line 40
    invoke-virtual/range {v25 .. v25}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V

    .line 209
    :goto_0
    return-void

    :cond_0
    move-object/from16 v22, p2

    .line 44
    check-cast v22, Ljava/util/Map;

    .line 56
    .local v22, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-virtual/range {p1 .. p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->containsReference(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 57
    invoke-virtual/range {p1 .. p2}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->writeReference(Ljava/lang/Object;)V

    goto :goto_0

    .line 61
    :cond_1
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    move-object/from16 v26, v0

    .line 62
    .local v26, "parent":Lcom/alibaba/fastjson/serializer/SerialContext;
    const/4 v4, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->setContext(Lcom/alibaba/fastjson/serializer/SerialContext;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 64
    const/16 v4, 0x7b

    :try_start_0
    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 66
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->incrementIndent()V

    .line 68
    const/16 v27, 0x0

    .line 69
    .local v27, "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v10, 0x0

    .line 71
    .local v10, "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    const/16 v20, 0x1

    .line 73
    .local v20, "first":Z
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteClassName:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 74
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->config:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    iget-object v0, v4, Lcom/alibaba/fastjson/serializer/SerializeConfig;->typeKey:Ljava/lang/String;

    move-object/from16 v31, v0

    .line 75
    .local v31, "typeKey":Ljava/lang/String;
    invoke-virtual/range {v22 .. v22}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v23

    .line 76
    .local v23, "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v4, Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v0, v23

    if-eq v0, v4, :cond_2

    const-class v4, Ljava/util/HashMap;

    move-object/from16 v0, v23

    if-eq v0, v4, :cond_2

    const-class v4, Ljava/util/LinkedHashMap;

    move-object/from16 v0, v23

    if-ne v0, v4, :cond_12

    .line 77
    :cond_2
    move-object/from16 v0, v22

    move-object/from16 v1, v31

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    const/16 v17, 0x1

    .line 78
    .local v17, "containsKey":Z
    :goto_1
    if-nez v17, :cond_3

    .line 79
    move-object/from16 v0, v25

    move-object/from16 v1, v31

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;)V

    .line 80
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeString(Ljava/lang/String;)V

    .line 81
    const/16 v20, 0x0

    .line 85
    .end local v17    # "containsKey":Z
    .end local v23    # "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v31    # "typeKey":Ljava/lang/String;
    :cond_3
    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v33

    :cond_4
    :goto_2
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21

    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Ljava/util/Map$Entry;

    .line 86
    .local v19, "entry":Ljava/util/Map$Entry;
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    .line 88
    .local v9, "value":Ljava/lang/Object;
    invoke-interface/range {v19 .. v19}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    .line 91
    .local v13, "entryKey":Ljava/lang/Object;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->propertyPreFilters:Ljava/util/List;

    move-object/from16 v28, v0

    .line 92
    .local v28, "preFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    if-eqz v28, :cond_6

    invoke-interface/range {v28 .. v28}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_6

    .line 93
    if-eqz v13, :cond_5

    instance-of v4, v13, Ljava/lang/String;

    if-eqz v4, :cond_13

    .line 94
    :cond_5
    move-object v0, v13

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4}, Lcom/alibaba/fastjson/serializer/MapSerializer;->applyName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 107
    :cond_6
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->propertyFilters:Ljava/util/List;

    move-object/from16 v29, v0

    .line 108
    .local v29, "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    if-eqz v29, :cond_8

    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_8

    .line 109
    if-eqz v13, :cond_7

    instance-of v4, v13, Ljava/lang/String;

    if-eqz v4, :cond_15

    .line 110
    :cond_7
    move-object v0, v13

    check-cast v0, Ljava/lang/String;

    move-object v4, v0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4, v9}, Lcom/alibaba/fastjson/serializer/MapSerializer;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 123
    :cond_8
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->nameFilters:Ljava/util/List;

    move-object/from16 v24, v0

    .line 124
    .local v24, "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    if-eqz v24, :cond_a

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_a

    .line 125
    if-eqz v13, :cond_9

    instance-of v4, v13, Ljava/lang/String;

    if-eqz v4, :cond_17

    .line 126
    :cond_9
    check-cast v13, Ljava/lang/String;

    .end local v13    # "entryKey":Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v13, v9}, Lcom/alibaba/fastjson/serializer/MapSerializer;->processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 135
    :cond_a
    :goto_3
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->valueFilters:Ljava/util/List;

    move-object/from16 v32, v0

    .line 136
    .local v32, "valueFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/ValueFilter;>;"
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/alibaba/fastjson/serializer/JSONSerializer;->contextValueFilters:Ljava/util/List;

    move-object/from16 v18, v0

    .line 137
    .local v18, "contextValueFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/ContextValueFilter;>;"
    if-eqz v32, :cond_b

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->size()I

    move-result v4

    if-gtz v4, :cond_c

    :cond_b
    if-eqz v18, :cond_e

    .line 138
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_e

    .line 139
    :cond_c
    if-eqz v13, :cond_d

    instance-of v4, v13, Ljava/lang/String;

    if-eqz v4, :cond_19

    .line 140
    :cond_d
    const/4 v6, 0x0

    move-object v0, v13

    check-cast v0, Ljava/lang/String;

    move-object v8, v0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/fastjson/serializer/MapSerializer;->processValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Lcom/alibaba/fastjson/serializer/BeanContext;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .line 148
    :cond_e
    :goto_4
    if-nez v9, :cond_f

    .line 149
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteMapNullValue:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 154
    :cond_f
    instance-of v4, v13, Ljava/lang/String;

    if-eqz v4, :cond_1b

    .line 155
    move-object v0, v13

    check-cast v0, Ljava/lang/String;

    move-object/from16 v21, v0

    .line 157
    .local v21, "key":Ljava/lang/String;
    if-nez v20, :cond_10

    .line 158
    const/16 v4, 0x2c

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 161
    :cond_10
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 162
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 164
    :cond_11
    const/4 v4, 0x1

    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-virtual {v0, v1, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeFieldName(Ljava/lang/String;Z)V

    .line 182
    .end local v21    # "key":Ljava/lang/String;
    :goto_5
    const/16 v20, 0x0

    .line 184
    if-nez v9, :cond_1f

    .line 185
    invoke-virtual/range {v25 .. v25}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->writeNull()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    .line 201
    .end local v9    # "value":Ljava/lang/Object;
    .end local v10    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .end local v18    # "contextValueFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/ContextValueFilter;>;"
    .end local v19    # "entry":Ljava/util/Map$Entry;
    .end local v20    # "first":Z
    .end local v24    # "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    .end local v27    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v28    # "preFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    .end local v29    # "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    .end local v32    # "valueFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/ValueFilter;>;"
    :catchall_0
    move-exception v4

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    throw v4

    .line 77
    .restart local v10    # "preWriter":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    .restart local v20    # "first":Z
    .restart local v23    # "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v27    # "preClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v31    # "typeKey":Ljava/lang/String;
    :cond_12
    const/16 v17, 0x0

    goto/16 :goto_1

    .line 97
    .end local v23    # "mapClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v31    # "typeKey":Ljava/lang/String;
    .restart local v9    # "value":Ljava/lang/Object;
    .restart local v13    # "entryKey":Ljava/lang/Object;
    .restart local v19    # "entry":Ljava/util/Map$Entry;
    .restart local v28    # "preFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    :cond_13
    :try_start_1
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-nez v4, :cond_14

    instance-of v4, v13, Ljava/lang/Number;

    if-eqz v4, :cond_6

    .line 98
    :cond_14
    invoke-static {v13}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 99
    .local v8, "strKey":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v8}, Lcom/alibaba/fastjson/serializer/MapSerializer;->applyName(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    goto/16 :goto_2

    .line 113
    .end local v8    # "strKey":Ljava/lang/String;
    .restart local v29    # "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    :cond_15
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-nez v4, :cond_16

    instance-of v4, v13, Ljava/lang/Number;

    if-eqz v4, :cond_8

    .line 114
    :cond_16
    invoke-static {v13}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 115
    .restart local v8    # "strKey":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v8, v9}, Lcom/alibaba/fastjson/serializer/MapSerializer;->apply(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    goto/16 :goto_2

    .line 127
    .end local v8    # "strKey":Ljava/lang/String;
    .restart local v24    # "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    :cond_17
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-nez v4, :cond_18

    instance-of v4, v13, Ljava/lang/Number;

    if-eqz v4, :cond_a

    .line 128
    :cond_18
    invoke-static {v13}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 129
    .restart local v8    # "strKey":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v8, v9}, Lcom/alibaba/fastjson/serializer/MapSerializer;->processKey(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .local v13, "entryKey":Ljava/lang/String;
    goto/16 :goto_3

    .line 141
    .end local v8    # "strKey":Ljava/lang/String;
    .end local v13    # "entryKey":Ljava/lang/String;
    .restart local v18    # "contextValueFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/ContextValueFilter;>;"
    .restart local v32    # "valueFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/ValueFilter;>;"
    :cond_19
    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isPrimitive()Z

    move-result v4

    if-nez v4, :cond_1a

    instance-of v4, v13, Ljava/lang/Number;

    if-eqz v4, :cond_e

    .line 142
    :cond_1a
    invoke-static {v13}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 143
    .restart local v8    # "strKey":Ljava/lang/String;
    const/4 v6, 0x0

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v7, p2

    invoke-virtual/range {v4 .. v9}, Lcom/alibaba/fastjson/serializer/MapSerializer;->processValue(Lcom/alibaba/fastjson/serializer/JSONSerializer;Lcom/alibaba/fastjson/serializer/BeanContext;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    goto/16 :goto_4

    .line 166
    .end local v8    # "strKey":Ljava/lang/String;
    :cond_1b
    if-nez v20, :cond_1c

    .line 167
    const/16 v4, 0x2c

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    .line 170
    :cond_1c
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserCompatible:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-nez v4, :cond_1d

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->WriteNonStringKeyAsString:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 171
    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-nez v4, :cond_1d

    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->BrowserSecure:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    .line 172
    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-eqz v4, :cond_1e

    .line 173
    :cond_1d
    invoke-static {v13}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v30

    .line 174
    .local v30, "strEntryKey":Ljava/lang/String;
    move-object/from16 v0, p1

    move-object/from16 v1, v30

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/String;)V

    .line 179
    .end local v30    # "strEntryKey":Ljava/lang/String;
    :goto_6
    const/16 v4, 0x3a

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_5

    .line 176
    :cond_1e
    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->write(Ljava/lang/Object;)V

    goto :goto_6

    .line 189
    :cond_1f
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    .line 191
    .local v16, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v0, v16

    move-object/from16 v1, v27

    if-ne v0, v1, :cond_20

    .line 192
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v11, p1

    move-object v12, v9

    invoke-interface/range {v10 .. v15}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V

    goto/16 :goto_2

    .line 194
    :cond_20
    move-object/from16 v27, v16

    .line 195
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v10

    .line 197
    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v11, p1

    move-object v12, v9

    invoke-interface/range {v10 .. v15}, Lcom/alibaba/fastjson/serializer/ObjectSerializer;->write(Lcom/alibaba/fastjson/serializer/JSONSerializer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_2

    .line 201
    .end local v9    # "value":Ljava/lang/Object;
    .end local v16    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v18    # "contextValueFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/ContextValueFilter;>;"
    .end local v19    # "entry":Ljava/util/Map$Entry;
    .end local v24    # "nameFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/NameFilter;>;"
    .end local v28    # "preFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyPreFilter;>;"
    .end local v29    # "propertyFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/PropertyFilter;>;"
    .end local v32    # "valueFilters":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/serializer/ValueFilter;>;"
    :cond_21
    move-object/from16 v0, v26

    move-object/from16 v1, p1

    iput-object v0, v1, Lcom/alibaba/fastjson/serializer/JSONSerializer;->context:Lcom/alibaba/fastjson/serializer/SerialContext;

    .line 204
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->decrementIdent()V

    .line 205
    sget-object v4, Lcom/alibaba/fastjson/serializer/SerializerFeature;->PrettyFormat:Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->isEnabled(Lcom/alibaba/fastjson/serializer/SerializerFeature;)Z

    move-result v4

    if-eqz v4, :cond_22

    invoke-interface/range {v22 .. v22}, Ljava/util/Map;->size()I

    move-result v4

    if-lez v4, :cond_22

    .line 206
    invoke-virtual/range {p1 .. p1}, Lcom/alibaba/fastjson/serializer/JSONSerializer;->println()V

    .line 208
    :cond_22
    const/16 v4, 0x7d

    move-object/from16 v0, v25

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeWriter;->write(I)V

    goto/16 :goto_0
.end method
