.class public abstract Lorg/eclipse/jetty/util/log/AbstractLogger;
.super Ljava/lang/Object;
.source "AbstractLogger.java"

# interfaces
.implements Lorg/eclipse/jetty/util/log/Logger;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isBlank(Ljava/lang/String;)Z
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 61
    if-nez p0, :cond_1

    .line 75
    :cond_0
    :goto_0
    return v3

    .line 65
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 67
    .local v2, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v2, :cond_0

    .line 69
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 70
    .local v0, "c":C
    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v4

    if-nez v4, :cond_2

    .line 72
    const/4 v3, 0x0

    goto :goto_0

    .line 67
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method


# virtual methods
.method public final getLogger(Ljava/lang/String;)Lorg/eclipse/jetty/util/log/Logger;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-static {p1}, Lorg/eclipse/jetty/util/log/AbstractLogger;->isBlank(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 46
    .end local p0    # "this":Lorg/eclipse/jetty/util/log/AbstractLogger;
    :goto_0
    return-object p0

    .line 33
    .restart local p0    # "this":Lorg/eclipse/jetty/util/log/AbstractLogger;
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/log/AbstractLogger;->getName()Ljava/lang/String;

    move-result-object v0

    .line 34
    .local v0, "basename":Ljava/lang/String;
    invoke-static {v0}, Lorg/eclipse/jetty/util/log/AbstractLogger;->isBlank(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->getRootLogger()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v4

    if-ne v4, p0, :cond_3

    :cond_1
    move-object v1, p1

    .line 36
    .local v1, "fullname":Ljava/lang/String;
    :goto_1
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->getLoggers()Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jetty/util/log/Logger;

    .line 37
    .local v2, "logger":Lorg/eclipse/jetty/util/log/Logger;
    if-nez v2, :cond_2

    .line 39
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/util/log/AbstractLogger;->newLogger(Ljava/lang/String;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v3

    .line 41
    .local v3, "newlog":Lorg/eclipse/jetty/util/log/Logger;
    invoke-static {}, Lorg/eclipse/jetty/util/log/Log;->getMutableLoggers()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v4

    invoke-interface {v4, v1, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "logger":Lorg/eclipse/jetty/util/log/Logger;
    check-cast v2, Lorg/eclipse/jetty/util/log/Logger;

    .line 42
    .restart local v2    # "logger":Lorg/eclipse/jetty/util/log/Logger;
    if-nez v2, :cond_2

    .line 43
    move-object v2, v3

    .end local v3    # "newlog":Lorg/eclipse/jetty/util/log/Logger;
    :cond_2
    move-object p0, v2

    .line 46
    goto :goto_0

    .line 34
    .end local v1    # "fullname":Ljava/lang/String;
    .end local v2    # "logger":Lorg/eclipse/jetty/util/log/Logger;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method protected abstract newLogger(Ljava/lang/String;)Lorg/eclipse/jetty/util/log/Logger;
.end method
