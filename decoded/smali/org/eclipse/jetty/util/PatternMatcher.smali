.class public abstract Lorg/eclipse/jetty/util/PatternMatcher;
.super Ljava/lang/Object;
.source "PatternMatcher.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public match(Ljava/util/regex/Pattern;[Ljava/net/URI;Z)V
    .locals 8
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "uris"    # [Ljava/net/URI;
    .param p3, "isNullInclusive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 61
    if-eqz p2, :cond_3

    .line 63
    if-nez p1, :cond_0

    move-object v3, v5

    .line 65
    .local v3, "patterns":[Ljava/lang/String;
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v4, "subPatterns":Ljava/util/List;, "Ljava/util/List<Ljava/util/regex/Pattern;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-eqz v3, :cond_1

    array-length v6, v3

    if-ge v0, v6, :cond_1

    .line 68
    aget-object v6, v3, v0

    invoke-static {v6}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 63
    .end local v0    # "i":I
    .end local v3    # "patterns":[Ljava/lang/String;
    .end local v4    # "subPatterns":Ljava/util/List;, "Ljava/util/List<Ljava/util/regex/Pattern;>;"
    :cond_0
    invoke-virtual {p1}, Ljava/util/regex/Pattern;->pattern()Ljava/lang/String;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 70
    .restart local v0    # "i":I
    .restart local v3    # "patterns":[Ljava/lang/String;
    .restart local v4    # "subPatterns":Ljava/util/List;, "Ljava/util/List<Ljava/util/regex/Pattern;>;"
    :cond_1
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 71
    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    :cond_2
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 75
    invoke-virtual {p0, v5, p2, p3}, Lorg/eclipse/jetty/util/PatternMatcher;->matchPatterns(Ljava/util/regex/Pattern;[Ljava/net/URI;Z)V

    .line 86
    .end local v0    # "i":I
    .end local v3    # "patterns":[Ljava/lang/String;
    .end local v4    # "subPatterns":Ljava/util/List;, "Ljava/util/List<Ljava/util/regex/Pattern;>;"
    :cond_3
    return-void

    .line 80
    .restart local v0    # "i":I
    .restart local v3    # "patterns":[Ljava/lang/String;
    .restart local v4    # "subPatterns":Ljava/util/List;, "Ljava/util/List<Ljava/util/regex/Pattern;>;"
    :cond_4
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/regex/Pattern;

    .line 82
    .local v2, "p":Ljava/util/regex/Pattern;
    invoke-virtual {p0, v2, p2, p3}, Lorg/eclipse/jetty/util/PatternMatcher;->matchPatterns(Ljava/util/regex/Pattern;[Ljava/net/URI;Z)V

    goto :goto_2
.end method

.method public matchPatterns(Ljava/util/regex/Pattern;[Ljava/net/URI;Z)V
    .locals 4
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "uris"    # [Ljava/net/URI;
    .param p3, "isNullInclusive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 92
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, p2

    if-ge v0, v3, :cond_3

    .line 94
    aget-object v2, p2, v0

    .line 95
    .local v2, "uri":Ljava/net/URI;
    invoke-virtual {v2}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "s":Ljava/lang/String;
    if-nez p1, :cond_0

    if-nez p3, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 100
    :cond_1
    aget-object v3, p2, v0

    invoke-virtual {p0, v3}, Lorg/eclipse/jetty/util/PatternMatcher;->matched(Ljava/net/URI;)V

    .line 92
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 103
    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "uri":Ljava/net/URI;
    :cond_3
    return-void
.end method

.method public abstract matched(Ljava/net/URI;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
