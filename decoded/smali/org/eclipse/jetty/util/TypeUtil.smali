.class public Lorg/eclipse/jetty/util/TypeUtil;
.super Ljava/lang/Object;
.source "TypeUtil.java"


# static fields
.field public static CR:I

.field public static LF:I

.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field private static final class2Name:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final class2Value:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field

.field private static final name2Class:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 47
    const-class v2, Lorg/eclipse/jetty/util/TypeUtil;

    invoke-static {v2}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v2

    sput-object v2, Lorg/eclipse/jetty/util/TypeUtil;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 48
    const/16 v2, 0xd

    sput v2, Lorg/eclipse/jetty/util/TypeUtil;->CR:I

    .line 49
    const/16 v2, 0xa

    sput v2, Lorg/eclipse/jetty/util/TypeUtil;->LF:I

    .line 52
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    .line 55
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "boolean"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "byte"

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "char"

    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "double"

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "float"

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "int"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "long"

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "short"

    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "void"

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "java.lang.Boolean.TYPE"

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "java.lang.Byte.TYPE"

    sget-object v4, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "java.lang.Character.TYPE"

    sget-object v4, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "java.lang.Double.TYPE"

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "java.lang.Float.TYPE"

    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "java.lang.Integer.TYPE"

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "java.lang.Long.TYPE"

    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "java.lang.Short.TYPE"

    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "java.lang.Void.TYPE"

    sget-object v4, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "java.lang.Boolean"

    const-class v4, Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "java.lang.Byte"

    const-class v4, Ljava/lang/Byte;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "java.lang.Character"

    const-class v4, Ljava/lang/Character;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "java.lang.Double"

    const-class v4, Ljava/lang/Double;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "java.lang.Float"

    const-class v4, Ljava/lang/Float;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "java.lang.Integer"

    const-class v4, Ljava/lang/Integer;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "java.lang.Long"

    const-class v4, Ljava/lang/Long;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "java.lang.Short"

    const-class v4, Ljava/lang/Short;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "Boolean"

    const-class v4, Ljava/lang/Boolean;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "Byte"

    const-class v4, Ljava/lang/Byte;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "Character"

    const-class v4, Ljava/lang/Character;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "Double"

    const-class v4, Ljava/lang/Double;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "Float"

    const-class v4, Ljava/lang/Float;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "Integer"

    const-class v4, Ljava/lang/Integer;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "Long"

    const-class v4, Ljava/lang/Long;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "Short"

    const-class v4, Ljava/lang/Short;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "string"

    const-class v4, Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "String"

    const-class v4, Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    const-string v3, "java.lang.String"

    const-class v4, Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lorg/eclipse/jetty/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    .line 103
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-string v4, "boolean"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-string v4, "byte"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    const-string v4, "char"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-string v4, "double"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-string v4, "float"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-string v4, "int"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-string v4, "long"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-string v4, "short"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    sget-object v3, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-string v4, "void"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    const-class v3, Ljava/lang/Boolean;

    const-string v4, "java.lang.Boolean"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    const-class v3, Ljava/lang/Byte;

    const-string v4, "java.lang.Byte"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    const-class v3, Ljava/lang/Character;

    const-string v4, "java.lang.Character"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    const-class v3, Ljava/lang/Double;

    const-string v4, "java.lang.Double"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    const-class v3, Ljava/lang/Float;

    const-string v4, "java.lang.Float"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    const-class v3, Ljava/lang/Integer;

    const-string v4, "java.lang.Integer"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    const-class v3, Ljava/lang/Long;

    const-string v4, "java.lang.Long"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    const-class v3, Ljava/lang/Short;

    const-string v4, "java.lang.Short"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    const-string v3, "void"

    invoke-virtual {v2, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    const-class v3, Ljava/lang/String;

    const-string v4, "java.lang.String"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    sput-object v2, Lorg/eclipse/jetty/util/TypeUtil;->class2Value:Ljava/util/HashMap;

    .line 132
    const/4 v2, 0x1

    :try_start_0
    new-array v1, v2, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    .line 134
    .local v1, "s":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->class2Value:Ljava/util/HashMap;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Boolean;

    const-string v5, "valueOf"

    invoke-virtual {v4, v5, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->class2Value:Ljava/util/HashMap;

    sget-object v3, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Byte;

    const-string v5, "valueOf"

    invoke-virtual {v4, v5, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->class2Value:Ljava/util/HashMap;

    sget-object v3, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Double;

    const-string v5, "valueOf"

    invoke-virtual {v4, v5, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->class2Value:Ljava/util/HashMap;

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Float;

    const-string v5, "valueOf"

    invoke-virtual {v4, v5, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->class2Value:Ljava/util/HashMap;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Integer;

    const-string v5, "valueOf"

    invoke-virtual {v4, v5, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->class2Value:Ljava/util/HashMap;

    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Long;

    const-string v5, "valueOf"

    invoke-virtual {v4, v5, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->class2Value:Ljava/util/HashMap;

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const-class v4, Ljava/lang/Short;

    const-string v5, "valueOf"

    invoke-virtual {v4, v5, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->class2Value:Ljava/util/HashMap;

    const-class v3, Ljava/lang/Boolean;

    const-class v4, Ljava/lang/Boolean;

    const-string v5, "valueOf"

    invoke-virtual {v4, v5, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->class2Value:Ljava/util/HashMap;

    const-class v3, Ljava/lang/Byte;

    const-class v4, Ljava/lang/Byte;

    const-string v5, "valueOf"

    invoke-virtual {v4, v5, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->class2Value:Ljava/util/HashMap;

    const-class v3, Ljava/lang/Double;

    const-class v4, Ljava/lang/Double;

    const-string v5, "valueOf"

    invoke-virtual {v4, v5, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->class2Value:Ljava/util/HashMap;

    const-class v3, Ljava/lang/Float;

    const-class v4, Ljava/lang/Float;

    const-string v5, "valueOf"

    invoke-virtual {v4, v5, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->class2Value:Ljava/util/HashMap;

    const-class v3, Ljava/lang/Integer;

    const-class v4, Ljava/lang/Integer;

    const-string v5, "valueOf"

    invoke-virtual {v4, v5, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->class2Value:Ljava/util/HashMap;

    const-class v3, Ljava/lang/Long;

    const-class v4, Ljava/lang/Long;

    const-string v5, "valueOf"

    invoke-virtual {v4, v5, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    sget-object v2, Lorg/eclipse/jetty/util/TypeUtil;->class2Value:Ljava/util/HashMap;

    const-class v3, Ljava/lang/Short;

    const-class v4, Ljava/lang/Short;

    const-string v5, "valueOf"

    invoke-virtual {v4, v5, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    return-void

    .line 164
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static asList([Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 178
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    if-nez p0, :cond_0

    .line 179
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 180
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    goto :goto_0
.end method

.method public static call(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "obj"    # Ljava/lang/Object;
    .param p3, "arg"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 565
    .local p0, "oClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    .line 566
    .local v2, "methods":[Ljava/lang/reflect/Method;
    const/4 v0, 0x0

    .local v0, "c":I
    :goto_0
    if-eqz v2, :cond_4

    array-length v3, v2

    if-ge v0, v3, :cond_4

    .line 568
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 566
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 570
    :cond_1
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v3

    array-length v3, v3

    array-length v4, p3

    if-ne v3, v4, :cond_0

    .line 572
    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-nez p2, :cond_3

    const/4 v3, 0x1

    :goto_2
    if-ne v4, v3, :cond_0

    .line 574
    if-nez p2, :cond_2

    aget-object v3, v2, v0

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v3, p0, :cond_0

    .line 579
    :cond_2
    :try_start_0
    aget-object v3, v2, v0

    invoke-virtual {v3, p2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    return-object v3

    .line 572
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 581
    :catch_0
    move-exception v1

    .line 583
    .local v1, "e":Ljava/lang/IllegalAccessException;
    sget-object v3, Lorg/eclipse/jetty/util/TypeUtil;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 585
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v1

    .line 587
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    sget-object v3, Lorg/eclipse/jetty/util/TypeUtil;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 591
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_4
    new-instance v3, Ljava/lang/NoSuchMethodException;

    invoke-direct {v3, p1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static convertHexDigit(B)B
    .locals 4
    .param p0, "c"    # B

    .prologue
    .line 360
    and-int/lit8 v1, p0, 0x1f

    shr-int/lit8 v2, p0, 0x6

    mul-int/lit8 v2, v2, 0x19

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x10

    int-to-byte v0, v1

    .line 361
    .local v0, "b":B
    if-ltz v0, :cond_0

    const/16 v1, 0xf

    if-le v0, v1, :cond_1

    .line 362
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!hex "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 363
    :cond_1
    return v0
.end method

.method public static convertHexDigit(I)I
    .locals 4
    .param p0, "c"    # I

    .prologue
    .line 373
    and-int/lit8 v1, p0, 0x1f

    shr-int/lit8 v2, p0, 0x6

    mul-int/lit8 v2, v2, 0x19

    add-int/2addr v1, v2

    add-int/lit8 v0, v1, -0x10

    .line 374
    .local v0, "d":I
    if-ltz v0, :cond_0

    const/16 v1, 0xf

    if-le v0, v1, :cond_1

    .line 375
    :cond_0
    new-instance v1, Ljava/lang/NumberFormatException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!hex "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 376
    :cond_1
    return v0
.end method

.method public static dump(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 474
    .local p0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dump: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 475
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jetty/util/TypeUtil;->dump(Ljava/lang/ClassLoader;)V

    .line 476
    return-void
.end method

.method public static dump(Ljava/lang/ClassLoader;)V
    .locals 3
    .param p0, "cl"    # Ljava/lang/ClassLoader;

    .prologue
    .line 480
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "Dump Loaders:"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 481
    :goto_0
    if-eqz p0, :cond_0

    .line 483
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  loader "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 484
    invoke-virtual {p0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object p0

    goto :goto_0

    .line 486
    :cond_0
    return-void
.end method

.method public static fromHexString(Ljava/lang/String;)[B
    .locals 5
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 460
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    rem-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    .line 461
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 462
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    new-array v0, v3, [B

    .line 463
    .local v0, "array":[B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 465
    mul-int/lit8 v3, v2, 0x2

    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x2

    invoke-virtual {p0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x10

    invoke-static {v3, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    .line 466
    .local v1, "b":I
    and-int/lit16 v3, v1, 0xff

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 463
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 468
    .end local v1    # "b":I
    :cond_1
    return-object v0
.end method

.method public static fromName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
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
    .line 190
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->name2Class:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method public static jarFor(Ljava/lang/String;)Ljava/net/URL;
    .locals 7
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 547
    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v5, 0x2e

    const/16 v6, 0x2f

    invoke-virtual {p0, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ".class"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 549
    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static {v3, p0, v5}, Lorg/eclipse/jetty/util/Loader;->getResource(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v2

    .line 550
    .local v2, "url":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    .line 551
    .local v1, "s":Ljava/lang/String;
    const-string v3, "jar:file:"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 552
    new-instance v3, Ljava/net/URL;

    const/4 v5, 0x4

    const-string v6, "!/"

    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 558
    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "url":Ljava/net/URL;
    :goto_0
    return-object v3

    .line 554
    :catch_0
    move-exception v0

    .line 556
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lorg/eclipse/jetty/util/TypeUtil;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    move-object v3, v4

    .line 558
    goto :goto_0
.end method

.method public static parseBytes(Ljava/lang/String;I)[B
    .locals 4
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "base"    # I

    .prologue
    .line 328
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    new-array v0, v2, [B

    .line 329
    .local v0, "bytes":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 330
    div-int/lit8 v2, v1, 0x2

    const/4 v3, 0x2

    invoke-static {p0, v1, v3, p1}, Lorg/eclipse/jetty/util/TypeUtil;->parseInt(Ljava/lang/String;III)I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v0, v2

    .line 329
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    .line 331
    :cond_0
    return-object v0
.end method

.method public static parseInt(Ljava/lang/String;III)I
    .locals 6
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "base"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 272
    const/4 v3, 0x0

    .line 274
    .local v3, "value":I
    if-gez p2, :cond_0

    .line 275
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    sub-int p2, v4, p1

    .line 277
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_3

    .line 279
    add-int v4, p1, v2

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 281
    .local v0, "c":C
    invoke-static {v0}, Lorg/eclipse/jetty/util/TypeUtil;->convertHexDigit(I)I

    move-result v1

    .line 282
    .local v1, "digit":I
    if-ltz v1, :cond_1

    if-lt v1, p3, :cond_2

    .line 283
    :cond_1
    new-instance v4, Ljava/lang/NumberFormatException;

    add-int v5, p1, p2

    invoke-virtual {p0, p1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 284
    :cond_2
    mul-int v4, v3, p3

    add-int v3, v4, v1

    .line 277
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 286
    .end local v0    # "c":C
    .end local v1    # "digit":I
    :cond_3
    return v3
.end method

.method public static parseInt([BIII)I
    .locals 6
    .param p0, "b"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .param p3, "base"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    const/16 v5, 0xa

    .line 302
    const/4 v3, 0x0

    .line 304
    .local v3, "value":I
    if-gez p2, :cond_0

    .line 305
    array-length v4, p0

    sub-int p2, v4, p1

    .line 307
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, p2, :cond_6

    .line 309
    add-int v4, p1, v2

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    int-to-char v0, v4

    .line 311
    .local v0, "c":C
    add-int/lit8 v1, v0, -0x30

    .line 312
    .local v1, "digit":I
    if-ltz v1, :cond_1

    if-ge v1, p3, :cond_1

    if-lt v1, v5, :cond_3

    .line 314
    :cond_1
    add-int/lit8 v4, v0, 0xa

    add-int/lit8 v1, v4, -0x41

    .line 315
    if-lt v1, v5, :cond_2

    if-lt v1, p3, :cond_3

    .line 316
    :cond_2
    add-int/lit8 v4, v0, 0xa

    add-int/lit8 v1, v4, -0x61

    .line 318
    :cond_3
    if-ltz v1, :cond_4

    if-lt v1, p3, :cond_5

    .line 319
    :cond_4
    new-instance v4, Ljava/lang/NumberFormatException;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, p0, p1, p2}, Ljava/lang/String;-><init>([BII)V

    invoke-direct {v4, v5}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 320
    :cond_5
    mul-int v4, v3, p3

    add-int v3, v4, v1

    .line 307
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 322
    .end local v0    # "c":C
    .end local v1    # "digit":I
    :cond_6
    return v3
.end method

.method public static readLine(Ljava/io/InputStream;)[B
    .locals 9
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 495
    const/16 v6, 0x100

    new-array v0, v6, [B

    .line 497
    .local v0, "buf":[B
    const/4 v2, 0x0

    .line 498
    .local v2, "i":I
    const/4 v4, 0x0

    .line 499
    .local v4, "loops":I
    const/4 v1, 0x0

    .line 503
    .local v1, "ch":I
    :cond_0
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 504
    if-gez v1, :cond_2

    .line 524
    :cond_1
    const/4 v6, -0x1

    if-ne v1, v6, :cond_5

    if-nez v2, :cond_5

    .line 525
    const/4 v6, 0x0

    .line 540
    :goto_1
    return-object v6

    .line 506
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 509
    if-ne v4, v8, :cond_3

    sget v6, Lorg/eclipse/jetty/util/TypeUtil;->LF:I

    if-eq v1, v6, :cond_0

    .line 512
    :cond_3
    sget v6, Lorg/eclipse/jetty/util/TypeUtil;->CR:I

    if-eq v1, v6, :cond_1

    sget v6, Lorg/eclipse/jetty/util/TypeUtil;->LF:I

    if-eq v1, v6, :cond_1

    .line 515
    array-length v6, v0

    if-lt v2, v6, :cond_4

    .line 517
    move-object v5, v0

    .line 518
    .local v5, "old_buf":[B
    array-length v6, v5

    add-int/lit16 v6, v6, 0x100

    new-array v0, v6, [B

    .line 519
    array-length v6, v5

    invoke-static {v5, v7, v0, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 521
    .end local v5    # "old_buf":[B
    :cond_4
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "i":I
    .local v3, "i":I
    int-to-byte v6, v1

    aput-byte v6, v0, v2

    move v2, v3

    .end local v3    # "i":I
    .restart local v2    # "i":I
    goto :goto_0

    .line 528
    :cond_5
    sget v6, Lorg/eclipse/jetty/util/TypeUtil;->CR:I

    if-ne v1, v6, :cond_6

    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v6

    if-lt v6, v8, :cond_6

    invoke-virtual {p0}, Ljava/io/InputStream;->markSupported()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 530
    invoke-virtual {p0, v8}, Ljava/io/InputStream;->mark(I)V

    .line 531
    invoke-virtual {p0}, Ljava/io/InputStream;->read()I

    move-result v1

    .line 532
    sget v6, Lorg/eclipse/jetty/util/TypeUtil;->LF:I

    if-eq v1, v6, :cond_6

    .line 533
    invoke-virtual {p0}, Ljava/io/InputStream;->reset()V

    .line 536
    :cond_6
    move-object v5, v0

    .line 537
    .restart local v5    # "old_buf":[B
    new-array v0, v2, [B

    .line 538
    invoke-static {v5, v7, v0, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v6, v0

    .line 540
    goto :goto_1
.end method

.method public static toHex(BLjava/lang/Appendable;)V
    .locals 6
    .param p0, "b"    # B
    .param p1, "buf"    # Ljava/lang/Appendable;

    .prologue
    const/16 v2, 0x37

    const/16 v3, 0x30

    const/16 v5, 0x9

    .line 384
    and-int/lit16 v4, p0, 0xf0

    shr-int/lit8 v4, v4, 0x4

    and-int/lit8 v0, v4, 0xf

    .line 385
    .local v0, "d":I
    if-le v0, v5, :cond_0

    move v4, v2

    :goto_0
    add-int/2addr v4, v0

    int-to-char v4, v4

    :try_start_0
    invoke-interface {p1, v4}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 386
    and-int/lit8 v0, p0, 0xf

    .line 387
    if-le v0, v5, :cond_1

    :goto_1
    add-int/2addr v2, v0

    int-to-char v2, v2

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    return-void

    :cond_0
    move v4, v3

    .line 385
    goto :goto_0

    :cond_1
    move v2, v3

    .line 387
    goto :goto_1

    .line 389
    :catch_0
    move-exception v1

    .line 391
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public static toHex(ILjava/lang/Appendable;)V
    .locals 5
    .param p0, "value"    # I
    .param p1, "buf"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v2, 0x37

    const/16 v3, 0x30

    const/16 v4, 0x9

    .line 398
    const/high16 v1, -0x10000000

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x1c

    and-int/lit8 v0, v1, 0xf

    .line 399
    .local v0, "d":I
    if-le v0, v4, :cond_0

    move v1, v2

    :goto_0
    add-int/2addr v1, v0

    int-to-char v1, v1

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 400
    const/high16 v1, 0xf000000

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x18

    and-int/lit8 v0, v1, 0xf

    .line 401
    if-le v0, v4, :cond_1

    move v1, v2

    :goto_1
    add-int/2addr v1, v0

    int-to-char v1, v1

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 402
    const/high16 v1, 0xf00000

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x14

    and-int/lit8 v0, v1, 0xf

    .line 403
    if-le v0, v4, :cond_2

    move v1, v2

    :goto_2
    add-int/2addr v1, v0

    int-to-char v1, v1

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 404
    const/high16 v1, 0xf0000

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0x10

    and-int/lit8 v0, v1, 0xf

    .line 405
    if-le v0, v4, :cond_3

    move v1, v2

    :goto_3
    add-int/2addr v1, v0

    int-to-char v1, v1

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 406
    const v1, 0xf000

    and-int/2addr v1, p0

    shr-int/lit8 v1, v1, 0xc

    and-int/lit8 v0, v1, 0xf

    .line 407
    if-le v0, v4, :cond_4

    move v1, v2

    :goto_4
    add-int/2addr v1, v0

    int-to-char v1, v1

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 408
    and-int/lit16 v1, p0, 0xf00

    shr-int/lit8 v1, v1, 0x8

    and-int/lit8 v0, v1, 0xf

    .line 409
    if-le v0, v4, :cond_5

    move v1, v2

    :goto_5
    add-int/2addr v1, v0

    int-to-char v1, v1

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 410
    and-int/lit16 v1, p0, 0xf0

    shr-int/lit8 v1, v1, 0x4

    and-int/lit8 v0, v1, 0xf

    .line 411
    if-le v0, v4, :cond_6

    move v1, v2

    :goto_6
    add-int/2addr v1, v0

    int-to-char v1, v1

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 412
    and-int/lit8 v0, p0, 0xf

    .line 413
    if-le v0, v4, :cond_7

    :goto_7
    add-int v1, v2, v0

    int-to-char v1, v1

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    .line 415
    const/4 v1, 0x0

    const/16 v2, 0x24

    invoke-static {v1, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 416
    return-void

    :cond_0
    move v1, v3

    .line 399
    goto :goto_0

    :cond_1
    move v1, v3

    .line 401
    goto :goto_1

    :cond_2
    move v1, v3

    .line 403
    goto :goto_2

    :cond_3
    move v1, v3

    .line 405
    goto :goto_3

    :cond_4
    move v1, v3

    .line 407
    goto :goto_4

    :cond_5
    move v1, v3

    .line 409
    goto :goto_5

    :cond_6
    move v1, v3

    .line 411
    goto :goto_6

    :cond_7
    move v2, v3

    .line 413
    goto :goto_7
.end method

.method public static toHex(JLjava/lang/Appendable;)V
    .locals 2
    .param p0, "value"    # J
    .param p2, "buf"    # Ljava/lang/Appendable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 422
    const/16 v0, 0x20

    shr-long v0, p0, v0

    long-to-int v0, v0

    invoke-static {v0, p2}, Lorg/eclipse/jetty/util/TypeUtil;->toHex(ILjava/lang/Appendable;)V

    .line 423
    long-to-int v0, p0

    invoke-static {v0, p2}, Lorg/eclipse/jetty/util/TypeUtil;->toHex(ILjava/lang/Appendable;)V

    .line 424
    return-void
.end method

.method public static toHexString(B)Ljava/lang/String;
    .locals 3
    .param p0, "b"    # B

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 429
    new-array v0, v2, [B

    aput-byte p0, v0, v1

    invoke-static {v0, v1, v2}, Lorg/eclipse/jetty/util/TypeUtil;->toHexString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 2
    .param p0, "b"    # [B

    .prologue
    .line 435
    const/4 v0, 0x0

    array-length v1, p0

    invoke-static {p0, v0, v1}, Lorg/eclipse/jetty/util/TypeUtil;->toHexString([BII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static toHexString([BII)Ljava/lang/String;
    .locals 6
    .param p0, "b"    # [B
    .param p1, "offset"    # I
    .param p2, "length"    # I

    .prologue
    const/16 v5, 0x39

    .line 441
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 442
    .local v1, "buf":Ljava/lang/StringBuilder;
    move v3, p1

    .local v3, "i":I
    :goto_0
    add-int v4, p1, p2

    if-ge v3, v4, :cond_2

    .line 444
    aget-byte v4, p0, v3

    and-int/lit16 v0, v4, 0xff

    .line 445
    .local v0, "bi":I
    div-int/lit8 v4, v0, 0x10

    rem-int/lit8 v4, v4, 0x10

    add-int/lit8 v2, v4, 0x30

    .line 446
    .local v2, "c":I
    if-le v2, v5, :cond_0

    .line 447
    add-int/lit8 v4, v2, -0x30

    add-int/lit8 v4, v4, -0xa

    add-int/lit8 v2, v4, 0x41

    .line 448
    :cond_0
    int-to-char v4, v2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 449
    rem-int/lit8 v4, v0, 0x10

    add-int/lit8 v2, v4, 0x30

    .line 450
    if-le v2, v5, :cond_1

    .line 451
    add-int/lit8 v4, v2, -0x30

    add-int/lit8 v4, v4, -0xa

    add-int/lit8 v2, v4, 0x61

    .line 452
    :cond_1
    int-to-char v4, v2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 442
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 454
    .end local v0    # "bi":I
    .end local v2    # "c":I
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static toName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 200
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lorg/eclipse/jetty/util/TypeUtil;->class2Name:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public static toString([BI)Ljava/lang/String;
    .locals 9
    .param p0, "bytes"    # [B
    .param p1, "base"    # I

    .prologue
    const/16 v8, 0x39

    .line 337
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 338
    .local v3, "buf":Ljava/lang/StringBuilder;
    move-object v0, p0

    .local v0, "arr$":[B
    array-length v6, v0

    .local v6, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v6, :cond_2

    aget-byte v1, v0, v5

    .line 340
    .local v1, "b":B
    and-int/lit16 v2, v1, 0xff

    .line 341
    .local v2, "bi":I
    div-int v7, v2, p1

    rem-int/2addr v7, p1

    add-int/lit8 v4, v7, 0x30

    .line 342
    .local v4, "c":I
    if-le v4, v8, :cond_0

    .line 343
    add-int/lit8 v7, v4, -0x30

    add-int/lit8 v7, v7, -0xa

    add-int/lit8 v4, v7, 0x61

    .line 344
    :cond_0
    int-to-char v7, v4

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 345
    rem-int v7, v2, p1

    add-int/lit8 v4, v7, 0x30

    .line 346
    if-le v4, v8, :cond_1

    .line 347
    add-int/lit8 v7, v4, -0x30

    add-int/lit8 v7, v7, -0xa

    add-int/lit8 v4, v7, 0x61

    .line 348
    :cond_1
    int-to-char v7, v4

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 338
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 350
    .end local v1    # "b":B
    .end local v2    # "bi":I
    .end local v4    # "c":I
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method public static valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .line 213
    :try_start_0
    const-class v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 245
    .end local p1    # "value":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 216
    .restart local p1    # "value":Ljava/lang/String;
    :cond_0
    sget-object v3, Lorg/eclipse/jetty/util/TypeUtil;->class2Value:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Method;

    .line 217
    .local v2, "m":Ljava/lang/reflect/Method;
    if-eqz v2, :cond_1

    .line 218
    const/4 v3, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 220
    :cond_1
    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-class v3, Ljava/lang/Character;

    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 222
    :cond_2
    new-instance v3, Ljava/lang/Character;

    const/4 v5, 0x0

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-direct {v3, v5}, Ljava/lang/Character;-><init>(C)V

    move-object p1, v3

    goto :goto_0

    .line 224
    :cond_3
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v3, v5

    invoke-virtual {p0, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 225
    .local v0, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v3, v5

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    goto :goto_0

    .line 239
    .end local v0    # "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 241
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v3

    instance-of v3, v3, Ljava/lang/Error;

    if-eqz v3, :cond_4

    .line 242
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v3

    check-cast v3, Ljava/lang/Error;

    check-cast v3, Ljava/lang/Error;

    throw v3

    .line 235
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v3

    :cond_4
    :goto_1
    move-object p1, v4

    .line 245
    goto :goto_0

    .line 231
    :catch_2
    move-exception v3

    goto :goto_1

    .line 227
    :catch_3
    move-exception v3

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p0, "type"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 256
    invoke-static {p0}, Lorg/eclipse/jetty/util/TypeUtil;->fromName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/eclipse/jetty/util/TypeUtil;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
