.class Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;
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
    name = "IntObjInSegement"
.end annotation


# instance fields
.field private final not:Z

.field private final propertyName:Ljava/lang/String;

.field private final values:[Ljava/lang/Long;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Long;Z)V
    .locals 0
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "values"    # [Ljava/lang/Long;
    .param p3, "not"    # Z

    .prologue
    .line 1527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1528
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->propertyName:Ljava/lang/String;

    .line 1529
    iput-object p2, p0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->values:[Ljava/lang/Long;

    .line 1530
    iput-boolean p3, p0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->not:Z

    .line 1531
    return-void
.end method


# virtual methods
.method public apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 11
    .param p1, "path"    # Lcom/alibaba/fastjson/JSONPath;
    .param p2, "rootObject"    # Ljava/lang/Object;
    .param p3, "currentObject"    # Ljava/lang/Object;
    .param p4, "item"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1534
    iget-object v6, p0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->propertyName:Ljava/lang/String;

    invoke-virtual {p1, p4, v6, v5}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValue(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v2

    .line 1536
    .local v2, "propertyValue":Ljava/lang/Object;
    if-nez v2, :cond_4

    .line 1537
    iget-object v7, p0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->values:[Ljava/lang/Long;

    array-length v8, v7

    move v6, v5

    :goto_0
    if-ge v6, v8, :cond_3

    aget-object v3, v7, v6

    .line 1538
    .local v3, "value":Ljava/lang/Long;
    if-nez v3, :cond_2

    .line 1539
    iget-boolean v6, p0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->not:Z

    if-nez v6, :cond_1

    .line 1559
    .end local v2    # "propertyValue":Ljava/lang/Object;
    .end local v3    # "value":Ljava/lang/Long;
    :cond_0
    :goto_1
    return v4

    .restart local v2    # "propertyValue":Ljava/lang/Object;
    .restart local v3    # "value":Ljava/lang/Long;
    :cond_1
    move v4, v5

    .line 1539
    goto :goto_1

    .line 1537
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1543
    .end local v3    # "value":Ljava/lang/Long;
    :cond_3
    iget-boolean v4, p0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->not:Z

    goto :goto_1

    .line 1546
    :cond_4
    instance-of v6, v2, Ljava/lang/Number;

    if-eqz v6, :cond_7

    .line 1547
    check-cast v2, Ljava/lang/Number;

    .end local v2    # "propertyValue":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 1548
    .local v0, "longPropertyValue":J
    iget-object v7, p0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->values:[Ljava/lang/Long;

    array-length v8, v7

    move v6, v5

    :goto_2
    if-ge v6, v8, :cond_7

    aget-object v3, v7, v6

    .line 1549
    .restart local v3    # "value":Ljava/lang/Long;
    if-nez v3, :cond_6

    .line 1548
    :cond_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1553
    :cond_6
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    cmp-long v9, v9, v0

    if-nez v9, :cond_5

    .line 1554
    iget-boolean v6, p0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->not:Z

    if-eqz v6, :cond_0

    move v4, v5

    goto :goto_1

    .line 1559
    .end local v0    # "longPropertyValue":J
    .end local v3    # "value":Ljava/lang/Long;
    :cond_7
    iget-boolean v4, p0, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;->not:Z

    goto :goto_1
.end method
