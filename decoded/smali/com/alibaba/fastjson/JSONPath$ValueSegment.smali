.class Lcom/alibaba/fastjson/JSONPath$ValueSegment;
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
    name = "ValueSegment"
.end annotation


# instance fields
.field private eq:Z

.field private final propertyName:Ljava/lang/String;

.field private final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 2
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "eq"    # Z

    .prologue
    .line 1436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1434
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alibaba/fastjson/JSONPath$ValueSegment;->eq:Z

    .line 1437
    if-nez p2, :cond_0

    .line 1438
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1440
    :cond_0
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$ValueSegment;->propertyName:Ljava/lang/String;

    .line 1441
    iput-object p2, p0, Lcom/alibaba/fastjson/JSONPath$ValueSegment;->value:Ljava/lang/Object;

    .line 1442
    iput-boolean p3, p0, Lcom/alibaba/fastjson/JSONPath$ValueSegment;->eq:Z

    .line 1443
    return-void
.end method


# virtual methods
.method public apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 4
    .param p1, "path"    # Lcom/alibaba/fastjson/JSONPath;
    .param p2, "rootObject"    # Ljava/lang/Object;
    .param p3, "currentObject"    # Ljava/lang/Object;
    .param p4, "item"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 1447
    iget-object v3, p0, Lcom/alibaba/fastjson/JSONPath$ValueSegment;->propertyName:Ljava/lang/String;

    invoke-virtual {p1, p4, v3, v2}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValue(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v0

    .line 1448
    .local v0, "propertyValue":Ljava/lang/Object;
    iget-object v3, p0, Lcom/alibaba/fastjson/JSONPath$ValueSegment;->value:Ljava/lang/Object;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 1449
    .local v1, "result":Z
    iget-boolean v3, p0, Lcom/alibaba/fastjson/JSONPath$ValueSegment;->eq:Z

    if-nez v3, :cond_0

    .line 1450
    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 1452
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 1450
    goto :goto_0
.end method
