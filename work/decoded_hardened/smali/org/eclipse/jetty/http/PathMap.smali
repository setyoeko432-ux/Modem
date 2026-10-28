.class public Lorg/eclipse/jetty/http/PathMap;
.super Ljava/util/HashMap;
.source "PathMap.java"

# interfaces
.implements Ljava/io/Externalizable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/http/PathMap$Entry;
    }
.end annotation


# static fields
.field private static __pathSpecSeparators:Ljava/lang/String;


# instance fields
.field _default:Lorg/eclipse/jetty/http/PathMap$Entry;

.field _defaultSingletonList:Ljava/util/List;

.field final _entrySet:Ljava/util/Set;

.field final _exactMap:Lorg/eclipse/jetty/util/StringMap;

.field _nodefault:Z

.field _prefixDefault:Lorg/eclipse/jetty/http/PathMap$Entry;

.field final _prefixMap:Lorg/eclipse/jetty/util/StringMap;

.field final _suffixMap:Lorg/eclipse/jetty/util/StringMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 67
    const-string v0, ":,"

    sput-object v0, Lorg/eclipse/jetty/http/PathMap;->__pathSpecSeparators:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 97
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 82
    new-instance v0, Lorg/eclipse/jetty/util/StringMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/StringMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->_prefixMap:Lorg/eclipse/jetty/util/StringMap;

    .line 83
    new-instance v0, Lorg/eclipse/jetty/util/StringMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/StringMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->_suffixMap:Lorg/eclipse/jetty/util/StringMap;

    .line 84
    new-instance v0, Lorg/eclipse/jetty/util/StringMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/StringMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->_exactMap:Lorg/eclipse/jetty/util/StringMap;

    .line 86
    iput-object v1, p0, Lorg/eclipse/jetty/http/PathMap;->_defaultSingletonList:Ljava/util/List;

    .line 87
    iput-object v1, p0, Lorg/eclipse/jetty/http/PathMap;->_prefixDefault:Lorg/eclipse/jetty/http/PathMap$Entry;

    .line 88
    iput-object v1, p0, Lorg/eclipse/jetty/http/PathMap;->_default:Lorg/eclipse/jetty/http/PathMap$Entry;

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/http/PathMap;->_nodefault:Z

    .line 98
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/PathMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->_entrySet:Ljava/util/Set;

    .line 99
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "capacity"    # I

    .prologue
    const/4 v1, 0x0

    .line 116
    invoke-direct {p0, p1}, Ljava/util/HashMap;-><init>(I)V

    .line 82
    new-instance v0, Lorg/eclipse/jetty/util/StringMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/StringMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->_prefixMap:Lorg/eclipse/jetty/util/StringMap;

    .line 83
    new-instance v0, Lorg/eclipse/jetty/util/StringMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/StringMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->_suffixMap:Lorg/eclipse/jetty/util/StringMap;

    .line 84
    new-instance v0, Lorg/eclipse/jetty/util/StringMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/StringMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->_exactMap:Lorg/eclipse/jetty/util/StringMap;

    .line 86
    iput-object v1, p0, Lorg/eclipse/jetty/http/PathMap;->_defaultSingletonList:Ljava/util/List;

    .line 87
    iput-object v1, p0, Lorg/eclipse/jetty/http/PathMap;->_prefixDefault:Lorg/eclipse/jetty/http/PathMap$Entry;

    .line 88
    iput-object v1, p0, Lorg/eclipse/jetty/http/PathMap;->_default:Lorg/eclipse/jetty/http/PathMap$Entry;

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/http/PathMap;->_nodefault:Z

    .line 117
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/PathMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->_entrySet:Ljava/util/Set;

    .line 118
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .param p1, "m"    # Ljava/util/Map;

    .prologue
    const/4 v1, 0x0

    .line 124
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 82
    new-instance v0, Lorg/eclipse/jetty/util/StringMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/StringMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->_prefixMap:Lorg/eclipse/jetty/util/StringMap;

    .line 83
    new-instance v0, Lorg/eclipse/jetty/util/StringMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/StringMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->_suffixMap:Lorg/eclipse/jetty/util/StringMap;

    .line 84
    new-instance v0, Lorg/eclipse/jetty/util/StringMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/StringMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->_exactMap:Lorg/eclipse/jetty/util/StringMap;

    .line 86
    iput-object v1, p0, Lorg/eclipse/jetty/http/PathMap;->_defaultSingletonList:Ljava/util/List;

    .line 87
    iput-object v1, p0, Lorg/eclipse/jetty/http/PathMap;->_prefixDefault:Lorg/eclipse/jetty/http/PathMap$Entry;

    .line 88
    iput-object v1, p0, Lorg/eclipse/jetty/http/PathMap;->_default:Lorg/eclipse/jetty/http/PathMap$Entry;

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/http/PathMap;->_nodefault:Z

    .line 125
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/http/PathMap;->putAll(Ljava/util/Map;)V

    .line 126
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/PathMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->_entrySet:Ljava/util/Set;

    .line 127
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2
    .param p1, "nodefault"    # Z

    .prologue
    const/4 v1, 0x0

    .line 106
    const/16 v0, 0xb

    invoke-direct {p0, v0}, Ljava/util/HashMap;-><init>(I)V

    .line 82
    new-instance v0, Lorg/eclipse/jetty/util/StringMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/StringMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->_prefixMap:Lorg/eclipse/jetty/util/StringMap;

    .line 83
    new-instance v0, Lorg/eclipse/jetty/util/StringMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/StringMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->_suffixMap:Lorg/eclipse/jetty/util/StringMap;

    .line 84
    new-instance v0, Lorg/eclipse/jetty/util/StringMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/StringMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->_exactMap:Lorg/eclipse/jetty/util/StringMap;

    .line 86
    iput-object v1, p0, Lorg/eclipse/jetty/http/PathMap;->_defaultSingletonList:Ljava/util/List;

    .line 87
    iput-object v1, p0, Lorg/eclipse/jetty/http/PathMap;->_prefixDefault:Lorg/eclipse/jetty/http/PathMap$Entry;

    .line 88
    iput-object v1, p0, Lorg/eclipse/jetty/http/PathMap;->_default:Lorg/eclipse/jetty/http/PathMap$Entry;

    .line 90
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/http/PathMap;->_nodefault:Z

    .line 107
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/PathMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->_entrySet:Ljava/util/Set;

    .line 108
    iput-boolean p1, p0, Lorg/eclipse/jetty/http/PathMap;->_nodefault:Z

    .line 109
    return-void
