.class public Lcom/alibaba/fastjson/util/FieldInfo;
.super Ljava/lang/Object;
.source "FieldInfo.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/alibaba/fastjson/util/FieldInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public final declaringClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public final field:Ljava/lang/reflect/Field;

.field public final fieldAccess:Z

.field private final fieldAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

.field public final fieldClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public final fieldTransient:Z

.field public final fieldType:Ljava/lang/reflect/Type;

.field public final format:Ljava/lang/String;

.field public final getOnly:Z

.field public final isEnum:Z

.field public final jsonDirect:Z

.field public final label:Ljava/lang/String;

.field public final method:Ljava/lang/reflect/Method;

.field private final methodAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

.field public final name:Ljava/lang/String;

.field public final name_chars:[C

.field private ordinal:I

.field public final parserFeatures:I

.field public final serialzeFeatures:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;III)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p4, "fieldType"    # Ljava/lang/reflect/Type;
    .param p5, "field"    # Ljava/lang/reflect/Field;
    .param p6, "ordinal"    # I
    .param p7, "serialzeFeatures"    # I
    .param p8, "parserFeatures"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Field;",
            "III)V"
        }
    .end annotation

    .prologue
    .local p2, "declaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput v2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    .line 54
    iput-object p1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    .line 56
    iput-object p3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 57
    iput-object p4, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 58
    iput-object v3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    .line 59
    iput-object p5, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 60
    iput p6, p0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    .line 61
    iput p7, p0, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    .line 62
    iput v2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->parserFeatures:I

    .line 64
    invoke-virtual {p3}, Ljava/lang/Class;->isEnum()Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->isEnum:Z

    .line 66
    if-eqz p5, :cond_3

    .line 67
    invoke-virtual {p5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    .line 68
    .local v0, "modifiers":I
    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-nez v1, :cond_2

    :cond_0
    const/4 v1, 0x1

    :goto_0
    iput-boolean v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    .line 69
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z

    .line 75
    .end local v0    # "modifiers":I
    :goto_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/util/FieldInfo;->genFieldNameChars()[C

    move-result-object v1

    iput-object v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name_chars:[C

    .line 77
    if-eqz p5, :cond_1

    .line 78
    invoke-static {p5}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 81
    :cond_1
    const-string v1, ""

    iput-object v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->label:Ljava/lang/String;

    .line 82
    iput-object v3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    .line 83
    iput-object v3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->methodAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    .line 84
    iput-boolean v2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    .line 85
    iput-boolean v2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->jsonDirect:Z

    .line 86
    iput-object v3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->format:Ljava/lang/String;

    .line 87
    return-void

    .restart local v0    # "modifiers":I
    :cond_2
    move v1, v2

    .line 68
    goto :goto_0

    .line 71
    .end local v0    # "modifiers":I
    :cond_3
    iput-boolean v2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z

    .line 72
    iput-boolean v2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    goto :goto_1
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V
    .locals 15
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "field"    # Ljava/lang/reflect/Field;
    .param p5, "type"    # Ljava/lang/reflect/Type;
    .param p6, "ordinal"    # I
    .param p7, "serialzeFeatures"    # I
    .param p8, "parserFeatures"    # I
    .param p9, "fieldAnnotation"    # Lcom/alibaba/fastjson/annotation/JSONField;
    .param p10, "methodAnnotation"    # Lcom/alibaba/fastjson/annotation/JSONField;
    .param p11, "label"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            "III",
            "Lcom/alibaba/fastjson/annotation/JSONField;",
            "Lcom/alibaba/fastjson/annotation/JSONField;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 99
    .local p4, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const/4 v13, 0x0

    iput v13, p0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    .line 100
    if-eqz p3, :cond_0

    .line 101
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    .line 102
    .local v4, "fieldName":Ljava/lang/String;
    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_0

    .line 103
    move-object/from16 p1, v4

    .line 107
    .end local v4    # "fieldName":Ljava/lang/String;
    :cond_0
    move-object/from16 v0, p1

    iput-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    .line 108
    move-object/from16 v0, p2

    iput-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    .line 109
    move-object/from16 v0, p3

    iput-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 110
    move/from16 v0, p6

    iput v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    .line 111
    move/from16 v0, p7

    iput v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->serialzeFeatures:I

    .line 112
    move/from16 v0, p8

    iput v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->parserFeatures:I

    .line 113
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    .line 114
    move-object/from16 v0, p10

    iput-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->methodAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    .line 116
    if-eqz p3, :cond_6

    .line 117
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v10

    .line 118
    .local v10, "modifiers":I
    and-int/lit8 v13, v10, 0x1

    if-nez v13, :cond_1

    if-nez p2, :cond_5

    :cond_1
    const/4 v13, 0x1

    :goto_0
    iput-boolean v13, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    .line 119
    invoke-static {v10}, Ljava/lang/reflect/Modifier;->isTransient(I)Z

    move-result v13

    iput-boolean v13, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z

    .line 125
    .end local v10    # "modifiers":I
    :goto_1
    if-eqz p11, :cond_7

    invoke-virtual/range {p11 .. p11}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_7

    .line 126
    move-object/from16 v0, p11

    iput-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->label:Ljava/lang/String;

    .line 131
    :goto_2
    const/4 v6, 0x0

    .line 132
    .local v6, "format":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v2

    .line 134
    .local v2, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    const/4 v9, 0x0

    .line 135
    .local v9, "jsonDirect":Z
    if-eqz v2, :cond_8

    .line 136
    invoke-interface {v2}, Lcom/alibaba/fastjson/annotation/JSONField;->format()Ljava/lang/String;

    move-result-object v6

    .line 138
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_2

    .line 139
    const/4 v6, 0x0

    .line 141
    :cond_2
    invoke-interface {v2}, Lcom/alibaba/fastjson/annotation/JSONField;->jsonDirect()Z

    move-result v9

    .line 145
    :goto_3
    iput-object v6, p0, Lcom/alibaba/fastjson/util/FieldInfo;->format:Ljava/lang/String;

    .line 147
    invoke-virtual {p0}, Lcom/alibaba/fastjson/util/FieldInfo;->genFieldNameChars()[C

    move-result-object v13

    iput-object v13, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name_chars:[C

    .line 149
    if-eqz p2, :cond_3

    .line 150
    invoke-static/range {p2 .. p2}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 153
    :cond_3
    if-eqz p3, :cond_4

    .line 154
    invoke-static/range {p3 .. p3}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 157
    :cond_4
    const/4 v8, 0x0

    .line 160
    .local v8, "getOnly":Z
    if-eqz p2, :cond_a

    .line 162
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v12

    .local v12, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v13, v12

    const/4 v14, 0x1

    if-ne v13, v14, :cond_9

    .line 163
    const/4 v13, 0x0

    aget-object v3, v12, v13

    .line 164
    .local v3, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v13

    const/4 v14, 0x0

    aget-object v5, v13, v14

    .line 170
    .local v5, "fieldType":Ljava/lang/reflect/Type;
    :goto_4
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v13

    iput-object v13, p0, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    .line 177
    .end local v12    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_5
    iput-boolean v8, p0, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    .line 178
    if-eqz v9, :cond_b

    const-class v13, Ljava/lang/String;

    if-ne v3, v13, :cond_b

    const/4 v13, 0x1

    :goto_6
    iput-boolean v13, p0, Lcom/alibaba/fastjson/util/FieldInfo;->jsonDirect:Z

    .line 180
    if-eqz p4, :cond_c

    const-class v13, Ljava/lang/Object;

    if-ne v3, v13, :cond_c

    instance-of v13, v5, Ljava/lang/reflect/TypeVariable;

    if-eqz v13, :cond_c

    move-object v11, v5

    .line 181
    check-cast v11, Ljava/lang/reflect/TypeVariable;

    .line 182
    .local v11, "tv":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    move-object/from16 v0, p4

    invoke-static {v0, v11}, Lcom/alibaba/fastjson/util/FieldInfo;->getInheritGenericType(Ljava/lang/Class;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;

    move-result-object v7

    .line 183
    .local v7, "genericFieldType":Ljava/lang/reflect/Type;
    if-eqz v7, :cond_c

    .line 184
    invoke-static {v7}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v13

    iput-object v13, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 185
    iput-object v7, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 187
    invoke-virtual {v3}, Ljava/lang/Class;->isEnum()Z

    move-result v13

    iput-boolean v13, p0, Lcom/alibaba/fastjson/util/FieldInfo;->isEnum:Z

    .line 210
    .end local v11    # "tv":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    .end local p5    # "type":Ljava/lang/reflect/Type;
    :goto_7
    return-void

    .line 118
    .end local v2    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v3    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "fieldType":Ljava/lang/reflect/Type;
    .end local v6    # "format":Ljava/lang/String;
    .end local v7    # "genericFieldType":Ljava/lang/reflect/Type;
    .end local v8    # "getOnly":Z
    .end local v9    # "jsonDirect":Z
    .restart local v10    # "modifiers":I
    .restart local p5    # "type":Ljava/lang/reflect/Type;
    :cond_5
    const/4 v13, 0x0

    goto/16 :goto_0

    .line 121
    .end local v10    # "modifiers":I
    :cond_6
    const/4 v13, 0x0

    iput-boolean v13, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAccess:Z

    .line 122
    const/4 v13, 0x0

    iput-boolean v13, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldTransient:Z

    goto/16 :goto_1

    .line 128
    :cond_7
    const-string v13, ""

    iput-object v13, p0, Lcom/alibaba/fastjson/util/FieldInfo;->label:Ljava/lang/String;

    goto/16 :goto_2

    .line 143
    .restart local v2    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v6    # "format":Ljava/lang/String;
    .restart local v9    # "jsonDirect":Z
    :cond_8
    const/4 v9, 0x0

    goto :goto_3

    .line 166
    .restart local v8    # "getOnly":Z
    .restart local v12    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_9
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v3

    .line 167
    .restart local v3    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Method;->getGenericReturnType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 168
    .restart local v5    # "fieldType":Ljava/lang/reflect/Type;
    const/4 v8, 0x1

    goto :goto_4

    .line 172
    .end local v3    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "fieldType":Ljava/lang/reflect/Type;
    .end local v12    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_a
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    .line 173
    .restart local v3    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v5

    .line 174
    .restart local v5    # "fieldType":Ljava/lang/reflect/Type;
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v13

    iput-object v13, p0, Lcom/alibaba/fastjson/util/FieldInfo;->declaringClass:Ljava/lang/Class;

    .line 175
    invoke-virtual/range {p3 .. p3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v13

    invoke-static {v13}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result v8

    goto :goto_5

    .line 178
    :cond_b
    const/4 v13, 0x0

    goto :goto_6

    .line 192
    :cond_c
    move-object v7, v5

    .line 194
    .restart local v7    # "genericFieldType":Ljava/lang/reflect/Type;
    instance-of v13, v5, Ljava/lang/Class;

    if-nez v13, :cond_d

    .line 195
    if-eqz p5, :cond_e

    .end local p5    # "type":Ljava/lang/reflect/Type;
    :goto_8
    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-static {v0, v1, v5}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldType(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v7

    .line 197
    if-eq v7, v5, :cond_d

    .line 198
    instance-of v13, v7, Ljava/lang/reflect/ParameterizedType;

    if-eqz v13, :cond_f

    .line 199
    invoke-static {v7}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v3

    .line 206
    :cond_d
    :goto_9
    iput-object v7, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldType:Ljava/lang/reflect/Type;

    .line 207
    iput-object v3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    .line 209
    invoke-virtual {v3}, Ljava/lang/Class;->isEnum()Z

    move-result v13

    iput-boolean v13, p0, Lcom/alibaba/fastjson/util/FieldInfo;->isEnum:Z

    goto :goto_7

    .restart local p5    # "type":Ljava/lang/reflect/Type;
    :cond_e
    move-object/from16 p5, p4

    .line 195
    goto :goto_8

    .line 200
    .end local p5    # "type":Ljava/lang/reflect/Type;
    :cond_f
    instance-of v13, v7, Ljava/lang/Class;

    if-eqz v13, :cond_d

    .line 201
    invoke-static {v7}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v3

    goto :goto_9
.end method

.method public static getFieldType(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 20
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "fieldType"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/reflect/Type;",
            ")",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .line 241
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    move-object/from16 v9, p2

    .line 315
    :goto_0
    return-object v9

    .line 245
    :cond_1
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/reflect/GenericArrayType;

    move/from16 v18, v0

    if-eqz v18, :cond_3

    move-object/from16 v10, p2

    .line 246
    check-cast v10, Ljava/lang/reflect/GenericArrayType;

    .line 247
    .local v10, "genericArrayType":Ljava/lang/reflect/GenericArrayType;
    invoke-interface {v10}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    move-result-object v6

    .line 248
    .local v6, "componentType":Ljava/lang/reflect/Type;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v6}, Lcom/alibaba/fastjson/util/FieldInfo;->getFieldType(Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v7

    .line 249
    .local v7, "componentTypeX":Ljava/lang/reflect/Type;
    if-eq v6, v7, :cond_2

    .line 250
    invoke-static {v7}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v18

    const/16 v19, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    .line 251
    .local v9, "fieldTypeX":Ljava/lang/reflect/Type;
    goto :goto_0

    .end local v9    # "fieldTypeX":Ljava/lang/reflect/Type;
    :cond_2
    move-object/from16 v9, p2

    .line 254
    goto :goto_0

    .line 257
    .end local v6    # "componentType":Ljava/lang/reflect/Type;
    .end local v7    # "componentTypeX":Ljava/lang/reflect/Type;
    .end local v10    # "genericArrayType":Ljava/lang/reflect/GenericArrayType;
    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/util/TypeUtils;->isGenericParamType(Ljava/lang/reflect/Type;)Z

    move-result v18

    if-nez v18, :cond_4

    move-object/from16 v9, p2

    .line 258
    goto :goto_0

    .line 261
    :cond_4
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/reflect/TypeVariable;

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 262
    invoke-static/range {p1 .. p1}, Lcom/alibaba/fastjson/util/TypeUtils;->getGenericParamType(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v13

    check-cast v13, Ljava/lang/reflect/ParameterizedType;

    .line 263
    .local v13, "paramType":Ljava/lang/reflect/ParameterizedType;
    invoke-static {v13}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v14

    .local v14, "parameterizedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object/from16 v16, p2

    .line 264
    check-cast v16, Ljava/lang/reflect/TypeVariable;

    .line 266
    .local v16, "typeVar":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    invoke-virtual {v14}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v17

    .line 267
    .local v17, "typeVariables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v11, v0, :cond_6

    .line 268
    aget-object v18, v17, v11

    invoke-interface/range {v18 .. v18}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v16 .. v16}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 269
    invoke-interface {v13}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v18

    aget-object p2, v18, v11

    move-object/from16 v9, p2

    .line 270
    goto :goto_0

    .line 267
    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 275
    .end local v11    # "i":I
    .end local v13    # "paramType":Ljava/lang/reflect/ParameterizedType;
    .end local v14    # "parameterizedClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v16    # "typeVar":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    .end local v17    # "typeVariables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    :cond_6
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    move/from16 v18, v0

    if-eqz v18, :cond_d

    move-object/from16 v15, p2

    .line 276
    check-cast v15, Ljava/lang/reflect/ParameterizedType;

    .line 278
    .local v15, "parameterizedFieldType":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v15}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v4

    .line 279
    .local v4, "arguments":[Ljava/lang/reflect/Type;
    const/4 v5, 0x0

    .line 280
    .local v5, "changed":Z
    const/16 v17, 0x0

    .line 281
    .restart local v17    # "typeVariables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    const/4 v3, 0x0

    .line 283
    .local v3, "actualTypes":[Ljava/lang/reflect/Type;
    const/4 v13, 0x0

    .line 284
    .restart local v13    # "paramType":Ljava/lang/reflect/ParameterizedType;
    move-object/from16 v0, p1

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    move/from16 v18, v0

    if-eqz v18, :cond_a

    move-object/from16 v13, p1

    .line 285
    check-cast v13, Ljava/lang/reflect/ParameterizedType;

    .line 286
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v17

    .line 292
    :cond_7
    :goto_2
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_3
    array-length v0, v4

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v11, v0, :cond_c

    if-eqz v13, :cond_c

    .line 293
    aget-object v8, v4, v11

    .line 294
    .local v8, "feildTypeArguement":Ljava/lang/reflect/Type;
    instance-of v0, v8, Ljava/lang/reflect/TypeVariable;

    move/from16 v18, v0

    if-eqz v18, :cond_b

    move-object/from16 v16, v8

    .line 295
    check-cast v16, Ljava/lang/reflect/TypeVariable;

    .line 297
    .restart local v16    # "typeVar":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_4
    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    move/from16 v0, v18

    if-ge v12, v0, :cond_b

    .line 298
    aget-object v18, v17, v12

    invoke-interface/range {v18 .. v18}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v16 .. v16}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_9

    .line 299
    if-nez v3, :cond_8

    .line 300
    invoke-interface {v13}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v3

    .line 302
    :cond_8
    aget-object v18, v3, v12

    aput-object v18, v4, v11

    .line 303
    const/4 v5, 0x1

    .line 297
    :cond_9
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 287
    .end local v8    # "feildTypeArguement":Ljava/lang/reflect/Type;
    .end local v11    # "i":I
    .end local v12    # "j":I
    .end local v16    # "typeVar":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    :cond_a
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    move/from16 v18, v0

    if-eqz v18, :cond_7

    .line 288
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v13

    .end local v13    # "paramType":Ljava/lang/reflect/ParameterizedType;
    check-cast v13, Ljava/lang/reflect/ParameterizedType;

    .line 289
    .restart local v13    # "paramType":Ljava/lang/reflect/ParameterizedType;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v17

    goto :goto_2

    .line 292
    .restart local v8    # "feildTypeArguement":Ljava/lang/reflect/Type;
    .restart local v11    # "i":I
    :cond_b
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 308
    .end local v8    # "feildTypeArguement":Ljava/lang/reflect/Type;
    :cond_c
    if-eqz v5, :cond_d

    .line 309
    new-instance p2, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;

    .end local p2    # "fieldType":Ljava/lang/reflect/Type;
    invoke-interface {v15}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v18

    .line 310
    invoke-interface {v15}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v19

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v0, v4, v1, v2}, Lcom/alibaba/fastjson/util/ParameterizedTypeImpl;-><init>([Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)V

    .restart local p2    # "fieldType":Ljava/lang/reflect/Type;
    move-object/from16 v9, p2

    .line 311
    goto/16 :goto_0

    .end local v3    # "actualTypes":[Ljava/lang/reflect/Type;
    .end local v4    # "arguments":[Ljava/lang/reflect/Type;
    .end local v5    # "changed":Z
    .end local v11    # "i":I
    .end local v13    # "paramType":Ljava/lang/reflect/ParameterizedType;
    .end local v15    # "parameterizedFieldType":Ljava/lang/reflect/ParameterizedType;
    .end local v17    # "typeVariables":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    :cond_d
    move-object/from16 v9, p2

    .line 315
    goto/16 :goto_0
.end method

.method public static getInheritGenericType(Ljava/lang/Class;Ljava/lang/reflect/TypeVariable;)Ljava/lang/reflect/Type;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/TypeVariable",
            "<*>;)",
            "Ljava/lang/reflect/Type;"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "tv":Ljava/lang/reflect/TypeVariable;, "Ljava/lang/reflect/TypeVariable<*>;"
    const/4 v6, 0x0

    .line 319
    const/4 v4, 0x0

    .line 320
    .local v4, "type":Ljava/lang/reflect/Type;
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    move-result-object v0

    .line 322
    .local v0, "gd":Ljava/lang/reflect/GenericDeclaration;
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v4

    .line 323
    if-nez v4, :cond_2

    .line 339
    :cond_1
    :goto_0
    return-object v6

    .line 326
    :cond_2
    instance-of v7, v4, Ljava/lang/reflect/ParameterizedType;

    if-eqz v7, :cond_4

    move-object v2, v4

    .line 327
    check-cast v2, Ljava/lang/reflect/ParameterizedType;

    .line 328
    .local v2, "ptype":Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v7

    if-ne v7, v0, :cond_4

    .line 329
    invoke-interface {v0}, Ljava/lang/reflect/GenericDeclaration;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    move-result-object v3

    .line 330
    .local v3, "tvs":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    invoke-interface {v2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v5

    .line 331
    .local v5, "types":[Ljava/lang/reflect/Type;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v7, v3

    if-ge v1, v7, :cond_1

    .line 332
    aget-object v7, v3, v1

    if-ne v7, p1, :cond_3

    aget-object v6, v5, v1

    goto :goto_0

    .line 331
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 337
    .end local v1    # "i":I
    .end local v2    # "ptype":Ljava/lang/reflect/ParameterizedType;
    .end local v3    # "tvs":[Ljava/lang/reflect/TypeVariable;, "[Ljava/lang/reflect/TypeVariable<*>;"
    .end local v5    # "types":[Ljava/lang/reflect/Type;
    :cond_4
    invoke-static {v4}, Lcom/alibaba/fastjson/util/TypeUtils;->getClass(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object p0

    .line 338
    if-nez v4, :cond_0

    goto :goto_0
.end method


# virtual methods
.method public compareTo(Lcom/alibaba/fastjson/util/FieldInfo;)I
    .locals 10
    .param p1, "o"    # Lcom/alibaba/fastjson/util/FieldInfo;

    .prologue
    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v5, 0x1

    .line 367
    iget v8, p0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    iget v9, p1, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    if-ge v8, v9, :cond_1

    move v5, v7

    .line 421
    :cond_0
    :goto_0
    return v5

    .line 371
    :cond_1
    iget v8, p0, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    iget v9, p1, Lcom/alibaba/fastjson/util/FieldInfo;->ordinal:I

    if-gt v8, v9, :cond_0

    .line 375
    iget-object v8, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    iget-object v9, p1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v3

    .line 377
    .local v3, "result":I
    if-eqz v3, :cond_2

    move v5, v3

    .line 378
    goto :goto_0

    .line 381
    :cond_2
    invoke-virtual {p0}, Lcom/alibaba/fastjson/util/FieldInfo;->getDeclaredClass()Ljava/lang/Class;

    move-result-object v4

    .line 382
    .local v4, "thisDeclaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Lcom/alibaba/fastjson/util/FieldInfo;->getDeclaredClass()Ljava/lang/Class;

    move-result-object v2

    .line 384
    .local v2, "otherDeclaringClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v4, :cond_4

    if-eqz v2, :cond_4

    if-eq v4, v2, :cond_4

    .line 385
    invoke-virtual {v4, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_3

    move v5, v7

    .line 386
    goto :goto_0

    .line 389
    :cond_3
    invoke-virtual {v2, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 394
    :cond_4
    iget-object v8, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    iget-object v9, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    if-ne v8, v9, :cond_6

    move v0, v5

    .line 395
    .local v0, "isSampeType":Z
    :goto_1
    iget-object v8, p1, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    if-eqz v8, :cond_7

    iget-object v8, p1, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    iget-object v9, p1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    if-ne v8, v9, :cond_7

    move v1, v5

    .line 397
    .local v1, "oSameType":Z
    :goto_2
    if-eqz v0, :cond_5

    if-eqz v1, :cond_0

    .line 401
    :cond_5
    if-eqz v1, :cond_8

    if-nez v0, :cond_8

    move v5, v7

    .line 402
    goto :goto_0

    .end local v0    # "isSampeType":Z
    .end local v1    # "oSameType":Z
    :cond_6
    move v0, v6

    .line 394
    goto :goto_1

    .restart local v0    # "isSampeType":Z
    :cond_7
    move v1, v6

    .line 395
    goto :goto_2

    .line 405
    .restart local v1    # "oSameType":Z
    :cond_8
    iget-object v6, p1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->isPrimitive()Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->isPrimitive()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 409
    :cond_9
    iget-object v6, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->isPrimitive()Z

    move-result v6

    if-eqz v6, :cond_a

    iget-object v6, p1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->isPrimitive()Z

    move-result v6

    if-nez v6, :cond_a

    move v5, v7

    .line 410
    goto :goto_0

    .line 413
    :cond_a
    iget-object v6, p1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v8, "java."

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v8, "java."

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 417
    :cond_b
    iget-object v5, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "java."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, p1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "java."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_c

    move v5, v7

    .line 418
    goto/16 :goto_0

    .line 421
    :cond_c
    iget-object v5, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 18
    check-cast p1, Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-virtual {p0, p1}, Lcom/alibaba/fastjson/util/FieldInfo;->compareTo(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v0

    return v0
.end method

.method protected genFieldNameChars()[C
    .locals 7

    .prologue
    const/16 v6, 0x22

    const/4 v5, 0x0

    .line 213
    iget-object v2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v0

    .line 214
    .local v0, "nameLen":I
    add-int/lit8 v2, v0, 0x3

    new-array v1, v2, [C

    .line 215
    .local v1, "name_chars":[C
    iget-object v2, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    iget-object v3, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    invoke-virtual {v2, v5, v3, v1, v4}, Ljava/lang/String;->getChars(II[CI)V

    .line 216
    aput-char v6, v1, v5

    .line 217
    add-int/lit8 v2, v0, 0x1

    aput-char v6, v1, v2

    .line 218
    add-int/lit8 v2, v0, 0x2

    const/16 v3, 0x3a

    aput-char v3, v1, v2

    .line 219
    return-object v1
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p1, "javaObject"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 437
    iget-object v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 438
    iget-object v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 442
    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getAnnation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 224
    .local p1, "annotationClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-class v1, Lcom/alibaba/fastjson/annotation/JSONField;

    if-ne p1, v1, :cond_1

    .line 225
    invoke-virtual {p0}, Lcom/alibaba/fastjson/util/FieldInfo;->getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v0

    .line 237
    :cond_0
    :goto_0
    return-object v0

    .line 228
    :cond_1
    const/4 v0, 0x0

    .line 229
    .local v0, "annotatition":Ljava/lang/annotation/Annotation;, "TT;"
    iget-object v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_2

    .line 230
    iget-object v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    .line 233
    :cond_2
    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_0

    .line 234
    iget-object v1, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    goto :goto_0
.end method

.method public getAnnotation()Lcom/alibaba/fastjson/annotation/JSONField;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->fieldAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    .line 429
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->methodAnnotation:Lcom/alibaba/fastjson/annotation/JSONField;

    goto :goto_0
.end method

.method protected getDeclaredClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 355
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 356
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 363
    :goto_0
    return-object v0

    .line 359
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    if-eqz v0, :cond_1

    .line 360
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 363
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->format:Ljava/lang/String;

    return-object v0
.end method

.method public getMember()Ljava/lang/reflect/Member;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    .line 350
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    goto :goto_0
.end method

.method public set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "javaObject"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    .line 446
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 447
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    :goto_0
    return-void

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public setAccessible()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 455
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->method:Ljava/lang/reflect/Method;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 461
    :goto_0
    return-void

    .line 460
    :cond_0
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->field:Ljava/lang/reflect/Field;

    invoke-static {v0}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 343
    iget-object v0, p0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    return-object v0
.end method
