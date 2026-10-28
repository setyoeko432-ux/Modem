.class public Lorg/eclipse/jetty/webapp/ClasspathPattern;
.super Ljava/lang/Object;
.source "ClasspathPattern.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/webapp/ClasspathPattern$1;,
        Lorg/eclipse/jetty/webapp/ClasspathPattern$Entry;
    }
.end annotation


# instance fields
.field private final _entries:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/webapp/ClasspathPattern$Entry;",
            ">;"
        }
    .end annotation
.end field

.field private final _patterns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/ClasspathPattern;->_patterns:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/ClasspathPattern;->_entries:Ljava/util/List;

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/ClasspathPattern;->_patterns:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/ClasspathPattern;->_entries:Ljava/util/List;

    .line 65
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/webapp/ClasspathPattern;->setPattern(Ljava/lang/String;)V

    .line 66
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 1
    .param p1, "patterns"    # [Ljava/lang/String;

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/ClasspathPattern;->_patterns:Ljava/util/List;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/ClasspathPattern;->_entries:Ljava/util/List;

    .line 59
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/webapp/ClasspathPattern;->setPatterns([Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method private addPatterns([Ljava/lang/String;)V
    .locals 6
    .param p1, "patterns"    # [Ljava/lang/String;

    .prologue
    .line 90
    if-eqz p1, :cond_1

    .line 92
    const/4 v1, 0x0

    .line 93
    .local v1, "entry":Lorg/eclipse/jetty/webapp/ClasspathPattern$Entry;
    move-object v0, p1

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 95
    .local v4, "pattern":Ljava/lang/String;
    invoke-direct {p0, v4}, Lorg/eclipse/jetty/webapp/ClasspathPattern;->createEntry(Ljava/lang/String;)Lorg/eclipse/jetty/webapp/ClasspathPattern$Entry;

    move-result-object v1

    .line 96
    if-eqz v1, :cond_0

    .line 97
    iget-object v5, p0, Lorg/eclipse/jetty/webapp/ClasspathPattern;->_patterns:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v5, p0, Lorg/eclipse/jetty/webapp/ClasspathPattern;->_entries:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "entry":Lorg/eclipse/jetty/webapp/ClasspathPattern$Entry;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "pattern":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method private createEntry(Ljava/lang/String;)Lorg/eclipse/jetty/webapp/ClasspathPattern$Entry;
    .locals 4
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    .line 114
    const/4 v0, 0x0

    .line 116
    .local v0, "entry":Lorg/eclipse/jetty/webapp/ClasspathPattern$Entry;
    if-eqz p1, :cond_0

    .line 118
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 119
    .local v1, "item":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 121
    new-instance v0, Lorg/eclipse/jetty/webapp/ClasspathPattern$Entry;

    .end local v0    # "entry":Lorg/eclipse/jetty/webapp/ClasspathPattern$Entry;
    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lorg/eclipse/jetty/webapp/ClasspathPattern$Entry;-><init>(Lorg/eclipse/jetty/webapp/ClasspathPattern$1;)V

    .line 122
    .restart local v0    # "entry":Lorg/eclipse/jetty/webapp/ClasspathPattern$Entry;
    const-string v2, "-"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, v0, Lorg/eclipse/jetty/webapp/ClasspathPattern$Entry;->result:Z

    .line 123
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lorg/eclipse/jetty/webapp/ClasspathPattern$Entry;->partial:Z

    .line 124
    iget-boolean v2, v0, Lorg/eclipse/jetty/webapp/ClasspathPattern$Entry;->result:Z

    if-eqz v2, :cond_2

    .end local v1    # "item":Ljava/lang/String;
    :goto_1
    iput-object v1, v0, Lorg/eclipse/jetty/webapp/ClasspathPattern$Entry;->classpath:Ljava/lang/String;

    .line 127
    :cond_0
    return-object v0

    .line 122
    .restart local v1    # "item":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 124
    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method private setPatterns([Ljava/lang/String;)V
    .locals 1
    .param p1, "patterns"    # [Ljava/lang/String;

    .prologue
    .line 77
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/ClasspathPattern;->_patterns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 78
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/ClasspathPattern;->_entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 79
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/webapp/ClasspathPattern;->addPatterns([Ljava/lang/String;)V

    .line 80
    return-void
.end method


# virtual methods
.method public addPattern(Ljava/lang/String;)V
    .locals 3
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 152
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v1, "patterns":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v2, ":,"

    invoke-direct {v0, p1, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    .local v0, "entries":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 156
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 159
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    check-cast v2, [Ljava/lang/String;

    invoke-direct {p0, v2}, Lorg/eclipse/jetty/webapp/ClasspathPattern;->addPatterns([Ljava/lang/String;)V

    .line 160
    return-void
.end method

.method public getPatterns()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 168
    const/4 v0, 0x0

    .line 170
    .local v0, "patterns":[Ljava/lang/String;
    iget-object v1, p0, Lorg/eclipse/jetty/webapp/ClasspathPattern;->_patterns:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jetty/webapp/ClasspathPattern;->_patterns:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 172
    iget-object v1, p0, Lorg/eclipse/jetty/webapp/ClasspathPattern;->_patterns:Ljava/util/List;

    iget-object v2, p0, Lorg/eclipse/jetty/webapp/ClasspathPattern;->_patterns:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "patterns":[Ljava/lang/String;
    check-cast v0, [Ljava/lang/String;

    .line 175
    .restart local v0    # "patterns":[Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public match(Ljava/lang/String;)Z
    .locals 10
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x2e

    const/4 v9, 0x0

    .line 187
    const/4 v5, 0x0

    .line 189
    .local v5, "result":Z
    iget-object v7, p0, Lorg/eclipse/jetty/webapp/ClasspathPattern;->_entries:Ljava/util/List;

    if-eqz v7, :cond_2

    .line 191
    const/16 v7, 0x2f

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    .line 193
    const/4 v6, 0x0

    .line 195
    .local v6, "startIndex":I
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_0

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v8, :cond_0

    .line 196
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 199
    :cond_0
    const-string v7, "$"

    invoke-virtual {p1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 201
    .local v0, "dollar":I
    const/4 v7, -0x1

    if-eq v0, v7, :cond_3

    move v1, v0

    .line 203
    .local v1, "endIndex":I
    :goto_1
    iget-object v7, p0, Lorg/eclipse/jetty/webapp/ClasspathPattern;->_entries:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jetty/webapp/ClasspathPattern$Entry;

    .line 205
    .local v2, "entry":Lorg/eclipse/jetty/webapp/ClasspathPattern$Entry;
    if-eqz v2, :cond_1

    .line 207
    iget-boolean v7, v2, Lorg/eclipse/jetty/webapp/ClasspathPattern$Entry;->partial:Z

    if-eqz v7, :cond_4

    .line 209
    iget-object v7, v2, Lorg/eclipse/jetty/webapp/ClasspathPattern$Entry;->classpath:Ljava/lang/String;

    iget-object v8, v2, Lorg/eclipse/jetty/webapp/ClasspathPattern$Entry;->classpath:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    invoke-virtual {p1, v6, v7, v9, v8}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 211
    iget-boolean v5, v2, Lorg/eclipse/jetty/webapp/ClasspathPattern$Entry;->result:Z

    .line 228
    .end local v0    # "dollar":I
    .end local v1    # "endIndex":I
    .end local v2    # "entry":Lorg/eclipse/jetty/webapp/ClasspathPattern$Entry;
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "startIndex":I
    :cond_2
    :goto_2
    return v5

    .line 201
    .restart local v0    # "dollar":I
    .restart local v6    # "startIndex":I
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    goto :goto_1

    .line 217
    .restart local v1    # "endIndex":I
    .restart local v2    # "entry":Lorg/eclipse/jetty/webapp/ClasspathPattern$Entry;
    .restart local v3    # "i$":Ljava/util/Iterator;
    :cond_4
    sub-int v4, v1, v6

    .line 218
    .local v4, "regionLength":I
    iget-object v7, v2, Lorg/eclipse/jetty/webapp/ClasspathPattern$Entry;->classpath:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v4, v7, :cond_1

    iget-object v7, v2, Lorg/eclipse/jetty/webapp/ClasspathPattern$Entry;->classpath:Ljava/lang/String;

    invoke-virtual {p1, v6, v7, v9, v4}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 221
    iget-boolean v5, v2, Lorg/eclipse/jetty/webapp/ClasspathPattern$Entry;->result:Z

    .line 222
    goto :goto_2
.end method

.method public setPattern(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 138
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/ClasspathPattern;->_patterns:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 139
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/ClasspathPattern;->_entries:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 140
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/webapp/ClasspathPattern;->addPattern(Ljava/lang/String;)V

    .line 141
    return-void
.end method
