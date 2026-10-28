.class Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;
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
    name = "DoubleOpSegement"
.end annotation


# instance fields
.field private final op:Lcom/alibaba/fastjson/JSONPath$Operator;

.field private final propertyName:Ljava/lang/String;

.field private final value:D


# direct methods
.method public constructor <init>(Ljava/lang/String;DLcom/alibaba/fastjson/JSONPath$Operator;)V
    .locals 0
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "value"    # D
    .param p4, "op"    # Lcom/alibaba/fastjson/JSONPath$Operator;

    .prologue
    .line 1639
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1640
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->propertyName:Ljava/lang/String;

    .line 1641
    iput-wide p2, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->value:D

    .line 1642
    iput-object p4, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 1643
    return-void
.end method


# virtual methods
.method public apply(Lcom/alibaba/fastjson/JSONPath;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 7
    .param p1, "path"    # Lcom/alibaba/fastjson/JSONPath;
    .param p2, "rootObject"    # Ljava/lang/Object;
    .param p3, "currentObject"    # Ljava/lang/Object;
    .param p4, "item"    # Ljava/lang/Object;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1646
    iget-object v5, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->propertyName:Ljava/lang/String;

    invoke-virtual {p1, p4, v5, v4}, Lcom/alibaba/fastjson/JSONPath;->getPropertyValue(Ljava/lang/Object;Ljava/lang/String;Z)Ljava/lang/Object;

    move-result-object v2

    .line 1648
    .local v2, "propertyValue":Ljava/lang/Object;
    if-nez v2, :cond_1

    move v3, v4

    .line 1672
    .end local v2    # "propertyValue":Ljava/lang/Object;
    :cond_0
    :goto_0
    return v3

    .line 1652
    .restart local v2    # "propertyValue":Ljava/lang/Object;
    :cond_1
    instance-of v5, v2, Ljava/lang/Number;

    if-nez v5, :cond_2

    move v3, v4

    .line 1653
    goto :goto_0

    .line 1656
    :cond_2
    check-cast v2, Ljava/lang/Number;

    .end local v2    # "propertyValue":Ljava/lang/Object;
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v0

    .line 1658
    .local v0, "doubleValue":D
    iget-object v5, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v5, v6, :cond_3

    .line 1659
    iget-wide v5, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->value:D

    cmpl-double v5, v0, v5

    if-eqz v5, :cond_0

    move v3, v4

    goto :goto_0

    .line 1660
    :cond_3
    iget-object v5, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v5, v6, :cond_4

    .line 1661
    iget-wide v5, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->value:D

    cmpl-double v5, v0, v5

    if-nez v5, :cond_0

    move v3, v4

    goto :goto_0

    .line 1662
    :cond_4
    iget-object v5, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->GE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v5, v6, :cond_5

    .line 1663
    iget-wide v5, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->value:D

    cmpl-double v5, v0, v5

    if-gez v5, :cond_0

    move v3, v4

    goto :goto_0

    .line 1664
    :cond_5
    iget-object v5, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->GT:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v5, v6, :cond_6

    .line 1665
    iget-wide v5, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->value:D

    cmpl-double v5, v0, v5

    if-gtz v5, :cond_0

    move v3, v4

    goto :goto_0

    .line 1666
    :cond_6
    iget-object v5, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->LE:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v5, v6, :cond_7

    .line 1667
    iget-wide v5, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->value:D

    cmpg-double v5, v0, v5

    if-lez v5, :cond_0

    move v3, v4

    goto :goto_0

    .line 1668
    :cond_7
    iget-object v5, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->op:Lcom/alibaba/fastjson/JSONPath$Operator;

    sget-object v6, Lcom/alibaba/fastjson/JSONPath$Operator;->LT:Lcom/alibaba/fastjson/JSONPath$Operator;

    if-ne v5, v6, :cond_8

    .line 1669
    iget-wide v5, p0, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;->value:D

    cmpg-double v5, v0, v5

    if-ltz v5, :cond_0

    move v3, v4

    goto :goto_0

    :cond_8
    move v3, v4

    .line 1672
    goto :goto_0
.end method
