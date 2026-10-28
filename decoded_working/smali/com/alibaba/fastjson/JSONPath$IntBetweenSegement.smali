.class Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;
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
    name = "IntBetweenSegement"
.end annotation


# instance fields
.field private final endValue:J

.field private final not:Z

.field private final propertyName:Ljava/lang/String;

.field private final startValue:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JJZ)V
    .locals 0
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "startValue"    # J
    .param p4, "endValue"    # J
    .param p6, "not"    # Z

    .prologue
    .line 1496
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1497
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;->propertyName:Ljava/lang/String;

    .line 1498
    iput-wide p2, p0, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;->startValue:J

    .line 1499
    iput-wide p4, p0, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;->endValue:J

    .line 1500
    iput-boolean p6, p0, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;->not:Z

    .line 1501
    return-void
.end method


# virtual methods
.method public apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .param p1, "path"    # Lcom/alibaba/fastjson/JSONPath;
    .param p2, "rootObject"    # Ljava/lang/Object;
    .param p3, "currentObject"    # Ljava/lang/Object;
    .param p4, "item"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x0

    .line 1504
    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;->propertyName:Ljava/lang/String;

    invoke-virtual {p1, p4, v4, v3}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValue(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v2

    .line 1506
    .local v2, "propertyValue":Ljava/lang/Object;
    if-nez v2, :cond_1

    .line 1517
    .end local v2    # "propertyValue":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v3

    .line 1510
    .restart local v2    # "propertyValue":Ljava/lang/Object;
    :cond_1
    instance-of v4, v2, Ljava/lang/Number;

    if-eqz v4, :cond_2

    .line 1511
    check-cast v2, Ljava/lang/Number;

    .end local v2    # "propertyValue":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 1512
    .local v0, "longPropertyValue":J
    iget-wide v4, p0, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;->startValue:J

    cmp-long v4, v0, v4

    if-ltz v4, :cond_2

    iget-wide v4, p0, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;->endValue:J

    cmp-long v4, v0, v4

    if-gtz v4, :cond_2

    .line 1513
    iget-boolean v4, p0, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;->not:Z

    if-nez v4, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    .line 1517
    .end local v0    # "longPropertyValue":J
    :cond_2
    iget-boolean v3, p0, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;->not:Z

    goto :goto_0
.end method
