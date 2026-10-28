.class Lcom/alibaba/fastjson/JSONPath$IntInSegement;
.super Ljava/lang/Object;
.source "JSONPath.java"

# interfaces
.implements Lcom/alibaba/fastjson/JSONPath$Filter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "IntInSegement"
.end annotation


# instance fields
.field private final not:Z

.field private final propertyName:Ljava/lang/String;

.field private final values:[J


# direct methods
.method public constructor <init>(Ljava/lang/String;[JZ)V
    .locals 0
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "values"    # [J
    .param p3, "not"    # Z

    .prologue
    .line 1463
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1464
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$IntInSegement;->propertyName:Ljava/lang/String;

    .line 1465
    iput-object p2, p0, Lcom/alibaba/fastjson/JSONPath$IntInSegement;->values:[J

    .line 1466
    iput-boolean p3, p0, Lcom/alibaba/fastjson/JSONPath$IntInSegement;->not:Z

    .line 1467
    return-void
.end method


# virtual methods
.method public apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 10
    .param p1, "path"    # Lcom/alibaba/fastjson/JSONPath;
    .param p2, "rootObject"    # Ljava/lang/Object;
    .param p3, "currentObject"    # Ljava/lang/Object;
    .param p4, "item"    # Ljava/lang/Object;

    .prologue
    const/4 v5, 0x0

    .line 1470
    iget-object v6, p0, Lcom/alibaba/fastjson/JSONPath$IntInSegement;->propertyName:Ljava/lang/String;

    invoke-virtual {p1, p4, v6, v5}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValue(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v2

    .line 1472
    .local v2, "propertyValue":Ljava/lang/Object;
    if-nez v2, :cond_1

    .line 1485
    .end local v2    # "propertyValue":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v5

    .line 1476
    .restart local v2    # "propertyValue":Ljava/lang/Object;
    :cond_1
    instance-of v6, v2, Ljava/lang/Number;

    if-eqz v6, :cond_3

    .line 1477
    check-cast v2, Ljava/lang/Number;

    .end local v2    # "propertyValue":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 1478
    .local v0, "longPropertyValue":J
    iget-object v7, p0, Lcom/alibaba/fastjson/JSONPath$IntInSegement;->values:[J

    array-length v8, v7

    move v6, v5

    :goto_1
    if-ge v6, v8, :cond_3

    aget-wide v3, v7, v6

    .line 1479
    .local v3, "value":J
    cmp-long v9, v3, v0

    if-nez v9, :cond_2

    .line 1480
    iget-boolean v6, p0, Lcom/alibaba/fastjson/JSONPath$IntInSegement;->not:Z

    if-nez v6, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    .line 1478
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 1485
    .end local v0    # "longPropertyValue":J
    .end local v3    # "value":J
    :cond_3
    iget-boolean v5, p0, Lcom/alibaba/fastjson/JSONPath$IntInSegement;->not:Z

    goto :goto_0
.end method
