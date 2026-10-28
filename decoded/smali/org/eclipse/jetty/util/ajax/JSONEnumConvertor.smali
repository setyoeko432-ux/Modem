.class public Lorg/eclipse/jetty/util/ajax/JSONEnumConvertor;
.super Ljava/lang/Object;
.source "JSONEnumConvertor.java"

# interfaces
.implements Lorg/eclipse/jetty/util/ajax/JSON$Convertor;


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _fromJSON:Z

.field private _valueOf:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lorg/eclipse/jetty/util/ajax/JSONEnumConvertor;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/ajax/JSONEnumConvertor;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/util/ajax/JSONEnumConvertor;-><init>(Z)V

    .line 58
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 6
    .param p1, "fromJSON"    # Z

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "java.lang.Enum"

    invoke-static {v2, v3}, Lorg/eclipse/jetty/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 47
    .local v1, "e":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "valueOf"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    const-class v5, Ljava/lang/Class;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    const-class v5, Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jetty/util/ajax/JSONEnumConvertor;->_valueOf:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    iput-boolean p1, p0, Lorg/eclipse/jetty/util/ajax/JSONEnumConvertor;->_fromJSON:Z

    .line 63
    return-void

    .line 49
    .end local v1    # "e":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 51
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "!Enums"

    invoke-direct {v2, v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method


# virtual methods
.method public fromJSON(Ljava/util/Map;)Ljava/lang/Object;
    .locals 8
    .param p1, "map"    # Ljava/util/Map;

    .prologue
    const/4 v3, 0x0

    .line 67
    iget-boolean v2, p0, Lorg/eclipse/jetty/util/ajax/JSONEnumConvertor;->_fromJSON:Z

    if-nez v2, :cond_0

    .line 68
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v2}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v2

    .line 71
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v2, "class"

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v4, v2}, Lorg/eclipse/jetty/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 72
    .local v0, "c":Ljava/lang/Class;
    iget-object v2, p0, Lorg/eclipse/jetty/util/ajax/JSONEnumConvertor;->_valueOf:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    const-string v7, "value"

    invoke-interface {p1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 78
    .end local v0    # "c":Ljava/lang/Class;
    :goto_0
    return-object v2

    .line 74
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lorg/eclipse/jetty/util/ajax/JSONEnumConvertor;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    move-object v2, v3

    .line 78
    goto :goto_0
.end method

.method public toJSON(Ljava/lang/Object;Lorg/eclipse/jetty/util/ajax/JSON$Output;)V
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "out"    # Lorg/eclipse/jetty/util/ajax/JSON$Output;

    .prologue
    .line 83
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/ajax/JSONEnumConvertor;->_fromJSON:Z

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/eclipse/jetty/util/ajax/JSON$Output;->addClass(Ljava/lang/Class;)V

    .line 86
    const-string v0, "value"

    check-cast p1, Ljava/lang/Enum;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lorg/eclipse/jetty/util/ajax/JSON$Output;->add(Ljava/lang/String;Ljava/lang/Object;)V

    .line 92
    :goto_0
    return-void

    .line 90
    .restart local p1    # "obj":Ljava/lang/Object;
    :cond_0
    check-cast p1, Ljava/lang/Enum;

    .end local p1    # "obj":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/eclipse/jetty/util/ajax/JSON$Output;->add(Ljava/lang/Object;)V

    goto :goto_0
.end method
