.class public Lcom/alibaba/fastjson/JSONPath;
.super Ljava/lang/Object;
.source "JSONPath.java"

# interfaces
.implements Lcom/alibaba/fastjson/JSONAware;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/JSONPath$Filter;,
        Lcom/alibaba/fastjson/JSONPath$FilterSegement;,
        Lcom/alibaba/fastjson/JSONPath$Operator;,
        Lcom/alibaba/fastjson/JSONPath$StringOpSegement;,
        Lcom/alibaba/fastjson/JSONPath$RlikeSegement;,
        Lcom/alibaba/fastjson/JSONPath$MatchSegement;,
        Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;,
        Lcom/alibaba/fastjson/JSONPath$IntOpSegement;,
        Lcom/alibaba/fastjson/JSONPath$StringInSegement;,
        Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;,
        Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;,
        Lcom/alibaba/fastjson/JSONPath$IntInSegement;,
        Lcom/alibaba/fastjson/JSONPath$ValueSegment;,
        Lcom/alibaba/fastjson/JSONPath$NullSegement;,
        Lcom/alibaba/fastjson/JSONPath$NotNullSegement;,
        Lcom/alibaba/fastjson/JSONPath$RangeSegement;,
        Lcom/alibaba/fastjson/JSONPath$MultiIndexSegement;,
        Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;,
        Lcom/alibaba/fastjson/JSONPath$WildCardSegement;,
        Lcom/alibaba/fastjson/JSONPath$MultiPropertySegement;,
        Lcom/alibaba/fastjson/JSONPath$PropertySegement;,
        Lcom/alibaba/fastjson/JSONPath$SizeSegement;,
        Lcom/alibaba/fastjson/JSONPath$Segement;,
        Lcom/alibaba/fastjson/JSONPath$JSONPathParser;
    }
.end annotation


# static fields
.field private static CACHE_SIZE:I

.field private static pathCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/alibaba/fastjson/JSONPath;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private parserConfig:Lcom/alibaba/fastjson/parser/ParserConfig;

.field private final path:Ljava/lang/String;

.field private segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

.field private serializeConfig:Lcom/alibaba/fastjson/serializer/SerializeConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 36
    const/16 v0, 0x400

    sput v0, Lcom/alibaba/fastjson/JSONPath;->CACHE_SIZE:I

    .line 37
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x80

    const/high16 v2, 0x3f400000    # 0.75f

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Lcom/alibaba/fastjson/JSONPath;->pathCache:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 46
    invoke-static {}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getGlobalInstance()Lcom/alibaba/fastjson/serializer/SerializeConfig;

    move-result-object v0

    invoke-static {}, Lcom/alibaba/fastjson/parser/ParserConfig;->getGlobalInstance()Lcom/alibaba/fastjson/parser/ParserConfig;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/alibaba/fastjson/JSONPath;-><init>(Ljava/lang/String;Lcom/alibaba/fastjson/serializer/SerializeConfig;Lcom/alibaba/fastjson/parser/ParserConfig;)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/alibaba/fastjson/serializer/SerializeConfig;Lcom/alibaba/fastjson/parser/ParserConfig;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "serializeConfig"    # Lcom/alibaba/fastjson/serializer/SerializeConfig;
    .param p3, "parserConfig"    # Lcom/alibaba/fastjson/parser/ParserConfig;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 51
    :cond_0
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    const-string v1, "json-path can not be null or empty"

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_1
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/alibaba/fastjson/JSONPath;->serializeConfig:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    .line 56
    iput-object p3, p0, Lcom/alibaba/fastjson/JSONPath;->parserConfig:Lcom/alibaba/fastjson/parser/ParserConfig;

    .line 57
    return-void
.end method