.end method

.method private static isPathWildcardMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p0, "pathSpec"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 439
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v0, v2, -0x2

    .line 440
    .local v0, "cpl":I
    const-string v2, "/*"

    invoke-virtual {p0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1, v1, p0, v1, v0}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 442
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v2, v0, :cond_0

    const/16 v2, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v2, v3, :cond_1

    .line 443
    :cond_0
    const/4 v1, 0x1

    .line 445
    :cond_1
    return v1
.end method

.method public static match(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "pathSpec"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 407
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/eclipse/jetty/http/PathMap;->match(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static match(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 4
    .param p0, "pathSpec"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "noDefault"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 417
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 418
    const-string v1, "/"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 432
    :cond_0
    :goto_0
    return v1

    .line 420
    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 421
    .local v0, "c":C
    const/16 v3, 0x2f

    if-ne v0, v3, :cond_4

    .line 423
    if-nez p2, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-eq v3, v1, :cond_0

    :cond_2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 426
    invoke-static {p0, p1}, Lorg/eclipse/jetty/http/PathMap;->isPathWildcardMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    .line 432
    goto :goto_0

    .line 429
    :cond_4
    const/16 v3, 0x2a

    if-ne v0, v3, :cond_3

    .line 430
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v2, p0, v1, v3}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v1

    goto :goto_0
.end method

.method public static pathInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "pathSpec"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 483
    const-string v3, ""

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 506
    .end local p1    # "path":Ljava/lang/String;
    :goto_0
    return-object p1

    .line 486
    .restart local p1    # "path":Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 488
    .local v0, "c":C
    const/16 v3, 0x2f

    if-ne v0, v3, :cond_4

    .line 490
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    move-object p1, v2

    .line 491
    goto :goto_0

    .line 493
    :cond_1
    invoke-static {p0, p1}, Lorg/eclipse/jetty/http/PathMap;->isPathWildcardMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 496
    .local v1, "wildcard":Z
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v1, :cond_2

    move-object p1, v2

    .line 497
    goto :goto_0

    .line 499
    :cond_2
    if-eqz v1, :cond_4

    .line 501
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    if-ne v3, v4, :cond_3

    move-object p1, v2

    .line 502
    goto :goto_0

    .line 503
    :cond_3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .end local v1    # "wildcard":Z
    :cond_4
    move-object p1, v2

    .line 506
    goto :goto_0
.end method

.method public static pathMatch(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "pathSpec"    # Ljava/lang/String;
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 455
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 457
    .local v0, "c":C
    const/16 v1, 0x2f

    if-ne v0, v1, :cond_2

    .line 459
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 474
    .end local p1    # "path":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 462
    .restart local p1    # "path":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 465
    invoke-static {p0, p1}, Lorg/eclipse/jetty/http/PathMap;->isPathWildcardMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 466
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 468
    :cond_2
    const/16 v1, 0x2a

    if-ne v0, v1, :cond_3

    .line 470
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v1, p0, v3, v2}, Ljava/lang/String;->regionMatches(ILjava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_0

    .line 474
    :cond_3
    const/4 p1, 0x0

    goto :goto_0
.end method

.method public static relativePath(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "base"    # Ljava/lang/String;
    .param p1, "pathSpec"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    .line 521
    invoke-static {p1, p2}, Lorg/eclipse/jetty/http/PathMap;->pathInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 522
    .local v0, "info":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 523
    move-object v0, p2

    .line 525
    :cond_0
    const-string v1, "./"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 526
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 527
    :cond_1
    const-string v1, "/"

    invoke-virtual {p0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 528
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 529
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 537
    :goto_0
    return-object p2

    .line 531
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 533
    :cond_3
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 534
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 536
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0
.end method

.method public static setPathSpecSeparators(Ljava/lang/String;)V
    .locals 0
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 78
    sput-object p0, Lorg/eclipse/jetty/http/PathMap;->__pathSpecSeparators:Ljava/lang/String;

    .line 79
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 392
    iget-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->_exactMap:Lorg/eclipse/jetty/util/StringMap;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/StringMap;->clear()V

    .line 393
    iget-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->_prefixMap:Lorg/eclipse/jetty/util/StringMap;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/StringMap;->clear()V

    .line 394
    iget-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->_suffixMap:Lorg/eclipse/jetty/util/StringMap;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/StringMap;->clear()V

    .line 395
    iput-object v1, p0, Lorg/eclipse/jetty/http/PathMap;->_default:Lorg/eclipse/jetty/http/PathMap$Entry;

    .line 396
    iput-object v1, p0, Lorg/eclipse/jetty/http/PathMap;->_defaultSingletonList:Ljava/util/List;

    .line 397
    invoke-super {p0}, Ljava/util/HashMap;->clear()V

    .line 398
    return-void
.end method

.method public containsMatch(Ljava/lang/String;)Z
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 356
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/http/PathMap;->getMatch(Ljava/lang/String;)Lorg/eclipse/jetty/http/PathMap$Entry;

    move-result-object v0

    .line 357
    .local v0, "match":Lorg/eclipse/jetty/http/PathMap$Entry;
    if-eqz v0, :cond_0

    iget-object v1, p0, Lorg/eclipse/jetty/http/PathMap;->_default:Lorg/eclipse/jetty/http/PathMap$Entry;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLazyMatches(Ljava/lang/String;)Ljava/lang/Object;
    .locals 7
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x0

    .line 290
    const/4 v0, 0x0

    .line 292
    .local v0, "entries":Ljava/lang/Object;
    if-nez p1, :cond_1

    .line 293
    invoke-static {v0}, Lorg/eclipse/jetty/util/LazyList;->getList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 334
    .end local v0    # "entries":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-object v0

    .line 295
    .restart local v0    # "entries":Ljava/lang/Object;
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    .line 298
    .local v3, "l":I
    iget-object v4, p0, Lorg/eclipse/jetty/http/PathMap;->_exactMap:Lorg/eclipse/jetty/util/StringMap;

    invoke-virtual {v4, p1, v6, v3}, Lorg/eclipse/jetty/util/StringMap;->getEntry(Ljava/lang/String;II)Ljava/util/Map$Entry;

    move-result-object v1

    .line 299
    .local v1, "entry":Ljava/util/Map$Entry;
    if-eqz v1, :cond_2

    .line 300
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 303
    .end local v0    # "entries":Ljava/lang/Object;
    :cond_2
    add-int/lit8 v2, v3, -0x1

    .line 304
    .local v2, "i":I
    :cond_3
    :goto_1
    const/16 v4, 0x2f

    add-int/lit8 v5, v2, -0x1

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v2

    if-ltz v2, :cond_4

    .line 306
    iget-object v4, p0, Lorg/eclipse/jetty/http/PathMap;->_prefixMap:Lorg/eclipse/jetty/util/StringMap;

    invoke-virtual {v4, p1, v6, v2}, Lorg/eclipse/jetty/util/StringMap;->getEntry(Ljava/lang/String;II)Ljava/util/Map$Entry;

    move-result-object v1

    .line 307
    if-eqz v1, :cond_3

    .line 308
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .restart local v0    # "entries":Ljava/lang/Object;
    goto :goto_1

    .line 312
    .end local v0    # "entries":Ljava/lang/Object;
    :cond_4
    iget-object v4, p0, Lorg/eclipse/jetty/http/PathMap;->_prefixDefault:Lorg/eclipse/jetty/http/PathMap$Entry;

    if-eqz v4, :cond_5

    .line 313
    iget-object v4, p0, Lorg/eclipse/jetty/http/PathMap;->_prefixDefault:Lorg/eclipse/jetty/http/PathMap$Entry;

    invoke-static {v0, v4}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 316
    :cond_5
    const/4 v2, 0x0

    .line 317
    :cond_6
    :goto_2
    const/16 v4, 0x2e

    add-int/lit8 v5, v2, 0x1

    invoke-virtual {p1, v4, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    if-lez v2, :cond_7

    .line 319
    iget-object v4, p0, Lorg/eclipse/jetty/http/PathMap;->_suffixMap:Lorg/eclipse/jetty/util/StringMap;

    add-int/lit8 v5, v2, 0x1

    sub-int v6, v3, v2

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, p1, v5, v6}, Lorg/eclipse/jetty/util/StringMap;->getEntry(Ljava/lang/String;II)Ljava/util/Map$Entry;

    move-result-object v1

    .line 320
    if-eqz v1, :cond_6

    .line 321
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .restart local v0    # "entries":Ljava/lang/Object;
    goto :goto_2

    .line 325
    .end local v0    # "entries":Ljava/lang/Object;
    :cond_7
    iget-object v4, p0, Lorg/eclipse/jetty/http/PathMap;->_default:Lorg/eclipse/jetty/http/PathMap$Entry;

    if-eqz v4, :cond_0

    .line 328
    if-nez v0, :cond_8

    .line 329
    iget-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->_defaultSingletonList:Ljava/util/List;

    goto :goto_0

    .line 331
    :cond_8
    iget-object v4, p0, Lorg/eclipse/jetty/http/PathMap;->_default:Lorg/eclipse/jetty/http/PathMap$Entry;

    invoke-static {v0, v4}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .restart local v0    # "entries":Ljava/lang/Object;
    goto :goto_0
.end method

.method public getMatch(Ljava/lang/String;)Lorg/eclipse/jetty/http/PathMap$Entry;
    .locals 7
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    const/16 v6, 0x2f

    const/4 v5, 0x0

    .line 235
    const/4 v0, 0x0

    .line 237
    .local v0, "entry":Ljava/util/Map$Entry;
    if-nez p1, :cond_0

    .line 238
    const/4 v3, 0x0

    .line 278
    :goto_0
    return-object v3

    .line 240
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 243
    .local v2, "l":I
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v6, :cond_1

    .line 245
    iget-object v3, p0, Lorg/eclipse/jetty/http/PathMap;->_exactMap:Lorg/eclipse/jetty/util/StringMap;

    const-string v4, ""

    invoke-virtual {v3, v4}, Lorg/eclipse/jetty/util/StringMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "entry":Ljava/util/Map$Entry;
    check-cast v0, Ljava/util/Map$Entry;

    .line 246
    .restart local v0    # "entry":Ljava/util/Map$Entry;
    if-eqz v0, :cond_1

    move-object v3, v0

    .line 247
    check-cast v3, Lorg/eclipse/jetty/http/PathMap$Entry;

    goto :goto_0

    .line 251
    :cond_1
    iget-object v3, p0, Lorg/eclipse/jetty/http/PathMap;->_exactMap:Lorg/eclipse/jetty/util/StringMap;

    invoke-virtual {v3, p1, v5, v2}, Lorg/eclipse/jetty/util/StringMap;->getEntry(Ljava/lang/String;II)Ljava/util/Map$Entry;

    move-result-object v0

    .line 252
    if-eqz v0, :cond_2

    .line 253
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jetty/http/PathMap$Entry;

    goto :goto_0

    .line 256
    :cond_2
    move v1, v2

    .line 257
    .local v1, "i":I
    :cond_3
    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    if-ltz v1, :cond_4

    .line 259
    iget-object v3, p0, Lorg/eclipse/jetty/http/PathMap;->_prefixMap:Lorg/eclipse/jetty/util/StringMap;

    invoke-virtual {v3, p1, v5, v1}, Lorg/eclipse/jetty/util/StringMap;->getEntry(Ljava/lang/String;II)Ljava/util/Map$Entry;

    move-result-object v0

    .line 260
    if-eqz v0, :cond_3

    .line 261
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jetty/http/PathMap$Entry;

    goto :goto_0

    .line 265
    :cond_4
    iget-object v3, p0, Lorg/eclipse/jetty/http/PathMap;->_prefixDefault:Lorg/eclipse/jetty/http/PathMap$Entry;

    if-eqz v3, :cond_5

    .line 266
    iget-object v3, p0, Lorg/eclipse/jetty/http/PathMap;->_prefixDefault:Lorg/eclipse/jetty/http/PathMap$Entry;

    goto :goto_0

    .line 269
    :cond_5
    const/4 v1, 0x0

    .line 270
    :cond_6
    const/16 v3, 0x2e

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    if-lez v1, :cond_7

    .line 272
    iget-object v3, p0, Lorg/eclipse/jetty/http/PathMap;->_suffixMap:Lorg/eclipse/jetty/util/StringMap;

    add-int/lit8 v4, v1, 0x1

    sub-int v5, v2, v1

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, p1, v4, v5}, Lorg/eclipse/jetty/util/StringMap;->getEntry(Ljava/lang/String;II)Ljava/util/Map$Entry;

    move-result-object v0

    .line 273
    if-eqz v0, :cond_6

    .line 274
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jetty/http/PathMap$Entry;

    goto :goto_0

    .line 278
    :cond_7
    iget-object v3, p0, Lorg/eclipse/jetty/http/PathMap;->_default:Lorg/eclipse/jetty/http/PathMap$Entry;

    goto :goto_0
.end method

.method public getMatches(Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 345
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/http/PathMap;->getLazyMatches(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jetty/util/LazyList;->getList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public match(Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 221
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/http/PathMap;->getMatch(Ljava/lang/String;)Lorg/eclipse/jetty/http/PathMap$Entry;

    move-result-object v0

    .line 222
    .local v0, "entry":Ljava/util/Map$Entry;
    if-eqz v0, :cond_0

    .line 223
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 224
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9
    .param p1, "pathSpec"    # Ljava/lang/Object;
    .param p2, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v8, 0x0

    .line 154
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 155
    .local v4, "str":Ljava/lang/String;
    const-string v6, ""

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 157
    new-instance v0, Lorg/eclipse/jetty/http/PathMap$Entry;

    const-string v6, ""

    invoke-direct {v0, v6, p2}, Lorg/eclipse/jetty/http/PathMap$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 158
    .local v0, "entry":Lorg/eclipse/jetty/http/PathMap$Entry;
    const-string v6, ""

    invoke-virtual {v0, v6}, Lorg/eclipse/jetty/http/PathMap$Entry;->setMapped(Ljava/lang/String;)V

    .line 159
    iget-object v6, p0, Lorg/eclipse/jetty/http/PathMap;->_exactMap:Lorg/eclipse/jetty/util/StringMap;

    const-string v7, ""

    invoke-virtual {v6, v7, v0}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    const-string v6, ""

    invoke-super {p0, v6, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 211
    .end local v0    # "entry":Lorg/eclipse/jetty/http/PathMap$Entry;
    :cond_0
    return-object v2

    .line 163
    :cond_1
    new-instance v5, Ljava/util/StringTokenizer;

    sget-object v6, Lorg/eclipse/jetty/http/PathMap;->__pathSpecSeparators:Ljava/lang/String;

    invoke-direct {v5, v4, v6}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    .local v5, "tok":Ljava/util/StringTokenizer;
    const/4 v2, 0x0

    .line 166
    :cond_2
    :goto_0
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 168
    invoke-virtual {v5}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    .line 170
    .local v3, "spec":Ljava/lang/String;
    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "*."

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 171
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "PathSpec "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ". must start with \'/\' or \'*.\'"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 173
    :cond_3
    invoke-super {p0, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 176
    .local v2, "old":Ljava/lang/Object;
    new-instance v0, Lorg/eclipse/jetty/http/PathMap$Entry;

    invoke-direct {v0, v3, p2}, Lorg/eclipse/jetty/http/PathMap$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 178
    .restart local v0    # "entry":Lorg/eclipse/jetty/http/PathMap$Entry;
    invoke-virtual {v0}, Lorg/eclipse/jetty/http/PathMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 180
    const-string v6, "/*"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 181
    iput-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->_prefixDefault:Lorg/eclipse/jetty/http/PathMap$Entry;

    goto :goto_0

    .line 182
    :cond_4
    const-string v6, "/*"

    invoke-virtual {v3, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 184
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x2

    invoke-virtual {v3, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 185
    .local v1, "mapped":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/PathMap$Entry;->setMapped(Ljava/lang/String;)V

    .line 186
    iget-object v6, p0, Lorg/eclipse/jetty/http/PathMap;->_prefixMap:Lorg/eclipse/jetty/util/StringMap;

    invoke-virtual {v6, v1, v0}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget-object v6, p0, Lorg/eclipse/jetty/http/PathMap;->_exactMap:Lorg/eclipse/jetty/util/StringMap;

    invoke-virtual {v6, v1, v0}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    iget-object v6, p0, Lorg/eclipse/jetty/http/PathMap;->_exactMap:Lorg/eclipse/jetty/util/StringMap;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v3, v8, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 190
    .end local v1    # "mapped":Ljava/lang/String;
    :cond_5
    const-string v6, "*."

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 191
    iget-object v6, p0, Lorg/eclipse/jetty/http/PathMap;->_suffixMap:Lorg/eclipse/jetty/util/StringMap;

    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 192
    :cond_6
    const-string v6, "/"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 194
    iget-boolean v6, p0, Lorg/eclipse/jetty/http/PathMap;->_nodefault:Z

    if-eqz v6, :cond_7

    .line 195
    iget-object v6, p0, Lorg/eclipse/jetty/http/PathMap;->_exactMap:Lorg/eclipse/jetty/util/StringMap;

    invoke-virtual {v6, v3, v0}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 198
    :cond_7
    iput-object v0, p0, Lorg/eclipse/jetty/http/PathMap;->_default:Lorg/eclipse/jetty/http/PathMap$Entry;

    .line 199
    iget-object v6, p0, Lorg/eclipse/jetty/http/PathMap;->_default:Lorg/eclipse/jetty/http/PathMap$Entry;

    invoke-static {v6}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    iput-object v6, p0, Lorg/eclipse/jetty/http/PathMap;->_defaultSingletonList:Ljava/util/List;

    goto/16 :goto_0

    .line 205
    :cond_8
    invoke-virtual {v0, v3}, Lorg/eclipse/jetty/http/PathMap$Entry;->setMapped(Ljava/lang/String;)V

    .line 206
    iget-object v6, p0, Lorg/eclipse/jetty/http/PathMap;->_exactMap:Lorg/eclipse/jetty/util/StringMap;

    invoke-virtual {v6, v3, v0}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 141
    invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    .line 142
    .local v0, "map":Ljava/util/HashMap;
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/http/PathMap;->putAll(Ljava/util/Map;)V

    .line 143
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .param p1, "pathSpec"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 364
    if-eqz p1, :cond_0

    move-object v0, p1

    .line 366
    check-cast v0, Ljava/lang/String;

    .line 367
    .local v0, "spec":Ljava/lang/String;
    const-string v1, "/*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 368
    iput-object v2, p0, Lorg/eclipse/jetty/http/PathMap;->_prefixDefault:Lorg/eclipse/jetty/http/PathMap$Entry;

    .line 385
    .end local v0    # "spec":Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 369
    .restart local v0    # "spec":Ljava/lang/String;
    :cond_1
    const-string v1, "/*"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 371
    iget-object v1, p0, Lorg/eclipse/jetty/http/PathMap;->_prefixMap:Lorg/eclipse/jetty/util/StringMap;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/util/StringMap;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 372
    iget-object v1, p0, Lorg/eclipse/jetty/http/PathMap;->_exactMap:Lorg/eclipse/jetty/util/StringMap;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/util/StringMap;->remove(Ljava/lang/String;)Ljava/lang/Object;

    .line 373
    iget-object v1, p0, Lorg/eclipse/jetty/http/PathMap;->_exactMap:Lorg/eclipse/jetty/util/StringMap;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/util/StringMap;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 375
    :cond_2
    const-string v1, "*."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 376
    iget-object v1, p0, Lorg/eclipse/jetty/http/PathMap;->_suffixMap:Lorg/eclipse/jetty/util/StringMap;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/util/StringMap;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0

    .line 377
    :cond_3
    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 379
    iput-object v2, p0, Lorg/eclipse/jetty/http/PathMap;->_default:Lorg/eclipse/jetty/http/PathMap$Entry;

    .line 380
    iput-object v2, p0, Lorg/eclipse/jetty/http/PathMap;->_defaultSingletonList:Ljava/util/List;

    goto :goto_0

    .line 383
    :cond_4
    iget-object v1, p0, Lorg/eclipse/jetty/http/PathMap;->_exactMap:Lorg/eclipse/jetty/util/StringMap;

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/util/StringMap;->remove(Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 134
    .local v0, "map":Ljava/util/HashMap;
    invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V

    .line 135
    return-void
.end method
