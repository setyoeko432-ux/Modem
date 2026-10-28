.class public Lcom/alibaba/fastjson/util/TypeUtils;
.super Ljava/lang/Object;
.source "TypeUtils.java"


# static fields
.field public static compatibleWithFieldName:Z

.field public static compatibleWithJavaBean:Z

.field private static mappings:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private static optionalClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static optionalClassInited:Z

.field private static oracleDateMethod:Ljava/lang/reflect/Method;

.field private static oracleDateMethodInited:Z

.field private static oracleTimestampMethod:Ljava/lang/reflect/Method;

.field private static oracleTimestampMethodInited:Z

.field private static pathClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static pathClass_error:Z

.field private static setAccessibleEnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 72
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    .line 75
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithFieldName:Z

    .line 77
    const/4 v0, 0x1

    sput-boolean v0, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessibleEnable:Z

    .line 79
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->oracleTimestampMethodInited:Z

    .line 82
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->oracleDateMethodInited:Z

    .line 85
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->optionalClassInited:Z

    .line 926
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    .line 929
    invoke-static {}, Lcom/alibaba/fastjson/util/TypeUtils;->addBaseClassMappings()V

    .line 964
    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->pathClass_error:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addBaseClassMappings()V
    .locals 3

    .prologue
    .line 933
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "byte"

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 934
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "short"

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 935
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "int"

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 936
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "long"

    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 937
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "float"

    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 938
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "double"

    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 939
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "boolean"

    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 940
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "char"

    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 942
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[byte"

    const-class v2, [B

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[short"

    const-class v2, [S

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 944
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[int"

    const-class v2, [I

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 945
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[long"

    const-class v2, [J

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 946
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[float"

    const-class v2, [F

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 947
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[double"

    const-class v2, [D

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 948
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[boolean"

    const-class v2, [Z

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 949
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-string v1, "[char"

    const-class v2, [C

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    const-class v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Ljava/util/HashMap;

    invoke-interface {v0, v1, v2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 952
    return-void
.end method

.method public static buildBeanInfo(Ljava/lang/Class;Ljava/util/Map;Lcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;
    .locals 14
    .param p2, "propertyNamingStrategy"    # Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            ")",
            "Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;"
        }
    .end annotation

    .prologue
    .line 1044
    .local p0, "beanType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "aliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-class v0, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 1047
    .local v1, "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1048
    .local v3, "fieldCacheMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    invoke-static {p0, v3}, Lcom/alibaba/fastjson/parser/ParserConfig;->parserAllFieldToCache(Ljava/lang/Class;Ljava/util/Map;)V

    .line 1050
    const/4 v4, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v5, p2

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/util/TypeUtils;->computeGetters(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/Map;Ljava/util/Map;ZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;

    move-result-object v11

    .line 1051
    .local v11, "fieldInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v0

    new-array v9, v0, [Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1052
    .local v9, "fields":[Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-interface {v11, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1054
    const/4 v12, 0x0

    .line 1057
    .local v12, "orders":[Ljava/lang/String;
    const/4 v7, 0x0

    .line 1058
    .local v7, "typeName":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 1059
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONType;->orders()[Ljava/lang/String;

    move-result-object v12

    .line 1060
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONType;->typeName()Ljava/lang/String;

    move-result-object v7

    .line 1061
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 1062
    const/4 v7, 0x0

    .line 1064
    :cond_0
    invoke-interface {v1}, Lcom/alibaba/fastjson/annotation/JSONType;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v8

    .line 1071
    .local v8, "features":I
    :goto_0
    if-eqz v12, :cond_3

    array-length v0, v12

    if-eqz v0, :cond_3

    .line 1072
    const/4 v4, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object/from16 v5, p2

    invoke-static/range {v0 .. v5}, Lcom/alibaba/fastjson/util/TypeUtils;->computeGetters(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/Map;Ljava/util/Map;ZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;

    move-result-object v13

    .line 1077
    .local v13, "sortedFieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    :goto_1
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    new-array v10, v0, [Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1078
    .local v10, "sortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    invoke-interface {v13, v10}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 1080
    invoke-static {v10, v9}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1081
    move-object v10, v9

    .line 1084
    :cond_1
    new-instance v4, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;

    move-object v5, p0

    move-object v6, v1

    invoke-direct/range {v4 .. v10}, Lcom/alibaba/fastjson/serializer/SerializeBeanInfo;-><init>(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/lang/String;I[Lcom/alibaba/fastjson/util/FieldInfo;[Lcom/alibaba/fastjson/util/FieldInfo;)V

    return-object v4

    .line 1066
    .end local v8    # "features":I
    .end local v10    # "sortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v13    # "sortedFieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    :cond_2
    const/4 v8, 0x0

    .restart local v8    # "features":I
    goto :goto_0

    .line 1074
    :cond_3
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1075
    .restart local v13    # "sortedFieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    invoke-static {v13}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    goto :goto_1
.end method

.method public static cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 13
    .param p0, "obj"    # Ljava/lang/Object;
    .param p2, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")TT;"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    .line 594
    if-nez p0, :cond_1

    move-object p0, v0

    .line 729
    .end local p0    # "obj":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object p0

    .line 598
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_1
    if-nez p1, :cond_2

    .line 599
    new-instance v10, Ljava/lang/IllegalArgumentException;

    const-string v11, "clazz is null"

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 602
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    if-eq p1, v10, :cond_0

    .line 606
    instance-of v10, p0, Ljava/util/Map;

    if-eqz v10, :cond_4

    .line 607
    const-class v10, Ljava/util/Map;

    if-eq p1, v10, :cond_0

    move-object v7, p0

    .line 611
    check-cast v7, Ljava/util/Map;

    .line 612
    .local v7, "map":Ljava/util/Map;
    const-class v10, Ljava/lang/Object;

    if-ne p1, v10, :cond_3

    sget-object v10, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    invoke-interface {v7, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 616
    :cond_3
    check-cast p0, Ljava/util/Map;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->castToJavaBean(Ljava/util/Map;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 619
    .end local v7    # "map":Ljava/util/Map;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 620
    instance-of v10, p0, Ljava/util/Collection;

    if-eqz v10, :cond_6

    move-object v2, p0

    .line 622
    check-cast v2, Ljava/util/Collection;

    .line 623
    .local v2, "collection":Ljava/util/Collection;
    const/4 v5, 0x0

    .line 624
    .local v5, "index":I
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v10

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v11

    invoke-static {v10, v11}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    .line 625
    .local v0, "array":Ljava/lang/Object;
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 626
    .local v6, "item":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v11

    invoke-static {v6, v11, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v9

    .line 627
    .local v9, "value":Ljava/lang/Object;
    invoke-static {v0, v5, v9}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 628
    add-int/lit8 v5, v5, 0x1

    .line 629
    goto :goto_1

    .end local v6    # "item":Ljava/lang/Object;
    .end local v9    # "value":Ljava/lang/Object;
    :cond_5
    move-object p0, v0

    .line 631
    goto :goto_0

    .line 634
    .end local v0    # "array":Ljava/lang/Object;
    .end local v2    # "collection":Ljava/util/Collection;
    .end local v5    # "index":I
    :cond_6
    const-class v10, [B

    if-ne p1, v10, :cond_7

    .line 635
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBytes(Ljava/lang/Object;)[B

    move-result-object p0

    goto :goto_0

    .line 639
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {p1, v10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 643
    sget-object v10, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p1, v10, :cond_8

    const-class v10, Ljava/lang/Boolean;

    if-ne p1, v10, :cond_9

    .line 644
    :cond_8
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;

    move-result-object p0

    goto/16 :goto_0

    .line 647
    :cond_9
    sget-object v10, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p1, v10, :cond_a

    const-class v10, Ljava/lang/Byte;

    if-ne p1, v10, :cond_b

    .line 648
    :cond_a
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToByte(Ljava/lang/Object;)Ljava/lang/Byte;

    move-result-object p0

    goto/16 :goto_0

    .line 655
    :cond_b
    sget-object v10, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p1, v10, :cond_c

    const-class v10, Ljava/lang/Short;

    if-ne p1, v10, :cond_d

    .line 656
    :cond_c
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToShort(Ljava/lang/Object;)Ljava/lang/Short;

    move-result-object p0

    goto/16 :goto_0

    .line 659
    :cond_d
    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p1, v10, :cond_e

    const-class v10, Ljava/lang/Integer;

    if-ne p1, v10, :cond_f

    .line 660
    :cond_e
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToInt(Ljava/lang/Object;)Ljava/lang/Integer;

    move-result-object p0

    goto/16 :goto_0

    .line 663
    :cond_f
    sget-object v10, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p1, v10, :cond_10

    const-class v10, Ljava/lang/Long;

    if-ne p1, v10, :cond_11

    .line 664
    :cond_10
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p0

    goto/16 :goto_0

    .line 667
    :cond_11
    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p1, v10, :cond_12

    const-class v10, Ljava/lang/Float;

    if-ne p1, v10, :cond_13

    .line 668
    :cond_12
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToFloat(Ljava/lang/Object;)Ljava/lang/Float;

    move-result-object p0

    goto/16 :goto_0

    .line 671
    :cond_13
    sget-object v10, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p1, v10, :cond_14

    const-class v10, Ljava/lang/Double;

    if-ne p1, v10, :cond_15

    .line 672
    :cond_14
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object p0

    goto/16 :goto_0

    .line 675
    :cond_15
    const-class v10, Ljava/lang/String;

    if-ne p1, v10, :cond_16

    .line 676
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_0

    .line 679
    :cond_16
    const-class v10, Ljava/math/BigDecimal;

    if-ne p1, v10, :cond_17

    .line 680
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;

    move-result-object p0

    goto/16 :goto_0

    .line 683
    :cond_17
    const-class v10, Ljava/math/BigInteger;

    if-ne p1, v10, :cond_18

    .line 684
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;

    move-result-object p0

    goto/16 :goto_0

    .line 687
    :cond_18
    const-class v10, Ljava/util/Date;

    if-ne p1, v10, :cond_19

    .line 688
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object p0

    goto/16 :goto_0

    .line 691
    :cond_19
    const-class v10, Ljava/sql/Date;

    if-ne p1, v10, :cond_1a

    .line 692
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToSqlDate(Ljava/lang/Object;)Ljava/sql/Date;

    move-result-object p0

    goto/16 :goto_0

    .line 695
    :cond_1a
    const-class v10, Ljava/sql/Timestamp;

    if-ne p1, v10, :cond_1b

    .line 696
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToTimestamp(Ljava/lang/Object;)Ljava/sql/Timestamp;

    move-result-object p0

    goto/16 :goto_0

    .line 699
    :cond_1b
    invoke-virtual {p1}, Ljava/lang/Class;->isEnum()Z

    move-result v10

    if-eqz v10, :cond_1c

    .line 700
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->castToEnum(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object p0

    goto/16 :goto_0

    .line 703
    :cond_1c
    const-class v10, Ljava/util/Calendar;

    invoke-virtual {v10, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v10

    if-eqz v10, :cond_1e

    .line 704
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->castToDate(Ljava/lang/Object;)Ljava/util/Date;

    move-result-object v3

    .line 706
    .local v3, "date":Ljava/util/Date;
    const-class v10, Ljava/util/Calendar;

    if-ne p1, v10, :cond_1d

    .line 707
    sget-object v10, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    sget-object v11, Lcom/alibaba/fastjson/JSON;->defaultLocale:Ljava/util/Locale;

    invoke-static {v10, v11}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    .line 715
    .local v1, "calendar":Ljava/util/Calendar;
    :goto_2
    invoke-virtual {v1, v3}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    move-object p0, v1

    .line 716
    goto/16 :goto_0

    .line 710
    .end local v1    # "calendar":Ljava/util/Calendar;
    :cond_1d
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Calendar;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v1    # "calendar":Ljava/util/Calendar;
    goto :goto_2

    .line 711
    .end local v1    # "calendar":Ljava/util/Calendar;
    :catch_0
    move-exception v4

    .line 712
    .local v4, "e":Ljava/lang/Exception;
    new-instance v10, Lcom/alibaba/fastjson/JSONException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "can not cast to : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v10

    .line 719
    .end local v3    # "date":Ljava/util/Date;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_1e
    instance-of v10, p0, Ljava/lang/String;

    if-eqz v10, :cond_21

    move-object v8, p0

    .line 720
    check-cast v8, Ljava/lang/String;

    .line 722
    .local v8, "strVal":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_1f

    const-string v10, "null"

    .line 723
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1f

    const-string v10, "NULL"

    .line 724
    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_20

    :cond_1f
    move-object p0, v0

    .line 725
    goto/16 :goto_0

    .line 728
    :cond_20
    const-class v10, Ljava/util/Currency;

    if-ne p1, v10, :cond_21

    .line 729
    invoke-static {v8}, Ljava/util/Currency;->getInstance(Ljava/lang/String;)Ljava/util/Currency;

    move-result-object p0

    goto/16 :goto_0

    .line 733
    .end local v8    # "strVal":Ljava/lang/String;
    :cond_21
    new-instance v10, Lcom/alibaba/fastjson/JSONException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "can not cast to : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v10
.end method

.method public static cast(Ljava/lang/Object;Ljava/lang/reflect/ParameterizedType;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 18
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "type"    # Ljava/lang/reflect/ParameterizedType;
    .param p2, "mapping"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/ParameterizedType;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 794
    invoke-interface/range {p1 .. p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v11

    .line 796
    .local v11, "rawTye":Ljava/lang/reflect/Type;
    const-class v15, Ljava/util/Set;

    if-eq v11, v15, :cond_0

    const-class v15, Ljava/util/HashSet;

    if-eq v11, v15, :cond_0

    const-class v15, Ljava/util/TreeSet;

    if-eq v11, v15, :cond_0

    const-class v15, Ljava/util/List;

    if-eq v11, v15, :cond_0

    const-class v15, Ljava/util/ArrayList;

    if-ne v11, v15, :cond_4

    .line 800
    :cond_0
    invoke-interface/range {p1 .. p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v15

    const/16 v16, 0x0

    aget-object v7, v15, v16

    .line 802
    .local v7, "itemType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    instance-of v15, v0, Ljava/lang/Iterable;

    if-eqz v15, :cond_4

    .line 804
    const-class v15, Ljava/util/Set;

    if-eq v11, v15, :cond_1

    const-class v15, Ljava/util/HashSet;

    if-ne v11, v15, :cond_2

    .line 805
    :cond_1
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 812
    .local v3, "collection":Ljava/util/Collection;
    :goto_0
    check-cast p0, Ljava/lang/Iterable;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-interface/range {p0 .. p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "it":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_7

    .line 813
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 814
    .local v6, "item":Ljava/lang/Object;
    move-object/from16 v0, p2

    invoke-static {v6, v7, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v15

    invoke-interface {v3, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 806
    .end local v3    # "collection":Ljava/util/Collection;
    .end local v5    # "it":Ljava/util/Iterator;
    .end local v6    # "item":Ljava/lang/Object;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_2
    const-class v15, Ljava/util/TreeSet;

    if-ne v11, v15, :cond_3

    .line 807
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    .restart local v3    # "collection":Ljava/util/Collection;
    goto :goto_0

    .line 809
    .end local v3    # "collection":Ljava/util/Collection;
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .restart local v3    # "collection":Ljava/util/Collection;
    goto :goto_0

    .line 821
    .end local v3    # "collection":Ljava/util/Collection;
    .end local v7    # "itemType":Ljava/lang/reflect/Type;
    :cond_4
    const-class v15, Ljava/util/Map;

    if-eq v11, v15, :cond_5

    const-class v15, Ljava/util/HashMap;

    if-ne v11, v15, :cond_8

    .line 822
    :cond_5
    invoke-interface/range {p1 .. p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v15

    const/16 v16, 0x0

    aget-object v9, v15, v16

    .line 823
    .local v9, "keyType":Ljava/lang/reflect/Type;
    invoke-interface/range {p1 .. p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v15

    const/16 v16, 0x1

    aget-object v14, v15, v16

    .line 825
    .local v14, "valueType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    instance-of v15, v0, Ljava/util/Map;

    if-eqz v15, :cond_8

    .line 826
    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    .line 828
    .local v10, "map":Ljava/util/Map;
    check-cast p0, Ljava/util/Map;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 829
    .local v4, "entry":Ljava/util/Map$Entry;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v0, v9, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v8

    .line 830
    .local v8, "key":Ljava/lang/Object;
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p2

    invoke-static {v0, v14, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v13

    .line 832
    .local v13, "value":Ljava/lang/Object;
    invoke-interface {v10, v8, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .end local v4    # "entry":Ljava/util/Map$Entry;
    .end local v8    # "key":Ljava/lang/Object;
    .end local v13    # "value":Ljava/lang/Object;
    :cond_6
    move-object v3, v10

    .line 849
    .end local v9    # "keyType":Ljava/lang/reflect/Type;
    .end local v10    # "map":Ljava/util/Map;
    .end local v14    # "valueType":Ljava/lang/reflect/Type;
    :cond_7
    :goto_3
    return-object v3

    .line 839
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_8
    move-object/from16 v0, p0

    instance-of v15, v0, Ljava/lang/String;

    if-eqz v15, :cond_9

    move-object/from16 v12, p0

    .line 840
    check-cast v12, Ljava/lang/String;

    .line 841
    .local v12, "strVal":Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v15

    if-nez v15, :cond_9

    .line 842
    const/4 v3, 0x0

    goto :goto_3

    .line 846
    .end local v12    # "strVal":Ljava/lang/String;
    :cond_9
    invoke-interface/range {p1 .. p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v15

    array-length v15, v15

    const/16 v16, 0x1

    move/from16 v0, v16

    if-ne v15, v0, :cond_a

    .line 847
    invoke-interface/range {p1 .. p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v15

    const/16 v16, 0x0

    aget-object v2, v15, v16

    .line 848
    .local v2, "argType":Ljava/lang/reflect/Type;
    instance-of v15, v2, Ljava/lang/reflect/WildcardType;

    if-eqz v15, :cond_a

    .line 849
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v11, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v3

    goto :goto_3

    .line 853
    .end local v2    # "argType":Ljava/lang/reflect/Type;
    :cond_a
    new-instance v15, Lcom/alibaba/fastjson/JSONException;

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "can not cast to : "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v15
.end method

.method public static cast(Ljava/lang/Object;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 4
    .param p0, "obj"    # Ljava/lang/Object;
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "mapping"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 764
    if-nez p0, :cond_1

    move-object p0, v1

    .line 786
    .end local p0    # "obj":Ljava/lang/Object;
    .end local p1    # "type":Ljava/lang/reflect/Type;
    :cond_0
    :goto_0
    return-object p0

    .line 768
    .restart local p0    # "obj":Ljava/lang/Object;
    .restart local p1    # "type":Ljava/lang/reflect/Type;
    :cond_1
    instance-of v2, p1, Ljava/lang/Class;

    if-eqz v2, :cond_2

    .line 769
    check-cast p1, Ljava/lang/Class;

    .end local p1    # "type":Ljava/lang/reflect/Type;
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 772
    .restart local p1    # "type":Ljava/lang/reflect/Type;
    :cond_2
    instance-of v2, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_3

    .line 773
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .end local p1    # "type":Ljava/lang/reflect/Type;
    invoke-static {p0, p1, p2}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/reflect/ParameterizedType;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 776
    .restart local p1    # "type":Ljava/lang/reflect/Type;
    :cond_3
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_5

    move-object v0, p0

    .line 777
    check-cast v0, Ljava/lang/String;

    .line 778
    .local v0, "strVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "null"

    .line 779
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "NULL"

    .line 780
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    move-object p0, v1

    .line 781
    goto :goto_0

    .line 785
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_5
    instance-of v1, p1, Ljava/lang/reflect/TypeVariable;

    if-nez v1, :cond_0

    .line 789
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not cast to : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static castToBigDecimal(Ljava/lang/Object;)Ljava/math/BigDecimal;
    .locals 3
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 170
    if-nez p0, :cond_0

    move-object p0, v1

    .line 187
    .end local p0    # "value":Ljava/lang/Object;
    .local v0, "strVal":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 174
    .end local v0    # "strVal":Ljava/lang/String;
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v2, p0, Ljava/math/BigDecimal;

    if-eqz v2, :cond_1

    .line 175
    check-cast p0, Ljava/math/BigDecimal;

    goto :goto_0

    .line 178
    :cond_1
    instance-of v2, p0, Ljava/math/BigInteger;

    if-eqz v2, :cond_2

    .line 179
    new-instance v1, Ljava/math/BigDecimal;

    check-cast p0, Ljava/math/BigInteger;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-direct {v1, p0}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    move-object p0, v1

    goto :goto_0

    .line 182
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 183
    .restart local v0    # "strVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_3

    move-object p0, v1

    .line 184
    goto :goto_0

    .line 187
    :cond_3
    new-instance p0, Ljava/math/BigDecimal;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-direct {p0, v0}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static castToBigInteger(Ljava/lang/Object;)Ljava/math/BigInteger;
    .locals 3
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 191
    if-nez p0, :cond_0

    move-object p0, v1

    .line 210
    .end local p0    # "value":Ljava/lang/Object;
    .local v0, "strVal":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 195
    .end local v0    # "strVal":Ljava/lang/String;
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v2, p0, Ljava/math/BigInteger;

    if-eqz v2, :cond_1

    .line 196
    check-cast p0, Ljava/math/BigInteger;

    goto :goto_0

    .line 199
    :cond_1
    instance-of v2, p0, Ljava/lang/Float;

    if-nez v2, :cond_2

    instance-of v2, p0, Ljava/lang/Double;

    if-eqz v2, :cond_3

    .line 200
    :cond_2
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object p0

    goto :goto_0

    .line 203
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    .restart local v0    # "strVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "null"

    .line 205
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "NULL"

    .line 206
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    move-object p0, v1

    .line 207
    goto :goto_0

    .line 210
    :cond_5
    new-instance p0, Ljava/math/BigInteger;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-direct {p0, v0}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static castToBoolean(Ljava/lang/Object;)Ljava/lang/Boolean;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 553
    if-nez p0, :cond_0

    move-object p0, v2

    .line 581
    .end local p0    # "value":Ljava/lang/Object;
    .local v0, "strVal":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 557
    .end local v0    # "strVal":Ljava/lang/String;
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v3, p0, Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    .line 558
    check-cast p0, Ljava/lang/Boolean;

    goto :goto_0

    .line 561
    :cond_1
    instance-of v3, p0, Ljava/lang/Number;

    if-eqz v3, :cond_3

    .line 562
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_2

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    .line 565
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_3
    instance-of v1, p0, Ljava/lang/String;

    if-eqz v1, :cond_9

    move-object v0, p0

    .line 566
    check-cast v0, Ljava/lang/String;

    .line 568
    .restart local v0    # "strVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "null"

    .line 569
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "NULL"

    .line 570
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    move-object p0, v2

    .line 571
    goto :goto_0

    .line 574
    :cond_5
    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    const-string v1, "1"

    .line 575
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 576
    :cond_6
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto :goto_0

    .line 579
    :cond_7
    const-string v1, "false"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "0"

    .line 580
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 581
    :cond_8
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_0

    .line 585
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_9
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not cast to boolean, value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static castToByte(Ljava/lang/Object;)Ljava/lang/Byte;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 97
    if-nez p0, :cond_1

    .line 113
    .local v0, "strVal":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 101
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_1
    instance-of v2, p0, Ljava/lang/Number;

    if-eqz v2, :cond_2

    .line 102
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->byteValue()B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    goto :goto_0

    .line 105
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_3

    move-object v0, p0

    .line 106
    check-cast v0, Ljava/lang/String;

    .line 107
    .restart local v0    # "strVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "null"

    .line 108
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NULL"

    .line 109
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 113
    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    goto :goto_0

    .line 116
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_3
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not cast to byte, value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static castToBytes(Ljava/lang/Object;)[B
    .locals 3
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 542
    instance-of v0, p0, [B

    if-eqz v0, :cond_0

    .line 543
    check-cast p0, [B

    .end local p0    # "value":Ljava/lang/Object;
    check-cast p0, [B

    .line 547
    :goto_0
    return-object p0

    .line 546
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 547
    check-cast p0, Ljava/lang/String;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-static {p0}, Lcom/alibaba/fastjson/util/IOUtils;->decodeBase64(Ljava/lang/String;)[B

    move-result-object p0

    goto :goto_0

    .line 549
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not cast to int, value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static castToChar(Ljava/lang/Object;)Ljava/lang/Character;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 120
    if-nez p0, :cond_0

    move-object p0, v1

    .line 139
    .end local p0    # "value":Ljava/lang/Object;
    .local v0, "strVal":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 124
    .end local v0    # "strVal":Ljava/lang/String;
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v2, p0, Ljava/lang/Character;

    if-eqz v2, :cond_1

    .line 125
    check-cast p0, Ljava/lang/Character;

    goto :goto_0

    .line 128
    :cond_1
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_4

    move-object v0, p0

    .line 129
    check-cast v0, Ljava/lang/String;

    .line 131
    .restart local v0    # "strVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    move-object p0, v1

    .line 132
    goto :goto_0

    .line 135
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    .line 136
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not cast to char, value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 139
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    goto :goto_0

    .line 142
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_4
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not cast to char, value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static castToDate(Ljava/lang/Object;)Ljava/util/Date;
    .locals 14
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v9, 0x0

    const/4 v13, 0x1

    .line 268
    if-nez p0, :cond_1

    .line 378
    .end local p0    # "value":Ljava/lang/Object;
    .local v7, "longValue":J
    :cond_0
    :goto_0
    return-object v9

    .line 272
    .end local v7    # "longValue":J
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v11, p0, Ljava/util/Date;

    if-eqz v11, :cond_2

    .line 273
    check-cast p0, Ljava/util/Date;

    .end local p0    # "value":Ljava/lang/Object;
    move-object v9, p0

    goto :goto_0

    .line 276
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v11, p0, Ljava/util/Calendar;

    if-eqz v11, :cond_3

    .line 277
    check-cast p0, Ljava/util/Calendar;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v9

    goto :goto_0

    .line 280
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_3
    const-wide/16 v7, -0x1

    .line 282
    .restart local v7    # "longValue":J
    instance-of v11, p0, Ljava/lang/Number;

    if-eqz v11, :cond_4

    .line 283
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    .line 284
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v7, v8}, Ljava/util/Date;-><init>(J)V

    goto :goto_0

    .line 287
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_4
    instance-of v11, p0, Ljava/lang/String;

    if-eqz v11, :cond_b

    move-object v10, p0

    .line 288
    check-cast v10, Ljava/lang/String;

    .line 290
    .local v10, "strVal":Ljava/lang/String;
    new-instance v3, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v3, v10}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 292
    .local v3, "dateLexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    const/4 v11, 0x0

    :try_start_0
    invoke-virtual {v3, v11}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 293
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 294
    .local v0, "calendar":Ljava/util/Calendar;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 297
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    goto :goto_0

    .end local v0    # "calendar":Ljava/util/Calendar;
    :cond_5
    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 300
    const-string v11, "/Date("

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    const-string v11, ")/"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 301
    const/4 v11, 0x6

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x2

    invoke-virtual {v10, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 302
    .local v4, "dotnetDateStr":Ljava/lang/String;
    move-object v10, v4

    .line 305
    .end local v4    # "dotnetDateStr":Ljava/lang/String;
    :cond_6
    const/16 v11, 0x2d

    invoke-virtual {v10, v11}, Ljava/lang/String;->indexOf(I)I

    move-result v11

    const/4 v12, -0x1

    if-eq v11, v12, :cond_a

    .line 307
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    sget-object v12, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-ne v11, v12, :cond_7

    .line 308
    sget-object v6, Lcom/alibaba/fastjson/JSON;->DEFFAULT_DATE_FORMAT:Ljava/lang/String;

    .line 317
    .local v6, "format":Ljava/lang/String;
    :goto_1
    new-instance v2, Ljava/text/SimpleDateFormat;

    sget-object v11, Lcom/alibaba/fastjson/JSON;->defaultLocale:Ljava/util/Locale;

    invoke-direct {v2, v6, v11}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 318
    .local v2, "dateFormat":Ljava/text/SimpleDateFormat;
    sget-object v11, Lcom/alibaba/fastjson/JSON;->defaultTimeZone:Ljava/util/TimeZone;

    invoke-virtual {v2, v11}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 320
    :try_start_1
    invoke-virtual {v2, v10}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v9

    goto/16 :goto_0

    .line 297
    .end local v2    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v6    # "format":Ljava/lang/String;
    :catchall_0
    move-exception v11

    invoke-virtual {v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    throw v11

    .line 309
    :cond_7
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    const/16 v12, 0xa

    if-ne v11, v12, :cond_8

    .line 310
    const-string v6, "yyyy-MM-dd"

    .restart local v6    # "format":Ljava/lang/String;
    goto :goto_1

    .line 311
    .end local v6    # "format":Ljava/lang/String;
    :cond_8
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    const-string v12, "yyyy-MM-dd HH:mm:ss"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-ne v11, v12, :cond_9

    .line 312
    const-string v6, "yyyy-MM-dd HH:mm:ss"

    .restart local v6    # "format":Ljava/lang/String;
    goto :goto_1

    .line 314
    .end local v6    # "format":Ljava/lang/String;
    :cond_9
    const-string v6, "yyyy-MM-dd HH:mm:ss.SSS"

    .restart local v6    # "format":Ljava/lang/String;
    goto :goto_1

    .line 321
    .restart local v2    # "dateFormat":Ljava/text/SimpleDateFormat;
    :catch_0
    move-exception v5

    .line 322
    .local v5, "e":Ljava/text/ParseException;
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "can not cast to Date, value : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 326
    .end local v2    # "dateFormat":Ljava/text/SimpleDateFormat;
    .end local v5    # "e":Ljava/text/ParseException;
    .end local v6    # "format":Ljava/lang/String;
    :cond_a
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-eqz v11, :cond_0

    .line 330
    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 333
    .end local v3    # "dateLexer":Lcom/alibaba/fastjson/parser/JSONScanner;
    .end local v10    # "strVal":Ljava/lang/String;
    :cond_b
    const-wide/16 v11, 0x0

    cmp-long v11, v7, v11

    if-gez v11, :cond_10

    .line 334
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 335
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v11, "oracle.sql.TIMESTAMP"

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_d

    .line 336
    sget-object v11, Lcom/alibaba/fastjson/util/TypeUtils;->oracleTimestampMethod:Ljava/lang/reflect/Method;

    if-nez v11, :cond_c

    sget-boolean v11, Lcom/alibaba/fastjson/util/TypeUtils;->oracleTimestampMethodInited:Z

    if-nez v11, :cond_c

    .line 338
    :try_start_2
    const-string v11, "toJdbc"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Class;

    invoke-virtual {v1, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    sput-object v11, Lcom/alibaba/fastjson/util/TypeUtils;->oracleTimestampMethod:Ljava/lang/reflect/Method;
    :try_end_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 342
    sput-boolean v13, Lcom/alibaba/fastjson/util/TypeUtils;->oracleTimestampMethodInited:Z

    .line 348
    :cond_c
    :goto_2
    :try_start_3
    sget-object v11, Lcom/alibaba/fastjson/util/TypeUtils;->oracleTimestampMethod:Ljava/lang/reflect/Method;

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v11, p0, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    move-result-object v9

    .line 352
    .local v9, "result":Ljava/lang/Object;
    check-cast v9, Ljava/util/Date;

    goto/16 :goto_0

    .line 339
    .end local v9    # "result":Ljava/lang/Object;
    :catch_1
    move-exception v11

    .line 342
    sput-boolean v13, Lcom/alibaba/fastjson/util/TypeUtils;->oracleTimestampMethodInited:Z

    goto :goto_2

    :catchall_1
    move-exception v11

    sput-boolean v13, Lcom/alibaba/fastjson/util/TypeUtils;->oracleTimestampMethodInited:Z

    throw v11

    .line 349
    :catch_2
    move-exception v5

    .line 350
    .local v5, "e":Ljava/lang/Exception;
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    const-string v12, "can not cast oracle.sql.TIMESTAMP to Date"

    invoke-direct {v11, v12, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 355
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_d
    const-string v11, "oracle.sql.DATE"

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_f

    .line 356
    sget-object v11, Lcom/alibaba/fastjson/util/TypeUtils;->oracleDateMethod:Ljava/lang/reflect/Method;

    if-nez v11, :cond_e

    sget-boolean v11, Lcom/alibaba/fastjson/util/TypeUtils;->oracleDateMethodInited:Z

    if-nez v11, :cond_e

    .line 358
    :try_start_4
    const-string v11, "toJdbc"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Class;

    invoke-virtual {v1, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    sput-object v11, Lcom/alibaba/fastjson/util/TypeUtils;->oracleDateMethod:Ljava/lang/reflect/Method;
    :try_end_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 362
    sput-boolean v13, Lcom/alibaba/fastjson/util/TypeUtils;->oracleDateMethodInited:Z

    .line 368
    :cond_e
    :goto_3
    :try_start_5
    sget-object v11, Lcom/alibaba/fastjson/util/TypeUtils;->oracleDateMethod:Ljava/lang/reflect/Method;

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v11, p0, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_4

    move-result-object v9

    .line 372
    .restart local v9    # "result":Ljava/lang/Object;
    check-cast v9, Ljava/util/Date;

    goto/16 :goto_0

    .line 359
    .end local v9    # "result":Ljava/lang/Object;
    :catch_3
    move-exception v11

    .line 362
    sput-boolean v13, Lcom/alibaba/fastjson/util/TypeUtils;->oracleDateMethodInited:Z

    goto :goto_3

    :catchall_2
    move-exception v11

    sput-boolean v13, Lcom/alibaba/fastjson/util/TypeUtils;->oracleDateMethodInited:Z

    throw v11

    .line 369
    :catch_4
    move-exception v5

    .line 370
    .restart local v5    # "e":Ljava/lang/Exception;
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    const-string v12, "can not cast oracle.sql.DATE to Date"

    invoke-direct {v11, v12, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v11

    .line 375
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_f
    new-instance v11, Lcom/alibaba/fastjson/JSONException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "can not cast to Date, value : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 378
    .end local v1    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_10
    new-instance v9, Ljava/util/Date;

    invoke-direct {v9, v7, v8}, Ljava/util/Date;-><init>(J)V

    goto/16 :goto_0
.end method

.method public static castToDouble(Ljava/lang/Object;)Ljava/lang/Double;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 241
    if-nez p0, :cond_1

    .line 261
    .local v0, "strVal":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 245
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_1
    instance-of v2, p0, Ljava/lang/Number;

    if-eqz v2, :cond_2

    .line 246
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_0

    .line 249
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 250
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    .restart local v0    # "strVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "null"

    .line 252
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NULL"

    .line 253
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 257
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eqz v1, :cond_3

    .line 258
    const-string v1, ","

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 261
    :cond_3
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_0

    .line 264
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_4
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not cast to double, value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static castToEnum(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 8
    .param p0, "obj"    # Ljava/lang/Object;
    .param p2, "mapping"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 739
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    instance-of v5, p0, Ljava/lang/String;

    if-eqz v5, :cond_1

    .line 740
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 741
    .local v2, "name":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    .line 742
    const/4 v5, 0x0

    .line 752
    .end local v2    # "name":Ljava/lang/String;
    .end local p0    # "obj":Ljava/lang/Object;
    :goto_0
    return-object v5

    .line 745
    .restart local v2    # "name":Ljava/lang/String;
    .restart local p0    # "obj":Ljava/lang/Object;
    :cond_0
    invoke-static {p1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v5

    goto :goto_0

    .line 748
    .end local v2    # "name":Ljava/lang/String;
    :cond_1
    instance-of v5, p0, Ljava/lang/Number;

    if-eqz v5, :cond_2

    .line 749
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "obj":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 750
    .local v3, "ordinal":I
    invoke-virtual {p1}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object v4

    .line 751
    .local v4, "values":[Ljava/lang/Object;
    array-length v5, v4

    if-ge v3, v5, :cond_2

    .line 752
    aget-object v5, v4, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 755
    .end local v3    # "ordinal":I
    .end local v4    # "values":[Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 756
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "can not cast to : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 759
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_2
    new-instance v5, Lcom/alibaba/fastjson/JSONException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "can not cast to : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static castToFloat(Ljava/lang/Object;)Ljava/lang/Float;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 214
    if-nez p0, :cond_1

    .line 234
    .local v0, "strVal":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 218
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_1
    instance-of v2, p0, Ljava/lang/Number;

    if-eqz v2, :cond_2

    .line 219
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_0

    .line 222
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 223
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 224
    .restart local v0    # "strVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "null"

    .line 225
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NULL"

    .line 226
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 230
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eqz v1, :cond_3

    .line 231
    const-string v1, ","

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 234
    :cond_3
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    goto :goto_0

    .line 237
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_4
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not cast to float, value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static castToInt(Ljava/lang/Object;)Ljava/lang/Integer;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 506
    if-nez p0, :cond_0

    move-object p0, v1

    .line 535
    .end local p0    # "value":Ljava/lang/Object;
    :goto_0
    return-object p0

    .line 510
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v2, p0, Ljava/lang/Integer;

    if-eqz v2, :cond_1

    .line 511
    check-cast p0, Ljava/lang/Integer;

    goto :goto_0

    .line 514
    :cond_1
    instance-of v2, p0, Ljava/lang/Number;

    if-eqz v2, :cond_2

    .line 515
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    .line 518
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_6

    move-object v0, p0

    .line 519
    check-cast v0, Ljava/lang/String;

    .line 521
    .local v0, "strVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "null"

    .line 522
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "NULL"

    .line 523
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    move-object p0, v1

    .line 524
    goto :goto_0

    .line 527
    :cond_4
    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    if-eqz v1, :cond_5

    .line 528
    const-string v1, ","

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 531
    :cond_5
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    .line 534
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_6
    instance-of v1, p0, Ljava/lang/Boolean;

    if-eqz v1, :cond_8

    .line 535
    check-cast p0, Ljava/lang/Boolean;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_7
    const/4 v1, 0x0

    goto :goto_1

    .line 538
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_8
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not cast to int, value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static castToJavaBean(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 589
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->cast(Ljava/lang/Object;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static castToJavaBean(Ljava/util/Map;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    .locals 17
    .param p2, "config"    # Lcom/alibaba/fastjson/parser/ParserConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/alibaba/fastjson/parser/ParserConfig;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 859
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    :try_start_0
    const-class v14, Ljava/lang/StackTraceElement;

    move-object/from16 v0, p1

    if-ne v0, v14, :cond_1

    .line 860
    const-string v14, "className"

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 861
    .local v3, "declaringClass":Ljava/lang/String;
    const-string v14, "methodName"

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 862
    .local v11, "methodName":Ljava/lang/String;
    const-string v14, "fileName"

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 865
    .local v6, "fileName":Ljava/lang/String;
    const-string v14, "lineNumber"

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Number;

    .line 866
    .local v13, "value":Ljava/lang/Number;
    if-nez v13, :cond_0

    .line 867
    const/4 v9, 0x0

    .line 873
    .local v9, "lineNumber":I
    :goto_0
    new-instance v14, Ljava/lang/StackTraceElement;

    invoke-direct {v14, v3, v11, v6, v9}, Ljava/lang/StackTraceElement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 920
    .end local v3    # "declaringClass":Ljava/lang/String;
    .end local v6    # "fileName":Ljava/lang/String;
    .end local v9    # "lineNumber":I
    .end local v11    # "methodName":Ljava/lang/String;
    .end local v13    # "value":Ljava/lang/Number;
    :goto_1
    return-object v14

    .line 869
    .restart local v3    # "declaringClass":Ljava/lang/String;
    .restart local v6    # "fileName":Ljava/lang/String;
    .restart local v11    # "methodName":Ljava/lang/String;
    .restart local v13    # "value":Ljava/lang/Number;
    :cond_0
    invoke-virtual {v13}, Ljava/lang/Number;->intValue()I

    move-result v9

    .restart local v9    # "lineNumber":I
    goto :goto_0

    .line 877
    .end local v3    # "declaringClass":Ljava/lang/String;
    .end local v6    # "fileName":Ljava/lang/String;
    .end local v9    # "lineNumber":I
    .end local v11    # "methodName":Ljava/lang/String;
    .end local v13    # "value":Ljava/lang/Number;
    :cond_1
    sget-object v14, Lcom/alibaba/fastjson/JSON;->DEFAULT_TYPE_KEY:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-interface {v0, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 878
    .local v7, "iClassObject":Ljava/lang/Object;
    instance-of v14, v7, Ljava/lang/String;

    if-eqz v14, :cond_3

    .line 879
    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 881
    .local v2, "className":Ljava/lang/String;
    invoke-static {v2}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    .line 883
    .local v10, "loadClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v10, :cond_2

    .line 884
    new-instance v14, Ljava/lang/ClassNotFoundException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, " not found"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v14
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 921
    .end local v2    # "className":Ljava/lang/String;
    .end local v7    # "iClassObject":Ljava/lang/Object;
    .end local v10    # "loadClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v5

    .line 922
    .local v5, "e":Ljava/lang/Exception;
    new-instance v14, Lcom/alibaba/fastjson/JSONException;

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v14

    .line 887
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v2    # "className":Ljava/lang/String;
    .restart local v7    # "iClassObject":Ljava/lang/Object;
    .restart local v10    # "loadClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v10, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_3

    .line 888
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v10, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->castToJavaBean(Ljava/util/Map;Ljava/lang/Class;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;

    move-result-object v14

    goto :goto_1

    .line 893
    .end local v2    # "className":Ljava/lang/String;
    .end local v10    # "loadClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->isInterface()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 896
    move-object/from16 v0, p0

    instance-of v14, v0, Lcom/alibaba/fastjson/JSONObject;

    if-eqz v14, :cond_4

    .line 897
    move-object/from16 v0, p0

    check-cast v0, Lcom/alibaba/fastjson/JSONObject;

    move-object v12, v0

    .line 902
    .local v12, "object":Lcom/alibaba/fastjson/JSONObject;
    :goto_2
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Class;

    const/16 v16, 0x0

    aput-object p1, v15, v16

    invoke-static {v14, v15, v12}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v14

    goto :goto_1

    .line 899
    .end local v12    # "object":Lcom/alibaba/fastjson/JSONObject;
    :cond_4
    new-instance v12, Lcom/alibaba/fastjson/JSONObject;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Lcom/alibaba/fastjson/JSONObject;-><init>(Ljava/util/Map;)V

    .restart local v12    # "object":Lcom/alibaba/fastjson/JSONObject;
    goto :goto_2

    .line 906
    .end local v12    # "object":Lcom/alibaba/fastjson/JSONObject;
    :cond_5
    if-nez p2, :cond_6

    .line 907
    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object p2

    .line 910
    :cond_6
    const/4 v8, 0x0

    .line 911
    .local v8, "javaBeanDeser":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v4

    .line 912
    .local v4, "deserizer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    instance-of v14, v4, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-eqz v14, :cond_7

    .line 913
    move-object v0, v4

    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    move-object v8, v0

    .line 916
    :cond_7
    if-nez v8, :cond_8

    .line 917
    new-instance v14, Lcom/alibaba/fastjson/JSONException;

    const-string v15, "can not get javaBeanDeserializer"

    invoke-direct {v14, v15}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 920
    :cond_8
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v8, v0, v1}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->createInstance(Ljava/util/Map;Lcom/alibaba/fastjson/parser/ParserConfig;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v14

    goto/16 :goto_1
.end method

.method public static castToLong(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 6
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 464
    if-nez p0, :cond_1

    .line 498
    .local v2, "strVal":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v3

    .line 468
    .end local v2    # "strVal":Ljava/lang/String;
    :cond_1
    instance-of v4, p0, Ljava/lang/Number;

    if-eqz v4, :cond_2

    .line 469
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_0

    .line 472
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v4, p0, Ljava/lang/String;

    if-eqz v4, :cond_5

    move-object v2, p0

    .line 473
    check-cast v2, Ljava/lang/String;

    .line 474
    .restart local v2    # "strVal":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "null"

    .line 475
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "NULL"

    .line 476
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 480
    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-eqz v3, :cond_3

    .line 481
    const-string v3, ","

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 485
    :cond_3
    :try_start_0
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 486
    :catch_0
    move-exception v3

    .line 490
    new-instance v1, Lcom/alibaba/fastjson/parser/JSONScanner;

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/parser/JSONScanner;-><init>(Ljava/lang/String;)V

    .line 491
    .local v1, "dateParser":Lcom/alibaba/fastjson/parser/JSONScanner;
    const/4 v0, 0x0

    .line 492
    .local v0, "calendar":Ljava/util/Calendar;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/parser/JSONScanner;->scanISO8601DateIfMatch(Z)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 493
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->getCalendar()Ljava/util/Calendar;

    move-result-object v0

    .line 495
    :cond_4
    invoke-virtual {v1}, Lcom/alibaba/fastjson/parser/JSONScanner;->close()V

    .line 497
    if-eqz v0, :cond_5

    .line 498
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    goto :goto_0

    .line 502
    .end local v0    # "calendar":Ljava/util/Calendar;
    .end local v1    # "dateParser":Lcom/alibaba/fastjson/parser/JSONScanner;
    .end local v2    # "strVal":Ljava/lang/String;
    :cond_5
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can not cast to long, value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static castToShort(Ljava/lang/Object;)Ljava/lang/Short;
    .locals 4
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 146
    if-nez p0, :cond_1

    .line 163
    .local v0, "strVal":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v1

    .line 150
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_1
    instance-of v2, p0, Ljava/lang/Number;

    if-eqz v2, :cond_2

    .line 151
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/Number;->shortValue()S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    goto :goto_0

    .line 154
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v2, p0, Ljava/lang/String;

    if-eqz v2, :cond_3

    move-object v0, p0

    .line 155
    check-cast v0, Ljava/lang/String;

    .line 157
    .restart local v0    # "strVal":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "null"

    .line 158
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "NULL"

    .line 159
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 163
    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v1

    invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object v1

    goto :goto_0

    .line 166
    .end local v0    # "strVal":Ljava/lang/String;
    :cond_3
    new-instance v1, Lcom/alibaba/fastjson/JSONException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can not cast to short, value : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static castToSqlDate(Ljava/lang/Object;)Ljava/sql/Date;
    .locals 6
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 382
    if-nez p0, :cond_0

    move-object p0, v4

    .line 419
    .end local p0    # "value":Ljava/lang/Object;
    .local v0, "longValue":J
    :goto_0
    return-object p0

    .line 386
    .end local v0    # "longValue":J
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v3, p0, Ljava/sql/Date;

    if-eqz v3, :cond_1

    .line 387
    check-cast p0, Ljava/sql/Date;

    goto :goto_0

    .line 390
    :cond_1
    instance-of v3, p0, Ljava/util/Date;

    if-eqz v3, :cond_2

    .line 391
    new-instance v3, Ljava/sql/Date;

    check-cast p0, Ljava/util/Date;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/sql/Date;-><init>(J)V

    move-object p0, v3

    goto :goto_0

    .line 394
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_2
    instance-of v3, p0, Ljava/util/Calendar;

    if-eqz v3, :cond_3

    .line 395
    new-instance v3, Ljava/sql/Date;

    check-cast p0, Ljava/util/Calendar;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/sql/Date;-><init>(J)V

    move-object p0, v3

    goto :goto_0

    .line 398
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_3
    const-wide/16 v0, 0x0

    .line 400
    .restart local v0    # "longValue":J
    instance-of v3, p0, Ljava/lang/Number;

    if-eqz v3, :cond_4

    move-object v3, p0

    .line 401
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 404
    :cond_4
    instance-of v3, p0, Ljava/lang/String;

    if-eqz v3, :cond_7

    move-object v2, p0

    .line 405
    check-cast v2, Ljava/lang/String;

    .line 406
    .local v2, "strVal":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "null"

    .line 407
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "NULL"

    .line 408
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    move-object p0, v4

    .line 409
    goto :goto_0

    .line 412
    :cond_6
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 415
    .end local v2    # "strVal":Ljava/lang/String;
    :cond_7
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-gtz v3, :cond_8

    .line 416
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can not cast to Date, value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 419
    :cond_8
    new-instance p0, Ljava/sql/Date;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-direct {p0, v0, v1}, Ljava/sql/Date;-><init>(J)V

    goto :goto_0
.end method

.method public static castToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    .line 89
    if-nez p0, :cond_0

    .line 90
    const/4 v0, 0x0

    .line 93
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static castToTimestamp(Ljava/lang/Object;)Ljava/sql/Timestamp;
    .locals 6
    .param p0, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x0

    .line 423
    if-nez p0, :cond_0

    move-object p0, v4

    .line 460
    .end local p0    # "value":Ljava/lang/Object;
    .local v0, "longValue":J
    :goto_0
    return-object p0

    .line 427
    .end local v0    # "longValue":J
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_0
    instance-of v3, p0, Ljava/util/Calendar;

    if-eqz v3, :cond_1

    .line 428
    new-instance v3, Ljava/sql/Timestamp;

    check-cast p0, Ljava/util/Calendar;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/sql/Timestamp;-><init>(J)V

    move-object p0, v3

    goto :goto_0

    .line 431
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_1
    instance-of v3, p0, Ljava/sql/Timestamp;

    if-eqz v3, :cond_2

    .line 432
    check-cast p0, Ljava/sql/Timestamp;

    goto :goto_0

    .line 435
    :cond_2
    instance-of v3, p0, Ljava/util/Date;

    if-eqz v3, :cond_3

    .line 436
    new-instance v3, Ljava/sql/Timestamp;

    check-cast p0, Ljava/util/Date;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-direct {v3, v4, v5}, Ljava/sql/Timestamp;-><init>(J)V

    move-object p0, v3

    goto :goto_0

    .line 439
    .restart local p0    # "value":Ljava/lang/Object;
    :cond_3
    const-wide/16 v0, 0x0

    .line 441
    .restart local v0    # "longValue":J
    instance-of v3, p0, Ljava/lang/Number;

    if-eqz v3, :cond_4

    move-object v3, p0

    .line 442
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 445
    :cond_4
    instance-of v3, p0, Ljava/lang/String;

    if-eqz v3, :cond_7

    move-object v2, p0

    .line 446
    check-cast v2, Ljava/lang/String;

    .line 447
    .local v2, "strVal":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "null"

    .line 448
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    const-string v3, "NULL"

    .line 449
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    :cond_5
    move-object p0, v4

    .line 450
    goto :goto_0

    .line 453
    :cond_6
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 456
    .end local v2    # "strVal":Ljava/lang/String;
    :cond_7
    const-wide/16 v3, 0x0

    cmp-long v3, v0, v3

    if-gtz v3, :cond_8

    .line 457
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can not cast to Date, value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 460
    :cond_8
    new-instance p0, Ljava/sql/Timestamp;

    .end local p0    # "value":Ljava/lang/Object;
    invoke-direct {p0, v0, v1}, Ljava/sql/Timestamp;-><init>(J)V

    goto :goto_0
.end method

.method public static clearClassMapping()V
    .locals 1

    .prologue
    .line 955
    sget-object v0, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 956
    invoke-static {}, Lcom/alibaba/fastjson/util/TypeUtils;->addBaseClassMappings()V

    .line 957
    return-void
.end method

.method public static computeGetters(Ljava/lang/Class;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/Map;Ljava/util/Map;ZLcom/alibaba/fastjson/PropertyNamingStrategy;)Ljava/util/List;
    .locals 38
    .param p1, "jsonType"    # Lcom/alibaba/fastjson/annotation/JSONType;
    .param p4, "sorted"    # Z
    .param p5, "propertyNamingStrategy"    # Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/alibaba/fastjson/annotation/JSONType;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;Z",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1094
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "aliasMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .local p3, "fieldCacheMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    new-instance v30, Ljava/util/LinkedHashMap;

    invoke-direct/range {v30 .. v30}, Ljava/util/LinkedHashMap;-><init>()V

    .line 1096
    .local v30, "fieldInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lcom/alibaba/fastjson/util/FieldInfo;>;"
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v36

    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v37, v0

    const/4 v5, 0x0

    move/from16 v35, v5

    :goto_0
    move/from16 v0, v35

    move/from16 v1, v37

    if-ge v0, v1, :cond_17

    aget-object v4, v36, v35

    .line 1097
    .local v4, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v33

    .line 1098
    .local v33, "methodName":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "ordinal":I
    const/4 v9, 0x0

    .local v9, "serialzeFeatures":I
    const/4 v10, 0x0

    .line 1099
    .local v10, "parserFeatures":I
    const/4 v13, 0x0

    .line 1101
    .local v13, "label":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1096
    :cond_0
    :goto_1
    add-int/lit8 v5, v35, 0x1

    move/from16 v35, v5

    goto :goto_0

    .line 1105
    :cond_1
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v5, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1109
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    array-length v5, v5

    if-nez v5, :cond_0

    .line 1113
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Ljava/lang/ClassLoader;

    if-eq v5, v6, :cond_0

    .line 1117
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "getMetaClass"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1118
    invoke-virtual {v4}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "groovy.lang.MetaClass"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1122
    :cond_2
    const-class v5, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v11

    check-cast v11, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 1124
    .local v11, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-nez v11, :cond_3

    .line 1125
    move-object/from16 v0, p0

    invoke-static {v0, v4}, Lcom/alibaba/fastjson/util/TypeUtils;->getSuperMethodAnnotation(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v11

    .line 1128
    :cond_3
    if-eqz v11, :cond_6

    .line 1129
    invoke-interface {v11}, Lcom/alibaba/fastjson/annotation/JSONField;->serialize()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1133
    invoke-interface {v11}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v8

    .line 1134
    invoke-interface {v11}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v9

    .line 1135
    invoke-interface {v11}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v10

    .line 1137
    invoke-interface {v11}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_5

    .line 1138
    invoke-interface {v11}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v3

    .line 1140
    .local v3, "propertyName":Ljava/lang/String;
    if-eqz p2, :cond_4

    .line 1141
    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "propertyName":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 1142
    .restart local v3    # "propertyName":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1147
    :cond_4
    new-instance v2, Lcom/alibaba/fastjson/util/FieldInfo;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v12, 0x0

    move-object/from16 v6, p0

    invoke-direct/range {v2 .. v13}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    .line 1149
    .local v2, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v0, v30

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1153
    .end local v2    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v3    # "propertyName":Ljava/lang/String;
    :cond_5
    invoke-interface {v11}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_6

    .line 1154
    invoke-interface {v11}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v13

    .line 1158
    :cond_6
    const-string v5, "get"

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 1159
    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x4

    if-lt v5, v6, :cond_0

    .line 1163
    const-string v5, "getClass"

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1167
    const/4 v5, 0x3

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v27

    .line 1170
    .local v27, "c3":C
    invoke-static/range {v27 .. v27}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v5

    if-nez v5, :cond_7

    const/16 v5, 0x200

    move/from16 v0, v27

    if-le v0, v5, :cond_11

    .line 1173
    :cond_7
    sget-boolean v5, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    if-eqz v5, :cond_10

    .line 1174
    const/4 v5, 0x3

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1178
    .restart local v3    # "propertyName":Ljava/lang/String;
    :goto_2
    const/4 v5, 0x3

    move-object/from16 v0, p3

    move-object/from16 v1, v33

    invoke-static {v0, v1, v3, v5}, Lcom/alibaba/fastjson/util/TypeUtils;->getPropertyNameByCompatibleFieldName(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 1189
    .end local v3    # "propertyName":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/alibaba/fastjson/util/TypeUtils;->isJSONTypeIgnore(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v31

    .line 1191
    .local v31, "ignore":Z
    if-nez v31, :cond_0

    .line 1195
    move-object/from16 v0, p3

    invoke-static {v3, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->getFieldFromCache(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v17

    .line 1197
    .local v17, "field":Ljava/lang/reflect/Field;
    const/16 v24, 0x0

    .line 1198
    .local v24, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v17, :cond_26

    .line 1199
    const-class v5, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v24

    .end local v24    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    check-cast v24, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 1201
    .restart local v24    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v24, :cond_26

    .line 1202
    invoke-interface/range {v24 .. v24}, Lcom/alibaba/fastjson/annotation/JSONField;->serialize()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1206
    invoke-interface/range {v24 .. v24}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v8

    .line 1207
    invoke-interface/range {v24 .. v24}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v9

    .line 1208
    invoke-interface/range {v24 .. v24}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v10

    .line 1210
    invoke-interface/range {v24 .. v24}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_8

    .line 1211
    invoke-interface/range {v24 .. v24}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v3

    .line 1213
    .restart local v3    # "propertyName":Ljava/lang/String;
    if-eqz p2, :cond_8

    .line 1214
    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "propertyName":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 1215
    .restart local v3    # "propertyName":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1221
    .end local v3    # "propertyName":Ljava/lang/String;
    :cond_8
    invoke-interface/range {v24 .. v24}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_26

    .line 1222
    invoke-interface/range {v24 .. v24}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v13

    move-object v15, v3

    .line 1227
    :goto_4
    if-eqz p2, :cond_9

    .line 1228
    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1229
    .restart local v3    # "propertyName":Ljava/lang/String;
    if-eqz v3, :cond_0

    move-object v15, v3

    .line 1234
    .end local v3    # "propertyName":Ljava/lang/String;
    :cond_9
    if-eqz p5, :cond_a

    .line 1235
    move-object/from16 v0, p5

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "propertyName":Ljava/lang/String;
    move-object v15, v3

    .line 1238
    .end local v3    # "propertyName":Ljava/lang/String;
    :cond_a
    new-instance v2, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v19, 0x0

    move-object v14, v2

    move-object/from16 v16, v4

    move-object/from16 v18, p0

    move/from16 v20, v8

    move/from16 v21, v9

    move/from16 v22, v10

    move-object/from16 v23, v11

    move-object/from16 v25, v13

    invoke-direct/range {v14 .. v25}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    .line 1240
    .restart local v2    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v0, v30

    invoke-interface {v0, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1243
    .end local v2    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v17    # "field":Ljava/lang/reflect/Field;
    .end local v24    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v27    # "c3":C
    .end local v31    # "ignore":Z
    :cond_b
    const-string v5, "is"

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1244
    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x3

    if-lt v5, v6, :cond_0

    .line 1248
    const/4 v5, 0x2

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v26

    .line 1251
    .local v26, "c2":C
    invoke-static/range {v26 .. v26}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 1252
    sget-boolean v5, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    if-eqz v5, :cond_14

    .line 1253
    const/4 v5, 0x2

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1257
    .restart local v3    # "propertyName":Ljava/lang/String;
    :goto_5
    const/4 v5, 0x2

    move-object/from16 v0, p3

    move-object/from16 v1, v33

    invoke-static {v0, v1, v3, v5}, Lcom/alibaba/fastjson/util/TypeUtils;->getPropertyNameByCompatibleFieldName(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 1266
    .end local v3    # "propertyName":Ljava/lang/String;
    :goto_6
    move-object/from16 v0, p3

    invoke-static {v3, v0}, Lcom/alibaba/fastjson/parser/ParserConfig;->getFieldFromCache(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v17

    .line 1268
    .restart local v17    # "field":Ljava/lang/reflect/Field;
    if-nez v17, :cond_c

    .line 1269
    move-object/from16 v0, v33

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/parser/ParserConfig;->getFieldFromCache(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/reflect/Field;

    move-result-object v17

    .line 1272
    :cond_c
    const/16 v24, 0x0

    .line 1273
    .restart local v24    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v17, :cond_25

    .line 1274
    const-class v5, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v24

    .end local v24    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    check-cast v24, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 1276
    .restart local v24    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v24, :cond_25

    .line 1277
    invoke-interface/range {v24 .. v24}, Lcom/alibaba/fastjson/annotation/JSONField;->serialize()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1281
    invoke-interface/range {v24 .. v24}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v8

    .line 1282
    invoke-interface/range {v24 .. v24}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v9

    .line 1283
    invoke-interface/range {v24 .. v24}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v10

    .line 1285
    invoke-interface/range {v24 .. v24}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_d

    .line 1286
    invoke-interface/range {v24 .. v24}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v3

    .line 1288
    .restart local v3    # "propertyName":Ljava/lang/String;
    if-eqz p2, :cond_d

    .line 1289
    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "propertyName":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 1290
    .restart local v3    # "propertyName":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 1296
    .end local v3    # "propertyName":Ljava/lang/String;
    :cond_d
    invoke-interface/range {v24 .. v24}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_25

    .line 1297
    invoke-interface/range {v24 .. v24}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v13

    move-object v15, v3

    .line 1302
    :goto_7
    if-eqz p2, :cond_e

    .line 1303
    move-object/from16 v0, p2

    invoke-interface {v0, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1304
    .restart local v3    # "propertyName":Ljava/lang/String;
    if-eqz v3, :cond_0

    move-object v15, v3

    .line 1309
    .end local v3    # "propertyName":Ljava/lang/String;
    :cond_e
    if-eqz p5, :cond_f

    .line 1310
    move-object/from16 v0, p5

    invoke-virtual {v0, v15}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "propertyName":Ljava/lang/String;
    move-object v15, v3

    .line 1313
    .end local v3    # "propertyName":Ljava/lang/String;
    :cond_f
    new-instance v2, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v19, 0x0

    move-object v14, v2

    move-object/from16 v16, v4

    move-object/from16 v18, p0

    move/from16 v20, v8

    move/from16 v21, v9

    move/from16 v22, v10

    move-object/from16 v23, v11

    move-object/from16 v25, v13

    invoke-direct/range {v14 .. v25}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    .line 1315
    .restart local v2    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v0, v30

    invoke-interface {v0, v15, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_1

    .line 1176
    .end local v2    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v17    # "field":Ljava/lang/reflect/Field;
    .end local v24    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v26    # "c2":C
    .restart local v27    # "c3":C
    :cond_10
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x3

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x4

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "propertyName":Ljava/lang/String;
    goto/16 :goto_2

    .line 1179
    .end local v3    # "propertyName":Ljava/lang/String;
    :cond_11
    const/16 v5, 0x5f

    move/from16 v0, v27

    if-ne v0, v5, :cond_12

    .line 1180
    const/4 v5, 0x4

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "propertyName":Ljava/lang/String;
    goto/16 :goto_3

    .line 1181
    .end local v3    # "propertyName":Ljava/lang/String;
    :cond_12
    const/16 v5, 0x66

    move/from16 v0, v27

    if-ne v0, v5, :cond_13

    .line 1182
    const/4 v5, 0x3

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "propertyName":Ljava/lang/String;
    goto/16 :goto_3

    .line 1183
    .end local v3    # "propertyName":Ljava/lang/String;
    :cond_13
    invoke-virtual/range {v33 .. v33}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x5

    if-lt v5, v6, :cond_0

    const/4 v5, 0x4

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1184
    const/4 v5, 0x3

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    .line 1255
    .end local v27    # "c3":C
    .restart local v26    # "c2":C
    :cond_14
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v6, 0x2

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x3

    move-object/from16 v0, v33

    invoke-virtual {v0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "propertyName":Ljava/lang/String;
    goto/16 :goto_5

    .line 1258
    .end local v3    # "propertyName":Ljava/lang/String;
    :cond_15
    const/16 v5, 0x5f

    move/from16 v0, v26

    if-ne v0, v5, :cond_16

    .line 1259
    const/4 v5, 0x3

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "propertyName":Ljava/lang/String;
    goto/16 :goto_6

    .line 1260
    .end local v3    # "propertyName":Ljava/lang/String;
    :cond_16
    const/16 v5, 0x66

    move/from16 v0, v26

    if-ne v0, v5, :cond_0

    .line 1261
    const/4 v5, 0x2

    move-object/from16 v0, v33

    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_6

    .line 1319
    .end local v4    # "method":Ljava/lang/reflect/Method;
    .end local v8    # "ordinal":I
    .end local v9    # "serialzeFeatures":I
    .end local v10    # "parserFeatures":I
    .end local v11    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v13    # "label":Ljava/lang/String;
    .end local v26    # "c2":C
    .end local v33    # "methodName":Ljava/lang/String;
    :cond_17
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v6

    array-length v7, v6

    const/4 v5, 0x0

    :goto_8
    if-ge v5, v7, :cond_1e

    aget-object v17, v6, v5

    .line 1320
    .restart local v17    # "field":Ljava/lang/reflect/Field;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v12

    invoke-static {v12}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v12

    if-eqz v12, :cond_19

    .line 1319
    :cond_18
    :goto_9
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    .line 1324
    :cond_19
    const-class v12, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v24

    check-cast v24, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 1326
    .restart local v24    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    const/4 v8, 0x0

    .restart local v8    # "ordinal":I
    const/4 v9, 0x0

    .restart local v9    # "serialzeFeatures":I
    const/4 v10, 0x0

    .line 1327
    .restart local v10    # "parserFeatures":I
    invoke-virtual/range {v17 .. v17}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1328
    .restart local v3    # "propertyName":Ljava/lang/String;
    const/4 v13, 0x0

    .line 1329
    .restart local v13    # "label":Ljava/lang/String;
    if-eqz v24, :cond_1b

    .line 1330
    invoke-interface/range {v24 .. v24}, Lcom/alibaba/fastjson/annotation/JSONField;->serialize()Z

    move-result v12

    if-eqz v12, :cond_18

    .line 1334
    invoke-interface/range {v24 .. v24}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v8

    .line 1335
    invoke-interface/range {v24 .. v24}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v12

    invoke-static {v12}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v9

    .line 1336
    invoke-interface/range {v24 .. v24}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v12

    invoke-static {v12}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v10

    .line 1338
    invoke-interface/range {v24 .. v24}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_1a

    .line 1339
    invoke-interface/range {v24 .. v24}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v3

    .line 1342
    :cond_1a
    invoke-interface/range {v24 .. v24}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_1b

    .line 1343
    invoke-interface/range {v24 .. v24}, Lcom/alibaba/fastjson/annotation/JSONField;->label()Ljava/lang/String;

    move-result-object v13

    .line 1347
    :cond_1b
    if-eqz p2, :cond_1c

    .line 1348
    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "propertyName":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .line 1349
    .restart local v3    # "propertyName":Ljava/lang/String;
    if-eqz v3, :cond_18

    .line 1354
    :cond_1c
    if-eqz p5, :cond_1d

    .line 1355
    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1358
    :cond_1d
    move-object/from16 v0, v30

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_18

    .line 1359
    new-instance v2, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v16, 0x0

    const/16 v19, 0x0

    const/16 v23, 0x0

    move-object v14, v2

    move-object v15, v3

    move-object/from16 v18, p0

    move/from16 v20, v8

    move/from16 v21, v9

    move/from16 v22, v10

    move-object/from16 v25, v13

    invoke-direct/range {v14 .. v25}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    .line 1361
    .restart local v2    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v0, v30

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_9

    .line 1365
    .end local v2    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v3    # "propertyName":Ljava/lang/String;
    .end local v8    # "ordinal":I
    .end local v9    # "serialzeFeatures":I
    .end local v10    # "parserFeatures":I
    .end local v13    # "label":Ljava/lang/String;
    .end local v17    # "field":Ljava/lang/reflect/Field;
    .end local v24    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_1e
    new-instance v29, Ljava/util/ArrayList;

    invoke-direct/range {v29 .. v29}, Ljava/util/ArrayList;-><init>()V

    .line 1367
    .local v29, "fieldInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    const/16 v28, 0x0

    .line 1368
    .local v28, "containsAll":Z
    const/16 v34, 0x0

    .line 1370
    .local v34, "orders":[Ljava/lang/String;
    const-class v5, Lcom/alibaba/fastjson/annotation/JSONType;

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v11

    check-cast v11, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 1371
    .local v11, "annotation":Lcom/alibaba/fastjson/annotation/JSONType;
    if-eqz v11, :cond_1f

    .line 1372
    invoke-interface {v11}, Lcom/alibaba/fastjson/annotation/JSONType;->orders()[Ljava/lang/String;

    move-result-object v34

    .line 1374
    if-eqz v34, :cond_21

    move-object/from16 v0, v34

    array-length v5, v0

    invoke-interface/range {v30 .. v30}, Ljava/util/Map;->size()I

    move-result v6

    if-ne v5, v6, :cond_21

    .line 1375
    const/16 v28, 0x1

    .line 1376
    move-object/from16 v0, v34

    array-length v6, v0

    const/4 v5, 0x0

    :goto_a
    if-ge v5, v6, :cond_1f

    aget-object v32, v34, v5

    .line 1377
    .local v32, "item":Ljava/lang/String;
    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_20

    .line 1378
    const/16 v28, 0x0

    .line 1387
    .end local v32    # "item":Ljava/lang/String;
    :cond_1f
    :goto_b
    if-eqz v28, :cond_22

    .line 1388
    move-object/from16 v0, v34

    array-length v6, v0

    const/4 v5, 0x0

    :goto_c
    if-ge v5, v6, :cond_24

    aget-object v32, v34, v5

    .line 1389
    .restart local v32    # "item":Ljava/lang/String;
    move-object/from16 v0, v30

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1390
    .restart local v2    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v0, v29

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1388
    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 1376
    .end local v2    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_20
    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    .line 1383
    .end local v32    # "item":Ljava/lang/String;
    :cond_21
    const/16 v28, 0x0

    goto :goto_b

    .line 1393
    :cond_22
    invoke-interface/range {v30 .. v30}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_23

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 1394
    .restart local v2    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v0, v29

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 1397
    .end local v2    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_23
    if-eqz p4, :cond_24

    .line 1398
    invoke-static/range {v29 .. v29}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1402
    :cond_24
    return-object v29

    .end local v28    # "containsAll":Z
    .end local v29    # "fieldInfoList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v34    # "orders":[Ljava/lang/String;
    .restart local v4    # "method":Ljava/lang/reflect/Method;
    .restart local v8    # "ordinal":I
    .restart local v9    # "serialzeFeatures":I
    .restart local v10    # "parserFeatures":I
    .local v11, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v13    # "label":Ljava/lang/String;
    .restart local v17    # "field":Ljava/lang/reflect/Field;
    .restart local v24    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v26    # "c2":C
    .restart local v33    # "methodName":Ljava/lang/String;
    :cond_25
    move-object v15, v3

    goto/16 :goto_7

    .end local v26    # "c2":C
    .restart local v27    # "c3":C
    .restart local v31    # "ignore":Z
    :cond_26
    move-object v15, v3

    goto/16 :goto_4
.end method

.method public static createCollection(Ljava/lang/reflect/Type;)Ljava/util/Collection;
    .locals 7
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .prologue
    .line 1634
    invoke-static {p0}, Lcom/alibaba/fastjson/util/TypeUtils;->getRawClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v3

    .line 1637
    .local v3, "rawClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v4, Ljava/util/AbstractCollection;

    if-eq v3, v4, :cond_0

    const-class v4, Ljava/util/Collection;

    if-ne v3, v4, :cond_1

    .line 1639
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1663
    .end local p0    # "type":Ljava/lang/reflect/Type;
    .local v2, "list":Ljava/util/Collection;
    :goto_0
    return-object v2

    .line 1640
    .end local v2    # "list":Ljava/util/Collection;
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_1
    const-class v4, Ljava/util/HashSet;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1641
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .restart local v2    # "list":Ljava/util/Collection;
    goto :goto_0

    .line 1642
    .end local v2    # "list":Ljava/util/Collection;
    :cond_2
    const-class v4, Ljava/util/LinkedHashSet;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1643
    new-instance v2, Ljava/util/LinkedHashSet;

    invoke-direct {v2}, Ljava/util/LinkedHashSet;-><init>()V

    .restart local v2    # "list":Ljava/util/Collection;
    goto :goto_0

    .line 1644
    .end local v2    # "list":Ljava/util/Collection;
    :cond_3
    const-class v4, Ljava/util/TreeSet;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1645
    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    .restart local v2    # "list":Ljava/util/Collection;
    goto :goto_0

    .line 1646
    .end local v2    # "list":Ljava/util/Collection;
    :cond_4
    const-class v4, Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1647
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .restart local v2    # "list":Ljava/util/Collection;
    goto :goto_0

    .line 1648
    .end local v2    # "list":Ljava/util/Collection;
    :cond_5
    const-class v4, Ljava/util/EnumSet;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1650
    instance-of v4, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v4, :cond_6

    .line 1651
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v1, v4, v5

    .line 1655
    .local v1, "itemType":Ljava/lang/reflect/Type;
    :goto_1
    check-cast v1, Ljava/lang/Class;

    .end local v1    # "itemType":Ljava/lang/reflect/Type;
    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v2

    .line 1656
    .restart local v2    # "list":Ljava/util/Collection;
    goto :goto_0

    .line 1653
    .end local v2    # "list":Ljava/util/Collection;
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_6
    const-class v1, Ljava/lang/Object;

    .restart local v1    # "itemType":Ljava/lang/reflect/Type;
    goto :goto_1

    .line 1658
    .end local v1    # "itemType":Ljava/lang/reflect/Type;
    :cond_7
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Collection;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v2    # "list":Ljava/util/Collection;
    goto :goto_0

    .line 1659
    .end local v2    # "list":Ljava/util/Collection;
    :catch_0
    move-exception v0

    .line 1660
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "create instane error, class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static decapitalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1586
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 1594
    .end local p0    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 1589
    .restart local p0    # "name":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_2

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1592
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 1593
    .local v0, "chars":[C
    aget-char v1, v0, v2

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v1

    aput-char v1, v0, v2

    .line 1594
    new-instance p0, Ljava/lang/String;

    .end local p0    # "name":Ljava/lang/String;
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    goto :goto_0
.end method

.method public static getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 3
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1534
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Ljava/lang/Class;

    if-ne v1, v2, :cond_0

    .line 1535
    check-cast p0, Ljava/lang/Class;

    .line 1547
    .end local p0    # "type":Ljava/lang/reflect/Type;
    :goto_0
    return-object p0

    .line 1538
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_0
    instance-of v1, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_1

    .line 1539
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 1542
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_1
    instance-of v1, p0, Ljava/lang/reflect/TypeVariable;

    if-eqz v1, :cond_2

    .line 1543
    check-cast p0, Ljava/lang/reflect/TypeVariable;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getBounds()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v0, v1, v2

    .line 1544
    .local v0, "boundType":Ljava/lang/reflect/Type;
    check-cast v0, Ljava/lang/Class;

    .end local v0    # "boundType":Ljava/lang/reflect/Type;
    move-object p0, v0

    goto :goto_0

    .line 1547
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_2
    const-class p0, Ljava/lang/Object;

    goto :goto_0
.end method

.method public static getCollectionItemClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 4
    .param p0, "fieldType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1614
    instance-of v2, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_1

    .line 1616
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .end local p0    # "fieldType":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v0, v2, v3

    .line 1618
    .local v0, "actualTypeArgument":Ljava/lang/reflect/Type;
    instance-of v2, v0, Ljava/lang/Class;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 1619
    check-cast v1, Ljava/lang/Class;

    .line 1620
    .local v1, "itemClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1621
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    const-string v3, "can not create ASMParser"

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1624
    .end local v1    # "itemClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    new-instance v2, Lcom/alibaba/fastjson/JSONException;

    const-string v3, "can not create ASMParser"

    invoke-direct {v2, v3}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1629
    .end local v0    # "actualTypeArgument":Ljava/lang/reflect/Type;
    .restart local p0    # "fieldType":Ljava/lang/reflect/Type;
    :cond_1
    const-class v1, Ljava/lang/Object;

    .end local p0    # "fieldType":Ljava/lang/reflect/Type;
    :cond_2
    return-object v1
.end method

.method public static getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;
    .locals 5
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "declaredFields"    # [Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 1551
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    array-length v3, p2

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v0, p2, v2

    .line 1552
    .local v0, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1562
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :goto_1
    return-object v0

    .line 1551
    .restart local v0    # "field":Ljava/lang/reflect/Field;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1557
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    .line 1558
    .local v1, "superClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v1, :cond_2

    const-class v2, Ljava/lang/Object;

    if-eq v1, v2, :cond_2

    .line 1559
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-static {v1, p1, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v0

    goto :goto_1

    .line 1562
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static getGenericParamType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 1
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .prologue
    .line 1502
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    .line 1510
    .end local p0    # "type":Ljava/lang/reflect/Type;
    :cond_0
    :goto_0
    return-object p0

    .line 1506
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_1
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 1507
    check-cast p0, Ljava/lang/Class;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getGenericParamType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object p0

    goto :goto_0
.end method

.method public static getParserFeatures(Ljava/lang/Class;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 1576
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 1578
    .local v0, "annotation":Lcom/alibaba/fastjson/annotation/JSONType;
    if-nez v0, :cond_0

    .line 1579
    const/4 v1, 0x0

    .line 1582
    :goto_0
    return v1

    :cond_0
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONType;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v1

    goto :goto_0
.end method

.method private static getPropertyNameByCompatibleFieldName(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;
    .locals 2
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "propertyName"    # Ljava/lang/String;
    .param p3, "fromIdx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 1407
    .local p0, "fieldCacheMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/reflect/Field;>;"
    sget-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithFieldName:Z

    if-eqz v1, :cond_1

    .line 1408
    invoke-interface {p0, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1409
    invoke-virtual {p1, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1410
    .local v0, "tempPropertyName":Ljava/lang/String;
    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1413
    .end local v0    # "tempPropertyName":Ljava/lang/String;
    :goto_0
    return-object v0

    .restart local v0    # "tempPropertyName":Ljava/lang/String;
    :cond_0
    move-object v0, p2

    .line 1410
    goto :goto_0

    .end local v0    # "tempPropertyName":Ljava/lang/String;
    :cond_1
    move-object v0, p2

    .line 1413
    goto :goto_0
.end method

.method public static getRawClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 2
    .param p0, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 1667
    instance-of v0, p0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    .line 1668
    check-cast p0, Ljava/lang/Class;

    .line 1670
    .end local p0    # "type":Ljava/lang/reflect/Type;
    :goto_0
    return-object p0

    .line 1669
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_1

    .line 1670
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->getRawClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    goto :goto_0

    .line 1672
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONException;

    const-string v1, "TODO"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getSerializeFeatures(Ljava/lang/Class;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)I"
        }
    .end annotation

    .prologue
    .line 1566
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v1, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 1568
    .local v0, "annotation":Lcom/alibaba/fastjson/annotation/JSONType;
    if-nez v0, :cond_0

    .line 1569
    const/4 v1, 0x0

    .line 1572
    :goto_0
    return v1

    :cond_0
    invoke-interface {v0}, Lcom/alibaba/fastjson/annotation/JSONType;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v1

    invoke-static {v1}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v1

    goto :goto_0
.end method

.method public static getSuperMethodAnnotation(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson/annotation/JSONField;
    .locals 15
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            ")",
            "Lcom/alibaba/fastjson/annotation/JSONField;"
        }
    .end annotation

    .prologue
    .line 1417
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    move-result-object v5

    .line 1418
    .local v5, "interfaces":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v8, v5

    if-lez v8, :cond_5

    .line 1419
    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    .line 1420
    .local v7, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v10, v5

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-ge v9, v10, :cond_5

    aget-object v2, v5, v9

    .line 1421
    .local v2, "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v11

    array-length v12, v11

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v12, :cond_4

    aget-object v3, v11, v8

    .line 1422
    .local v3, "interfaceMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v4

    .line 1423
    .local v4, "interfaceTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v13, v4

    array-length v14, v7

    if-eq v13, v14, :cond_1

    .line 1421
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1426
    :cond_1
    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 1429
    const/4 v6, 0x1

    .line 1430
    .local v6, "match":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2
    array-length v13, v7

    if-ge v1, v13, :cond_2

    .line 1431
    aget-object v13, v4, v1

    aget-object v14, v7, v1

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 1432
    const/4 v6, 0x0

    .line 1437
    :cond_2
    if-eqz v6, :cond_0

    .line 1441
    const-class v13, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v3, v13}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 1442
    .local v0, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v0, :cond_0

    .line 1448
    .end local v0    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v1    # "i":I
    .end local v2    # "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "interfaceMethod":Ljava/lang/reflect/Method;
    .end local v4    # "interfaceTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v6    # "match":Z
    .end local v7    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_3
    return-object v0

    .line 1430
    .restart local v1    # "i":I
    .restart local v2    # "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v3    # "interfaceMethod":Ljava/lang/reflect/Method;
    .restart local v4    # "interfaceTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .restart local v6    # "match":Z
    .restart local v7    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1420
    .end local v1    # "i":I
    .end local v3    # "interfaceMethod":Ljava/lang/reflect/Method;
    .end local v4    # "interfaceTypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    .end local v6    # "match":Z
    :cond_4
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    goto :goto_0

    .line 1448
    .end local v2    # "interfaceClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_5
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static isGenericParamType(Ljava/lang/reflect/Type;)Z
    .locals 3
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .prologue
    const/4 v1, 0x0

    .line 1486
    instance-of v2, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v2, :cond_1

    .line 1487
    const/4 v1, 0x1

    .line 1498
    .end local p0    # "type":Ljava/lang/reflect/Type;
    .local v0, "superType":Ljava/lang/reflect/Type;
    :cond_0
    :goto_0
    return v1

    .line 1490
    .end local v0    # "superType":Ljava/lang/reflect/Type;
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :cond_1
    instance-of v2, p0, Ljava/lang/Class;

    if-eqz v2, :cond_0

    .line 1491
    check-cast p0, Ljava/lang/Class;

    .end local p0    # "type":Ljava/lang/reflect/Type;
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 1492
    .restart local v0    # "superType":Ljava/lang/reflect/Type;
    const-class v2, Ljava/lang/Object;

    if-eq v0, v2, :cond_0

    .line 1495
    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->isGenericParamType(Ljava/lang/reflect/Type;)Z

    move-result v1

    goto :goto_0
.end method

.method private static isJSONTypeIgnore(Ljava/lang/Class;Ljava/lang/String;)Z
    .locals 7
    .param p1, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 1452
    const-class v5, Lcom/alibaba/fastjson/annotation/JSONType;

    invoke-virtual {p0, v5}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 1454
    .local v2, "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    if-eqz v2, :cond_5

    .line 1458
    invoke-interface {v2}, Lcom/alibaba/fastjson/annotation/JSONType;->includes()[Ljava/lang/String;

    move-result-object v0

    .line 1459
    .local v0, "fields":[Ljava/lang/String;
    array-length v5, v0

    if-lez v5, :cond_3

    .line 1460
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v0

    if-ge v1, v5, :cond_2

    .line 1461
    aget-object v5, v0, v1

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1482
    .end local v0    # "fields":[Ljava/lang/String;
    .end local v1    # "i":I
    :cond_0
    :goto_1
    return v3

    .line 1460
    .restart local v0    # "fields":[Ljava/lang/String;
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v3, v4

    .line 1465
    goto :goto_1

    .line 1467
    .end local v1    # "i":I
    :cond_3
    invoke-interface {v2}, Lcom/alibaba/fastjson/annotation/JSONType;->ignores()[Ljava/lang/String;

    move-result-object v0

    .line 1468
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    array-length v5, v0

    if-ge v1, v5, :cond_5

    .line 1469
    aget-object v5, v0, v1

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    move v3, v4

    .line 1470
    goto :goto_1

    .line 1468
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1476
    .end local v0    # "fields":[Ljava/lang/String;
    .end local v1    # "i":I
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    const-class v6, Ljava/lang/Object;

    if-eq v5, v6, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1477
    invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/alibaba/fastjson/util/TypeUtils;->isJSONTypeIgnore(Ljava/lang/Class;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v3, v4

    .line 1478
    goto :goto_1
.end method

.method public static isPath(Ljava/lang/Class;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 966
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->pathClass:Ljava/lang/Class;

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->pathClass_error:Z

    if-nez v1, :cond_0

    .line 968
    :try_start_0
    const-string v1, "java.nio.file.Path"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->pathClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 974
    :cond_0
    :goto_0
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->pathClass:Ljava/lang/Class;

    if-eqz v1, :cond_1

    .line 975
    sget-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->pathClass:Ljava/lang/Class;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    .line 978
    :goto_1
    return v1

    .line 969
    :catch_0
    move-exception v0

    .line 970
    .local v0, "ex":Ljava/lang/Throwable;
    const/4 v1, 0x1

    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->pathClass_error:Z

    goto :goto_0

    .line 978
    .end local v0    # "ex":Ljava/lang/Throwable;
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 960
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    .locals 9
    .param p0, "className"    # Ljava/lang/String;
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/ClassLoader;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 982
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 983
    :cond_0
    const/4 v0, 0x0

    .line 1036
    :cond_1
    :goto_0
    return-object v0

    .line 986
    :cond_2
    sget-object v5, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    .line 988
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_1

    .line 992
    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x5b

    if-ne v5, v6, :cond_3

    .line 993
    invoke-virtual {p0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1

    .line 994
    .local v1, "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {v1, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 997
    .end local v1    # "componentType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_3
    const-string v5, "L"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, ";"

    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 998
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {p0, v8, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .line 999
    .local v4, "newClassName":Ljava/lang/String;
    invoke-static {v4, p1}, Lcom/alibaba/fastjson/util/TypeUtils;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 1003
    .end local v4    # "newClassName":Ljava/lang/String;
    :cond_4
    if-eqz p1, :cond_5

    .line 1004
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1005
    sget-object v5, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1009
    :catch_0
    move-exception v3

    .line 1010
    .local v3, "e":Ljava/lang/Throwable;
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 1015
    .end local v3    # "e":Ljava/lang/Throwable;
    :cond_5
    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 1017
    .local v2, "contextClassLoader":Ljava/lang/ClassLoader;
    if-eqz v2, :cond_6

    .line 1018
    invoke-virtual {v2, p0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1019
    sget-object v5, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1023
    .end local v2    # "contextClassLoader":Ljava/lang/ClassLoader;
    :catch_1
    move-exception v5

    .line 1028
    :cond_6
    :try_start_2
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 1029
    sget-object v5, Lcom/alibaba/fastjson/util/TypeUtils;->mappings:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 1032
    :catch_2
    move-exception v5

    goto :goto_0
.end method

.method static setAccessible(Ljava/lang/reflect/AccessibleObject;)V
    .locals 2
    .param p0, "obj"    # Ljava/lang/reflect/AccessibleObject;

    .prologue
    .line 1598
    sget-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessibleEnable:Z

    if-nez v1, :cond_1

    .line 1611
    :cond_0
    :goto_0
    return-void

    .line 1602
    :cond_1
    invoke-virtual {p0}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1607
    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, v1}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1608
    :catch_0
    move-exception v0

    .line 1609
    .local v0, "error":Ljava/security/AccessControlException;
    const/4 v1, 0x0

    sput-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessibleEnable:Z

    goto :goto_0
.end method

.method public static unwrapOptional(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 3
    .param p0, "type"    # Ljava/lang/reflect/Type;

    .prologue
    const/4 v2, 0x1

    .line 1514
    sget-boolean v1, Lcom/alibaba/fastjson/util/TypeUtils;->optionalClassInited:Z

    if-nez v1, :cond_0

    .line 1516
    :try_start_0
    const-string v1, "java.util.Optional"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/alibaba/fastjson/util/TypeUtils;->optionalClass:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1520
    sput-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->optionalClassInited:Z

    .line 1524
    :cond_0
    :goto_0
    instance-of v1, p0, Ljava/lang/reflect/ParameterizedType;

    if-eqz v1, :cond_1

    move-object v0, p0

    .line 1525
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 1526
    .local v0, "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v1

    sget-object v2, Lcom/alibaba/fastjson/util/TypeUtils;->optionalClass:Ljava/lang/Class;

    if-ne v1, v2, :cond_1

    .line 1527
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    const/4 v2, 0x0

    aget-object p0, v1, v2

    .line 1530
    .end local v0    # "parameterizedType":Ljava/lang/reflect/ParameterizedType;
    .end local p0    # "type":Ljava/lang/reflect/Type;
    :cond_1
    return-object p0

    .line 1517
    .restart local p0    # "type":Ljava/lang/reflect/Type;
    :catch_0
    move-exception v1

    .line 1520
    sput-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->optionalClassInited:Z

    goto :goto_0

    :catchall_0
    move-exception v1

    sput-boolean v2, Lcom/alibaba/fastjson/util/TypeUtils;->optionalClassInited:Z

    throw v1
.end method