.method public static varargs arrayAdd(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1
    .param p0, "rootObject"    # Ljava/lang/Object;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/Object;

    .prologue
    .line 343
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object v0

    .line 344
    .local v0, "jsonpath":Lcom/alibaba/fastjson/JSONPath;
    invoke-virtual {v0, p0, p2}, Lcom/alibaba/fastjson/JSONPath;->arrayAdd(Ljava/lang/Object;[Ljava/lang/Object;)V

    .line 345
    return-void
.end method

.method public static compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 358
    if-nez p0, :cond_0

    .line 359
    new-instance v1, Lcom/alibaba/fastjson/JSONPathException;

    const-string v2, "jsonpath can not be null"

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 362
    :cond_0
    sget-object v1, Lcom/alibaba/fastjson/JSONPath;->pathCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/JSONPath;

    .line 363
    .local v0, "jsonpath":Lcom/alibaba/fastjson/JSONPath;
    if-nez v0, :cond_1

    .line 364
    new-instance v0, Lcom/alibaba/fastjson/JSONPath;

    .end local v0    # "jsonpath":Lcom/alibaba/fastjson/JSONPath;
    invoke-direct {v0, p0}, Lcom/alibaba/fastjson/JSONPath;-><init>(Ljava/lang/String;)V

    .line 365
    .restart local v0    # "jsonpath":Lcom/alibaba/fastjson/JSONPath;
    sget-object v1, Lcom/alibaba/fastjson/JSONPath;->pathCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v1

    sget v2, Lcom/alibaba/fastjson/JSONPath;->CACHE_SIZE:I

    if-ge v1, v2, :cond_1

    .line 366
    sget-object v1, Lcom/alibaba/fastjson/JSONPath;->pathCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 367
    sget-object v1, Lcom/alibaba/fastjson/JSONPath;->pathCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "jsonpath":Lcom/alibaba/fastjson/JSONPath;
    check-cast v0, Lcom/alibaba/fastjson/JSONPath;

    .line 370
    .restart local v0    # "jsonpath":Lcom/alibaba/fastjson/JSONPath;
    :cond_1
    return-object v0
.end method

.method public static contains(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 2
    .param p0, "rootObject"    # Ljava/lang/Object;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 329
    if-nez p0, :cond_0

    .line 330
    const/4 v1, 0x0

    .line 334
    :goto_0
    return v1

    .line 333
    :cond_0
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object v0

    .line 334
    .local v0, "jsonpath":Lcom/alibaba/fastjson/JSONPath;
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson/JSONPath;->contains(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public static containsValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "rootObject"    # Ljava/lang/Object;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 338
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object v0

    .line 339
    .local v0, "jsonpath":Lcom/alibaba/fastjson/JSONPath;
    invoke-virtual {v0, p0, p2}, Lcom/alibaba/fastjson/JSONPath;->containsValue(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method static eq(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 3
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    const/4 v0, 0x0

    .line 1991
    if-ne p0, p1, :cond_1

    .line 1992
    const/4 v0, 0x1

    .line 2011
    :cond_0
    :goto_0
    return v0

    .line 1995
    :cond_1
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 1999
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    if-ne v1, v2, :cond_2

    .line 2000
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 2003
    :cond_2
    instance-of v1, p0, Ljava/lang/Number;

    if-eqz v1, :cond_3

    .line 2004
    instance-of v1, p1, Ljava/lang/Number;

    if-eqz v1, :cond_0

    .line 2005
    check-cast p0, Ljava/lang/Number;

    .end local p0    # "a":Ljava/lang/Object;
    check-cast p1, Ljava/lang/Number;

    .end local p1    # "b":Ljava/lang/Object;
    invoke-static {p0, p1}, Lcom/alibaba/fastjson/JSONPath;->eqNotNull(Ljava/lang/Number;Ljava/lang/Number;)Z

    move-result v0

    goto :goto_0

    .line 2011
    .restart local p0    # "a":Ljava/lang/Object;
    .restart local p1    # "b":Ljava/lang/Object;
    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method static eqNotNull(Ljava/lang/Number;Ljava/lang/Number;)Z
    .locals 13
    .param p0, "a"    # Ljava/lang/Number;
    .param p1, "b"    # Ljava/lang/Number;

    .prologue
    .line 2016
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 2017
    .local v2, "clazzA":Ljava/lang/Class;
    invoke-static {v2}, Lcom/alibaba/fastjson/JSONPath;->isInt(Ljava/lang/Class;)Z

    move-result v7

    .line 2019
    .local v7, "isIntA":Z
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 2020
    .local v3, "clazzB":Ljava/lang/Class;
    invoke-static {v3}, Lcom/alibaba/fastjson/JSONPath;->isInt(Ljava/lang/Class;)Z

    move-result v8

    .line 2022
    .local v8, "isIntB":Z
    instance-of v9, p0, Ljava/math/BigDecimal;

    if-eqz v9, :cond_0

    move-object v4, p0

    .line 2023
    check-cast v4, Ljava/math/BigDecimal;

    .line 2025
    .local v4, "decimalA":Ljava/math/BigDecimal;
    if-eqz v8, :cond_0

    .line 2026
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/math/BigDecimal;->valueOf(J)Ljava/math/BigDecimal;

    move-result-object v9

    invoke-virtual {v4, v9}, Ljava/math/BigDecimal;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 2061
    .end local v4    # "decimalA":Ljava/math/BigDecimal;
    :goto_0
    return v9

    .line 2030
    :cond_0
    if-eqz v7, :cond_3

    .line 2031
    if-eqz v8, :cond_2

    .line 2032
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v11

    cmp-long v9, v9, v11

    if-nez v9, :cond_1

    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    goto :goto_0

    .line 2035
    :cond_2
    instance-of v9, p1, Ljava/math/BigInteger;

    if-eqz v9, :cond_3

    move-object v1, p0

    .line 2036
    check-cast v1, Ljava/math/BigInteger;

    .line 2037
    .local v1, "bigIntB":Ljava/math/BigInteger;
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v0

    .line 2039
    .local v0, "bigIntA":Ljava/math/BigInteger;
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v9

    goto :goto_0

    .line 2043
    .end local v0    # "bigIntA":Ljava/math/BigInteger;
    .end local v1    # "bigIntB":Ljava/math/BigInteger;
    :cond_3
    if-eqz v8, :cond_4

    .line 2044
    instance-of v9, p0, Ljava/math/BigInteger;

    if-eqz v9, :cond_4

    move-object v0, p0

    .line 2045
    check-cast v0, Ljava/math/BigInteger;

    .line 2046
    .restart local v0    # "bigIntA":Ljava/math/BigInteger;
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v1

    .line 2048
    .restart local v1    # "bigIntB":Ljava/math/BigInteger;
    invoke-virtual {v0, v1}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v9

    goto :goto_0

    .line 2053
    .end local v0    # "bigIntA":Ljava/math/BigInteger;
    .end local v1    # "bigIntB":Ljava/math/BigInteger;
    :cond_4
    invoke-static {v2}, Lcom/alibaba/fastjson/JSONPath;->isDouble(Ljava/lang/Class;)Z

    move-result v5

    .line 2054
    .local v5, "isDoubleA":Z
    invoke-static {v3}, Lcom/alibaba/fastjson/JSONPath;->isDouble(Ljava/lang/Class;)Z

    move-result v6

    .line 2056
    .local v6, "isDoubleB":Z
    if-eqz v5, :cond_5

    if-nez v6, :cond_7

    :cond_5
    if-eqz v5, :cond_6

    if-nez v8, :cond_7

    :cond_6
    if-eqz v6, :cond_9

    if-eqz v7, :cond_9

    .line 2057
    :cond_7
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v9

    invoke-virtual {p1}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v11

    cmpl-double v9, v9, v11

    if-nez v9, :cond_8

    const/4 v9, 0x1

    goto :goto_0

    :cond_8
    const/4 v9, 0x0

    goto :goto_0

    .line 2061
    :cond_9
    const/4 v9, 0x0

    goto :goto_0
.end method

.method public static eval(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p0, "rootObject"    # Ljava/lang/Object;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 318
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object v0

    .line 319
    .local v0, "jsonpath":Lcom/alibaba/fastjson/JSONPath;
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method protected static isDouble(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 2065
    .local p0, "clazzA":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/lang/Float;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/lang/Double;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected static isInt(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 2069
    .local p0, "clazzA":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/lang/Byte;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/lang/Short;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/lang/Integer;

    if-eq p0, v0, :cond_0

    const-class v0, Ljava/lang/Long;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static paths(Ljava/lang/Object;)Ljava/util/Map;
    .locals 1
    .param p0, "javaObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 386
    sget-object v0, Lcom/alibaba/fastjson/serializer/SerializeConfig;->globalInstance:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-static {p0, v0}, Lcom/alibaba/fastjson/JSONPath;->paths(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static paths(Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)Ljava/util/Map;
    .locals 6
    .param p0, "javaObject"    # Ljava/lang/Object;
    .param p1, "config"    # Lcom/alibaba/fastjson/serializer/SerializeConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/alibaba/fastjson/serializer/SerializeConfig;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 390
    new-instance v2, Ljava/util/IdentityHashMap;

    invoke-direct {v2}, Ljava/util/IdentityHashMap;-><init>()V

    .line 391
    .local v2, "values":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/String;>;"
    const-string v3, "/"

    invoke-static {v2, v3, p0, p1}, Lcom/alibaba/fastjson/JSONPath;->paths(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    .line 393
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 394
    .local v1, "paths":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 395
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 397
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Object;Ljava/lang/String;>;"
    :cond_0
    return-object v1
.end method

.method private static paths(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V
    .locals 22
    .param p1, "parent"    # Ljava/lang/String;
    .param p2, "javaObject"    # Ljava/lang/Object;
    .param p3, "config"    # Lcom/alibaba/fastjson/serializer/SerializeConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lcom/alibaba/fastjson/serializer/SerializeConfig;",
            ")V"
        }
    .end annotation

    .prologue
    .line 402
    .local p0, "paths":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/String;>;"
    if-nez p2, :cond_1

    .line 480
    :cond_0
    return-void

    .line 406
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v19

    if-nez v19, :cond_0

    .line 410
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 412
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/util/Map;

    move/from16 v19, v0

    if-eqz v19, :cond_4

    move-object/from16 v16, p2

    .line 413
    check-cast v16, Ljava/util/Map;

    .line 415
    .local v16, "map":Ljava/util/Map;
    invoke-interface/range {v16 .. v16}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_2
    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    .local v9, "entryObj":Ljava/lang/Object;
    move-object v7, v9

    .line 416
    check-cast v7, Ljava/util/Map$Entry;

    .line 417
    .local v7, "entry":Ljava/util/Map$Entry;
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    .line 419
    .local v14, "key":Ljava/lang/Object;
    instance-of v0, v14, Ljava/lang/String;

    move/from16 v20, v0

    if-eqz v20, :cond_2

    .line 420
    const-string v20, "/"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_3

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 421
    .local v17, "path":Ljava/lang/String;
    :goto_1
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/fastjson/JSONPath;->paths(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    goto :goto_0

    .line 420
    .end local v17    # "path":Ljava/lang/String;
    :cond_3
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    goto :goto_1

    .line 427
    .end local v7    # "entry":Ljava/util/Map$Entry;
    .end local v9    # "entryObj":Ljava/lang/Object;
    .end local v14    # "key":Ljava/lang/Object;
    .end local v16    # "map":Ljava/util/Map;
    :cond_4
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/util/Collection;

    move/from16 v19, v0

    if-eqz v19, :cond_6

    move-object/from16 v5, p2

    .line 428
    check-cast v5, Ljava/util/Collection;

    .line 430
    .local v5, "collection":Ljava/util/Collection;
    const/4 v11, 0x0

    .line 431
    .local v11, "i":I
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_2
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    .line 432
    .local v12, "item":Ljava/lang/Object;
    const-string v20, "/"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_5

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 433
    .restart local v17    # "path":Ljava/lang/String;
    :goto_3
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p3

    invoke-static {v0, v1, v12, v2}, Lcom/alibaba/fastjson/JSONPath;->paths(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    .line 434
    add-int/lit8 v11, v11, 0x1

    .line 435
    goto :goto_2

    .line 432
    .end local v17    # "path":Ljava/lang/String;
    :cond_5
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    goto :goto_3

    .line 440
    .end local v5    # "collection":Ljava/util/Collection;
    .end local v11    # "i":I
    .end local v12    # "item":Ljava/lang/Object;
    :cond_6
    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    .line 442
    .local v4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v19

    if-eqz v19, :cond_8

    .line 443
    invoke-static/range {p2 .. p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v15

    .line 445
    .local v15, "len":I
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_4
    if-ge v11, v15, :cond_0

    .line 446
    move-object/from16 v0, p2

    invoke-static {v0, v11}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v12

    .line 448
    .restart local v12    # "item":Ljava/lang/Object;
    const-string v19, "/"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_7

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 449
    .restart local v17    # "path":Ljava/lang/String;
    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, p3

    invoke-static {v0, v1, v12, v2}, Lcom/alibaba/fastjson/JSONPath;->paths(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V

    .line 450
    add-int/lit8 v11, v11, 0x1

    .line 445
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 448
    .end local v17    # "path":Ljava/lang/String;
    :cond_7
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "/"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    goto :goto_5

    .line 456
    .end local v11    # "i":I
    .end local v12    # "item":Ljava/lang/Object;
    .end local v15    # "len":I
    :cond_8
    invoke-static {v4}, Lcom/alibaba/fastjson/parser/ParserConfig;->isPrimitive(Ljava/lang/Class;)Z

    move-result v19

    if-nez v19, :cond_0

    invoke-virtual {v4}, Ljava/lang/Class;->isEnum()Z

    move-result v19

    if-nez v19, :cond_0

    .line 460
    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v18

    .line 461
    .local v18, "serializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    move-object/from16 v0, v18

    instance-of v0, v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v13, v18

    .line 462
    check-cast v13, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    .line 465
    .local v13, "javaBeanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    :try_start_0
    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldValuesMap(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v10

    .line 466
    .local v10, "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v10}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :cond_9
    :goto_6
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 467
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 469
    .local v14, "key":Ljava/lang/String;
    instance-of v0, v14, Ljava/lang/String;

    move/from16 v20, v0

    if-eqz v20, :cond_9

    .line 470
    const-string v20, "/"

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_a

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 471
    .restart local v17    # "path":Ljava/lang/String;
    :goto_7
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v20

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Lcom/alibaba/fastjson/JSONPath;->paths(Ljava/util/Map;Ljava/lang/String;Ljava/lang/Object;Lcom/alibaba/fastjson/serializer/SerializeConfig;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    .line 474
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v10    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v14    # "key":Ljava/lang/String;
    .end local v17    # "path":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 475
    .local v6, "e":Ljava/lang/Exception;
    new-instance v19, Lcom/alibaba/fastjson/JSONException;

    const-string v20, "toJSON error"

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v6}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v19

    .line 470
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v10    # "fieldValues":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v14    # "key":Ljava/lang/String;
    :cond_a
    :try_start_1
    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "/"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v17

    goto :goto_7
.end method

.method public static read(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 3
    .param p0, "json"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 380
    invoke-static {p0}, Lcom/alibaba/fastjson/JSON;->parse(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 381
    .local v1, "object":Ljava/lang/Object;
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object v0

    .line 382
    .local v0, "jsonpath":Lcom/alibaba/fastjson/JSONPath;
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2
.end method

.method public static remove(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 2
    .param p0, "root"    # Ljava/lang/Object;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 353
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object v0

    .line 354
    .local v0, "jsonpath":Lcom/alibaba/fastjson/JSONPath;
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson/JSONPath;->remove(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2
    .param p0, "rootObject"    # Ljava/lang/Object;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 348
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object v0

    .line 349
    .local v0, "jsonpath":Lcom/alibaba/fastjson/JSONPath;
    invoke-virtual {v0, p0, p2}, Lcom/alibaba/fastjson/JSONPath;->set(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public static size(Ljava/lang/Object;Ljava/lang/String;)I
    .locals 3
    .param p0, "rootObject"    # Ljava/lang/Object;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 323
    invoke-static {p1}, Lcom/alibaba/fastjson/JSONPath;->compile(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath;

    move-result-object v0

    .line 324
    .local v0, "jsonpath":Lcom/alibaba/fastjson/JSONPath;
    invoke-virtual {v0, p0}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 325
    .local v1, "result":Ljava/lang/Object;
    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath;->evalSize(Ljava/lang/Object;)I

    move-result v2

    return v2
.end method


# virtual methods
.method public varargs arrayAdd(Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 17
    .param p1, "rootObject"    # Ljava/lang/Object;
    .param p2, "values"    # [Ljava/lang/Object;

    .prologue
    .line 148
    if-eqz p2, :cond_0

    move-object/from16 v0, p2

    array-length v14, v0

    if-nez v14, :cond_1

    .line 207
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    if-eqz p1, :cond_0

    .line 156
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    .line 158
    move-object/from16 v3, p1

    .line 159
    .local v3, "currentObject":Ljava/lang/Object;
    const/4 v9, 0x0

    .line 160
    .local v9, "parentObject":Ljava/lang/Object;
    const/4 v5, 0x0

    .end local v9    # "parentObject":Ljava/lang/Object;
    .local v5, "i":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    array-length v14, v14

    if-ge v5, v14, :cond_3

    .line 161
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    array-length v14, v14

    add-int/lit8 v14, v14, -0x1

    if-ne v5, v14, :cond_2

    .line 162
    move-object v9, v3

    .line 164
    :cond_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    aget-object v14, v14, v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-interface {v14, v0, v1, v3}, Lcom/alibaba/fastjson/JSONPath$Segement;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 160
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 167
    :cond_3
    move-object v11, v3

    .line 169
    .local v11, "result":Ljava/lang/Object;
    if-nez v11, :cond_4

    .line 170
    new-instance v14, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "value not found in path "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 173
    :cond_4
    instance-of v14, v11, Ljava/util/Collection;

    if-eqz v14, :cond_5

    move-object v2, v11

    .line 174
    check-cast v2, Ljava/util/Collection;

    .line 175
    .local v2, "collection":Ljava/util/Collection;
    move-object/from16 v0, p2

    array-length v15, v0

    const/4 v14, 0x0

    :goto_2
    if-ge v14, v15, :cond_0

    aget-object v13, p2, v14

    .line 176
    .local v13, "value":Ljava/lang/Object;
    invoke-interface {v2, v13}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 175
    add-int/lit8 v14, v14, 0x1

    goto :goto_2

    .line 181
    .end local v2    # "collection":Ljava/util/Collection;
    .end local v13    # "value":Ljava/lang/Object;
    :cond_5
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    .line 184
    .local v12, "resultClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v12}, Ljava/lang/Class;->isArray()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 185
    invoke-static {v11}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v7

    .line 186
    .local v7, "length":I
    invoke-virtual {v12}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v14

    move-object/from16 v0, p2

    array-length v15, v0

    add-int/2addr v15, v7

    invoke-static {v14, v15}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    .line 188
    .local v4, "descArray":Ljava/lang/Object;
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-static {v11, v14, v4, v15, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 189
    const/4 v5, 0x0

    :goto_3
    move-object/from16 v0, p2

    array-length v14, v0

    if-ge v5, v14, :cond_6

    .line 190
    add-int v14, v7, v5

    aget-object v15, p2, v5

    invoke-static {v4, v14, v15}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    .line 189
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 193
    :cond_6
    move-object v8, v4

    .line 198
    .local v8, "newResult":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    array-length v15, v15

    add-int/lit8 v15, v15, -0x1

    aget-object v6, v14, v15

    .line 199
    .local v6, "lastSegement":Lcom/alibaba/fastjson/JSONPath$Segement;
    instance-of v14, v6, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    if-eqz v14, :cond_8

    move-object v10, v6

    .line 200
    check-cast v10, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    .line 201
    .local v10, "propertySegement":Lcom/alibaba/fastjson/JSONPath$PropertySegement;
    move-object/from16 v0, p0

    invoke-virtual {v10, v0, v9, v8}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;->setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 195
    .end local v4    # "descArray":Ljava/lang/Object;
    .end local v6    # "lastSegement":Lcom/alibaba/fastjson/JSONPath$Segement;
    .end local v7    # "length":I
    .end local v8    # "newResult":Ljava/lang/Object;
    .end local v10    # "propertySegement":Lcom/alibaba/fastjson/JSONPath$PropertySegement;
    :cond_7
    new-instance v14, Lcom/alibaba/fastjson/JSONException;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "unsupported array put operation. "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-direct {v14, v15}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 205
    .restart local v4    # "descArray":Ljava/lang/Object;
    .restart local v6    # "lastSegement":Lcom/alibaba/fastjson/JSONPath$Segement;
    .restart local v7    # "length":I
    .restart local v8    # "newResult":Ljava/lang/Object;
    :cond_8
    instance-of v14, v6, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;

    if-eqz v14, :cond_9

    .line 206
    check-cast v6, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;

    .end local v6    # "lastSegement":Lcom/alibaba/fastjson/JSONPath$Segement;
    move-object/from16 v0, p0

    invoke-virtual {v6, v0, v9, v8}, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;->setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 210
    .restart local v6    # "lastSegement":Lcom/alibaba/fastjson/JSONPath$Segement;
    :cond_9
    new-instance v14, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v14}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v14
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "rootObject"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 87
    if-nez p1, :cond_1

    .line 101
    :cond_0
    :goto_0
    return v2

    .line 91
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    .line 93
    move-object v0, p1

    .line 94
    .local v0, "currentObject":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v3, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 95
    iget-object v3, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    aget-object v3, v3, v1

    invoke-interface {v3, p0, p1, v0}, Lcom/alibaba/fastjson/JSONPath$Segement;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 96
    if-eqz v0, :cond_0

    .line 94
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 101
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public containsValue(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "rootObject"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 106
    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/JSONPath;->eval(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 108
    .local v0, "currentObject":Ljava/lang/Object;
    if-ne v0, p2, :cond_0

    .line 128
    .end local v0    # "currentObject":Ljava/lang/Object;
    :goto_0
    return v3

    .line 112
    .restart local v0    # "currentObject":Ljava/lang/Object;
    :cond_0
    if-nez v0, :cond_1

    move v3, v4

    .line 113
    goto :goto_0

    .line 116
    :cond_1
    instance-of v5, v0, Ljava/lang/Iterable;

    if-eqz v5, :cond_4

    .line 117
    check-cast v0, Ljava/lang/Iterable;

    .end local v0    # "currentObject":Ljava/lang/Object;
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 118
    .local v1, "it":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 119
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 120
    .local v2, "item":Ljava/lang/Object;
    invoke-static {v2, p2}, Lcom/alibaba/fastjson/JSONPath;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .end local v2    # "item":Ljava/lang/Object;
    :cond_3
    move v3, v4

    .line 125
    goto :goto_0

    .line 128
    .end local v1    # "it":Ljava/util/Iterator;
    .restart local v0    # "currentObject":Ljava/lang/Object;
    :cond_4
    invoke-static {v0, p2}, Lcom/alibaba/fastjson/JSONPath;->eq(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0
.end method

.method protected deepScan(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V
    .locals 15
    .param p1, "currentObject"    # Ljava/lang/Object;
    .param p2, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2162
    .local p3, "results":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-nez p1, :cond_1

    .line 2215
    :cond_0
    :goto_0
    return-void

    .line 2166
    :cond_1
    move-object/from16 v0, p1

    instance-of v12, v0, Ljava/util/Map;

    if-eqz v12, :cond_3

    move-object/from16 v10, p1

    .line 2167
    check-cast v10, Ljava/util/Map;

    .line 2169
    .local v10, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    move-object/from16 v0, p2

    invoke-interface {v10, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    .line 2170
    move-object/from16 v0, p2

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 2171
    .local v11, "val":Ljava/lang/Object;
    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2175
    .end local v11    # "val":Ljava/lang/Object;
    :cond_2
    invoke-interface {v10}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 2176
    .restart local v11    # "val":Ljava/lang/Object;
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {p0, v11, v0, v1}, Lcom/alibaba/fastjson/JSONPath;->deepScan(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_1

    .line 2181
    .end local v10    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .end local v11    # "val":Ljava/lang/Object;
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 2183
    .local v3, "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-result-object v2

    .line 2184
    .local v2, "beanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    if-eqz v2, :cond_5

    .line 2186
    :try_start_0
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldSerializer(Ljava/lang/String;)Lcom/alibaba/fastjson/serializer/FieldSerializer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v6

    .line 2187
    .local v6, "fieldDeser":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    if-eqz v6, :cond_4

    .line 2189
    :try_start_1
    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Lcom/alibaba/fastjson/serializer/FieldSerializer;->getPropertyValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 2190
    .restart local v11    # "val":Ljava/lang/Object;
    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 2191
    .end local v11    # "val":Ljava/lang/Object;
    :catch_0
    move-exception v5

    .line 2192
    .local v5, "ex":Ljava/lang/reflect/InvocationTargetException;
    :try_start_2
    new-instance v12, Lcom/alibaba/fastjson/JSONException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getFieldValue error."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 2203
    .end local v5    # "ex":Ljava/lang/reflect/InvocationTargetException;
    .end local v6    # "fieldDeser":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    :catch_1
    move-exception v4

    .line 2204
    .local v4, "e":Ljava/lang/Exception;
    new-instance v12, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "jsonpath error, path "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", segement "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v4}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    .line 2193
    .end local v4    # "e":Ljava/lang/Exception;
    .restart local v6    # "fieldDeser":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    :catch_2
    move-exception v5

    .line 2194
    .local v5, "ex":Ljava/lang/IllegalAccessException;
    :try_start_3
    new-instance v12, Lcom/alibaba/fastjson/JSONException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "getFieldValue error."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    .line 2198
    .end local v5    # "ex":Ljava/lang/IllegalAccessException;
    :cond_4
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldValues(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 2199
    .local v7, "fieldValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    .line 2200
    .restart local v11    # "val":Ljava/lang/Object;
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {p0, v11, v0, v1}, Lcom/alibaba/fastjson/JSONPath;->deepScan(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_2

    .line 2208
    .end local v6    # "fieldDeser":Lcom/alibaba/fastjson/serializer/FieldSerializer;
    .end local v7    # "fieldValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v11    # "val":Ljava/lang/Object;
    :cond_5
    move-object/from16 v0, p1

    instance-of v12, v0, Ljava/util/List;

    if-eqz v12, :cond_6

    move-object/from16 v9, p1

    .line 2209
    check-cast v9, Ljava/util/List;

    .line 2211
    .local v9, "list":Ljava/util/List;
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_3
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    if-ge v8, v12, :cond_0

    .line 2212
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .line 2213
    .restart local v11    # "val":Ljava/lang/Object;
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {p0, v11, v0, v1}, Lcom/alibaba/fastjson/JSONPath;->deepScan(Ljava/lang/Object;Ljava/lang/String;Ljava/util/List;)V

    .line 2211
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 2218
    .end local v8    # "i":I
    .end local v9    # "list":Ljava/util/List;
    .end local v11    # "val":Ljava/lang/Object;
    :cond_6
    new-instance v12, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "jsonpath error, path "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", segement "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v12
.end method

.method public eval(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "rootObject"    # Ljava/lang/Object;

    .prologue
    .line 73
    if-nez p1, :cond_1

    .line 74
    const/4 v0, 0x0

    .line 83
    :cond_0
    return-object v0

    .line 77
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    .line 79
    move-object v0, p1

    .line 80
    .local v0, "currentObject":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 81
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    aget-object v2, v2, v1

    invoke-interface {v2, p0, p1, v0}, Lcom/alibaba/fastjson/JSONPath$Segement;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 80
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method evalSize(Ljava/lang/Object;)I
    .locals 7
    .param p1, "currentObject"    # Ljava/lang/Object;

    .prologue
    const/4 v1, -0x1

    .line 2298
    if-nez p1, :cond_1

    .line 2332
    .end local p1    # "currentObject":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v1

    .line 2302
    .restart local p1    # "currentObject":Ljava/lang/Object;
    :cond_1
    instance-of v4, p1, Ljava/util/Collection;

    if-eqz v4, :cond_2

    .line 2303
    check-cast p1, Ljava/util/Collection;

    .end local p1    # "currentObject":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    goto :goto_0

    .line 2306
    .restart local p1    # "currentObject":Ljava/lang/Object;
    :cond_2
    instance-of v4, p1, [Ljava/lang/Object;

    if-eqz v4, :cond_3

    .line 2307
    check-cast p1, [Ljava/lang/Object;

    .end local p1    # "currentObject":Ljava/lang/Object;
    check-cast p1, [Ljava/lang/Object;

    array-length v1, p1

    goto :goto_0

    .line 2310
    .restart local p1    # "currentObject":Ljava/lang/Object;
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->isArray()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 2311
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1

    goto :goto_0

    .line 2314
    :cond_4
    instance-of v4, p1, Ljava/util/Map;

    if-eqz v4, :cond_6

    .line 2315
    const/4 v1, 0x0

    .line 2317
    .local v1, "count":I
    check-cast p1, Ljava/util/Map;

    .end local p1    # "currentObject":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_5
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 2318
    .local v3, "value":Ljava/lang/Object;
    if-eqz v3, :cond_5

    .line 2319
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 2325
    .end local v1    # "count":I
    .end local v3    # "value":Ljava/lang/Object;
    .restart local p1    # "currentObject":Ljava/lang/Object;
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-result-object v0

    .line 2327
    .local v0, "beanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    if-eqz v0, :cond_0

    .line 2332
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getSize(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 2333
    :catch_0
    move-exception v2

    .line 2334
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "evalSize error : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4
.end method

.method protected getArrayItem(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 5
    .param p1, "currentObject"    # Ljava/lang/Object;
    .param p2, "index"    # I

    .prologue
    const/4 v2, 0x0

    .line 1872
    if-nez p1, :cond_1

    .line 1904
    :cond_0
    :goto_0
    return-object v2

    .line 1876
    :cond_1
    instance-of v3, p1, Ljava/util/List;

    if-eqz v3, :cond_3

    move-object v1, p1

    .line 1877
    check-cast v1, Ljava/util/List;

    .line 1879
    .local v1, "list":Ljava/util/List;
    if-ltz p2, :cond_2

    .line 1880
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge p2, v3, :cond_0

    .line 1881
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 1885
    :cond_2
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-gt v3, v4, :cond_0

    .line 1886
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/2addr v2, p2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 1892
    .end local v1    # "list":Ljava/util/List;
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1893
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 1895
    .local v0, "arrayLenth":I
    if-ltz p2, :cond_4

    .line 1896
    if-ge p2, v0, :cond_0

    .line 1897
    invoke-static {p1, p2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 1901
    :cond_4
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gt v3, v0, :cond_0

    .line 1902
    add-int v2, v0, p2

    invoke-static {p1, v2}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 1908
    .end local v0    # "arrayLenth":I
    :cond_5
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method protected getJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;"
        }
    .end annotation

    .prologue
    .line 2286
    .local p1, "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 2288
    .local v0, "beanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath;->serializeConfig:Lcom/alibaba/fastjson/serializer/SerializeConfig;

    invoke-virtual {v2, p1}, Lcom/alibaba/fastjson/serializer/SerializeConfig;->getObjectWriter(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/ObjectSerializer;

    move-result-object v1

    .line 2289
    .local v1, "serializer":Lcom/alibaba/fastjson/serializer/ObjectSerializer;
    instance-of v2, v1, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    if-eqz v2, :cond_0

    move-object v0, v1

    .line 2290
    check-cast v0, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    .line 2293
    :cond_0
    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 484
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    return-object v0
.end method

.method protected getPropertyValue(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;
    .locals 15
    .param p1, "currentObject"    # Ljava/lang/Object;
    .param p2, "propertyName"    # Ljava/lang/String;
    .param p3, "strictMode"    # Z

    .prologue
    .line 2074
    if-nez p1, :cond_1

    .line 2075
    const/4 v11, 0x0

    .line 2153
    :cond_0
    :goto_0
    return-object v11

    .line 2078
    :cond_1
    move-object/from16 v0, p1

    instance-of v12, v0, Ljava/util/Map;

    if-eqz v12, :cond_2

    move-object/from16 v9, p1

    .line 2079
    check-cast v9, Ljava/util/Map;

    .line 2080
    .local v9, "map":Ljava/util/Map;
    move-object/from16 v0, p2

    invoke-interface {v9, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 2082
    .local v11, "val":Ljava/lang/Object;
    if-nez v11, :cond_0

    const-string v12, "size"

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_0

    .line 2083
    invoke-interface {v9}, Ljava/util/Map;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .local v11, "val":Ljava/lang/Integer;
    goto :goto_0

    .line 2089
    .end local v9    # "map":Ljava/util/Map;
    .end local v11    # "val":Ljava/lang/Integer;
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 2091
    .local v3, "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, v3}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-result-object v2

    .line 2092
    .local v2, "beanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    if-eqz v2, :cond_3

    .line 2094
    :try_start_0
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v2, v0, v1}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldValue(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    goto :goto_0

    .line 2095
    :catch_0
    move-exception v4

    .line 2096
    .local v4, "e":Ljava/lang/Exception;
    new-instance v12, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "jsonpath error, path "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", segement "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13, v4}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v12

    .line 2100
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_3
    move-object/from16 v0, p1

    instance-of v12, v0, Ljava/util/List;

    if-eqz v12, :cond_6

    move-object/from16 v8, p1

    .line 2101
    check-cast v8, Ljava/util/List;

    .line 2103
    .local v8, "list":Ljava/util/List;
    const-string v12, "size"

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 2104
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto :goto_0

    .line 2107
    :cond_4
    new-instance v5, Lcom/alibaba/fastjson/JSONArray;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    invoke-direct {v5, v12}, Lcom/alibaba/fastjson/JSONArray;-><init>(I)V

    .line 2109
    .local v5, "fieldValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v12

    if-ge v6, v12, :cond_5

    .line 2110
    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    .line 2111
    .local v10, "obj":Ljava/lang/Object;
    move-object/from16 v0, p2

    move/from16 v1, p3

    invoke-virtual {p0, v10, v0, v1}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValue(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v7

    .line 2112
    .local v7, "itemValue":Ljava/lang/Object;
    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2109
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .end local v7    # "itemValue":Ljava/lang/Object;
    .end local v10    # "obj":Ljava/lang/Object;
    :cond_5
    move-object v11, v5

    .line 2115
    goto/16 :goto_0

    .line 2118
    .end local v5    # "fieldValues":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    .end local v6    # "i":I
    .end local v8    # "list":Ljava/util/List;
    :cond_6
    move-object/from16 v0, p1

    instance-of v12, v0, Ljava/lang/Enum;

    if-eqz v12, :cond_8

    move-object/from16 v4, p1

    .line 2119
    check-cast v4, Ljava/lang/Enum;

    .line 2120
    .local v4, "e":Ljava/lang/Enum;
    const-string v12, "name"

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 2121
    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_0

    .line 2124
    :cond_7
    const-string v12, "ordinal"

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_8

    .line 2125
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto/16 :goto_0

    .line 2129
    .end local v4    # "e":Ljava/lang/Enum;
    :cond_8
    move-object/from16 v0, p1

    instance-of v12, v0, Ljava/util/Calendar;

    if-eqz v12, :cond_e

    move-object/from16 v4, p1

    .line 2130
    check-cast v4, Ljava/util/Calendar;

    .line 2132
    .local v4, "e":Ljava/util/Calendar;
    const-string v12, "year"

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_9

    .line 2133
    const/4 v12, 0x1

    invoke-virtual {v4, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto/16 :goto_0

    .line 2136
    :cond_9
    const-string v12, "month"

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_a

    .line 2137
    const/4 v12, 0x2

    invoke-virtual {v4, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto/16 :goto_0

    .line 2140
    :cond_a
    const-string v12, "day"

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_b

    .line 2141
    const/4 v12, 0x5

    invoke-virtual {v4, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto/16 :goto_0

    .line 2144
    :cond_b
    const-string v12, "hour"

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 2145
    const/16 v12, 0xb

    invoke-virtual {v4, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto/16 :goto_0

    .line 2148
    :cond_c
    const-string v12, "minute"

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_d

    .line 2149
    const/16 v12, 0xc

    invoke-virtual {v4, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto/16 :goto_0

    .line 2152
    :cond_d
    const-string v12, "second"

    move-object/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_e

    .line 2153
    const/16 v12, 0xd

    invoke-virtual {v4, v12}, Ljava/util/Calendar;->get(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    goto/16 :goto_0

    .line 2157
    .end local v4    # "e":Ljava/util/Calendar;
    :cond_e
    new-instance v12, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "jsonpath error, path "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", segement "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v12
.end method

.method protected getPropertyValues(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 7
    .param p1, "currentObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1970
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1972
    .local v1, "currentClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath;->getJavaBeanSerializer(Ljava/lang/Class;)Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;

    move-result-object v0

    .line 1974
    .local v0, "beanSerializer":Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;
    if-eqz v0, :cond_0

    .line 1976
    :try_start_0
    invoke-virtual {v0, p1}, Lcom/alibaba/fastjson/serializer/JavaBeanSerializer;->getFieldValues(Ljava/lang/Object;)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 1984
    :goto_0
    return-object v4

    .line 1977
    :catch_0
    move-exception v2

    .line 1978
    .local v2, "e":Ljava/lang/Exception;
    new-instance v4, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "jsonpath error, path "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 1982
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_0
    instance-of v4, p1, Ljava/util/Map;

    if-eqz v4, :cond_1

    move-object v3, p1

    .line 1983
    check-cast v3, Ljava/util/Map;

    .line 1984
    .local v3, "map":Ljava/util/Map;
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    goto :goto_0

    .line 1987
    .end local v3    # "map":Ljava/util/Map;
    :cond_1
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v4}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v4
.end method

.method protected init()V
    .locals 4

    .prologue
    .line 60
    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    if-eqz v1, :cond_0

    .line 70
    :goto_0
    return-void

    .line 64
    :cond_0
    const-string v1, "*"

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/alibaba/fastjson/JSONPath$Segement;

    const/4 v2, 0x0

    sget-object v3, Lcom/alibaba/fastjson/JSONPath$WildCardSegement;->instance:Lcom/alibaba/fastjson/JSONPath$WildCardSegement;

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    goto :goto_0

    .line 67
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;

    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;-><init>(Ljava/lang/String;)V

    .line 68
    .local v0, "parser":Lcom/alibaba/fastjson/JSONPath$JSONPathParser;
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->explain()[Lcom/alibaba/fastjson/JSONPath$Segement;

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    goto :goto_0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "rootObject"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 214
    if-nez p1, :cond_1

    .line 244
    :cond_0
    :goto_0
    return v5

    .line 218
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    .line 220
    move-object v0, p1

    .line 221
    .local v0, "currentObject":Ljava/lang/Object;
    const/4 v3, 0x0

    .line 222
    .local v3, "parentObject":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v6, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    array-length v6, v6

    if-ge v1, v6, :cond_2

    .line 223
    iget-object v6, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ne v1, v6, :cond_3

    .line 224
    move-object v3, v0

    .line 233
    .end local v3    # "parentObject":Ljava/lang/Object;
    :cond_2
    if-eqz v3, :cond_0

    .line 237
    iget-object v5, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    iget-object v6, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    aget-object v2, v5, v6

    .line 238
    .local v2, "lastSegement":Lcom/alibaba/fastjson/JSONPath$Segement;
    instance-of v5, v2, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    if-eqz v5, :cond_4

    move-object v4, v2

    .line 239
    check-cast v4, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    .line 240
    .local v4, "propertySegement":Lcom/alibaba/fastjson/JSONPath$PropertySegement;
    invoke-virtual {v4, p0, v3}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;->remove(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;)Z

    move-result v5

    goto :goto_0

    .line 227
    .end local v2    # "lastSegement":Lcom/alibaba/fastjson/JSONPath$Segement;
    .end local v4    # "propertySegement":Lcom/alibaba/fastjson/JSONPath$PropertySegement;
    .restart local v3    # "parentObject":Ljava/lang/Object;
    :cond_3
    iget-object v6, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    aget-object v6, v6, v1

    invoke-interface {v6, p0, p1, v0}, Lcom/alibaba/fastjson/JSONPath$Segement;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 228
    if-eqz v0, :cond_2

    .line 222
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 243
    .end local v3    # "parentObject":Ljava/lang/Object;
    .restart local v2    # "lastSegement":Lcom/alibaba/fastjson/JSONPath$Segement;
    :cond_4
    instance-of v5, v2, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;

    if-eqz v5, :cond_5

    .line 244
    check-cast v2, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;

    .end local v2    # "lastSegement":Lcom/alibaba/fastjson/JSONPath$Segement;
    invoke-virtual {v2, p0, v3}, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;->remove(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;)Z

    move-result v5

    goto :goto_0

    .line 247
    .restart local v2    # "lastSegement":Lcom/alibaba/fastjson/JSONPath$Segement;
    :cond_5
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v5}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v5
.end method

.method public removeArrayItem(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;I)Z
    .locals 6
    .param p1, "path"    # Lcom/alibaba/fastjson/JSONPath;
    .param p2, "currentObject"    # Ljava/lang/Object;
    .param p3, "index"    # I

    .prologue
    const/4 v3, 0x0

    .line 1945
    instance-of v4, p2, Ljava/util/List;

    if-eqz v4, :cond_3

    move-object v1, p2

    .line 1946
    check-cast v1, Ljava/util/List;

    .line 1947
    .local v1, "list":Ljava/util/List;
    if-ltz p3, :cond_2

    .line 1948
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-lt p3, v4, :cond_1

    .line 1961
    :cond_0
    :goto_0
    return v3

    .line 1951
    :cond_1
    invoke-interface {v1, p3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1961
    :goto_1
    const/4 v3, 0x1

    goto :goto_0

    .line 1953
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    add-int v2, v4, p3

    .line 1955
    .local v2, "newIndex":I
    if-ltz v2, :cond_0

    .line 1959
    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 1964
    .end local v1    # "list":Ljava/util/List;
    .end local v2    # "newIndex":I
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 1965
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v3, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unsupported set operation."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected removePropertyValue(Ljava/lang/Object;Ljava/lang/String;)Z
    .locals 8
    .param p1, "parent"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2260
    instance-of v6, p1, Ljava/util/Map;

    if-eqz v6, :cond_1

    .line 2261
    check-cast p1, Ljava/util/Map;

    .end local p1    # "parent":Ljava/lang/Object;
    invoke-interface {p1, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 2262
    .local v3, "origin":Ljava/lang/Object;
    if-eqz v3, :cond_0

    .line 2279
    .end local v3    # "origin":Ljava/lang/Object;
    :goto_0
    return v4

    .restart local v3    # "origin":Ljava/lang/Object;
    :cond_0
    move v4, v5

    .line 2262
    goto :goto_0

    .line 2265
    .end local v3    # "origin":Ljava/lang/Object;
    .restart local p1    # "parent":Ljava/lang/Object;
    :cond_1
    iget-object v6, p0, Lcom/alibaba/fastjson/JSONPath;->parserConfig:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v1

    .line 2267
    .local v1, "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    const/4 v0, 0x0

    .line 2268
    .local v0, "beanDerializer":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    instance-of v6, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-eqz v6, :cond_2

    move-object v0, v1

    .line 2269
    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    .line 2272
    :cond_2
    if-eqz v0, :cond_4

    .line 2273
    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v2

    .line 2274
    .local v2, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    if-nez v2, :cond_3

    move v4, v5

    .line 2275
    goto :goto_0

    .line 2278
    :cond_3
    const/4 v5, 0x0

    invoke-virtual {v2, p1, v5}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    .line 2282
    .end local v2    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :cond_4
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v4}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v4
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 13
    .param p1, "rootObject"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 251
    if-nez p1, :cond_0

    .line 252
    const/4 v11, 0x0

    .line 311
    :goto_0
    return v11

    .line 255
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    .line 257
    move-object v1, p1

    .line 258
    .local v1, "currentObject":Ljava/lang/Object;
    const/4 v7, 0x0

    .line 259
    .local v7, "parentObject":Ljava/lang/Object;
    const/4 v3, 0x0

    .end local v7    # "parentObject":Ljava/lang/Object;
    .local v3, "i":I
    :goto_1
    iget-object v11, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    array-length v11, v11

    if-ge v3, v11, :cond_5

    .line 265
    move-object v7, v1

    .line 266
    .restart local v7    # "parentObject":Ljava/lang/Object;
    iget-object v11, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    aget-object v10, v11, v3

    .line 267
    .local v10, "segment":Lcom/alibaba/fastjson/JSONPath$Segement;
    invoke-interface {v10, p0, p1, v1}, Lcom/alibaba/fastjson/JSONPath$Segement;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 268
    if-nez v1, :cond_2

    .line 269
    const/4 v6, 0x0

    .line 270
    .local v6, "nextSegement":Lcom/alibaba/fastjson/JSONPath$Segement;
    iget-object v11, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    array-length v11, v11

    add-int/lit8 v11, v11, -0x1

    if-ge v3, v11, :cond_1

    .line 271
    iget-object v11, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    add-int/lit8 v12, v3, 0x1

    aget-object v6, v11, v12

    .line 274
    :cond_1
    const/4 v5, 0x0

    .line 275
    .local v5, "newObj":Ljava/lang/Object;
    instance-of v11, v6, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    if-eqz v11, :cond_3

    .line 276
    new-instance v5, Lcom/alibaba/fastjson/JSONObject;

    .end local v5    # "newObj":Ljava/lang/Object;
    invoke-direct {v5}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .local v5, "newObj":Lcom/alibaba/fastjson/JSONObject;
    move-object v2, v5

    .line 281
    .end local v5    # "newObj":Lcom/alibaba/fastjson/JSONObject;
    .local v2, "newObj":Ljava/lang/Object;
    :goto_2
    if-eqz v2, :cond_5

    .line 282
    instance-of v11, v10, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    if-eqz v11, :cond_4

    move-object v8, v10

    .line 283
    check-cast v8, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    .line 284
    .local v8, "propSegement":Lcom/alibaba/fastjson/JSONPath$PropertySegement;
    invoke-virtual {v8, p0, v7, v2}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;->setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)V

    .end local v1    # "currentObject":Ljava/lang/Object;
    .local v2, "currentObject":Ljava/lang/Object;
    move-object v1, v2

    .line 259
    .end local v2    # "currentObject":Ljava/lang/Object;
    .end local v6    # "nextSegement":Lcom/alibaba/fastjson/JSONPath$Segement;
    .end local v8    # "propSegement":Lcom/alibaba/fastjson/JSONPath$PropertySegement;
    .restart local v1    # "currentObject":Ljava/lang/Object;
    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 277
    .local v5, "newObj":Ljava/lang/Object;
    .restart local v6    # "nextSegement":Lcom/alibaba/fastjson/JSONPath$Segement;
    :cond_3
    instance-of v11, v6, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;

    if-eqz v11, :cond_9

    .line 278
    new-instance v5, Lcom/alibaba/fastjson/JSONArray;

    .end local v5    # "newObj":Ljava/lang/Object;
    invoke-direct {v5}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .local v5, "newObj":Lcom/alibaba/fastjson/JSONArray;
    move-object v2, v5

    .local v2, "newObj":Ljava/lang/Object;
    goto :goto_2

    .line 287
    .end local v5    # "newObj":Lcom/alibaba/fastjson/JSONArray;
    :cond_4
    instance-of v11, v10, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;

    if-eqz v11, :cond_5

    move-object v0, v10

    .line 288
    check-cast v0, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;

    .line 289
    .local v0, "arrayAccessSegement":Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;
    invoke-virtual {v0, p0, v7, v2}, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;->setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Z

    .end local v1    # "currentObject":Ljava/lang/Object;
    .local v2, "currentObject":Ljava/lang/Object;
    move-object v1, v2

    .line 291
    .end local v2    # "currentObject":Ljava/lang/Object;
    .restart local v1    # "currentObject":Ljava/lang/Object;
    goto :goto_3

    .line 299
    .end local v0    # "arrayAccessSegement":Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;
    .end local v6    # "nextSegement":Lcom/alibaba/fastjson/JSONPath$Segement;
    .end local v7    # "parentObject":Ljava/lang/Object;
    .end local v10    # "segment":Lcom/alibaba/fastjson/JSONPath$Segement;
    :cond_5
    if-nez v7, :cond_6

    .line 300
    const/4 v11, 0x0

    goto :goto_0

    .line 303
    :cond_6
    iget-object v11, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    iget-object v12, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    array-length v12, v12

    add-int/lit8 v12, v12, -0x1

    aget-object v4, v11, v12

    .line 304
    .local v4, "lastSegement":Lcom/alibaba/fastjson/JSONPath$Segement;
    instance-of v11, v4, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    if-eqz v11, :cond_7

    move-object v9, v4

    .line 305
    check-cast v9, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    .line 306
    .local v9, "propertySegement":Lcom/alibaba/fastjson/JSONPath$PropertySegement;
    invoke-virtual {v9, p0, v7, p2}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;->setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 307
    const/4 v11, 0x1

    goto :goto_0

    .line 310
    .end local v9    # "propertySegement":Lcom/alibaba/fastjson/JSONPath$PropertySegement;
    :cond_7
    instance-of v11, v4, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;

    if-eqz v11, :cond_8

    .line 311
    check-cast v4, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;

    .end local v4    # "lastSegement":Lcom/alibaba/fastjson/JSONPath$Segement;
    invoke-virtual {v4, p0, v7, p2}, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;->setValue(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v11

    goto :goto_0

    .line 314
    .restart local v4    # "lastSegement":Lcom/alibaba/fastjson/JSONPath$Segement;
    :cond_8
    new-instance v11, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v11}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v11

    .end local v4    # "lastSegement":Lcom/alibaba/fastjson/JSONPath$Segement;
    .local v5, "newObj":Ljava/lang/Object;
    .restart local v6    # "nextSegement":Lcom/alibaba/fastjson/JSONPath$Segement;
    .restart local v7    # "parentObject":Ljava/lang/Object;
    .restart local v10    # "segment":Lcom/alibaba/fastjson/JSONPath$Segement;
    :cond_9
    move-object v2, v5

    .end local v5    # "newObj":Ljava/lang/Object;
    .local v2, "newObj":Ljava/lang/Object;
    goto :goto_2
.end method

.method public setArrayItem(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;ILjava/lang/Object;)Z
    .locals 6
    .param p1, "path"    # Lcom/alibaba/fastjson/JSONPath;
    .param p2, "currentObject"    # Ljava/lang/Object;
    .param p3, "index"    # I
    .param p4, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    .line 1913
    instance-of v3, p2, Ljava/util/List;

    if-eqz v3, :cond_2

    move-object v2, p2

    .line 1914
    check-cast v2, Ljava/util/List;

    .line 1915
    .local v2, "list":Ljava/util/List;
    if-ltz p3, :cond_1

    .line 1916
    invoke-interface {v2, p3, p4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1937
    .end local v2    # "list":Ljava/util/List;
    :cond_0
    :goto_0
    return v4

    .line 1918
    .restart local v2    # "list":Ljava/util/List;
    :cond_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v3, p3

    invoke-interface {v2, v3, p4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1923
    .end local v2    # "list":Ljava/util/List;
    :cond_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1924
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1925
    invoke-static {p2}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v0

    .line 1927
    .local v0, "arrayLenth":I
    if-ltz p3, :cond_3

    .line 1928
    if-ge p3, v0, :cond_0

    .line 1929
    invoke-static {p2, p3, p4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_0

    .line 1932
    :cond_3
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    if-gt v3, v0, :cond_0

    .line 1933
    add-int v3, v0, p3

    invoke-static {p2, v3, p4}, Ljava/lang/reflect/Array;->set(Ljava/lang/Object;ILjava/lang/Object;)V

    goto :goto_0

    .line 1940
    .end local v0    # "arrayLenth":I
    :cond_4
    new-instance v3, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "unsupported set operation."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method protected setPropertyValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "parent"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    .line 2223
    instance-of v5, p1, Ljava/util/Map;

    if-eqz v5, :cond_1

    .line 2224
    check-cast p1, Ljava/util/Map;

    .end local p1    # "parent":Ljava/lang/Object;
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2252
    :cond_0
    :goto_0
    return v4

    .line 2228
    .restart local p1    # "parent":Ljava/lang/Object;
    :cond_1
    instance-of v5, p1, Ljava/util/List;

    if-eqz v5, :cond_3

    .line 2229
    check-cast p1, Ljava/util/List;

    .end local p1    # "parent":Ljava/lang/Object;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_2
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 2230
    .local v2, "element":Ljava/lang/Object;
    if-eqz v2, :cond_2

    .line 2233
    invoke-virtual {p0, v2, p2, p3}, Lcom/alibaba/fastjson/JSONPath;->setPropertyValue(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    goto :goto_1

    .line 2238
    .end local v2    # "element":Ljava/lang/Object;
    .restart local p1    # "parent":Ljava/lang/Object;
    :cond_3
    iget-object v5, p0, Lcom/alibaba/fastjson/JSONPath;->parserConfig:Lcom/alibaba/fastjson/parser/ParserConfig;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/alibaba/fastjson/parser/ParserConfig;->getDeserializer(Ljava/lang/reflect/Type;)Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;

    move-result-object v1

    .line 2240
    .local v1, "derializer":Lcom/alibaba/fastjson/parser/deserializer/ObjectDeserializer;
    const/4 v0, 0x0

    .line 2241
    .local v0, "beanDerializer":Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;
    instance-of v5, v1, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    if-eqz v5, :cond_4

    move-object v0, v1

    .line 2242
    check-cast v0, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;

    .line 2245
    :cond_4
    if-eqz v0, :cond_6

    .line 2246
    invoke-virtual {v0, p2}, Lcom/alibaba/fastjson/parser/deserializer/JavaBeanDeserializer;->getFieldDeserializer(Ljava/lang/String;)Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    move-result-object v3

    .line 2247
    .local v3, "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    if-nez v3, :cond_5

    .line 2248
    const/4 v4, 0x0

    goto :goto_0

    .line 2251
    :cond_5
    invoke-virtual {v3, p1, p3}, Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 2255
    .end local v3    # "fieldDeserializer":Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    :cond_6
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v4}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v4
.end method

.method public size(Ljava/lang/Object;)I
    .locals 3
    .param p1, "rootObject"    # Ljava/lang/Object;

    .prologue
    .line 132
    if-nez p1, :cond_0

    .line 133
    const/4 v2, -0x1

    .line 143
    :goto_0
    return v2

    .line 136
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath;->init()V

    .line 138
    move-object v0, p1

    .line 139
    .local v0, "currentObject":Ljava/lang/Object;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 140
    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath;->segments:[Lcom/alibaba/fastjson/JSONPath$Segement;

    aget-object v2, v2, v1

    invoke-interface {v2, p0, p1, v0}, Lcom/alibaba/fastjson/JSONPath$Segement;->eval(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 139
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 143
    :cond_1
    invoke-virtual {p0, v0}, Lcom/alibaba/fastjson/JSONPath;->evalSize(Ljava/lang/Object;)I

    move-result v2

    goto :goto_0
.end method

.method public toJSONString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2340
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath;->path:Ljava/lang/String;

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
