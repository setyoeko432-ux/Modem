.class public Lcom/alibaba/fastjson/util/JavaBeanInfo;
.super Ljava/lang/Object;
.source "JavaBeanInfo.java"


# instance fields
.field public final buildMethod:Ljava/lang/reflect/Method;

.field public final builderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public final clazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field public final creatorConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field public final defaultConstructor:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation
.end field

.field public final defaultConstructorParameterSize:I

.field public final factoryMethod:Ljava/lang/reflect/Method;

.field public final fields:[Lcom/alibaba/fastjson/util/FieldInfo;

.field public final jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

.field public final parserFeatures:I

.field public final sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

.field public final typeName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/List;)V
    .locals 5
    .param p5, "factoryMethod"    # Ljava/lang/reflect/Method;
    .param p6, "buildMethod"    # Ljava/lang/reflect/Method;
    .param p7, "jsonType"    # Lcom/alibaba/fastjson/annotation/JSONType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Constructor",
            "<*>;",
            "Ljava/lang/reflect/Constructor",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Lcom/alibaba/fastjson/annotation/JSONType;",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local p4, "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .local p8, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    const/4 v2, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->clazz:Ljava/lang/Class;

    .line 56
    iput-object p2, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->builderClass:Ljava/lang/Class;

    .line 57
    iput-object p3, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructor:Ljava/lang/reflect/Constructor;

    .line 58
    iput-object p4, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->creatorConstructor:Ljava/lang/reflect/Constructor;

    .line 59
    iput-object p5, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->factoryMethod:Ljava/lang/reflect/Method;

    .line 60
    invoke-static {p1}, Lcom/alibaba/fastjson/util/TypeUtils;->getParserFeatures(Ljava/lang/Class;)I

    move-result v3

    iput v3, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->parserFeatures:I

    .line 61
    iput-object p6, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->buildMethod:Ljava/lang/reflect/Method;

    .line 63
    iput-object p7, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->jsonType:Lcom/alibaba/fastjson/annotation/JSONType;

    .line 64
    if-eqz p7, :cond_3

    .line 65
    invoke-interface {p7}, Lcom/alibaba/fastjson/annotation/JSONType;->typeName()Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "typeName":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_2

    .line 67
    iput-object v1, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeName:Ljava/lang/String;

    .line 75
    .end local v1    # "typeName":Ljava/lang/String;
    :goto_0
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/alibaba/fastjson/util/FieldInfo;

    iput-object v3, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    .line 76
    iget-object v3, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-interface {p8, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 78
    iget-object v3, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v3, v3

    new-array v0, v3, [Lcom/alibaba/fastjson/util/FieldInfo;

    .line 79
    .local v0, "sortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v3, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    iget-object v4, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    array-length v4, v4

    invoke-static {v3, v2, v0, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 80
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 82
    iget-object v3, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-static {v3, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 83
    iget-object v0, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->fields:[Lcom/alibaba/fastjson/util/FieldInfo;

    .line 85
    :cond_0
    iput-object v0, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->sortedFields:[Lcom/alibaba/fastjson/util/FieldInfo;

    .line 87
    if-eqz p3, :cond_1

    invoke-virtual {p3}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v2

    array-length v2, v2

    :cond_1
    iput v2, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->defaultConstructorParameterSize:I

    .line 88
    return-void

    .line 69
    .end local v0    # "sortedFields":[Lcom/alibaba/fastjson/util/FieldInfo;
    .restart local v1    # "typeName":Ljava/lang/String;
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeName:Ljava/lang/String;

    goto :goto_0

    .line 72
    .end local v1    # "typeName":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/alibaba/fastjson/util/JavaBeanInfo;->typeName:Ljava/lang/String;

    goto :goto_0
.end method

.method static add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z
    .locals 5
    .param p1, "field"    # Lcom/alibaba/fastjson/util/FieldInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_2

    .line 102
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 104
    .local v1, "item":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v3, v1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    iget-object v4, p1, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 105
    iget-boolean v3, v1, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p1, Lcom/alibaba/fastjson/util/FieldInfo;->getOnly:Z

    if-nez v3, :cond_1

    .line 101
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 109
    :cond_1
    iget-object v3, v1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    iget-object v4, p1, Lcom/alibaba/fastjson/util/FieldInfo;->fieldClass:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 110
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 124
    .end local v1    # "item":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_2
    :goto_1
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    const/4 v3, 0x1

    :goto_2
    return v3

    .line 114
    .restart local v1    # "item":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_3
    invoke-virtual {v1, p1}, Lcom/alibaba/fastjson/util/FieldInfo;->compareTo(Lcom/alibaba/fastjson/util/FieldInfo;)I

    move-result v2

    .line 116
    .local v2, "result":I
    if-gez v2, :cond_4

    .line 117
    invoke-interface {p0, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 120
    :cond_4
    const/4 v3, 0x0

    goto :goto_2
.end method

.method public static build(Ljava/lang/Class;Ljava/lang/reflect/Type;Lcom/alibaba/fastjson/PropertyNamingStrategy;)Lcom/alibaba/fastjson/util/JavaBeanInfo;
    .locals 73
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "propertyNamingStrategy"    # Lcom/alibaba/fastjson/PropertyNamingStrategy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Type;",
            "Lcom/alibaba/fastjson/PropertyNamingStrategy;",
            ")",
            "Lcom/alibaba/fastjson/util/JavaBeanInfo;"
        }
    .end annotation

    .prologue
    .line 130
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v4, Lcom/alibaba/fastjson/annotation/JSONType;

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v19

    check-cast v19, Lcom/alibaba/fastjson/annotation/JSONType;

    .line 132
    .local v19, "jsonType":Lcom/alibaba/fastjson/annotation/JSONType;
    invoke-static/range {v19 .. v19}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getBuilderClass(Lcom/alibaba/fastjson/annotation/JSONType;)Ljava/lang/Class;

    move-result-object v14

    .line 134
    .local v14, "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v57

    .line 135
    .local v57, "declaredFields":[Ljava/lang/reflect/Field;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v64

    .line 137
    .local v64, "methods":[Ljava/lang/reflect/Method;
    if-nez v14, :cond_1

    move-object/from16 v4, p0

    :goto_0
    invoke-static {v4}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getDefaultConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v58

    .line 138
    .local v58, "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/16 v16, 0x0

    .line 139
    .local v16, "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/16 v50, 0x0

    .line 141
    .local v50, "buildMethod":Ljava/lang/reflect/Method;
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 143
    .local v20, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    if-nez v58, :cond_b

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->isInterface()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v4

    if-nez v4, :cond_b

    .line 144
    invoke-static/range {p0 .. p0}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getCreatorConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v16

    .line 145
    if-eqz v16, :cond_5

    .line 146
    invoke-static/range {v16 .. v16}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 148
    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v71

    .line 149
    .local v71, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object/from16 v0, v71

    array-length v4, v0

    if-lez v4, :cond_4

    .line 150
    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Constructor;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v67

    .line 151
    .local v67, "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    const/16 v60, 0x0

    .local v60, "i":I
    :goto_1
    move-object/from16 v0, v71

    array-length v4, v0

    move/from16 v0, v60

    if-ge v0, v4, :cond_4

    .line 152
    aget-object v68, v67, v60

    .line 153
    .local v68, "paramAnnotations":[Ljava/lang/annotation/Annotation;
    const/16 v37, 0x0

    .line 154
    .local v37, "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    move-object/from16 v0, v68

    array-length v5, v0

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v5, :cond_0

    aget-object v66, v68, v4

    .line 155
    .local v66, "paramAnnotation":Ljava/lang/annotation/Annotation;
    move-object/from16 v0, v66

    instance-of v12, v0, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v12, :cond_2

    move-object/from16 v37, v66

    .line 156
    check-cast v37, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 160
    .end local v66    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    :cond_0
    if-nez v37, :cond_3

    .line 161
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string v5, "illegal json creator"

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .end local v16    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v20    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .end local v37    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v50    # "buildMethod":Ljava/lang/reflect/Method;
    .end local v58    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v60    # "i":I
    .end local v67    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .end local v68    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    .end local v71    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_1
    move-object v4, v14

    .line 137
    goto :goto_0

    .line 154
    .restart local v16    # "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v20    # "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    .restart local v37    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v50    # "buildMethod":Ljava/lang/reflect/Method;
    .restart local v58    # "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .restart local v60    # "i":I
    .restart local v66    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    .restart local v67    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .restart local v68    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    .restart local v71    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 163
    .end local v66    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    :cond_3
    aget-object v6, v71, v60

    .line 164
    .local v6, "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Constructor;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v4

    aget-object v7, v4, v60

    .line 165
    .local v7, "fieldType":Ljava/lang/reflect/Type;
    invoke-interface/range {v37 .. v37}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-static {v0, v4, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 166
    .local v8, "field":Ljava/lang/reflect/Field;
    invoke-interface/range {v37 .. v37}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v9

    .line 167
    .local v9, "ordinal":I
    invoke-interface/range {v37 .. v37}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v10

    .line 168
    .local v10, "serialzeFeatures":I
    invoke-interface/range {v37 .. v37}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v11

    .line 169
    .local v11, "parserFeatures":I
    new-instance v3, Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-interface/range {v37 .. v37}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, p0

    invoke-direct/range {v3 .. v11}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;III)V

    .line 171
    .local v3, "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v0, v20

    invoke-static {v0, v3}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    .line 151
    add-int/lit8 v60, v60, 0x1

    goto :goto_1

    .line 175
    .end local v3    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v6    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "fieldType":Ljava/lang/reflect/Type;
    .end local v8    # "field":Ljava/lang/reflect/Field;
    .end local v9    # "ordinal":I
    .end local v10    # "serialzeFeatures":I
    .end local v11    # "parserFeatures":I
    .end local v37    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v60    # "i":I
    .end local v67    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .end local v68    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    :cond_4
    new-instance v12, Lcom/alibaba/fastjson/util/JavaBeanInfo;

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object/from16 v13, p0

    invoke-direct/range {v12 .. v20}, Lcom/alibaba/fastjson/util/JavaBeanInfo;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/List;)V

    .line 538
    .end local v71    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :goto_3
    return-object v12

    .line 178
    :cond_5
    move-object/from16 v0, p0

    move-object/from16 v1, v64

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getFactoryMethod(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;

    move-result-object v26

    .line 179
    .local v26, "factoryMethod":Ljava/lang/reflect/Method;
    if-eqz v26, :cond_a

    .line 180
    invoke-static/range {v26 .. v26}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 182
    invoke-virtual/range {v26 .. v26}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v71

    .line 183
    .restart local v71    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object/from16 v0, v71

    array-length v4, v0

    if-lez v4, :cond_9

    .line 184
    invoke-virtual/range {v26 .. v26}, Ljava/lang/reflect/Method;->getParameterAnnotations()[[Ljava/lang/annotation/Annotation;

    move-result-object v67

    .line 185
    .restart local v67    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    const/16 v60, 0x0

    .restart local v60    # "i":I
    :goto_4
    move-object/from16 v0, v71

    array-length v4, v0

    move/from16 v0, v60

    if-ge v0, v4, :cond_9

    .line 186
    aget-object v68, v67, v60

    .line 187
    .restart local v68    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    const/16 v37, 0x0

    .line 188
    .restart local v37    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    move-object/from16 v0, v68

    array-length v5, v0

    const/4 v4, 0x0

    :goto_5
    if-ge v4, v5, :cond_6

    aget-object v66, v68, v4

    .line 189
    .restart local v66    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    move-object/from16 v0, v66

    instance-of v12, v0, Lcom/alibaba/fastjson/annotation/JSONField;

    if-eqz v12, :cond_7

    move-object/from16 v37, v66

    .line 190
    check-cast v37, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 194
    .end local v66    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    :cond_6
    if-nez v37, :cond_8

    .line 195
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string v5, "illegal json creator"

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 188
    .restart local v66    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    :cond_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 198
    .end local v66    # "paramAnnotation":Ljava/lang/annotation/Annotation;
    :cond_8
    aget-object v6, v71, v60

    .line 199
    .restart local v6    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual/range {v26 .. v26}, Ljava/lang/reflect/Method;->getGenericParameterTypes()[Ljava/lang/reflect/Type;

    move-result-object v4

    aget-object v7, v4, v60

    .line 200
    .restart local v7    # "fieldType":Ljava/lang/reflect/Type;
    invoke-interface/range {v37 .. v37}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, v57

    invoke-static {v0, v4, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 201
    .restart local v8    # "field":Ljava/lang/reflect/Field;
    invoke-interface/range {v37 .. v37}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v9

    .line 202
    .restart local v9    # "ordinal":I
    invoke-interface/range {v37 .. v37}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v10

    .line 203
    .restart local v10    # "serialzeFeatures":I
    invoke-interface/range {v37 .. v37}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v11

    .line 204
    .restart local v11    # "parserFeatures":I
    new-instance v3, Lcom/alibaba/fastjson/util/FieldInfo;

    invoke-interface/range {v37 .. v37}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, p0

    invoke-direct/range {v3 .. v11}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/lang/reflect/Field;III)V

    .line 206
    .restart local v3    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v0, v20

    invoke-static {v0, v3}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    .line 185
    add-int/lit8 v60, v60, 0x1

    goto :goto_4

    .line 210
    .end local v3    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v6    # "fieldClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v7    # "fieldType":Ljava/lang/reflect/Type;
    .end local v8    # "field":Ljava/lang/reflect/Field;
    .end local v9    # "ordinal":I
    .end local v10    # "serialzeFeatures":I
    .end local v11    # "parserFeatures":I
    .end local v37    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v60    # "i":I
    .end local v67    # "paramAnnotationArrays":[[Ljava/lang/annotation/Annotation;
    .end local v68    # "paramAnnotations":[Ljava/lang/annotation/Annotation;
    :cond_9
    new-instance v21, Lcom/alibaba/fastjson/util/JavaBeanInfo;

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v27, 0x0

    move-object/from16 v22, p0

    move-object/from16 v23, v14

    move-object/from16 v28, v19

    move-object/from16 v29, v20

    invoke-direct/range {v21 .. v29}, Lcom/alibaba/fastjson/util/JavaBeanInfo;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/List;)V

    move-object/from16 v12, v21

    goto/16 :goto_3

    .line 213
    .end local v71    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_a
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "default constructor not found. "

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 216
    .end local v26    # "factoryMethod":Ljava/lang/reflect/Method;
    :cond_b
    if-eqz v58, :cond_c

    .line 217
    invoke-static/range {v58 .. v58}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 220
    :cond_c
    if-eqz v14, :cond_1a

    .line 221
    const/16 v72, 0x0

    .line 223
    .local v72, "withPrefix":Ljava/lang/String;
    const-class v4, Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v52

    check-cast v52, Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;

    .line 224
    .local v52, "builderAnno":Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;
    if-eqz v52, :cond_d

    .line 225
    invoke-interface/range {v52 .. v52}, Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;->withPrefix()Ljava/lang/String;

    move-result-object v72

    .line 228
    :cond_d
    if-eqz v72, :cond_e

    invoke-virtual/range {v72 .. v72}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_f

    .line 229
    :cond_e
    const-string v72, "with"

    .line 232
    :cond_f
    invoke-virtual {v14}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    array-length v12, v5

    const/4 v4, 0x0

    :goto_6
    if-ge v4, v12, :cond_14

    aget-object v29, v5, v4

    .line 233
    .local v29, "method":Ljava/lang/reflect/Method;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v13

    invoke-static {v13}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v13

    if-eqz v13, :cond_11

    .line 232
    :cond_10
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 237
    :cond_11
    invoke-virtual/range {v29 .. v29}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 241
    const/4 v9, 0x0

    .restart local v9    # "ordinal":I
    const/4 v10, 0x0

    .restart local v10    # "serialzeFeatures":I
    const/4 v11, 0x0

    .line 243
    .restart local v11    # "parserFeatures":I
    const-class v13, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v36

    check-cast v36, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 245
    .local v36, "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-nez v36, :cond_12

    .line 246
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getSuperMethodAnnotation(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v36

    .line 249
    :cond_12
    if-eqz v36, :cond_13

    .line 250
    invoke-interface/range {v36 .. v36}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v13

    if-eqz v13, :cond_10

    .line 254
    invoke-interface/range {v36 .. v36}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v9

    .line 255
    invoke-interface/range {v36 .. v36}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v13

    invoke-static {v13}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v10

    .line 256
    invoke-interface/range {v36 .. v36}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v13

    invoke-static {v13}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v11

    .line 258
    invoke-interface/range {v36 .. v36}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_13

    .line 259
    invoke-interface/range {v36 .. v36}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v28

    .line 260
    .local v28, "propertyName":Ljava/lang/String;
    new-instance v27, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v30, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v31, p0

    move-object/from16 v32, p1

    move/from16 v33, v9

    move/from16 v34, v10

    move/from16 v35, v11

    invoke-direct/range {v27 .. v38}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    goto :goto_7

    .line 266
    .end local v28    # "propertyName":Ljava/lang/String;
    :cond_13
    invoke-virtual/range {v29 .. v29}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v63

    .line 267
    .local v63, "methodName":Ljava/lang/String;
    move-object/from16 v0, v63

    move-object/from16 v1, v72

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 271
    invoke-virtual/range {v63 .. v63}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual/range {v72 .. v72}, Ljava/lang/String;->length()I

    move-result v15

    if-le v13, v15, :cond_10

    .line 275
    invoke-virtual/range {v72 .. v72}, Ljava/lang/String;->length()I

    move-result v13

    move-object/from16 v0, v63

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v54

    .line 277
    .local v54, "c0":C
    invoke-static/range {v54 .. v54}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 281
    new-instance v69, Ljava/lang/StringBuilder;

    invoke-virtual/range {v72 .. v72}, Ljava/lang/String;->length()I

    move-result v13

    move-object/from16 v0, v63

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, v69

    invoke-direct {v0, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 282
    .local v69, "properNameBuilder":Ljava/lang/StringBuilder;
    const/4 v13, 0x0

    invoke-static/range {v54 .. v54}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v15

    move-object/from16 v0, v69

    invoke-virtual {v0, v13, v15}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 284
    invoke-virtual/range {v69 .. v69}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .line 286
    .restart local v28    # "propertyName":Ljava/lang/String;
    new-instance v27, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v30, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v31, p0

    move-object/from16 v32, p1

    move/from16 v33, v9

    move/from16 v34, v10

    move/from16 v35, v11

    invoke-direct/range {v27 .. v38}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    goto/16 :goto_7

    .line 290
    .end local v9    # "ordinal":I
    .end local v10    # "serialzeFeatures":I
    .end local v11    # "parserFeatures":I
    .end local v28    # "propertyName":Ljava/lang/String;
    .end local v29    # "method":Ljava/lang/reflect/Method;
    .end local v36    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v54    # "c0":C
    .end local v63    # "methodName":Ljava/lang/String;
    .end local v69    # "properNameBuilder":Ljava/lang/StringBuilder;
    :cond_14
    if-eqz v14, :cond_1a

    .line 291
    const-class v4, Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v53

    check-cast v53, Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;

    .line 293
    .local v53, "builderAnnotation":Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;
    const/16 v51, 0x0

    .line 294
    .local v51, "buildMethodName":Ljava/lang/String;
    if-eqz v53, :cond_15

    .line 295
    invoke-interface/range {v53 .. v53}, Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;->buildMethod()Ljava/lang/String;

    move-result-object v51

    .line 298
    :cond_15
    if-eqz v51, :cond_16

    invoke-virtual/range {v51 .. v51}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_17

    .line 299
    :cond_16
    const-string v51, "build"

    .line 303
    :cond_17
    const/4 v4, 0x0

    :try_start_0
    new-array v4, v4, [Ljava/lang/Class;

    move-object/from16 v0, v51

    invoke-virtual {v14, v0, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v50

    .line 310
    :goto_8
    if-nez v50, :cond_18

    .line 312
    :try_start_1
    const-string v4, "create"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v14, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v50

    .line 320
    :cond_18
    :goto_9
    if-nez v50, :cond_19

    .line 321
    new-instance v4, Lcom/alibaba/fastjson/JSONException;

    const-string v5, "buildMethod not found."

    invoke-direct {v4, v5}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 324
    :cond_19
    invoke-static/range {v50 .. v50}, Lcom/alibaba/fastjson/util/TypeUtils;->setAccessible(Ljava/lang/reflect/AccessibleObject;)V

    .line 328
    .end local v51    # "buildMethodName":Ljava/lang/String;
    .end local v52    # "builderAnno":Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;
    .end local v53    # "builderAnnotation":Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;
    .end local v72    # "withPrefix":Ljava/lang/String;
    :cond_1a
    move-object/from16 v0, v64

    array-length v5, v0

    const/4 v4, 0x0

    :goto_a
    if-ge v4, v5, :cond_27

    aget-object v29, v64, v4

    .line 329
    .restart local v29    # "method":Ljava/lang/reflect/Method;
    const/4 v9, 0x0

    .restart local v9    # "ordinal":I
    const/4 v10, 0x0

    .restart local v10    # "serialzeFeatures":I
    const/4 v11, 0x0

    .line 330
    .restart local v11    # "parserFeatures":I
    invoke-virtual/range {v29 .. v29}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v63

    .line 331
    .restart local v63    # "methodName":Ljava/lang/String;
    invoke-virtual/range {v63 .. v63}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x4

    if-ge v12, v13, :cond_1c

    .line 328
    :cond_1b
    :goto_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    .line 335
    :cond_1c
    invoke-virtual/range {v29 .. v29}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v12

    invoke-static {v12}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v12

    if-nez v12, :cond_1b

    .line 340
    invoke-virtual/range {v29 .. v29}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v12

    sget-object v13, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1d

    invoke-virtual/range {v29 .. v29}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual/range {v29 .. v29}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1b

    .line 343
    :cond_1d
    invoke-virtual/range {v29 .. v29}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v71

    .line 344
    .restart local v71    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    move-object/from16 v0, v71

    array-length v12, v0

    const/4 v13, 0x1

    if-ne v12, v13, :cond_1b

    .line 348
    const-class v12, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object/from16 v0, v29

    invoke-virtual {v0, v12}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v36

    check-cast v36, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 350
    .restart local v36    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-nez v36, :cond_1e

    .line 351
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/TypeUtils;->getSuperMethodAnnotation(Ljava/lang/Class;Ljava/lang/reflect/Method;)Lcom/alibaba/fastjson/annotation/JSONField;

    move-result-object v36

    .line 354
    :cond_1e
    if-eqz v36, :cond_1f

    .line 355
    invoke-interface/range {v36 .. v36}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v12

    if-eqz v12, :cond_1b

    .line 359
    invoke-interface/range {v36 .. v36}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v9

    .line 360
    invoke-interface/range {v36 .. v36}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v12

    invoke-static {v12}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v10

    .line 361
    invoke-interface/range {v36 .. v36}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v12

    invoke-static {v12}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v11

    .line 363
    invoke-interface/range {v36 .. v36}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_1f

    .line 364
    invoke-interface/range {v36 .. v36}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v28

    .line 365
    .restart local v28    # "propertyName":Ljava/lang/String;
    new-instance v27, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v30, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    move-object/from16 v31, p0

    move-object/from16 v32, p1

    move/from16 v33, v9

    move/from16 v34, v10

    move/from16 v35, v11

    invoke-direct/range {v27 .. v38}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    goto/16 :goto_b

    .line 371
    .end local v28    # "propertyName":Ljava/lang/String;
    :cond_1f
    const-string v12, "set"

    move-object/from16 v0, v63

    invoke-virtual {v0, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1b

    .line 375
    const/4 v12, 0x3

    move-object/from16 v0, v63

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v55

    .line 378
    .local v55, "c3":C
    invoke-static/range {v55 .. v55}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v12

    if-nez v12, :cond_20

    const/16 v12, 0x200

    move/from16 v0, v55

    if-le v0, v12, :cond_23

    .line 381
    :cond_20
    sget-boolean v12, Lcom/alibaba/fastjson/util/TypeUtils;->compatibleWithJavaBean:Z

    if-eqz v12, :cond_22

    .line 382
    const/4 v12, 0x3

    move-object/from16 v0, v63

    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 396
    :goto_c
    move-object/from16 v0, p0

    move-object/from16 v1, v28

    move-object/from16 v2, v57

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 397
    .restart local v8    # "field":Ljava/lang/reflect/Field;
    if-nez v8, :cond_21

    const/4 v12, 0x0

    aget-object v12, v71, v12

    sget-object v13, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-ne v12, v13, :cond_21

    .line 398
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "is"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x0

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v13}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x1

    move-object/from16 v0, v28

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v61

    .line 399
    .local v61, "isFieldName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v61

    move-object/from16 v2, v57

    invoke-static {v0, v1, v2}, Lcom/alibaba/fastjson/util/TypeUtils;->getField(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/reflect/Field;)Ljava/lang/reflect/Field;

    move-result-object v8

    .line 402
    .end local v61    # "isFieldName":Ljava/lang/String;
    :cond_21
    const/16 v37, 0x0

    .line 403
    .restart local v37    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v8, :cond_26

    .line 404
    const-class v12, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v8, v12}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v37

    .end local v37    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    check-cast v37, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 406
    .restart local v37    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v37, :cond_26

    .line 407
    invoke-interface/range {v37 .. v37}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v12

    if-eqz v12, :cond_1b

    .line 411
    invoke-interface/range {v37 .. v37}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v9

    .line 412
    invoke-interface/range {v37 .. v37}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v12

    invoke-static {v12}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v10

    .line 413
    invoke-interface/range {v37 .. v37}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v12

    invoke-static {v12}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v11

    .line 415
    invoke-interface/range {v37 .. v37}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_26

    .line 416
    invoke-interface/range {v37 .. v37}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v28

    .line 417
    .restart local v28    # "propertyName":Ljava/lang/String;
    new-instance v27, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v38, 0x0

    move-object/from16 v30, v8

    move-object/from16 v31, p0

    move-object/from16 v32, p1

    move/from16 v33, v9

    move/from16 v34, v10

    move/from16 v35, v11

    invoke-direct/range {v27 .. v38}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v27

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    goto/16 :goto_b

    .line 384
    .end local v8    # "field":Ljava/lang/reflect/Field;
    .end local v28    # "propertyName":Ljava/lang/String;
    .end local v37    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_22
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v13, 0x3

    move-object/from16 v0, v63

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v13}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v12

    const/4 v13, 0x4

    move-object/from16 v0, v63

    invoke-virtual {v0, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .restart local v28    # "propertyName":Ljava/lang/String;
    goto/16 :goto_c

    .line 386
    .end local v28    # "propertyName":Ljava/lang/String;
    :cond_23
    const/16 v12, 0x5f

    move/from16 v0, v55

    if-ne v0, v12, :cond_24

    .line 387
    const/4 v12, 0x4

    move-object/from16 v0, v63

    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v28

    .restart local v28    # "propertyName":Ljava/lang/String;
    goto/16 :goto_c

    .line 388
    .end local v28    # "propertyName":Ljava/lang/String;
    :cond_24
    const/16 v12, 0x66

    move/from16 v0, v55

    if-ne v0, v12, :cond_25

    .line 389
    const/4 v12, 0x3

    move-object/from16 v0, v63

    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v28

    .restart local v28    # "propertyName":Ljava/lang/String;
    goto/16 :goto_c

    .line 390
    .end local v28    # "propertyName":Ljava/lang/String;
    :cond_25
    invoke-virtual/range {v63 .. v63}, Ljava/lang/String;->length()I

    move-result v12

    const/4 v13, 0x5

    if-lt v12, v13, :cond_1b

    const/4 v12, 0x4

    move-object/from16 v0, v63

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v12

    invoke-static {v12}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v12

    if-eqz v12, :cond_1b

    .line 391
    const/4 v12, 0x3

    move-object/from16 v0, v63

    invoke-virtual {v0, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/alibaba/fastjson/util/TypeUtils;->decapitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    goto/16 :goto_c

    .line 425
    .restart local v8    # "field":Ljava/lang/reflect/Field;
    .restart local v37    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    :cond_26
    if-eqz p2, :cond_39

    .line 426
    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .restart local v28    # "propertyName":Ljava/lang/String;
    move-object/from16 v39, v28

    .line 429
    .end local v28    # "propertyName":Ljava/lang/String;
    :goto_d
    new-instance v38, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v49, 0x0

    move-object/from16 v40, v29

    move-object/from16 v41, v8

    move-object/from16 v42, p0

    move-object/from16 v43, p1

    move/from16 v44, v9

    move/from16 v45, v10

    move/from16 v46, v11

    move-object/from16 v47, v36

    move-object/from16 v48, v37

    invoke-direct/range {v38 .. v49}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    goto/16 :goto_b

    .line 433
    .end local v8    # "field":Ljava/lang/reflect/Field;
    .end local v9    # "ordinal":I
    .end local v10    # "serialzeFeatures":I
    .end local v11    # "parserFeatures":I
    .end local v29    # "method":Ljava/lang/reflect/Method;
    .end local v36    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v37    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v55    # "c3":C
    .end local v63    # "methodName":Ljava/lang/String;
    .end local v71    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_27
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v5

    array-length v12, v5

    const/4 v4, 0x0

    :goto_e
    if-ge v4, v12, :cond_31

    aget-object v8, v5, v4

    .line 434
    .restart local v8    # "field":Ljava/lang/reflect/Field;
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v65

    .line 435
    .local v65, "modifiers":I
    and-int/lit8 v13, v65, 0x8

    if-eqz v13, :cond_29

    .line 433
    :cond_28
    :goto_f
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 439
    :cond_29
    and-int/lit8 v13, v65, 0x10

    if-eqz v13, :cond_2b

    .line 440
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v59

    .line 441
    .local v59, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v13, Ljava/util/Map;

    move-object/from16 v0, v59

    invoke-virtual {v13, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v13

    if-nez v13, :cond_2a

    const-class v13, Ljava/util/Collection;

    .line 442
    move-object/from16 v0, v59

    invoke-virtual {v13, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v13

    if-nez v13, :cond_2a

    const-class v13, Ljava/util/concurrent/atomic/AtomicLong;

    .line 443
    move-object/from16 v0, v59

    invoke-virtual {v13, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2a

    const-class v13, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 444
    move-object/from16 v0, v59

    invoke-virtual {v13, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_2a

    const-class v13, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 445
    move-object/from16 v0, v59

    invoke-virtual {v13, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_30

    :cond_2a
    const/16 v70, 0x1

    .line 446
    .local v70, "supportReadOnly":Z
    :goto_10
    if-eqz v70, :cond_28

    .line 451
    .end local v59    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v70    # "supportReadOnly":Z
    :cond_2b
    const/16 v56, 0x0

    .line 452
    .local v56, "contains":Z
    invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_2c
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2d

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v62

    check-cast v62, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 453
    .local v62, "item":Lcom/alibaba/fastjson/util/FieldInfo;
    move-object/from16 v0, v62

    iget-object v15, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_2c

    .line 454
    const/16 v56, 0x1

    .line 459
    .end local v62    # "item":Lcom/alibaba/fastjson/util/FieldInfo;
    :cond_2d
    if-nez v56, :cond_28

    .line 463
    const/4 v9, 0x0

    .restart local v9    # "ordinal":I
    const/4 v10, 0x0

    .restart local v10    # "serialzeFeatures":I
    const/4 v11, 0x0

    .line 464
    .restart local v11    # "parserFeatures":I
    invoke-virtual {v8}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v28

    .line 466
    .restart local v28    # "propertyName":Ljava/lang/String;
    const-class v13, Lcom/alibaba/fastjson/annotation/JSONField;

    invoke-virtual {v8, v13}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v37

    check-cast v37, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 468
    .restart local v37    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v37, :cond_2e

    .line 469
    invoke-interface/range {v37 .. v37}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v13

    if-eqz v13, :cond_28

    .line 473
    invoke-interface/range {v37 .. v37}, Lcom/alibaba/fastjson/annotation/JSONField;->ordinal()I

    move-result v9

    .line 474
    invoke-interface/range {v37 .. v37}, Lcom/alibaba/fastjson/annotation/JSONField;->serialzeFeatures()[Lcom/alibaba/fastjson/serializer/SerializerFeature;

    move-result-object v13

    invoke-static {v13}, Lcom/alibaba/fastjson/serializer/SerializerFeature;->of([Lcom/alibaba/fastjson/serializer/SerializerFeature;)I

    move-result v10

    .line 475
    invoke-interface/range {v37 .. v37}, Lcom/alibaba/fastjson/annotation/JSONField;->parseFeatures()[Lcom/alibaba/fastjson/parser/Feature;

    move-result-object v13

    invoke-static {v13}, Lcom/alibaba/fastjson/parser/Feature;->of([Lcom/alibaba/fastjson/parser/Feature;)I

    move-result v11

    .line 477
    invoke-interface/range {v37 .. v37}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-eqz v13, :cond_2e

    .line 478
    invoke-interface/range {v37 .. v37}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v28

    .line 482
    :cond_2e
    if-eqz p2, :cond_2f

    .line 483
    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 486
    :cond_2f
    new-instance v38, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v40, 0x0

    const/16 v47, 0x0

    const/16 v49, 0x0

    move-object/from16 v39, v28

    move-object/from16 v41, v8

    move-object/from16 v42, p0

    move-object/from16 v43, p1

    move/from16 v44, v9

    move/from16 v45, v10

    move/from16 v46, v11

    move-object/from16 v48, v37

    invoke-direct/range {v38 .. v49}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    goto/16 :goto_f

    .line 445
    .end local v9    # "ordinal":I
    .end local v10    # "serialzeFeatures":I
    .end local v11    # "parserFeatures":I
    .end local v28    # "propertyName":Ljava/lang/String;
    .end local v37    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v56    # "contains":Z
    .restart local v59    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_30
    const/16 v70, 0x0

    goto/16 :goto_10

    .line 490
    .end local v8    # "field":Ljava/lang/reflect/Field;
    .end local v59    # "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v65    # "modifiers":I
    :cond_31
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v5

    array-length v12, v5

    const/4 v4, 0x0

    :goto_11
    if-ge v4, v12, :cond_38

    aget-object v29, v5, v4

    .line 491
    .restart local v29    # "method":Ljava/lang/reflect/Method;
    invoke-virtual/range {v29 .. v29}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v63

    .line 492
    .restart local v63    # "methodName":Ljava/lang/String;
    invoke-virtual/range {v63 .. v63}, Ljava/lang/String;->length()I

    move-result v13

    const/4 v15, 0x4

    if-ge v13, v15, :cond_33

    .line 490
    :cond_32
    :goto_12
    add-int/lit8 v4, v4, 0x1

    goto :goto_11

    .line 496
    :cond_33
    invoke-virtual/range {v29 .. v29}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v13

    invoke-static {v13}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v13

    if-nez v13, :cond_32

    .line 500
    const-string v13, "get"

    move-object/from16 v0, v63

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_32

    const/4 v13, 0x3

    move-object/from16 v0, v63

    invoke-virtual {v0, v13}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-static {v13}, Ljava/lang/Character;->isUpperCase(C)Z

    move-result v13

    if-eqz v13, :cond_32

    .line 501
    invoke-virtual/range {v29 .. v29}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v13

    array-length v13, v13

    if-nez v13, :cond_32

    .line 505
    const-class v13, Ljava/util/Collection;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v13

    if-nez v13, :cond_34

    const-class v13, Ljava/util/Map;

    .line 506
    invoke-virtual/range {v29 .. v29}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v13

    if-nez v13, :cond_34

    const-class v13, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 507
    invoke-virtual/range {v29 .. v29}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v15

    if-eq v13, v15, :cond_34

    const-class v13, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 508
    invoke-virtual/range {v29 .. v29}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v15

    if-eq v13, v15, :cond_34

    const-class v13, Ljava/util/concurrent/atomic/AtomicLong;

    .line 509
    invoke-virtual/range {v29 .. v29}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v15

    if-ne v13, v15, :cond_32

    .line 513
    :cond_34
    const-class v13, Lcom/alibaba/fastjson/annotation/JSONField;

    move-object/from16 v0, v29

    invoke-virtual {v0, v13}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v36

    check-cast v36, Lcom/alibaba/fastjson/annotation/JSONField;

    .line 514
    .restart local v36    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    if-eqz v36, :cond_35

    invoke-interface/range {v36 .. v36}, Lcom/alibaba/fastjson/annotation/JSONField;->deserialize()Z

    move-result v13

    if-nez v13, :cond_32

    .line 518
    :cond_35
    if-eqz v36, :cond_37

    invoke-interface/range {v36 .. v36}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_37

    .line 519
    invoke-interface/range {v36 .. v36}, Lcom/alibaba/fastjson/annotation/JSONField;->name()Ljava/lang/String;

    move-result-object v28

    .line 524
    .restart local v28    # "propertyName":Ljava/lang/String;
    :goto_13
    move-object/from16 v0, v20

    move-object/from16 v1, v28

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->getField(Ljava/util/List;Ljava/lang/String;)Lcom/alibaba/fastjson/util/FieldInfo;

    move-result-object v3

    .line 525
    .restart local v3    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    if-nez v3, :cond_32

    .line 529
    if-eqz p2, :cond_36

    .line 530
    move-object/from16 v0, p2

    move-object/from16 v1, v28

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/PropertyNamingStrategy;->translate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 533
    :cond_36
    new-instance v38, Lcom/alibaba/fastjson/util/FieldInfo;

    const/16 v41, 0x0

    const/16 v44, 0x0

    const/16 v45, 0x0

    const/16 v46, 0x0

    const/16 v48, 0x0

    const/16 v49, 0x0

    move-object/from16 v39, v28

    move-object/from16 v40, v29

    move-object/from16 v42, p0

    move-object/from16 v43, p1

    move-object/from16 v47, v36

    invoke-direct/range {v38 .. v49}, Lcom/alibaba/fastjson/util/FieldInfo;-><init>(Ljava/lang/String;Ljava/lang/reflect/Method;Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/reflect/Type;IIILcom/alibaba/fastjson/annotation/JSONField;Lcom/alibaba/fastjson/annotation/JSONField;Ljava/lang/String;)V

    move-object/from16 v0, v20

    move-object/from16 v1, v38

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/util/JavaBeanInfo;->add(Ljava/util/List;Lcom/alibaba/fastjson/util/FieldInfo;)Z

    goto/16 :goto_12

    .line 521
    .end local v3    # "fieldInfo":Lcom/alibaba/fastjson/util/FieldInfo;
    .end local v28    # "propertyName":Ljava/lang/String;
    :cond_37
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x3

    move-object/from16 v0, v63

    invoke-virtual {v0, v15}, Ljava/lang/String;->charAt(I)C

    move-result v15

    invoke-static {v15}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v15, 0x4

    move-object/from16 v0, v63

    invoke-virtual {v0, v15}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v28

    .restart local v28    # "propertyName":Ljava/lang/String;
    goto :goto_13

    .line 538
    .end local v28    # "propertyName":Ljava/lang/String;
    .end local v29    # "method":Ljava/lang/reflect/Method;
    .end local v36    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .end local v63    # "methodName":Ljava/lang/String;
    :cond_38
    new-instance v38, Lcom/alibaba/fastjson/util/JavaBeanInfo;

    const/16 v42, 0x0

    const/16 v43, 0x0

    move-object/from16 v39, p0

    move-object/from16 v40, v14

    move-object/from16 v41, v58

    move-object/from16 v44, v50

    move-object/from16 v45, v19

    move-object/from16 v46, v20

    invoke-direct/range {v38 .. v46}, Lcom/alibaba/fastjson/util/JavaBeanInfo;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Constructor;Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Lcom/alibaba/fastjson/annotation/JSONType;Ljava/util/List;)V

    move-object/from16 v12, v38

    goto/16 :goto_3

    .line 315
    .restart local v51    # "buildMethodName":Ljava/lang/String;
    .restart local v52    # "builderAnno":Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;
    .restart local v53    # "builderAnnotation":Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;
    .restart local v72    # "withPrefix":Ljava/lang/String;
    :catch_0
    move-exception v4

    goto/16 :goto_9

    .line 313
    :catch_1
    move-exception v4

    goto/16 :goto_9

    .line 306
    :catch_2
    move-exception v4

    goto/16 :goto_8

    .line 304
    :catch_3
    move-exception v4

    goto/16 :goto_8

    .end local v51    # "buildMethodName":Ljava/lang/String;
    .end local v52    # "builderAnno":Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;
    .end local v53    # "builderAnnotation":Lcom/alibaba/fastjson/annotation/JSONPOJOBuilder;
    .end local v72    # "withPrefix":Ljava/lang/String;
    .restart local v8    # "field":Ljava/lang/reflect/Field;
    .restart local v9    # "ordinal":I
    .restart local v10    # "serialzeFeatures":I
    .restart local v11    # "parserFeatures":I
    .restart local v29    # "method":Ljava/lang/reflect/Method;
    .restart local v36    # "annotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v37    # "fieldAnnotation":Lcom/alibaba/fastjson/annotation/JSONField;
    .restart local v55    # "c3":C
    .restart local v63    # "methodName":Ljava/lang/String;
    .restart local v71    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_39
    move-object/from16 v39, v28

    goto/16 :goto_d
.end method

.method public static getBuilderClass(Lcom/alibaba/fastjson/annotation/JSONType;)Ljava/lang/Class;
    .locals 3
    .param p0, "type"    # Lcom/alibaba/fastjson/annotation/JSONType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alibaba/fastjson/annotation/JSONType;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 615
    if-nez p0, :cond_1

    move-object v0, v1

    .line 625
    :cond_0
    :goto_0
    return-object v0

    .line 619
    :cond_1
    invoke-interface {p0}, Lcom/alibaba/fastjson/annotation/JSONType;->builder()Ljava/lang/Class;

    move-result-object v0

    .line 621
    .local v0, "builderClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Ljava/lang/Void;

    if-ne v0, v2, :cond_0

    move-object v0, v1

    .line 622
    goto :goto_0
.end method

.method public static getCreatorConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 573
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 575
    .local v2, "creatorConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v1, v4, v3

    .line 576
    .local v1, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const-class v6, Lcom/alibaba/fastjson/annotation/JSONCreator;

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Constructor;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONCreator;

    .line 577
    .local v0, "annotation":Lcom/alibaba/fastjson/annotation/JSONCreator;
    if-eqz v0, :cond_1

    .line 578
    if-eqz v2, :cond_0

    .line 579
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    const-string v4, "multi-JSONCreator"

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 582
    :cond_0
    move-object v2, v1

    .line 575
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 586
    .end local v0    # "annotation":Lcom/alibaba/fastjson/annotation/JSONCreator;
    .end local v1    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_2
    return-object v2
.end method

.method static getDefaultConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Constructor",
            "<*>;"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    .line 542
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 543
    const/4 v2, 0x0

    .line 569
    :cond_0
    :goto_0
    return-object v2

    .line 546
    :cond_1
    const/4 v2, 0x0

    .line 547
    .local v2, "defaultConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 549
    .local v1, "constructors":[Ljava/lang/reflect/Constructor;, "[Ljava/lang/reflect/Constructor<*>;"
    array-length v6, v1

    move v4, v5

    :goto_1
    if-ge v4, v6, :cond_2

    aget-object v0, v1, v4

    .line 550
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    if-nez v7, :cond_3

    .line 551
    move-object v2, v0

    .line 556
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    :cond_2
    if-nez v2, :cond_0

    .line 557
    invoke-virtual {p0}, Ljava/lang/Class;->isMemberClass()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-nez v4, :cond_0

    .line 559
    array-length v6, v1

    move v4, v5

    :goto_2
    if-ge v4, v6, :cond_0

    aget-object v0, v1, v4

    .line 560
    .restart local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    .local v3, "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    array-length v7, v3

    const/4 v8, 0x1

    if-ne v7, v8, :cond_4

    aget-object v7, v3, v5

    .line 561
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 562
    move-object v2, v0

    .line 563
    goto :goto_0

    .line 549
    .end local v3    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 559
    .restart local v3    # "types":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2
.end method

.method private static getFactoryMethod(Ljava/lang/Class;[Ljava/lang/reflect/Method;)Ljava/lang/reflect/Method;
    .locals 6
    .param p1, "methods"    # [Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;[",
            "Ljava/lang/reflect/Method;",
            ")",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .line 590
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 592
    .local v1, "factoryMethod":Ljava/lang/reflect/Method;
    array-length v4, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v2, p1, v3

    .line 593
    .local v2, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v5

    invoke-static {v5}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    if-nez v5, :cond_1

    .line 592
    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 597
    :cond_1
    invoke-virtual {v2}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 601
    const-class v5, Lcom/alibaba/fastjson/annotation/JSONCreator;

    invoke-virtual {v2, v5}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/annotation/JSONCreator;

    .line 602
    .local v0, "annotation":Lcom/alibaba/fastjson/annotation/JSONCreator;
    if-eqz v0, :cond_0

    .line 603
    if-eqz v1, :cond_2

    .line 604
    new-instance v3, Lcom/alibaba/fastjson/JSONException;

    const-string v4, "multi-JSONCreator"

    invoke-direct {v3, v4}, Lcom/alibaba/fastjson/JSONException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 607
    :cond_2
    move-object v1, v2

    goto :goto_1

    .line 611
    .end local v0    # "annotation":Lcom/alibaba/fastjson/annotation/JSONCreator;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    :cond_3
    return-object v1
.end method

.method private static getField(Ljava/util/List;Ljava/lang/String;)Lcom/alibaba/fastjson/util/FieldInfo;
    .locals 3
    .param p1, "propertyName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/fastjson/util/FieldInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/alibaba/fastjson/util/FieldInfo;"
        }
    .end annotation

    .prologue
    .line 91
    .local p0, "fieldList":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/fastjson/util/FieldInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/fastjson/util/FieldInfo;

    .line 92
    .local v0, "item":Lcom/alibaba/fastjson/util/FieldInfo;
    iget-object v2, v0, Lcom/alibaba/fastjson/util/FieldInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 97
    .end local v0    # "item":Lcom/alibaba/fastjson/util/FieldInfo;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
