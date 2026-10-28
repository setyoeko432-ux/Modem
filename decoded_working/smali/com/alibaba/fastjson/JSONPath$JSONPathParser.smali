.class Lcom/alibaba/fastjson/JSONPath$JSONPathParser;
.super Ljava/lang/Object;
.source "JSONPath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson/JSONPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "JSONPathParser"
.end annotation


# instance fields
.field private ch:C

.field private level:I

.field private final path:Ljava/lang/String;

.field private pos:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 495
    iput-object p1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    .line 496
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 497
    return-void
.end method

.method static isDigitFirst(C)Z
    .locals 1
    .param p0, "ch"    # C

    .prologue
    .line 1020
    const/16 v0, 0x2d

    if-eq p0, v0, :cond_0

    const/16 v0, 0x2b

    if-eq p0, v0, :cond_0

    const/16 v0, 0x30

    if-lt p0, v0, :cond_1

    const/16 v0, 0x39

    if-gt p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method accept(C)V
    .locals 3
    .param p1, "expect"    # C

    .prologue
    .line 1139
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-eq v0, p1, :cond_0

    .line 1140
    new-instance v0, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expect \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", but \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1143
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1144
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1146
    :cond_1
    return-void
.end method

.method buildArraySegement(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath$Segement;
    .locals 22
    .param p1, "indexText"    # Ljava/lang/String;

    .prologue
    .line 1179
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v9

    .line 1180
    .local v9, "indexTextLen":I
    const/16 v19, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    .line 1181
    .local v6, "firstChar":C
    add-int/lit8 v19, v9, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v13

    .line 1183
    .local v13, "lastChar":C
    const/16 v19, 0x2c

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 1185
    .local v4, "commaIndex":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_2

    const/16 v19, 0x27

    move/from16 v0, v19

    if-ne v6, v0, :cond_2

    const/16 v19, 0x27

    move/from16 v0, v19

    if-ne v13, v0, :cond_2

    .line 1187
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v4, v0, :cond_0

    .line 1188
    const/16 v19, 0x1

    add-int/lit8 v20, v9, -0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    .line 1189
    .local v14, "propertyName":Ljava/lang/String;
    new-instance v19, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-direct {v0, v14, v1}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;-><init>(Ljava/lang/String;Z)V

    .line 1255
    .end local v14    # "propertyName":Ljava/lang/String;
    :goto_0
    return-object v19

    .line 1192
    :cond_0
    const-string v19, ","

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 1193
    .local v11, "indexesText":[Ljava/lang/String;
    array-length v0, v11

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v15, v0, [Ljava/lang/String;

    .line 1194
    .local v15, "propertyNames":[Ljava/lang/String;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_1
    array-length v0, v11

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v7, v0, :cond_1

    .line 1195
    aget-object v12, v11, v7

    .line 1196
    .local v12, "indexesTextItem":Ljava/lang/String;
    const/16 v19, 0x1

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v20

    add-int/lit8 v20, v20, -0x1

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v12, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v15, v7

    .line 1194
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1199
    .end local v12    # "indexesTextItem":Ljava/lang/String;
    :cond_1
    new-instance v19, Lcom/alibaba/fastjson/JSONPath$MultiPropertySegement;

    move-object/from16 v0, v19

    invoke-direct {v0, v15}, Lcom/alibaba/fastjson/JSONPath$MultiPropertySegement;-><init>([Ljava/lang/String;)V

    goto :goto_0

    .line 1202
    .end local v7    # "i":I
    .end local v11    # "indexesText":[Ljava/lang/String;
    .end local v15    # "propertyNames":[Ljava/lang/String;
    :cond_2
    const/16 v19, 0x3a

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 1203
    .local v3, "colonIndex":I
    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v4, v0, :cond_3

    const/16 v19, -0x1

    move/from16 v0, v19

    if-ne v3, v0, :cond_3

    .line 1204
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1205
    .local v8, "index":I
    new-instance v19, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;

    move-object/from16 v0, v19

    invoke-direct {v0, v8}, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;-><init>(I)V

    goto :goto_0

    .line 1208
    .end local v8    # "index":I
    :cond_3
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v4, v0, :cond_5

    .line 1209
    const-string v19, ","

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 1210
    .restart local v11    # "indexesText":[Ljava/lang/String;
    array-length v0, v11

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v10, v0, [I

    .line 1211
    .local v10, "indexes":[I
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_2
    array-length v0, v11

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v7, v0, :cond_4

    .line 1212
    aget-object v19, v11, v7

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    aput v19, v10, v7

    .line 1211
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 1214
    :cond_4
    new-instance v19, Lcom/alibaba/fastjson/JSONPath$MultiIndexSegement;

    move-object/from16 v0, v19

    invoke-direct {v0, v10}, Lcom/alibaba/fastjson/JSONPath$MultiIndexSegement;-><init>([I)V

    goto/16 :goto_0

    .line 1217
    .end local v7    # "i":I
    .end local v10    # "indexes":[I
    .end local v11    # "indexesText":[Ljava/lang/String;
    :cond_5
    const/16 v19, -0x1

    move/from16 v0, v19

    if-eq v3, v0, :cond_d

    .line 1218
    const-string v19, ":"

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    .line 1219
    .restart local v11    # "indexesText":[Ljava/lang/String;
    array-length v0, v11

    move/from16 v19, v0

    move/from16 v0, v19

    new-array v10, v0, [I

    .line 1220
    .restart local v10    # "indexes":[I
    const/4 v7, 0x0

    .restart local v7    # "i":I
    :goto_3
    array-length v0, v11

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v7, v0, :cond_8

    .line 1221
    aget-object v18, v11, v7

    .line 1222
    .local v18, "str":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->isEmpty()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 1223
    if-nez v7, :cond_6

    .line 1224
    const/16 v19, 0x0

    aput v19, v10, v7

    .line 1220
    :goto_4
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1226
    :cond_6
    new-instance v19, Ljava/lang/UnsupportedOperationException;

    invoke-direct/range {v19 .. v19}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v19

    .line 1229
    :cond_7
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    aput v19, v10, v7

    goto :goto_4

    .line 1233
    .end local v18    # "str":Ljava/lang/String;
    :cond_8
    const/16 v19, 0x0

    aget v16, v10, v19

    .line 1235
    .local v16, "start":I
    array-length v0, v10

    move/from16 v19, v0

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-le v0, v1, :cond_9

    .line 1236
    const/16 v19, 0x1

    aget v5, v10, v19

    .line 1241
    .local v5, "end":I
    :goto_5
    array-length v0, v10

    move/from16 v19, v0

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_a

    .line 1242
    const/16 v19, 0x2

    aget v17, v10, v19

    .line 1247
    .local v17, "step":I
    :goto_6
    if-ltz v5, :cond_b

    move/from16 v0, v16

    if-ge v5, v0, :cond_b

    .line 1248
    new-instance v19, Ljava/lang/UnsupportedOperationException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "end must greater than or equals start. start "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, ",  end "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 1238
    .end local v5    # "end":I
    .end local v17    # "step":I
    :cond_9
    const/4 v5, -0x1

    .restart local v5    # "end":I
    goto :goto_5

    .line 1244
    :cond_a
    const/16 v17, 0x1

    .restart local v17    # "step":I
    goto :goto_6

    .line 1252
    :cond_b
    if-gtz v17, :cond_c

    .line 1253
    new-instance v19, Ljava/lang/UnsupportedOperationException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "step must greater than zero : "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v19

    .line 1255
    :cond_c
    new-instance v19, Lcom/alibaba/fastjson/JSONPath$RangeSegement;

    move-object/from16 v0, v19

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-direct {v0, v1, v5, v2}, Lcom/alibaba/fastjson/JSONPath$RangeSegement;-><init>(III)V

    goto/16 :goto_0

    .line 1258
    .end local v5    # "end":I
    .end local v7    # "i":I
    .end local v10    # "indexes":[I
    .end local v11    # "indexesText":[Ljava/lang/String;
    .end local v16    # "start":I
    .end local v17    # "step":I
    :cond_d
    new-instance v19, Ljava/lang/UnsupportedOperationException;

    invoke-direct/range {v19 .. v19}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v19
.end method

.method public explain()[Lcom/alibaba/fastjson/JSONPath$Segement;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 1149
    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1150
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 1153
    :cond_1
    const/16 v4, 0x8

    new-array v1, v4, [Lcom/alibaba/fastjson/JSONPath$Segement;

    .line 1156
    .local v1, "segements":[Lcom/alibaba/fastjson/JSONPath$Segement;
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readSegement()Lcom/alibaba/fastjson/JSONPath$Segement;

    move-result-object v2

    .line 1157
    .local v2, "segment":Lcom/alibaba/fastjson/JSONPath$Segement;
    if-nez v2, :cond_2

    .line 1169
    iget v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    array-length v5, v1

    if-ne v4, v5, :cond_4

    .line 1175
    .end local v1    # "segements":[Lcom/alibaba/fastjson/JSONPath$Segement;
    :goto_1
    return-object v1

    .line 1161
    .restart local v1    # "segements":[Lcom/alibaba/fastjson/JSONPath$Segement;
    :cond_2
    iget v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    array-length v5, v1

    if-ne v4, v5, :cond_3

    .line 1162
    iget v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    mul-int/lit8 v4, v4, 0x3

    div-int/lit8 v4, v4, 0x2

    new-array v3, v4, [Lcom/alibaba/fastjson/JSONPath$Segement;

    .line 1163
    .local v3, "t":[Lcom/alibaba/fastjson/JSONPath$Segement;
    iget v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    invoke-static {v1, v6, v3, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1164
    move-object v1, v3

    .line 1166
    .end local v3    # "t":[Lcom/alibaba/fastjson/JSONPath$Segement;
    :cond_3
    iget v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    aput-object v2, v1, v4

    goto :goto_0

    .line 1173
    :cond_4
    iget v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    new-array v0, v4, [Lcom/alibaba/fastjson/JSONPath$Segement;

    .line 1174
    .local v0, "result":[Lcom/alibaba/fastjson/JSONPath$Segement;
    iget v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    invoke-static {v1, v6, v0, v6, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v1, v0

    .line 1175
    goto :goto_1
.end method

.method isEOF()Z
    .locals 2

    .prologue
    .line 504
    iget v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    iget-object v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method next()V
    .locals 3

    .prologue
    .line 500
    iget-object v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    iget v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    iput-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 501
    return-void
.end method

.method parseArrayAccess(Z)Lcom/alibaba/fastjson/JSONPath$Segement;
    .locals 42
    .param p1, "acceptBracket"    # Z

    .prologue
    .line 593
    if-eqz p1, :cond_0

    .line 594
    const/16 v5, 0x5b

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 597
    :cond_0
    const/16 v31, 0x0

    .line 599
    .local v31, "predicateFlag":Z
    move-object/from16 v0, p0

    iget-char v5, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v6, 0x3f

    if-ne v5, v6, :cond_2

    .line 600
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 601
    const/16 v5, 0x28

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 602
    move-object/from16 v0, p0

    iget-char v5, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v6, 0x40

    if-ne v5, v6, :cond_1

    .line 603
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 604
    const/16 v5, 0x2e

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 607
    :cond_1
    const/16 v31, 0x1

    .line 610
    :cond_2
    if-nez v31, :cond_3

    move-object/from16 v0, p0

    iget-char v5, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-static {v5}, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifier(C)Z

    move-result v5

    if-eqz v5, :cond_48

    .line 611
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v4

    .line 613
    .local v4, "propertyName":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 615
    if-eqz v31, :cond_6

    move-object/from16 v0, p0

    iget-char v5, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v6, 0x29

    if-ne v5, v6, :cond_6

    .line 616
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 617
    if-eqz p1, :cond_4

    .line 618
    const/16 v5, 0x5d

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 621
    :cond_4
    new-instance v33, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v5, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;

    invoke-direct {v5, v4}, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    invoke-direct {v0, v5}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    .line 961
    .end local v4    # "propertyName":Ljava/lang/String;
    :cond_5
    :goto_0
    return-object v33

    .line 624
    .restart local v4    # "propertyName":Ljava/lang/String;
    :cond_6
    if-eqz p1, :cond_7

    move-object/from16 v0, p0

    iget-char v5, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v6, 0x5d

    if-ne v5, v6, :cond_7

    .line 625
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 626
    new-instance v33, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v5, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;

    invoke-direct {v5, v4}, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    invoke-direct {v0, v5}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    goto :goto_0

    .line 629
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readOp()Lcom/alibaba/fastjson/JSONPath$Operator;

    move-result-object v29

    .line 631
    .local v29, "op":Lcom/alibaba/fastjson/JSONPath$Operator;
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 633
    sget-object v5, Lcom/alibaba/fastjson/JSONPath$Operator;->BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v29

    if-eq v0, v5, :cond_8

    sget-object v5, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v29

    if-ne v0, v5, :cond_e

    .line 634
    :cond_8
    sget-object v5, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v29

    if-ne v0, v5, :cond_9

    const/4 v9, 0x1

    .line 636
    .local v9, "not":Z
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readValue()Ljava/lang/Object;

    move-result-object v35

    .line 638
    .local v35, "startValue":Ljava/lang/Object;
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v28

    .line 640
    .local v28, "name":Ljava/lang/String;
    const-string v5, "and"

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_a

    .line 641
    new-instance v5, Lcom/alibaba/fastjson/JSONPathException;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 634
    .end local v9    # "not":Z
    .end local v28    # "name":Ljava/lang/String;
    .end local v35    # "startValue":Ljava/lang/Object;
    :cond_9
    const/4 v9, 0x0

    goto :goto_1

    .line 644
    .restart local v9    # "not":Z
    .restart local v28    # "name":Ljava/lang/String;
    .restart local v35    # "startValue":Ljava/lang/Object;
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readValue()Ljava/lang/Object;

    move-result-object v20

    .line 646
    .local v20, "endValue":Ljava/lang/Object;
    if-eqz v35, :cond_b

    if-nez v20, :cond_c

    .line 647
    :cond_b
    new-instance v5, Lcom/alibaba/fastjson/JSONPathException;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 650
    :cond_c
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/fastjson/JSONPath;->isInt(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lcom/alibaba/fastjson/JSONPath;->isInt(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 651
    new-instance v3, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;

    check-cast v35, Ljava/lang/Number;

    .end local v35    # "startValue":Ljava/lang/Object;
    invoke-virtual/range {v35 .. v35}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    check-cast v20, Ljava/lang/Number;

    .line 652
    .end local v20    # "endValue":Ljava/lang/Object;
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Number;->longValue()J

    move-result-wide v7

    invoke-direct/range {v3 .. v9}, Lcom/alibaba/fastjson/JSONPath$IntBetweenSegement;-><init>(Ljava/lang/String;JJZ)V

    .line 653
    .local v3, "filter":Lcom/alibaba/fastjson/JSONPath$Filter;
    new-instance v33, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    move-object/from16 v0, v33

    invoke-direct {v0, v3}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    goto/16 :goto_0

    .line 656
    .end local v3    # "filter":Lcom/alibaba/fastjson/JSONPath$Filter;
    .restart local v20    # "endValue":Ljava/lang/Object;
    .restart local v35    # "startValue":Ljava/lang/Object;
    :cond_d
    new-instance v5, Lcom/alibaba/fastjson/JSONPathException;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-direct {v5, v6}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 659
    .end local v9    # "not":Z
    .end local v20    # "endValue":Ljava/lang/Object;
    .end local v28    # "name":Ljava/lang/String;
    .end local v35    # "startValue":Ljava/lang/Object;
    :cond_e
    sget-object v5, Lcom/alibaba/fastjson/JSONPath$Operator;->IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v29

    if-eq v0, v5, :cond_f

    sget-object v5, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v29

    if-ne v0, v5, :cond_24

    .line 660
    :cond_f
    sget-object v5, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v29

    if-ne v0, v5, :cond_13

    const/4 v9, 0x1

    .line 661
    .restart local v9    # "not":Z
    :goto_2
    const/16 v5, 0x28

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 663
    new-instance v40, Lcom/alibaba/fastjson/JSONArray;

    invoke-direct/range {v40 .. v40}, Lcom/alibaba/fastjson/JSONArray;-><init>()V

    .line 665
    .local v40, "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readValue()Ljava/lang/Object;

    move-result-object v38

    .line 666
    .local v38, "value":Ljava/lang/Object;
    move-object/from16 v0, v40

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 669
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 670
    move-object/from16 v0, p0

    iget-char v5, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v6, 0x2c

    if-eq v5, v6, :cond_14

    .line 679
    const/16 v5, 0x29

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 680
    if-eqz v31, :cond_10

    .line 681
    const/16 v5, 0x29

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 684
    :cond_10
    if-eqz p1, :cond_11

    .line 685
    const/16 v5, 0x5d

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 689
    :cond_11
    const/16 v23, 0x1

    .line 690
    .local v23, "isInt":Z
    const/16 v24, 0x1

    .line 691
    .local v24, "isIntObj":Z
    const/16 v25, 0x1

    .line 692
    .local v25, "isString":Z
    invoke-interface/range {v40 .. v40}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_12
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    .line 693
    .local v26, "item":Ljava/lang/Object;
    if-nez v26, :cond_15

    .line 694
    if-eqz v23, :cond_12

    .line 695
    const/16 v23, 0x0

    goto :goto_4

    .line 660
    .end local v9    # "not":Z
    .end local v23    # "isInt":Z
    .end local v24    # "isIntObj":Z
    .end local v25    # "isString":Z
    .end local v26    # "item":Ljava/lang/Object;
    .end local v38    # "value":Ljava/lang/Object;
    .end local v40    # "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_13
    const/4 v9, 0x0

    goto :goto_2

    .line 673
    .restart local v9    # "not":Z
    .restart local v38    # "value":Ljava/lang/Object;
    .restart local v40    # "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 675
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readValue()Ljava/lang/Object;

    move-result-object v38

    .line 676
    move-object/from16 v0, v40

    move-object/from16 v1, v38

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 700
    .restart local v23    # "isInt":Z
    .restart local v24    # "isIntObj":Z
    .restart local v25    # "isString":Z
    .restart local v26    # "item":Ljava/lang/Object;
    :cond_15
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v16

    .line 701
    .local v16, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v23, :cond_16

    const-class v6, Ljava/lang/Byte;

    move-object/from16 v0, v16

    if-eq v0, v6, :cond_16

    const-class v6, Ljava/lang/Short;

    move-object/from16 v0, v16

    if-eq v0, v6, :cond_16

    const-class v6, Ljava/lang/Integer;

    move-object/from16 v0, v16

    if-eq v0, v6, :cond_16

    const-class v6, Ljava/lang/Long;

    move-object/from16 v0, v16

    if-eq v0, v6, :cond_16

    .line 703
    const/16 v23, 0x0

    .line 704
    const/16 v24, 0x0

    .line 707
    :cond_16
    if-eqz v25, :cond_12

    const-class v6, Ljava/lang/String;

    move-object/from16 v0, v16

    if-eq v0, v6, :cond_12

    .line 708
    const/16 v25, 0x0

    goto :goto_4

    .line 712
    .end local v16    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v26    # "item":Ljava/lang/Object;
    :cond_17
    invoke-interface/range {v40 .. v40}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_19

    const/4 v5, 0x0

    move-object/from16 v0, v40

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_19

    .line 713
    if-eqz v9, :cond_18

    .line 714
    new-instance v33, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v5, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;

    invoke-direct {v5, v4}, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    invoke-direct {v0, v5}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    goto/16 :goto_0

    .line 716
    :cond_18
    new-instance v33, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v5, Lcom/alibaba/fastjson/JSONPath$NullSegement;

    invoke-direct {v5, v4}, Lcom/alibaba/fastjson/JSONPath$NullSegement;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    invoke-direct {v0, v5}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    goto/16 :goto_0

    .line 720
    :cond_19
    if-eqz v23, :cond_1d

    .line 721
    invoke-interface/range {v40 .. v40}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1b

    .line 722
    const/4 v5, 0x0

    move-object/from16 v0, v40

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v38

    .line 723
    .local v38, "value":J
    if-eqz v9, :cond_1a

    sget-object v22, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 724
    .local v22, "intOp":Lcom/alibaba/fastjson/JSONPath$Operator;
    :goto_5
    new-instance v33, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v5, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;

    move-wide/from16 v0, v38

    move-object/from16 v2, v22

    invoke-direct {v5, v4, v0, v1, v2}, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;-><init>(Ljava/lang/String;JLcom/alibaba/fastjson/JSONPath$Operator;)V

    move-object/from16 v0, v33

    invoke-direct {v0, v5}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    goto/16 :goto_0

    .line 723
    .end local v22    # "intOp":Lcom/alibaba/fastjson/JSONPath$Operator;
    :cond_1a
    sget-object v22, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_5

    .line 727
    .local v38, "value":Ljava/lang/Object;
    :cond_1b
    invoke-interface/range {v40 .. v40}, Ljava/util/List;->size()I

    move-result v5

    new-array v0, v5, [J

    move-object/from16 v41, v0

    .line 728
    .local v41, "values":[J
    const/16 v21, 0x0

    .local v21, "i":I
    :goto_6
    move-object/from16 v0, v41

    array-length v5, v0

    move/from16 v0, v21

    if-ge v0, v5, :cond_1c

    .line 729
    move-object/from16 v0, v40

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    aput-wide v5, v41, v21

    .line 728
    add-int/lit8 v21, v21, 0x1

    goto :goto_6

    .line 732
    :cond_1c
    new-instance v33, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v5, Lcom/alibaba/fastjson/JSONPath$IntInSegement;

    move-object/from16 v0, v41

    invoke-direct {v5, v4, v0, v9}, Lcom/alibaba/fastjson/JSONPath$IntInSegement;-><init>(Ljava/lang/String;[JZ)V

    move-object/from16 v0, v33

    invoke-direct {v0, v5}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    goto/16 :goto_0

    .line 735
    .end local v21    # "i":I
    .end local v41    # "values":[J
    :cond_1d
    if-eqz v25, :cond_20

    .line 736
    invoke-interface/range {v40 .. v40}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_1f

    .line 737
    const/4 v5, 0x0

    move-object/from16 v0, v40

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v38

    .end local v38    # "value":Ljava/lang/Object;
    check-cast v38, Ljava/lang/String;

    .line 739
    .local v38, "value":Ljava/lang/String;
    if-eqz v9, :cond_1e

    sget-object v22, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 740
    .restart local v22    # "intOp":Lcom/alibaba/fastjson/JSONPath$Operator;
    :goto_7
    new-instance v33, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v5, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;

    move-object/from16 v0, v38

    move-object/from16 v1, v22

    invoke-direct {v5, v4, v0, v1}, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONPath$Operator;)V

    move-object/from16 v0, v33

    invoke-direct {v0, v5}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    goto/16 :goto_0

    .line 739
    .end local v22    # "intOp":Lcom/alibaba/fastjson/JSONPath$Operator;
    :cond_1e
    sget-object v22, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_7

    .line 743
    .local v38, "value":Ljava/lang/Object;
    :cond_1f
    invoke-interface/range {v40 .. v40}, Ljava/util/List;->size()I

    move-result v5

    new-array v0, v5, [Ljava/lang/String;

    move-object/from16 v41, v0

    .line 744
    .local v41, "values":[Ljava/lang/String;
    invoke-interface/range {v40 .. v41}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 746
    new-instance v33, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v5, Lcom/alibaba/fastjson/JSONPath$StringInSegement;

    move-object/from16 v0, v41

    invoke-direct {v5, v4, v0, v9}, Lcom/alibaba/fastjson/JSONPath$StringInSegement;-><init>(Ljava/lang/String;[Ljava/lang/String;Z)V

    move-object/from16 v0, v33

    invoke-direct {v0, v5}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    goto/16 :goto_0

    .line 749
    .end local v41    # "values":[Ljava/lang/String;
    :cond_20
    if-eqz v24, :cond_23

    .line 750
    invoke-interface/range {v40 .. v40}, Ljava/util/List;->size()I

    move-result v5

    new-array v0, v5, [Ljava/lang/Long;

    move-object/from16 v41, v0

    .line 751
    .local v41, "values":[Ljava/lang/Long;
    const/16 v21, 0x0

    .restart local v21    # "i":I
    :goto_8
    move-object/from16 v0, v41

    array-length v5, v0

    move/from16 v0, v21

    if-ge v0, v5, :cond_22

    .line 752
    move-object/from16 v0, v40

    move/from16 v1, v21

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/Number;

    .line 753
    .local v26, "item":Ljava/lang/Number;
    if-eqz v26, :cond_21

    .line 754
    invoke-virtual/range {v26 .. v26}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v41, v21

    .line 751
    :cond_21
    add-int/lit8 v21, v21, 0x1

    goto :goto_8

    .line 758
    .end local v26    # "item":Ljava/lang/Number;
    :cond_22
    new-instance v33, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v5, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;

    move-object/from16 v0, v41

    invoke-direct {v5, v4, v0, v9}, Lcom/alibaba/fastjson/JSONPath$IntObjInSegement;-><init>(Ljava/lang/String;[Ljava/lang/Long;Z)V

    move-object/from16 v0, v33

    invoke-direct {v0, v5}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    goto/16 :goto_0

    .line 761
    .end local v21    # "i":I
    .end local v41    # "values":[Ljava/lang/Long;
    :cond_23
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v5}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v5

    .line 764
    .end local v9    # "not":Z
    .end local v23    # "isInt":Z
    .end local v24    # "isIntObj":Z
    .end local v25    # "isString":Z
    .end local v38    # "value":Ljava/lang/Object;
    .end local v40    # "valueList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_24
    move-object/from16 v0, p0

    iget-char v5, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v6, 0x27

    if-eq v5, v6, :cond_25

    move-object/from16 v0, p0

    iget-char v5, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v6, 0x22

    if-ne v5, v6, :cond_36

    .line 765
    :cond_25
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readString()Ljava/lang/String;

    move-result-object v36

    .line 766
    .local v36, "strValue":Ljava/lang/String;
    if-eqz v31, :cond_26

    .line 767
    const/16 v5, 0x29

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 770
    :cond_26
    if-eqz p1, :cond_27

    .line 771
    const/16 v5, 0x5d

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 774
    :cond_27
    sget-object v5, Lcom/alibaba/fastjson/JSONPath$Operator;->RLIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v29

    if-ne v0, v5, :cond_28

    .line 775
    new-instance v33, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v5, Lcom/alibaba/fastjson/JSONPath$RlikeSegement;

    const/4 v6, 0x0

    move-object/from16 v0, v36

    invoke-direct {v5, v4, v0, v6}, Lcom/alibaba/fastjson/JSONPath$RlikeSegement;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, v33

    invoke-direct {v0, v5}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    goto/16 :goto_0

    .line 778
    :cond_28
    sget-object v5, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_RLIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v29

    if-ne v0, v5, :cond_29

    .line 779
    new-instance v33, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v5, Lcom/alibaba/fastjson/JSONPath$RlikeSegement;

    const/4 v6, 0x1

    move-object/from16 v0, v36

    invoke-direct {v5, v4, v0, v6}, Lcom/alibaba/fastjson/JSONPath$RlikeSegement;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    move-object/from16 v0, v33

    invoke-direct {v0, v5}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    goto/16 :goto_0

    .line 782
    :cond_29
    sget-object v5, Lcom/alibaba/fastjson/JSONPath$Operator;->LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v29

    if-eq v0, v5, :cond_2a

    sget-object v5, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v29

    if-ne v0, v5, :cond_2c

    .line 783
    :cond_2a
    :goto_9
    const-string v5, "%%"

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2b

    .line 784
    const-string v5, "%%"

    const-string v6, "%"

    move-object/from16 v0, v36

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36

    goto :goto_9

    .line 787
    :cond_2b
    sget-object v5, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v29

    if-ne v0, v5, :cond_2d

    const/4 v9, 0x1

    .line 789
    .restart local v9    # "not":Z
    :goto_a
    const/16 v5, 0x25

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v30

    .line 790
    .local v30, "p0":I
    const/4 v5, -0x1

    move/from16 v0, v30

    if-ne v0, v5, :cond_2f

    .line 791
    sget-object v5, Lcom/alibaba/fastjson/JSONPath$Operator;->LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v29

    if-ne v0, v5, :cond_2e

    .line 792
    sget-object v29, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 835
    .end local v9    # "not":Z
    .end local v30    # "p0":I
    :cond_2c
    :goto_b
    new-instance v33, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v5, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;

    move-object/from16 v0, v36

    move-object/from16 v1, v29

    invoke-direct {v5, v4, v0, v1}, Lcom/alibaba/fastjson/JSONPath$StringOpSegement;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/alibaba/fastjson/JSONPath$Operator;)V

    move-object/from16 v0, v33

    invoke-direct {v0, v5}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    goto/16 :goto_0

    .line 787
    :cond_2d
    const/4 v9, 0x0

    goto :goto_a

    .line 794
    .restart local v9    # "not":Z
    .restart local v30    # "p0":I
    :cond_2e
    sget-object v29, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_b

    .line 797
    :cond_2f
    const-string v5, "%"

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v27

    .line 799
    .local v27, "items":[Ljava/lang/String;
    const/4 v12, 0x0

    .line 800
    .local v12, "startsWithValue":Ljava/lang/String;
    const/4 v13, 0x0

    .line 801
    .local v13, "endsWithValue":Ljava/lang/String;
    const/4 v14, 0x0

    .line 802
    .local v14, "containsValues":[Ljava/lang/String;
    if-nez v30, :cond_32

    .line 803
    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x25

    if-ne v5, v6, :cond_31

    .line 804
    move-object/from16 v0, v27

    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    new-array v14, v5, [Ljava/lang/String;

    .line 805
    const/4 v5, 0x1

    const/4 v6, 0x0

    array-length v7, v14

    move-object/from16 v0, v27

    invoke-static {v0, v5, v14, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 829
    :cond_30
    :goto_c
    new-instance v33, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v10, Lcom/alibaba/fastjson/JSONPath$MatchSegement;

    move-object v11, v4

    move v15, v9

    invoke-direct/range {v10 .. v15}, Lcom/alibaba/fastjson/JSONPath$MatchSegement;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Z)V

    move-object/from16 v0, v33

    invoke-direct {v0, v10}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    goto/16 :goto_0

    .line 807
    :cond_31
    move-object/from16 v0, v27

    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    aget-object v13, v27, v5

    .line 808
    move-object/from16 v0, v27

    array-length v5, v0

    const/4 v6, 0x2

    if-le v5, v6, :cond_30

    .line 809
    move-object/from16 v0, v27

    array-length v5, v0

    add-int/lit8 v5, v5, -0x2

    new-array v14, v5, [Ljava/lang/String;

    .line 810
    const/4 v5, 0x1

    const/4 v6, 0x0

    array-length v7, v14

    move-object/from16 v0, v27

    invoke-static {v0, v5, v14, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_c

    .line 813
    :cond_32
    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, v36

    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x25

    if-ne v5, v6, :cond_33

    .line 814
    move-object/from16 v14, v27

    goto :goto_c

    .line 816
    :cond_33
    move-object/from16 v0, v27

    array-length v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_34

    .line 817
    const/4 v5, 0x0

    aget-object v12, v27, v5

    goto :goto_c

    .line 818
    :cond_34
    move-object/from16 v0, v27

    array-length v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_35

    .line 819
    const/4 v5, 0x0

    aget-object v12, v27, v5

    .line 820
    const/4 v5, 0x1

    aget-object v13, v27, v5

    goto :goto_c

    .line 822
    :cond_35
    const/4 v5, 0x0

    aget-object v12, v27, v5

    .line 823
    move-object/from16 v0, v27

    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    aget-object v13, v27, v5

    .line 824
    move-object/from16 v0, v27

    array-length v5, v0

    add-int/lit8 v5, v5, -0x2

    new-array v14, v5, [Ljava/lang/String;

    .line 825
    const/4 v5, 0x1

    const/4 v6, 0x0

    array-length v7, v14

    move-object/from16 v0, v27

    invoke-static {v0, v5, v14, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_c

    .line 838
    .end local v9    # "not":Z
    .end local v12    # "startsWithValue":Ljava/lang/String;
    .end local v13    # "endsWithValue":Ljava/lang/String;
    .end local v14    # "containsValues":[Ljava/lang/String;
    .end local v27    # "items":[Ljava/lang/String;
    .end local v30    # "p0":I
    .end local v36    # "strValue":Ljava/lang/String;
    :cond_36
    move-object/from16 v0, p0

    iget-char v5, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-static {v5}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isDigitFirst(C)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 839
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readLongValue()J

    move-result-wide v38

    .line 840
    .local v38, "value":J
    const-wide/16 v17, 0x0

    .line 841
    .local v17, "doubleValue":D
    move-object/from16 v0, p0

    iget-char v5, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_37

    .line 842
    move-object/from16 v0, p0

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readDoubleValue(J)D

    move-result-wide v17

    .line 846
    :cond_37
    if-eqz v31, :cond_38

    .line 847
    const/16 v5, 0x29

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 850
    :cond_38
    if-eqz p1, :cond_39

    .line 851
    const/16 v5, 0x5d

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 854
    :cond_39
    const-wide/16 v5, 0x0

    cmpl-double v5, v17, v5

    if-nez v5, :cond_3a

    .line 855
    new-instance v33, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v5, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;

    move-wide/from16 v0, v38

    move-object/from16 v2, v29

    invoke-direct {v5, v4, v0, v1, v2}, Lcom/alibaba/fastjson/JSONPath$IntOpSegement;-><init>(Ljava/lang/String;JLcom/alibaba/fastjson/JSONPath$Operator;)V

    move-object/from16 v0, v33

    invoke-direct {v0, v5}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    goto/16 :goto_0

    .line 857
    :cond_3a
    new-instance v33, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v5, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;

    move-wide/from16 v0, v17

    move-object/from16 v2, v29

    invoke-direct {v5, v4, v0, v1, v2}, Lcom/alibaba/fastjson/JSONPath$DoubleOpSegement;-><init>(Ljava/lang/String;DLcom/alibaba/fastjson/JSONPath$Operator;)V

    move-object/from16 v0, v33

    invoke-direct {v0, v5}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    goto/16 :goto_0

    .line 861
    .end local v17    # "doubleValue":D
    .end local v38    # "value":J
    :cond_3b
    move-object/from16 v0, p0

    iget-char v5, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v6, 0x6e

    if-ne v5, v6, :cond_3f

    .line 862
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v28

    .line 863
    .restart local v28    # "name":Ljava/lang/String;
    const-string v5, "null"

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 864
    if-eqz v31, :cond_3c

    .line 865
    const/16 v5, 0x29

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 867
    :cond_3c
    const/16 v5, 0x5d

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 869
    sget-object v5, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v29

    if-ne v0, v5, :cond_3d

    .line 870
    new-instance v33, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v5, Lcom/alibaba/fastjson/JSONPath$NullSegement;

    invoke-direct {v5, v4}, Lcom/alibaba/fastjson/JSONPath$NullSegement;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    invoke-direct {v0, v5}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    goto/16 :goto_0

    .line 873
    :cond_3d
    sget-object v5, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v29

    if-ne v0, v5, :cond_3e

    .line 874
    new-instance v33, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v5, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;

    invoke-direct {v5, v4}, Lcom/alibaba/fastjson/JSONPath$NotNullSegement;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v33

    invoke-direct {v0, v5}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    goto/16 :goto_0

    .line 877
    :cond_3e
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v5}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v5

    .line 879
    .end local v28    # "name":Ljava/lang/String;
    :cond_3f
    move-object/from16 v0, p0

    iget-char v5, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v6, 0x74

    if-ne v5, v6, :cond_43

    .line 880
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v28

    .line 882
    .restart local v28    # "name":Ljava/lang/String;
    const-string v5, "true"

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 883
    if-eqz v31, :cond_40

    .line 884
    const/16 v5, 0x29

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 886
    :cond_40
    const/16 v5, 0x5d

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 888
    sget-object v5, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v29

    if-ne v0, v5, :cond_41

    .line 889
    new-instance v33, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v5, Lcom/alibaba/fastjson/JSONPath$ValueSegment;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v7, 0x1

    invoke-direct {v5, v4, v6, v7}, Lcom/alibaba/fastjson/JSONPath$ValueSegment;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    move-object/from16 v0, v33

    invoke-direct {v0, v5}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    goto/16 :goto_0

    .line 892
    :cond_41
    sget-object v5, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v29

    if-ne v0, v5, :cond_42

    .line 893
    new-instance v33, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v5, Lcom/alibaba/fastjson/JSONPath$ValueSegment;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/4 v7, 0x0

    invoke-direct {v5, v4, v6, v7}, Lcom/alibaba/fastjson/JSONPath$ValueSegment;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    move-object/from16 v0, v33

    invoke-direct {v0, v5}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    goto/16 :goto_0

    .line 896
    :cond_42
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v5}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v5

    .line 898
    .end local v28    # "name":Ljava/lang/String;
    :cond_43
    move-object/from16 v0, p0

    iget-char v5, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v6, 0x66

    if-ne v5, v6, :cond_47

    .line 899
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v28

    .line 901
    .restart local v28    # "name":Ljava/lang/String;
    const-string v5, "false"

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_47

    .line 902
    if-eqz v31, :cond_44

    .line 903
    const/16 v5, 0x29

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 905
    :cond_44
    const/16 v5, 0x5d

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 907
    sget-object v5, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v29

    if-ne v0, v5, :cond_45

    .line 908
    new-instance v33, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v5, Lcom/alibaba/fastjson/JSONPath$ValueSegment;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v7, 0x1

    invoke-direct {v5, v4, v6, v7}, Lcom/alibaba/fastjson/JSONPath$ValueSegment;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    move-object/from16 v0, v33

    invoke-direct {v0, v5}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    goto/16 :goto_0

    .line 911
    :cond_45
    sget-object v5, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    move-object/from16 v0, v29

    if-ne v0, v5, :cond_46

    .line 912
    new-instance v33, Lcom/alibaba/fastjson/JSONPath$FilterSegement;

    new-instance v5, Lcom/alibaba/fastjson/JSONPath$ValueSegment;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v7, 0x0

    invoke-direct {v5, v4, v6, v7}, Lcom/alibaba/fastjson/JSONPath$ValueSegment;-><init>(Ljava/lang/String;Ljava/lang/Object;Z)V

    move-object/from16 v0, v33

    invoke-direct {v0, v5}, Lcom/alibaba/fastjson/JSONPath$FilterSegement;-><init>(Lcom/alibaba/fastjson/JSONPath$Filter;)V

    goto/16 :goto_0

    .line 915
    :cond_46
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v5}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v5

    .line 919
    .end local v28    # "name":Ljava/lang/String;
    :cond_47
    new-instance v5, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v5}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v5

    .line 923
    .end local v4    # "propertyName":Ljava/lang/String;
    .end local v29    # "op":Lcom/alibaba/fastjson/JSONPath$Operator;
    :cond_48
    move-object/from16 v0, p0

    iget v5, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v34, v5, -0x1

    .line 924
    .local v34, "start":I
    :goto_d
    move-object/from16 v0, p0

    iget-char v5, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v6, 0x5d

    if-eq v5, v6, :cond_49

    move-object/from16 v0, p0

    iget-char v5, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v6, 0x2f

    if-eq v5, v6, :cond_49

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v5

    if-nez v5, :cond_49

    .line 925
    move-object/from16 v0, p0

    iget-char v5, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_4a

    if-nez v31, :cond_4a

    if-nez v31, :cond_4a

    .line 938
    :cond_49
    if-eqz p1, :cond_4c

    .line 939
    move-object/from16 v0, p0

    iget v5, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v19, v5, -0x1

    .line 948
    .local v19, "end":I
    :goto_e
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    move/from16 v0, v34

    move/from16 v1, v19

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v37

    .line 950
    .local v37, "text":Ljava/lang/String;
    const-string v5, "\\."

    move-object/from16 v0, v37

    invoke-virtual {v0, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4f

    .line 951
    const-string v5, "\\\\\\."

    const-string v6, "\\."

    move-object/from16 v0, v37

    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v32

    .line 952
    .local v32, "propName":Ljava/lang/String;
    new-instance v33, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    const/4 v5, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    invoke-direct {v0, v1, v5}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;-><init>(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 931
    .end local v19    # "end":I
    .end local v32    # "propName":Ljava/lang/String;
    .end local v37    # "text":Ljava/lang/String;
    :cond_4a
    move-object/from16 v0, p0

    iget-char v5, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v6, 0x5c

    if-ne v5, v6, :cond_4b

    .line 932
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 934
    :cond_4b
    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_d

    .line 941
    :cond_4c
    move-object/from16 v0, p0

    iget-char v5, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v6, 0x2f

    if-eq v5, v6, :cond_4d

    move-object/from16 v0, p0

    iget-char v5, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v6, 0x2e

    if-ne v5, v6, :cond_4e

    .line 942
    :cond_4d
    move-object/from16 v0, p0

    iget v5, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v19, v5, -0x1

    .restart local v19    # "end":I
    goto :goto_e

    .line 944
    .end local v19    # "end":I
    :cond_4e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    move/from16 v19, v0

    .restart local v19    # "end":I
    goto :goto_e

    .line 955
    .restart local v37    # "text":Ljava/lang/String;
    :cond_4f
    move-object/from16 v0, p0

    move-object/from16 v1, v37

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->buildArraySegement(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONPath$Segement;

    move-result-object v33

    .line 957
    .local v33, "segment":Lcom/alibaba/fastjson/JSONPath$Segement;
    if-eqz p1, :cond_5

    invoke-virtual/range {p0 .. p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v5

    if-nez v5, :cond_5

    .line 958
    const/16 v5, 0x5d

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    goto/16 :goto_0
.end method

.method protected readDoubleValue(J)D
    .locals 7
    .param p1, "longValue"    # J

    .prologue
    .line 981
    iget v5, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v0, v5, -0x1

    .line 983
    .local v0, "beginIndex":I
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 984
    :goto_0
    iget-char v5, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v6, 0x30

    if-lt v5, v6, :cond_0

    iget-char v5, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v6, 0x39

    if-gt v5, v6, :cond_0

    .line 985
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_0

    .line 988
    :cond_0
    iget v5, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v1, v5, -0x1

    .line 989
    .local v1, "endIndex":I
    iget-object v5, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 990
    .local v2, "text":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v3

    .line 991
    .local v3, "value":D
    long-to-double v5, p1

    add-double/2addr v3, v5

    .line 992
    return-wide v3
.end method

.method protected readLongValue()J
    .locals 7

    .prologue
    .line 965
    iget v5, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v0, v5, -0x1

    .line 966
    .local v0, "beginIndex":I
    iget-char v5, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v6, 0x2b

    if-eq v5, v6, :cond_0

    iget-char v5, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v6, 0x2d

    if-ne v5, v6, :cond_1

    .line 967
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 970
    :cond_1
    :goto_0
    iget-char v5, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v6, 0x30

    if-lt v5, v6, :cond_2

    iget-char v5, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v6, 0x39

    if-gt v5, v6, :cond_2

    .line 971
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_0

    .line 974
    :cond_2
    iget v5, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v1, v5, -0x1

    .line 975
    .local v1, "endIndex":I
    iget-object v5, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 976
    .local v2, "text":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    .line 977
    .local v3, "value":J
    return-wide v3
.end method

.method readName()Ljava/lang/String;
    .locals 6

    .prologue
    const/16 v4, 0x5c

    .line 1087
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 1089
    iget-char v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-eq v3, v4, :cond_0

    iget-char v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-static {v3}, Lcom/alibaba/fastjson/util/IOUtils;->firstIdentifier(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1090
    new-instance v3, Lcom/alibaba/fastjson/JSONPathException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "illeal jsonpath syntax. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1093
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1094
    .local v0, "buf":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1095
    iget-char v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v3, v4, :cond_4

    .line 1096
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1097
    iget-char v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1098
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1113
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-char v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-static {v3}, Lcom/alibaba/fastjson/util/IOUtils;->isIdent(C)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1114
    iget-char v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1117
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1119
    .local v2, "propertyName":Ljava/lang/String;
    return-object v2

    .line 1101
    .end local v2    # "propertyName":Ljava/lang/String;
    :cond_3
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_0

    .line 1105
    :cond_4
    iget-char v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-static {v3}, Lcom/alibaba/fastjson/util/IOUtils;->isIdent(C)Z

    move-result v1

    .line 1106
    .local v1, "identifierFlag":Z
    if-eqz v1, :cond_1

    .line 1109
    iget-char v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1110
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_0
.end method

.method protected readOp()Lcom/alibaba/fastjson/JSONPath$Operator;
    .locals 5

    .prologue
    const/16 v4, 0x3d

    .line 1024
    const/4 v1, 0x0

    .line 1025
    .local v1, "op":Lcom/alibaba/fastjson/JSONPath$Operator;
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v2, v4, :cond_2

    .line 1026
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1027
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->EQ:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 1050
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    .line 1051
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v0

    .line 1053
    .local v0, "name":Ljava/lang/String;
    const-string v2, "not"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1054
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 1056
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v0

    .line 1058
    const-string v2, "like"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1059
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    .line 1083
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    :goto_1
    return-object v1

    .line 1028
    :cond_2
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v3, 0x21

    if-ne v2, v3, :cond_3

    .line 1029
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1030
    invoke-virtual {p0, v4}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1031
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->NE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_0

    .line 1032
    :cond_3
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v3, 0x3c

    if-ne v2, v3, :cond_5

    .line 1033
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1034
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v2, v4, :cond_4

    .line 1035
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1036
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->LE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_0

    .line 1038
    :cond_4
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->LT:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_0

    .line 1040
    :cond_5
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v3, 0x3e

    if-ne v2, v3, :cond_0

    .line 1041
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1042
    iget-char v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v2, v4, :cond_6

    .line 1043
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1044
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->GE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_0

    .line 1046
    :cond_6
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->GT:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_0

    .line 1060
    .restart local v0    # "name":Ljava/lang/String;
    :cond_7
    const-string v2, "rlike"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 1061
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_RLIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_1

    .line 1062
    :cond_8
    const-string v2, "in"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 1063
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_1

    .line 1064
    :cond_9
    const-string v2, "between"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 1065
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->NOT_BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_1

    .line 1067
    :cond_a
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2

    .line 1070
    :cond_b
    const-string v2, "like"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 1071
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->LIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_1

    .line 1072
    :cond_c
    const-string v2, "rlike"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 1073
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->RLIKE:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto :goto_1

    .line 1074
    :cond_d
    const-string v2, "in"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 1075
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->IN:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto/16 :goto_1

    .line 1076
    :cond_e
    const-string v2, "between"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 1077
    sget-object v1, Lcom/alibaba/fastjson/JSONPath$Operator;->BETWEEN:Lcom/alibaba/fastjson/JSONPath$Operator;

    goto/16 :goto_1

    .line 1079
    :cond_f
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2
.end method

.method readSegement()Lcom/alibaba/fastjson/JSONPath$Segement;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0x2e

    const/4 v6, 0x0

    .line 508
    iget v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v8, :cond_3

    .line 509
    iget-char v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-static {v4}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isDigitFirst(C)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 510
    iget-char v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    add-int/lit8 v2, v4, -0x30

    .line 511
    .local v2, "index":I
    new-instance v4, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;

    invoke-direct {v4, v2}, Lcom/alibaba/fastjson/JSONPath$ArrayAccessSegement;-><init>(I)V

    .line 578
    .end local v2    # "index":I
    :goto_0
    return-object v4

    .line 512
    :cond_0
    iget-char v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v5, 0x61

    if-lt v4, v5, :cond_1

    iget-char v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v5, 0x7a

    if-le v4, v5, :cond_2

    :cond_1
    iget-char v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v5, 0x41

    if-lt v4, v5, :cond_3

    iget-char v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v5, 0x5a

    if-gt v4, v5, :cond_3

    .line 513
    :cond_2
    new-instance v4, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    iget-char v5, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v6}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;-><init>(Ljava/lang/String;Z)V

    goto :goto_0

    .line 516
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v4

    if-nez v4, :cond_11

    .line 517
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 519
    iget-char v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v5, 0x24

    if-ne v4, v5, :cond_4

    .line 520
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_1

    .line 524
    :cond_4
    iget-char v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-eq v4, v7, :cond_5

    iget-char v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v5, 0x2f

    if-ne v4, v5, :cond_e

    .line 525
    :cond_5
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 526
    .local v0, "c0":I
    const/4 v1, 0x0

    .line 527
    .local v1, "deep":Z
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 528
    if-ne v0, v7, :cond_6

    iget-char v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-ne v4, v7, :cond_6

    .line 529
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 530
    const/4 v1, 0x1

    .line 532
    :cond_6
    iget-char v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v5, 0x2a

    if-ne v4, v5, :cond_8

    .line 533
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v4

    if-nez v4, :cond_7

    .line 534
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 537
    :cond_7
    sget-object v4, Lcom/alibaba/fastjson/JSONPath$WildCardSegement;->instance:Lcom/alibaba/fastjson/JSONPath$WildCardSegement;

    goto :goto_0

    .line 540
    :cond_8
    iget-char v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-static {v4}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isDigitFirst(C)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 541
    invoke-virtual {p0, v6}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->parseArrayAccess(Z)Lcom/alibaba/fastjson/JSONPath$Segement;

    move-result-object v4

    goto :goto_0

    .line 544
    :cond_9
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v3

    .line 545
    .local v3, "propertyName":Ljava/lang/String;
    iget-char v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v5, 0x28

    if-ne v4, v5, :cond_d

    .line 546
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 547
    iget-char v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v5, 0x29

    if-ne v4, v5, :cond_c

    .line 548
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v4

    if-nez v4, :cond_a

    .line 549
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 552
    :cond_a
    const-string v4, "size"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 553
    sget-object v4, Lcom/alibaba/fastjson/JSONPath$SizeSegement;->instance:Lcom/alibaba/fastjson/JSONPath$SizeSegement;

    goto/16 :goto_0

    .line 556
    :cond_b
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v4}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v4

    .line 559
    :cond_c
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v4}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v4

    .line 562
    :cond_d
    new-instance v4, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    invoke-direct {v4, v3, v1}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;-><init>(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 565
    .end local v0    # "c0":I
    .end local v1    # "deep":Z
    .end local v3    # "propertyName":Ljava/lang/String;
    :cond_e
    iget-char v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v5, 0x5b

    if-ne v4, v5, :cond_f

    .line 566
    invoke-virtual {p0, v8}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->parseArrayAccess(Z)Lcom/alibaba/fastjson/JSONPath$Segement;

    move-result-object v4

    goto/16 :goto_0

    .line 569
    :cond_f
    iget v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->level:I

    if-nez v4, :cond_10

    .line 570
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v3

    .line 572
    .restart local v3    # "propertyName":Ljava/lang/String;
    new-instance v4, Lcom/alibaba/fastjson/JSONPath$PropertySegement;

    invoke-direct {v4, v3, v6}, Lcom/alibaba/fastjson/JSONPath$PropertySegement;-><init>(Ljava/lang/String;Z)V

    goto/16 :goto_0

    .line 575
    .end local v3    # "propertyName":Ljava/lang/String;
    :cond_10
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v4}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v4

    .line 578
    :cond_11
    const/4 v4, 0x0

    goto/16 :goto_0
.end method

.method readString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1123
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    .line 1124
    .local v1, "quoate":C
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    .line 1126
    iget v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v0, v3, -0x1

    .line 1127
    .local v0, "beginIndex":I
    :goto_0
    iget-char v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-eq v3, v1, :cond_0

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1128
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_0

    .line 1131
    :cond_0
    iget-object v4, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isEOF()Z

    move-result v3

    if-eqz v3, :cond_1

    iget v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    :goto_1
    invoke-virtual {v4, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 1133
    .local v2, "strValue":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->accept(C)V

    .line 1135
    return-object v2

    .line 1131
    .end local v2    # "strValue":Ljava/lang/String;
    :cond_1
    iget v3, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->pos:I

    add-int/lit8 v3, v3, -0x1

    goto :goto_1
.end method

.method protected readValue()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 996
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->skipWhitespace()V

    .line 998
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    invoke-static {v1}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->isDigitFirst(C)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 999
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readLongValue()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    .line 1010
    :goto_0
    return-object v1

    .line 1002
    :cond_0
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x22

    if-eq v1, v2, :cond_1

    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x27

    if-ne v1, v2, :cond_2

    .line 1003
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 1006
    :cond_2
    iget-char v1, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v2, 0x6e

    if-ne v1, v2, :cond_4

    .line 1007
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->readName()Ljava/lang/String;

    move-result-object v0

    .line 1009
    .local v0, "name":Ljava/lang/String;
    const-string v1, "null"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1010
    const/4 v1, 0x0

    goto :goto_0

    .line 1012
    :cond_3
    new-instance v1, Lcom/alibaba/fastjson/JSONPathException;

    iget-object v2, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->path:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/alibaba/fastjson/JSONPathException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1016
    .end local v0    # "name":Ljava/lang/String;
    :cond_4
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1
.end method

.method public final skipWhitespace()V
    .locals 3

    .prologue
    const/16 v2, 0x20

    .line 583
    :goto_0
    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-gt v0, v2, :cond_1

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    if-eq v0, v2, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    iget-char v0, p0, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->ch:C

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1

    .line 584
    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONPath$JSONPathParser;->next()V

    goto :goto_0

    .line 590
    :cond_1
    return-void
.end method
