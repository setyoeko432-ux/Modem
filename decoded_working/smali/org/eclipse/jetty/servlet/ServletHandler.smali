.class public Lorg/eclipse/jetty/servlet/ServletHandler;
.super Lorg/eclipse/jetty/server/handler/ScopedHandler;
.source "ServletHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/servlet/ServletHandler$Chain;,
        Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field public static final __DEFAULT_SERVLET:Ljava/lang/String; = "default"


# instance fields
.field protected final _chainCache:[Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljavax/servlet/FilterChain;",
            ">;"
        }
    .end annotation
.end field

.field protected final _chainLRU:[Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _contextHandler:Lorg/eclipse/jetty/servlet/ServletContextHandler;

.field private _filterChainsCached:Z

.field private _filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

.field private final _filterNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/servlet/FilterHolder;",
            ">;"
        }
    .end annotation
.end field

.field private _filterNameMappings:Lorg/eclipse/jetty/util/MultiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jetty/util/MultiMap",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _filterPathMappings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/servlet/FilterMapping;",
            ">;"
        }
    .end annotation
.end field

.field private _filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

.field private _identityService:Lorg/eclipse/jetty/security/IdentityService;

.field private _matchAfterIndex:I

.field private _matchBeforeIndex:I

.field private _maxFilterChainsCacheSize:I

.field private _servletContext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

.field private _servletMappings:[Lorg/eclipse/jetty/servlet/ServletMapping;

.field private final _servletNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/servlet/ServletHolder;",
            ">;"
        }
    .end annotation
.end field

.field private _servletPathMap:Lorg/eclipse/jetty/http/PathMap;

.field private _servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

.field private _startWithUnavailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 94
    const-class v0, Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/16 v3, 0x1f

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 129
    invoke-direct {p0}, Lorg/eclipse/jetty/server/handler/ScopedHandler;-><init>()V

    .line 102
    new-array v0, v1, [Lorg/eclipse/jetty/servlet/FilterHolder;

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    .line 104
    iput v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_matchBeforeIndex:I

    .line 105
    iput v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_matchAfterIndex:I

    .line 106
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterChainsCached:Z

    .line 107
    const/16 v0, 0x200

    iput v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_maxFilterChainsCacheSize:I

    .line 108
    iput-boolean v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_startWithUnavailable:Z

    .line 111
    new-array v0, v1, [Lorg/eclipse/jetty/servlet/ServletHolder;

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterNameMap:Ljava/util/Map;

    .line 118
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletNameMap:Ljava/util/Map;

    .line 121
    new-array v0, v3, [Ljava/util/concurrent/ConcurrentMap;

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    .line 122
    new-array v0, v3, [Ljava/util/Queue;

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainLRU:[Ljava/util/Queue;

    .line 130
    return-void
.end method

.method static synthetic access$000()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .prologue
    .line 92
    sget-object v0, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method


# virtual methods
.method public addFilter(Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;)Lorg/eclipse/jetty/servlet/FilterHolder;
    .locals 1
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "pathSpec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet",
            "<",
            "Ljavax/servlet/DispatcherType;",
            ">;)",
            "Lorg/eclipse/jetty/servlet/FilterHolder;"
        }
    .end annotation

    .prologue
    .line 1073
    .local p3, "dispatches":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Ljavax/servlet/DispatcherType;>;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/eclipse/jetty/servlet/ServletHandler;->addFilterWithMapping(Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;)Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v0

    return-object v0
.end method

.method public addFilter(Lorg/eclipse/jetty/servlet/FilterHolder;)V
    .locals 2
    .param p1, "filter"    # Lorg/eclipse/jetty/servlet/FilterHolder;

    .prologue
    .line 1097
    if-eqz p1, :cond_0

    .line 1098
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilters()[Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v0

    const-class v1, Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-static {v0, p1, v1}, Lorg/eclipse/jetty/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jetty/servlet/FilterHolder;

    check-cast v0, [Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->setFilters([Lorg/eclipse/jetty/servlet/FilterHolder;)V

    .line 1099
    :cond_0
    return-void
.end method

.method public addFilter(Lorg/eclipse/jetty/servlet/FilterHolder;Lorg/eclipse/jetty/servlet/FilterMapping;)V
    .locals 2
    .param p1, "filter"    # Lorg/eclipse/jetty/servlet/FilterHolder;
    .param p2, "filterMapping"    # Lorg/eclipse/jetty/servlet/FilterMapping;

    .prologue
    .line 1084
    if-eqz p1, :cond_0

    .line 1085
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilters()[Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v0

    const-class v1, Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-static {v0, p1, v1}, Lorg/eclipse/jetty/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jetty/servlet/FilterHolder;

    check-cast v0, [Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->setFilters([Lorg/eclipse/jetty/servlet/FilterHolder;)V

    .line 1086
    :cond_0
    if-eqz p2, :cond_1

    .line 1088
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/servlet/ServletHandler;->addFilterMapping(Lorg/eclipse/jetty/servlet/FilterMapping;)V

    .line 1089
    :cond_1
    return-void
.end method

.method public addFilterMapping(Lorg/eclipse/jetty/servlet/FilterMapping;)V
    .locals 5
    .param p1, "mapping"    # Lorg/eclipse/jetty/servlet/FilterMapping;

    .prologue
    const/4 v4, 0x0

    .line 1107
    if-eqz p1, :cond_1

    .line 1109
    invoke-virtual {p1}, Lorg/eclipse/jetty/servlet/FilterMapping;->getFilterHolder()Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v3

    if-nez v3, :cond_2

    const/4 v2, 0x0

    .line 1110
    .local v2, "source":Lorg/eclipse/jetty/servlet/Holder$Source;
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilterMappings()[Lorg/eclipse/jetty/servlet/FilterMapping;

    move-result-object v0

    .line 1111
    .local v0, "mappings":[Lorg/eclipse/jetty/servlet/FilterMapping;
    if-eqz v0, :cond_0

    array-length v3, v0

    if-nez v3, :cond_3

    .line 1113
    :cond_0
    invoke-virtual {p0, p1, v4, v4}, Lorg/eclipse/jetty/servlet/ServletHandler;->insertFilterMapping(Lorg/eclipse/jetty/servlet/FilterMapping;IZ)[Lorg/eclipse/jetty/servlet/FilterMapping;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/eclipse/jetty/servlet/ServletHandler;->setFilterMappings([Lorg/eclipse/jetty/servlet/FilterMapping;)V

    .line 1114
    if-eqz v2, :cond_1

    sget-object v3, Lorg/eclipse/jetty/servlet/Holder$Source;->JAVAX_API:Lorg/eclipse/jetty/servlet/Holder$Source;

    if-ne v2, v3, :cond_1

    .line 1115
    iput v4, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_matchAfterIndex:I

    .line 1142
    .end local v0    # "mappings":[Lorg/eclipse/jetty/servlet/FilterMapping;
    .end local v2    # "source":Lorg/eclipse/jetty/servlet/Holder$Source;
    :cond_1
    :goto_1
    return-void

    .line 1109
    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jetty/servlet/FilterMapping;->getFilterHolder()Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jetty/servlet/FilterHolder;->getSource()Lorg/eclipse/jetty/servlet/Holder$Source;

    move-result-object v2

    goto :goto_0

    .line 1122
    .restart local v0    # "mappings":[Lorg/eclipse/jetty/servlet/FilterMapping;
    .restart local v2    # "source":Lorg/eclipse/jetty/servlet/Holder$Source;
    :cond_3
    if-eqz v2, :cond_4

    sget-object v3, Lorg/eclipse/jetty/servlet/Holder$Source;->JAVAX_API:Lorg/eclipse/jetty/servlet/Holder$Source;

    if-ne v3, v2, :cond_4

    .line 1124
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, p1, v3, v4}, Lorg/eclipse/jetty/servlet/ServletHandler;->insertFilterMapping(Lorg/eclipse/jetty/servlet/FilterMapping;IZ)[Lorg/eclipse/jetty/servlet/FilterMapping;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/eclipse/jetty/servlet/ServletHandler;->setFilterMappings([Lorg/eclipse/jetty/servlet/FilterMapping;)V

    .line 1125
    iget v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_matchAfterIndex:I

    if-gez v3, :cond_1

    .line 1126
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilterMappings()[Lorg/eclipse/jetty/servlet/FilterMapping;

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_matchAfterIndex:I

    goto :goto_1

    .line 1131
    :cond_4
    iget v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_matchAfterIndex:I

    if-gez v3, :cond_5

    .line 1132
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p0, p1, v3, v4}, Lorg/eclipse/jetty/servlet/ServletHandler;->insertFilterMapping(Lorg/eclipse/jetty/servlet/FilterMapping;IZ)[Lorg/eclipse/jetty/servlet/FilterMapping;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/eclipse/jetty/servlet/ServletHandler;->setFilterMappings([Lorg/eclipse/jetty/servlet/FilterMapping;)V

    goto :goto_1

    .line 1135
    :cond_5
    iget v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_matchAfterIndex:I

    const/4 v4, 0x1

    invoke-virtual {p0, p1, v3, v4}, Lorg/eclipse/jetty/servlet/ServletHandler;->insertFilterMapping(Lorg/eclipse/jetty/servlet/FilterMapping;IZ)[Lorg/eclipse/jetty/servlet/FilterMapping;

    move-result-object v1

    .line 1136
    .local v1, "new_mappings":[Lorg/eclipse/jetty/servlet/FilterMapping;
    iget v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_matchAfterIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_matchAfterIndex:I

    .line 1137
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->setFilterMappings([Lorg/eclipse/jetty/servlet/FilterMapping;)V

    goto :goto_1
.end method

.method public addFilterWithMapping(Ljava/lang/Class;Ljava/lang/String;I)Lorg/eclipse/jetty/servlet/FilterHolder;
    .locals 2
    .param p2, "pathSpec"    # Ljava/lang/String;
    .param p3, "dispatches"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljavax/servlet/Filter;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Lorg/eclipse/jetty/servlet/FilterHolder;"
        }
    .end annotation

    .prologue
    .line 1004
    .local p1, "filter":Ljava/lang/Class;, "Ljava/lang/Class<+Ljavax/servlet/Filter;>;"
    sget-object v1, Lorg/eclipse/jetty/servlet/Holder$Source;->EMBEDDED:Lorg/eclipse/jetty/servlet/Holder$Source;

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->newFilterHolder(Lorg/eclipse/jetty/servlet/Holder$Source;)Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v0

    .line 1005
    .local v0, "holder":Lorg/eclipse/jetty/servlet/FilterHolder;
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/FilterHolder;->setHeldClass(Ljava/lang/Class;)V

    .line 1006
    invoke-virtual {p0, v0, p2, p3}, Lorg/eclipse/jetty/servlet/ServletHandler;->addFilterWithMapping(Lorg/eclipse/jetty/servlet/FilterHolder;Ljava/lang/String;I)V

    .line 1008
    return-object v0
.end method

.method public addFilterWithMapping(Ljava/lang/Class;Ljava/lang/String;Ljava/util/EnumSet;)Lorg/eclipse/jetty/servlet/FilterHolder;
    .locals 2
    .param p2, "pathSpec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljavax/servlet/Filter;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet",
            "<",
            "Ljavax/servlet/DispatcherType;",
            ">;)",
            "Lorg/eclipse/jetty/servlet/FilterHolder;"
        }
    .end annotation

    .prologue
    .line 935
    .local p1, "filter":Ljava/lang/Class;, "Ljava/lang/Class<+Ljavax/servlet/Filter;>;"
    .local p3, "dispatches":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Ljavax/servlet/DispatcherType;>;"
    sget-object v1, Lorg/eclipse/jetty/servlet/Holder$Source;->EMBEDDED:Lorg/eclipse/jetty/servlet/Holder$Source;

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->newFilterHolder(Lorg/eclipse/jetty/servlet/Holder$Source;)Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v0

    .line 936
    .local v0, "holder":Lorg/eclipse/jetty/servlet/FilterHolder;
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/FilterHolder;->setHeldClass(Ljava/lang/Class;)V

    .line 937
    invoke-virtual {p0, v0, p2, p3}, Lorg/eclipse/jetty/servlet/ServletHandler;->addFilterWithMapping(Lorg/eclipse/jetty/servlet/FilterHolder;Ljava/lang/String;Ljava/util/EnumSet;)V

    .line 939
    return-object v0
.end method

.method public addFilterWithMapping(Ljava/lang/String;Ljava/lang/String;I)Lorg/eclipse/jetty/servlet/FilterHolder;
    .locals 2
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "pathSpec"    # Ljava/lang/String;
    .param p3, "dispatches"    # I

    .prologue
    .line 1020
    sget-object v1, Lorg/eclipse/jetty/servlet/Holder$Source;->EMBEDDED:Lorg/eclipse/jetty/servlet/Holder$Source;

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->newFilterHolder(Lorg/eclipse/jetty/servlet/Holder$Source;)Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v0

    .line 1021
    .local v0, "holder":Lorg/eclipse/jetty/servlet/FilterHolder;
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/FilterHolder;->setClassName(Ljava/lang/String;)V

    .line 1023
    invoke-virtual {p0, v0, p2, p3}, Lorg/eclipse/jetty/servlet/ServletHandler;->addFilterWithMapping(Lorg/eclipse/jetty/servlet/FilterHolder;Ljava/lang/String;I)V

    .line 1024
    return-object v0
.end method

.method public addFilterWithMapping(Ljava/lang/String;Ljava/lang/String;Ljava/util/EnumSet;)Lorg/eclipse/jetty/servlet/FilterHolder;
    .locals 2
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "pathSpec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet",
            "<",
            "Ljavax/servlet/DispatcherType;",
            ">;)",
            "Lorg/eclipse/jetty/servlet/FilterHolder;"
        }
    .end annotation

    .prologue
    .line 951
    .local p3, "dispatches":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Ljavax/servlet/DispatcherType;>;"
    sget-object v1, Lorg/eclipse/jetty/servlet/Holder$Source;->EMBEDDED:Lorg/eclipse/jetty/servlet/Holder$Source;

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->newFilterHolder(Lorg/eclipse/jetty/servlet/Holder$Source;)Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v0

    .line 952
    .local v0, "holder":Lorg/eclipse/jetty/servlet/FilterHolder;
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/FilterHolder;->setClassName(Ljava/lang/String;)V

    .line 954
    invoke-virtual {p0, v0, p2, p3}, Lorg/eclipse/jetty/servlet/ServletHandler;->addFilterWithMapping(Lorg/eclipse/jetty/servlet/FilterHolder;Ljava/lang/String;Ljava/util/EnumSet;)V

    .line 955
    return-object v0
.end method

.method public addFilterWithMapping(Lorg/eclipse/jetty/servlet/FilterHolder;Ljava/lang/String;I)V
    .locals 4
    .param p1, "holder"    # Lorg/eclipse/jetty/servlet/FilterHolder;
    .param p2, "pathSpec"    # Ljava/lang/String;
    .param p3, "dispatches"    # I

    .prologue
    .line 1035
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilters()[Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v1

    .line 1036
    .local v1, "holders":[Lorg/eclipse/jetty/servlet/FilterHolder;
    if-eqz v1, :cond_0

    .line 1037
    invoke-virtual {v1}, [Lorg/eclipse/jetty/servlet/FilterHolder;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/eclipse/jetty/servlet/FilterHolder;

    move-object v1, v3

    check-cast v1, [Lorg/eclipse/jetty/servlet/FilterHolder;

    .line 1041
    :cond_0
    :try_start_0
    const-class v3, Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-static {v1, p1, v3}, Lorg/eclipse/jetty/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/eclipse/jetty/servlet/FilterHolder;

    check-cast v3, [Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-virtual {p0, v3}, Lorg/eclipse/jetty/servlet/ServletHandler;->setFilters([Lorg/eclipse/jetty/servlet/FilterHolder;)V

    .line 1043
    new-instance v2, Lorg/eclipse/jetty/servlet/FilterMapping;

    invoke-direct {v2}, Lorg/eclipse/jetty/servlet/FilterMapping;-><init>()V

    .line 1044
    .local v2, "mapping":Lorg/eclipse/jetty/servlet/FilterMapping;
    invoke-virtual {p1}, Lorg/eclipse/jetty/servlet/FilterHolder;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/eclipse/jetty/servlet/FilterMapping;->setFilterName(Ljava/lang/String;)V

    .line 1045
    invoke-virtual {v2, p2}, Lorg/eclipse/jetty/servlet/FilterMapping;->setPathSpec(Ljava/lang/String;)V

    .line 1046
    invoke-virtual {v2, p3}, Lorg/eclipse/jetty/servlet/FilterMapping;->setDispatches(I)V

    .line 1048
    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/servlet/ServletHandler;->addFilterMapping(Lorg/eclipse/jetty/servlet/FilterMapping;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 1061
    return-void

    .line 1050
    .end local v2    # "mapping":Lorg/eclipse/jetty/servlet/FilterMapping;
    :catch_0
    move-exception v0

    .line 1052
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->setFilters([Lorg/eclipse/jetty/servlet/FilterHolder;)V

    .line 1053
    throw v0

    .line 1055
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 1057
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->setFilters([Lorg/eclipse/jetty/servlet/FilterHolder;)V

    .line 1058
    throw v0
.end method

.method public addFilterWithMapping(Lorg/eclipse/jetty/servlet/FilterHolder;Ljava/lang/String;Ljava/util/EnumSet;)V
    .locals 4
    .param p1, "holder"    # Lorg/eclipse/jetty/servlet/FilterHolder;
    .param p2, "pathSpec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jetty/servlet/FilterHolder;",
            "Ljava/lang/String;",
            "Ljava/util/EnumSet",
            "<",
            "Ljavax/servlet/DispatcherType;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 966
    .local p3, "dispatches":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Ljavax/servlet/DispatcherType;>;"
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilters()[Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v1

    .line 967
    .local v1, "holders":[Lorg/eclipse/jetty/servlet/FilterHolder;
    if-eqz v1, :cond_0

    .line 968
    invoke-virtual {v1}, [Lorg/eclipse/jetty/servlet/FilterHolder;->clone()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/eclipse/jetty/servlet/FilterHolder;

    move-object v1, v3

    check-cast v1, [Lorg/eclipse/jetty/servlet/FilterHolder;

    .line 972
    :cond_0
    :try_start_0
    const-class v3, Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-static {v1, p1, v3}, Lorg/eclipse/jetty/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/eclipse/jetty/servlet/FilterHolder;

    check-cast v3, [Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-virtual {p0, v3}, Lorg/eclipse/jetty/servlet/ServletHandler;->setFilters([Lorg/eclipse/jetty/servlet/FilterHolder;)V

    .line 974
    new-instance v2, Lorg/eclipse/jetty/servlet/FilterMapping;

    invoke-direct {v2}, Lorg/eclipse/jetty/servlet/FilterMapping;-><init>()V

    .line 975
    .local v2, "mapping":Lorg/eclipse/jetty/servlet/FilterMapping;
    invoke-virtual {p1}, Lorg/eclipse/jetty/servlet/FilterHolder;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/eclipse/jetty/servlet/FilterMapping;->setFilterName(Ljava/lang/String;)V

    .line 976
    invoke-virtual {v2, p2}, Lorg/eclipse/jetty/servlet/FilterMapping;->setPathSpec(Ljava/lang/String;)V

    .line 977
    invoke-virtual {v2, p3}, Lorg/eclipse/jetty/servlet/FilterMapping;->setDispatcherTypes(Ljava/util/EnumSet;)V

    .line 979
    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/servlet/ServletHandler;->addFilterMapping(Lorg/eclipse/jetty/servlet/FilterMapping;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 993
    return-void

    .line 982
    .end local v2    # "mapping":Lorg/eclipse/jetty/servlet/FilterMapping;
    :catch_0
    move-exception v0

    .line 984
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->setFilters([Lorg/eclipse/jetty/servlet/FilterHolder;)V

    .line 985
    throw v0

    .line 987
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    .line 989
    .local v0, "e":Ljava/lang/Error;
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->setFilters([Lorg/eclipse/jetty/servlet/FilterHolder;)V

    .line 990
    throw v0
.end method

.method public addServlet(Lorg/eclipse/jetty/servlet/ServletHolder;)V
    .locals 2
    .param p1, "holder"    # Lorg/eclipse/jetty/servlet/ServletHolder;

    .prologue
    .line 891
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServlets()[Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v0

    const-class v1, Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-static {v0, p1, v1}, Lorg/eclipse/jetty/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jetty/servlet/ServletHolder;

    check-cast v0, [Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->setServlets([Lorg/eclipse/jetty/servlet/ServletHolder;)V

    .line 892
    return-void
.end method

.method public addServletMapping(Lorg/eclipse/jetty/servlet/ServletMapping;)V
    .locals 2
    .param p1, "mapping"    # Lorg/eclipse/jetty/servlet/ServletMapping;

    .prologue
    .line 900
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServletMappings()[Lorg/eclipse/jetty/servlet/ServletMapping;

    move-result-object v0

    const-class v1, Lorg/eclipse/jetty/servlet/ServletMapping;

    invoke-static {v0, p1, v1}, Lorg/eclipse/jetty/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jetty/servlet/ServletMapping;

    check-cast v0, [Lorg/eclipse/jetty/servlet/ServletMapping;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->setServletMappings([Lorg/eclipse/jetty/servlet/ServletMapping;)V

    .line 901
    return-void
.end method

.method public addServletWithMapping(Ljava/lang/Class;Ljava/lang/String;)Lorg/eclipse/jetty/servlet/ServletHolder;
    .locals 2
    .param p2, "pathSpec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljavax/servlet/Servlet;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/eclipse/jetty/servlet/ServletHolder;"
        }
    .end annotation

    .prologue
    .line 846
    .local p1, "servlet":Ljava/lang/Class;, "Ljava/lang/Class<+Ljavax/servlet/Servlet;>;"
    sget-object v1, Lorg/eclipse/jetty/servlet/Holder$Source;->EMBEDDED:Lorg/eclipse/jetty/servlet/Holder$Source;

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->newServletHolder(Lorg/eclipse/jetty/servlet/Holder$Source;)Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v0

    .line 847
    .local v0, "holder":Lorg/eclipse/jetty/servlet/ServletHolder;
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/ServletHolder;->setHeldClass(Ljava/lang/Class;)V

    .line 850
    invoke-virtual {p0, v0, p2}, Lorg/eclipse/jetty/servlet/ServletHandler;->addServletWithMapping(Lorg/eclipse/jetty/servlet/ServletHolder;Ljava/lang/String;)V

    .line 852
    return-object v0
.end method

.method public addServletWithMapping(Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jetty/servlet/ServletHolder;
    .locals 2
    .param p1, "className"    # Ljava/lang/String;
    .param p2, "pathSpec"    # Ljava/lang/String;

    .prologue
    .line 834
    sget-object v1, Lorg/eclipse/jetty/servlet/Holder$Source;->EMBEDDED:Lorg/eclipse/jetty/servlet/Holder$Source;

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->newServletHolder(Lorg/eclipse/jetty/servlet/Holder$Source;)Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v0

    .line 835
    .local v0, "holder":Lorg/eclipse/jetty/servlet/ServletHolder;
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/ServletHolder;->setClassName(Ljava/lang/String;)V

    .line 836
    invoke-virtual {p0, v0, p2}, Lorg/eclipse/jetty/servlet/ServletHandler;->addServletWithMapping(Lorg/eclipse/jetty/servlet/ServletHolder;Ljava/lang/String;)V

    .line 837
    return-object v0
.end method

.method public addServletWithMapping(Lorg/eclipse/jetty/servlet/ServletHolder;Ljava/lang/String;)V
    .locals 5
    .param p1, "servlet"    # Lorg/eclipse/jetty/servlet/ServletHolder;
    .param p2, "pathSpec"    # Ljava/lang/String;

    .prologue
    .line 862
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServlets()[Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v1

    .line 863
    .local v1, "holders":[Lorg/eclipse/jetty/servlet/ServletHolder;
    if-eqz v1, :cond_0

    .line 864
    invoke-virtual {v1}, [Lorg/eclipse/jetty/servlet/ServletHolder;->clone()Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "holders":[Lorg/eclipse/jetty/servlet/ServletHolder;
    check-cast v1, [Lorg/eclipse/jetty/servlet/ServletHolder;

    .line 868
    .restart local v1    # "holders":[Lorg/eclipse/jetty/servlet/ServletHolder;
    :cond_0
    :try_start_0
    const-class v3, Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-static {v1, p1, v3}, Lorg/eclipse/jetty/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/eclipse/jetty/servlet/ServletHolder;

    check-cast v3, [Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-virtual {p0, v3}, Lorg/eclipse/jetty/servlet/ServletHandler;->setServlets([Lorg/eclipse/jetty/servlet/ServletHolder;)V

    .line 870
    new-instance v2, Lorg/eclipse/jetty/servlet/ServletMapping;

    invoke-direct {v2}, Lorg/eclipse/jetty/servlet/ServletMapping;-><init>()V

    .line 871
    .local v2, "mapping":Lorg/eclipse/jetty/servlet/ServletMapping;
    invoke-virtual {p1}, Lorg/eclipse/jetty/servlet/ServletHolder;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/eclipse/jetty/servlet/ServletMapping;->setServletName(Ljava/lang/String;)V

    .line 872
    invoke-virtual {v2, p2}, Lorg/eclipse/jetty/servlet/ServletMapping;->setPathSpec(Ljava/lang/String;)V

    .line 873
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServletMappings()[Lorg/eclipse/jetty/servlet/ServletMapping;

    move-result-object v3

    const-class v4, Lorg/eclipse/jetty/servlet/ServletMapping;

    invoke-static {v3, v2, v4}, Lorg/eclipse/jetty/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lorg/eclipse/jetty/servlet/ServletMapping;

    check-cast v3, [Lorg/eclipse/jetty/servlet/ServletMapping;

    invoke-virtual {p0, v3}, Lorg/eclipse/jetty/servlet/ServletHandler;->setServletMappings([Lorg/eclipse/jetty/servlet/ServletMapping;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 882
    return-void

    .line 875
    .end local v2    # "mapping":Lorg/eclipse/jetty/servlet/ServletMapping;
    :catch_0
    move-exception v0

    .line 877
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->setServlets([Lorg/eclipse/jetty/servlet/ServletHolder;)V

    .line 878
    instance-of v3, v0, Ljava/lang/RuntimeException;

    if-eqz v3, :cond_1

    .line 879
    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0    # "e":Ljava/lang/Exception;
    throw v0

    .line 880
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_1
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method destroyFilter(Ljavax/servlet/Filter;)V
    .locals 1
    .param p1, "filter"    # Ljavax/servlet/Filter;

    .prologue
    .line 1632
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_contextHandler:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    if-eqz v0, :cond_0

    .line 1633
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_contextHandler:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->destroyFilter(Ljavax/servlet/Filter;)V

    .line 1634
    :cond_0
    return-void
.end method

.method destroyServlet(Ljavax/servlet/Servlet;)V
    .locals 1
    .param p1, "servlet"    # Ljavax/servlet/Servlet;

    .prologue
    .line 1625
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_contextHandler:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    if-eqz v0, :cond_0

    .line 1626
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_contextHandler:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->destroyServlet(Ljavax/servlet/Servlet;)V

    .line 1627
    :cond_0
    return-void
.end method

.method public doHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 15
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "baseRequest"    # Lorg/eclipse/jetty/server/Request;
    .param p3, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p4, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 455
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getDispatcherType()Ljavax/servlet/DispatcherType;

    move-result-object v9

    .line 457
    .local v9, "type":Ljavax/servlet/DispatcherType;
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getUserIdentityScope()Lorg/eclipse/jetty/server/UserIdentity$Scope;

    move-result-object v7

    check-cast v7, Lorg/eclipse/jetty/servlet/ServletHolder;

    .line 458
    .local v7, "servlet_holder":Lorg/eclipse/jetty/servlet/ServletHolder;
    const/4 v3, 0x0

    .line 461
    .local v3, "chain":Ljavax/servlet/FilterChain;
    const-string v11, "/"

    move-object/from16 v0, p1

    invoke-virtual {v0, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 463
    if-eqz v7, :cond_0

    iget-object v11, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    array-length v11, v11

    if-lez v11, :cond_0

    .line 464
    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {p0, v0, v1, v7}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilterChain(Lorg/eclipse/jetty/server/Request;Ljava/lang/String;Lorg/eclipse/jetty/servlet/ServletHolder;)Ljavax/servlet/FilterChain;

    move-result-object v3

    .line 477
    :cond_0
    :goto_0
    sget-object v11, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v12, "chain={}"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v3, v13, v14

    invoke-interface {v11, v12, v13}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 479
    const/4 v8, 0x0

    .line 482
    .local v8, "th":Ljava/lang/Throwable;
    if-nez v7, :cond_7

    .line 484
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getHandler()Lorg/eclipse/jetty/server/Handler;

    move-result-object v11

    if-nez v11, :cond_4

    .line 485
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->notFound(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    :try_end_0
    .catch Lorg/eclipse/jetty/io/EofException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/eclipse/jetty/io/RuntimeIOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/eclipse/jetty/continuation/ContinuationThrowable; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 602
    :goto_1
    if-eqz v7, :cond_1

    .line 603
    const/4 v11, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    .line 606
    :cond_1
    if-eqz v8, :cond_2

    invoke-interface/range {p3 .. p3}, Ljavax/servlet/http/HttpServletRequest;->isAsyncStarted()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 607
    invoke-interface/range {p3 .. p3}, Ljavax/servlet/http/HttpServletRequest;->getAsyncContext()Ljavax/servlet/AsyncContext;

    move-result-object v11

    check-cast v11, Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v11}, Lorg/eclipse/jetty/server/AsyncContinuation;->errorComplete()V

    .line 609
    :cond_2
    :goto_2
    return-void

    .line 468
    .end local v8    # "th":Ljava/lang/Throwable;
    :cond_3
    if-eqz v7, :cond_0

    .line 470
    iget-object v11, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    array-length v11, v11

    if-lez v11, :cond_0

    .line 472
    const/4 v11, 0x0

    move-object/from16 v0, p2

    invoke-virtual {p0, v0, v11, v7}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilterChain(Lorg/eclipse/jetty/server/Request;Ljava/lang/String;Lorg/eclipse/jetty/servlet/ServletHolder;)Ljavax/servlet/FilterChain;

    move-result-object v3

    goto :goto_0

    .line 487
    .restart local v8    # "th":Ljava/lang/Throwable;
    :cond_4
    :try_start_1
    invoke-virtual/range {p0 .. p4}, Lorg/eclipse/jetty/servlet/ServletHandler;->nextHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    :try_end_1
    .catch Lorg/eclipse/jetty/io/EofException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/eclipse/jetty/io/RuntimeIOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/eclipse/jetty/continuation/ContinuationThrowable; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Error; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 506
    :catch_0
    move-exception v4

    .line 508
    .local v4, "e":Lorg/eclipse/jetty/io/EofException;
    :try_start_2
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 602
    .end local v4    # "e":Lorg/eclipse/jetty/io/EofException;
    :catchall_0
    move-exception v11

    move-object v12, v11

    if-eqz v7, :cond_5

    .line 603
    const/4 v11, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    .line 606
    :cond_5
    if-eqz v8, :cond_6

    invoke-interface/range {p3 .. p3}, Ljavax/servlet/http/HttpServletRequest;->isAsyncStarted()Z

    move-result v11

    if-eqz v11, :cond_6

    .line 607
    invoke-interface/range {p3 .. p3}, Ljavax/servlet/http/HttpServletRequest;->getAsyncContext()Ljavax/servlet/AsyncContext;

    move-result-object v11

    check-cast v11, Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v11}, Lorg/eclipse/jetty/server/AsyncContinuation;->errorComplete()V

    :cond_6
    throw v12

    .line 492
    :cond_7
    move-object/from16 v5, p3

    .line 493
    .local v5, "req":Ljavax/servlet/ServletRequest;
    :try_start_3
    instance-of v11, v5, Lorg/eclipse/jetty/server/ServletRequestHttpWrapper;

    if-eqz v11, :cond_8

    .line 494
    check-cast v5, Lorg/eclipse/jetty/server/ServletRequestHttpWrapper;

    .end local v5    # "req":Ljavax/servlet/ServletRequest;
    invoke-virtual {v5}, Lorg/eclipse/jetty/server/ServletRequestHttpWrapper;->getRequest()Ljavax/servlet/ServletRequest;

    move-result-object v5

    .line 495
    .restart local v5    # "req":Ljavax/servlet/ServletRequest;
    :cond_8
    move-object/from16 v6, p4

    .line 496
    .local v6, "res":Ljavax/servlet/ServletResponse;
    instance-of v11, v6, Lorg/eclipse/jetty/server/ServletResponseHttpWrapper;

    if-eqz v11, :cond_9

    .line 497
    check-cast v6, Lorg/eclipse/jetty/server/ServletResponseHttpWrapper;

    .end local v6    # "res":Ljavax/servlet/ServletResponse;
    invoke-virtual {v6}, Lorg/eclipse/jetty/server/ServletResponseHttpWrapper;->getResponse()Ljavax/servlet/ServletResponse;

    move-result-object v6

    .line 500
    .restart local v6    # "res":Ljavax/servlet/ServletResponse;
    :cond_9
    if-eqz v3, :cond_a

    .line 501
    invoke-interface {v3, v5, v6}, Ljavax/servlet/FilterChain;->doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    :try_end_3
    .catch Lorg/eclipse/jetty/io/EofException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/eclipse/jetty/io/RuntimeIOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/eclipse/jetty/continuation/ContinuationThrowable; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/lang/Error; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 510
    .end local v5    # "req":Ljavax/servlet/ServletRequest;
    .end local v6    # "res":Ljavax/servlet/ServletResponse;
    :catch_1
    move-exception v4

    .line 512
    .local v4, "e":Lorg/eclipse/jetty/io/RuntimeIOException;
    :try_start_4
    throw v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 503
    .end local v4    # "e":Lorg/eclipse/jetty/io/RuntimeIOException;
    .restart local v5    # "req":Ljavax/servlet/ServletRequest;
    .restart local v6    # "res":Ljavax/servlet/ServletResponse;
    :cond_a
    :try_start_5
    move-object/from16 v0, p2

    invoke-virtual {v7, v0, v5, v6}, Lorg/eclipse/jetty/servlet/ServletHolder;->handle(Lorg/eclipse/jetty/server/Request;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    :try_end_5
    .catch Lorg/eclipse/jetty/io/EofException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/eclipse/jetty/io/RuntimeIOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/eclipse/jetty/continuation/ContinuationThrowable; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/lang/Error; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 514
    .end local v5    # "req":Ljavax/servlet/ServletRequest;
    .end local v6    # "res":Ljavax/servlet/ServletResponse;
    :catch_2
    move-exception v4

    .line 516
    .local v4, "e":Lorg/eclipse/jetty/continuation/ContinuationThrowable;
    :try_start_6
    throw v4

    .line 518
    .end local v4    # "e":Lorg/eclipse/jetty/continuation/ContinuationThrowable;
    :catch_3
    move-exception v4

    .line 520
    .local v4, "e":Ljava/lang/Exception;
    sget-object v11, Ljavax/servlet/DispatcherType;->REQUEST:Ljavax/servlet/DispatcherType;

    invoke-virtual {v11, v9}, Ljavax/servlet/DispatcherType;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_d

    sget-object v11, Ljavax/servlet/DispatcherType;->ASYNC:Ljavax/servlet/DispatcherType;

    invoke-virtual {v11, v9}, Ljavax/servlet/DispatcherType;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_d

    .line 522
    instance-of v11, v4, Ljava/io/IOException;

    if-eqz v11, :cond_b

    .line 523
    check-cast v4, Ljava/io/IOException;

    .end local v4    # "e":Ljava/lang/Exception;
    throw v4

    .line 524
    .restart local v4    # "e":Ljava/lang/Exception;
    :cond_b
    instance-of v11, v4, Ljava/lang/RuntimeException;

    if-eqz v11, :cond_c

    .line 525
    check-cast v4, Ljava/lang/RuntimeException;

    .end local v4    # "e":Ljava/lang/Exception;
    throw v4

    .line 526
    .restart local v4    # "e":Ljava/lang/Exception;
    :cond_c
    instance-of v11, v4, Ljavax/servlet/ServletException;

    if-eqz v11, :cond_d

    .line 527
    check-cast v4, Ljavax/servlet/ServletException;

    .end local v4    # "e":Ljava/lang/Exception;
    throw v4

    .line 531
    .restart local v4    # "e":Ljava/lang/Exception;
    :cond_d
    move-object v8, v4

    .line 532
    instance-of v11, v8, Ljavax/servlet/UnavailableException;

    if-eqz v11, :cond_f

    .line 534
    sget-object v11, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v11, v8}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 545
    :cond_e
    :goto_3
    instance-of v11, v8, Lorg/eclipse/jetty/http/HttpException;

    if-eqz v11, :cond_10

    .line 546
    move-object v0, v8

    check-cast v0, Lorg/eclipse/jetty/http/HttpException;

    move-object v11, v0

    throw v11

    .line 536
    :cond_f
    instance-of v11, v8, Ljavax/servlet/ServletException;

    if-eqz v11, :cond_e

    .line 538
    sget-object v11, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v11, v8}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    .line 539
    move-object v0, v8

    check-cast v0, Ljavax/servlet/ServletException;

    move-object v11, v0

    invoke-virtual {v11}, Ljavax/servlet/ServletException;->getRootCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 540
    .local v2, "cause":Ljava/lang/Throwable;
    if-eqz v2, :cond_e

    .line 541
    move-object v8, v2

    goto :goto_3

    .line 547
    .end local v2    # "cause":Ljava/lang/Throwable;
    :cond_10
    instance-of v11, v8, Lorg/eclipse/jetty/io/RuntimeIOException;

    if-eqz v11, :cond_11

    .line 548
    move-object v0, v8

    check-cast v0, Lorg/eclipse/jetty/io/RuntimeIOException;

    move-object v11, v0

    throw v11

    .line 549
    :cond_11
    instance-of v11, v8, Lorg/eclipse/jetty/io/EofException;

    if-eqz v11, :cond_12

    .line 550
    move-object v0, v8

    check-cast v0, Lorg/eclipse/jetty/io/EofException;

    move-object v11, v0

    throw v11

    .line 552
    :cond_12
    sget-object v11, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v11}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v11

    if-eqz v11, :cond_14

    .line 554
    sget-object v11, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface/range {p3 .. p3}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12, v8}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 555
    sget-object v11, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-interface {v11, v12, v13}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 566
    :goto_4
    const-string v11, "javax.servlet.error.exception_type"

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-interface {v0, v11, v12}, Ljavax/servlet/http/HttpServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 567
    const-string v11, "javax.servlet.error.exception"

    move-object/from16 v0, p3

    invoke-interface {v0, v11, v8}, Ljavax/servlet/http/HttpServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 568
    invoke-interface/range {p4 .. p4}, Ljavax/servlet/http/HttpServletResponse;->isCommitted()Z

    move-result v11

    if-nez v11, :cond_19

    .line 570
    instance-of v11, v8, Ljavax/servlet/UnavailableException;

    if-eqz v11, :cond_18

    .line 572
    move-object v0, v8

    check-cast v0, Ljavax/servlet/UnavailableException;

    move-object v10, v0

    .line 573
    .local v10, "ue":Ljavax/servlet/UnavailableException;
    invoke-virtual {v10}, Ljavax/servlet/UnavailableException;->isPermanent()Z

    move-result v11

    if-eqz v11, :cond_17

    .line 574
    const/16 v11, 0x194

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 602
    .end local v10    # "ue":Ljavax/servlet/UnavailableException;
    :goto_5
    if-eqz v7, :cond_13

    .line 603
    const/4 v11, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    .line 606
    :cond_13
    if-eqz v8, :cond_2

    invoke-interface/range {p3 .. p3}, Ljavax/servlet/http/HttpServletRequest;->isAsyncStarted()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 607
    invoke-interface/range {p3 .. p3}, Ljavax/servlet/http/HttpServletRequest;->getAsyncContext()Ljavax/servlet/AsyncContext;

    move-result-object v11

    check-cast v11, Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v11}, Lorg/eclipse/jetty/server/AsyncContinuation;->errorComplete()V

    goto/16 :goto_2

    .line 557
    :cond_14
    :try_start_7
    instance-of v11, v8, Ljava/io/IOException;

    if-nez v11, :cond_15

    instance-of v11, v8, Ljavax/servlet/UnavailableException;

    if-eqz v11, :cond_16

    .line 559
    :cond_15
    sget-object v11, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface/range {p3 .. p3}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12, v8}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 563
    :cond_16
    sget-object v11, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface/range {p3 .. p3}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12, v8}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_4

    .line 576
    .restart local v10    # "ue":Ljavax/servlet/UnavailableException;
    :cond_17
    const/16 v11, 0x1f7

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    goto :goto_5

    .line 579
    .end local v10    # "ue":Ljavax/servlet/UnavailableException;
    :cond_18
    const/16 v11, 0x1f4

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    goto :goto_5

    .line 582
    :cond_19
    sget-object v11, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Response already committed for handling "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-interface {v11, v12, v13}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 585
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_4
    move-exception v4

    .line 587
    .local v4, "e":Ljava/lang/Error;
    sget-object v11, Ljavax/servlet/DispatcherType;->REQUEST:Ljavax/servlet/DispatcherType;

    invoke-virtual {v11, v9}, Ljavax/servlet/DispatcherType;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1a

    sget-object v11, Ljavax/servlet/DispatcherType;->ASYNC:Ljavax/servlet/DispatcherType;

    invoke-virtual {v11, v9}, Ljavax/servlet/DispatcherType;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1a

    .line 588
    throw v4

    .line 589
    :cond_1a
    move-object v8, v4

    .line 590
    sget-object v11, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Error for "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-interface/range {p3 .. p3}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12, v4}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 591
    sget-object v11, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v11}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v11

    if-eqz v11, :cond_1b

    sget-object v11, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-interface {v11, v12, v13}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 593
    :cond_1b
    const-string v11, "javax.servlet.error.exception_type"

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    move-object/from16 v0, p3

    invoke-interface {v0, v11, v12}, Ljavax/servlet/http/HttpServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 594
    const-string v11, "javax.servlet.error.exception"

    move-object/from16 v0, p3

    invoke-interface {v0, v11, v4}, Ljavax/servlet/http/HttpServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 595
    invoke-interface/range {p4 .. p4}, Ljavax/servlet/http/HttpServletResponse;->isCommitted()Z

    move-result v11

    if-nez v11, :cond_1d

    .line 596
    const/16 v11, 0x1f4

    move-object/from16 v0, p4

    invoke-interface {v0, v11}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 602
    :goto_6
    if-eqz v7, :cond_1c

    .line 603
    const/4 v11, 0x1

    move-object/from16 v0, p2

    invoke-virtual {v0, v11}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    .line 606
    :cond_1c
    if-eqz v8, :cond_2

    invoke-interface/range {p3 .. p3}, Ljavax/servlet/http/HttpServletRequest;->isAsyncStarted()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 607
    invoke-interface/range {p3 .. p3}, Ljavax/servlet/http/HttpServletRequest;->getAsyncContext()Ljavax/servlet/AsyncContext;

    move-result-object v11

    check-cast v11, Lorg/eclipse/jetty/server/AsyncContinuation;

    invoke-virtual {v11}, Lorg/eclipse/jetty/server/AsyncContinuation;->errorComplete()V

    goto/16 :goto_2

    .line 598
    :cond_1d
    :try_start_8
    sget-object v11, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v12, "Response already committed for handling "

    invoke-interface {v11, v12, v4}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_6
.end method

.method public doScope(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 18
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "baseRequest"    # Lorg/eclipse/jetty/server/Request;
    .param p3, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p4, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 375
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getServletPath()Ljava/lang/String;

    move-result-object v7

    .line 376
    .local v7, "old_servlet_path":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getPathInfo()Ljava/lang/String;

    move-result-object v5

    .line 378
    .local v5, "old_path_info":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getDispatcherType()Ljavax/servlet/DispatcherType;

    move-result-object v12

    .line 380
    .local v12, "type":Ljavax/servlet/DispatcherType;
    const/4 v9, 0x0

    .line 381
    .local v9, "servlet_holder":Lorg/eclipse/jetty/servlet/ServletHolder;
    const/4 v6, 0x0

    .line 384
    .local v6, "old_scope":Lorg/eclipse/jetty/server/UserIdentity$Scope;
    const-string v13, "/"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    .line 387
    invoke-virtual/range {p0 .. p1}, Lorg/eclipse/jetty/servlet/ServletHandler;->getHolderEntry(Ljava/lang/String;)Lorg/eclipse/jetty/http/PathMap$Entry;

    move-result-object v4

    .line 388
    .local v4, "entry":Lorg/eclipse/jetty/http/PathMap$Entry;
    if-eqz v4, :cond_0

    .line 390
    invoke-virtual {v4}, Lorg/eclipse/jetty/http/PathMap$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "servlet_holder":Lorg/eclipse/jetty/servlet/ServletHolder;
    check-cast v9, Lorg/eclipse/jetty/servlet/ServletHolder;

    .line 392
    .restart local v9    # "servlet_holder":Lorg/eclipse/jetty/servlet/ServletHolder;
    invoke-virtual {v4}, Lorg/eclipse/jetty/http/PathMap$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 393
    .local v11, "servlet_path_spec":Ljava/lang/String;
    invoke-virtual {v4}, Lorg/eclipse/jetty/http/PathMap$Entry;->getMapped()Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_4

    invoke-virtual {v4}, Lorg/eclipse/jetty/http/PathMap$Entry;->getMapped()Ljava/lang/String;

    move-result-object v10

    .line 394
    .local v10, "servlet_path":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p1

    invoke-static {v11, v0}, Lorg/eclipse/jetty/http/PathMap;->pathInfo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 396
    .local v8, "path_info":Ljava/lang/String;
    sget-object v13, Ljavax/servlet/DispatcherType;->INCLUDE:Ljavax/servlet/DispatcherType;

    invoke-virtual {v13, v12}, Ljavax/servlet/DispatcherType;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 398
    const-string v13, "javax.servlet.include.servlet_path"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v10}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 399
    const-string v13, "javax.servlet.include.path_info"

    move-object/from16 v0, p2

    invoke-virtual {v0, v13, v8}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 414
    .end local v4    # "entry":Lorg/eclipse/jetty/http/PathMap$Entry;
    .end local v8    # "path_info":Ljava/lang/String;
    .end local v10    # "servlet_path":Ljava/lang/String;
    .end local v11    # "servlet_path_spec":Ljava/lang/String;
    :cond_0
    :goto_1
    sget-object v13, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v13}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 415
    sget-object v13, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v14, "servlet {}|{}|{} -> {}"

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getContextPath()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getServletPath()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x2

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getPathInfo()Ljava/lang/String;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x3

    aput-object v9, v15, v16

    invoke-interface {v13, v14, v15}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 420
    :cond_1
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Request;->getUserIdentityScope()Lorg/eclipse/jetty/server/UserIdentity$Scope;

    move-result-object v6

    .line 421
    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Lorg/eclipse/jetty/server/Request;->setUserIdentityScope(Lorg/eclipse/jetty/server/UserIdentity$Scope;)V

    .line 424
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->never()Z

    move-result v13

    if-eqz v13, :cond_7

    .line 425
    invoke-virtual/range {p0 .. p4}, Lorg/eclipse/jetty/servlet/ServletHandler;->nextScope(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 436
    :goto_2
    if-eqz v6, :cond_2

    .line 437
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lorg/eclipse/jetty/server/Request;->setUserIdentityScope(Lorg/eclipse/jetty/server/UserIdentity$Scope;)V

    .line 439
    :cond_2
    sget-object v13, Ljavax/servlet/DispatcherType;->INCLUDE:Ljavax/servlet/DispatcherType;

    invoke-virtual {v13, v12}, Ljavax/servlet/DispatcherType;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_3

    .line 441
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lorg/eclipse/jetty/server/Request;->setServletPath(Ljava/lang/String;)V

    .line 442
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lorg/eclipse/jetty/server/Request;->setPathInfo(Ljava/lang/String;)V

    .line 445
    :cond_3
    return-void

    .line 393
    .restart local v4    # "entry":Lorg/eclipse/jetty/http/PathMap$Entry;
    .restart local v11    # "servlet_path_spec":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p1

    invoke-static {v11, v0}, Lorg/eclipse/jetty/http/PathMap;->pathMatch(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    goto :goto_0

    .line 403
    .restart local v8    # "path_info":Ljava/lang/String;
    .restart local v10    # "servlet_path":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Lorg/eclipse/jetty/server/Request;->setServletPath(Ljava/lang/String;)V

    .line 404
    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Lorg/eclipse/jetty/server/Request;->setPathInfo(Ljava/lang/String;)V

    goto :goto_1

    .line 411
    .end local v4    # "entry":Lorg/eclipse/jetty/http/PathMap$Entry;
    .end local v8    # "path_info":Ljava/lang/String;
    .end local v10    # "servlet_path":Ljava/lang/String;
    .end local v11    # "servlet_path_spec":Ljava/lang/String;
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletNameMap:Ljava/util/Map;

    move-object/from16 v0, p1

    invoke-interface {v13, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9    # "servlet_holder":Lorg/eclipse/jetty/servlet/ServletHolder;
    check-cast v9, Lorg/eclipse/jetty/servlet/ServletHolder;

    .restart local v9    # "servlet_holder":Lorg/eclipse/jetty/servlet/ServletHolder;
    goto :goto_1

    .line 426
    :cond_7
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/jetty/servlet/ServletHandler;->_nextScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    if-eqz v13, :cond_a

    .line 427
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/jetty/servlet/ServletHandler;->_nextScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v13, v0, v1, v2, v3}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->doScope(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 436
    :catchall_0
    move-exception v13

    if-eqz v6, :cond_8

    .line 437
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lorg/eclipse/jetty/server/Request;->setUserIdentityScope(Lorg/eclipse/jetty/server/UserIdentity$Scope;)V

    .line 439
    :cond_8
    sget-object v14, Ljavax/servlet/DispatcherType;->INCLUDE:Ljavax/servlet/DispatcherType;

    invoke-virtual {v14, v12}, Ljavax/servlet/DispatcherType;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_9

    .line 441
    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Lorg/eclipse/jetty/server/Request;->setServletPath(Ljava/lang/String;)V

    .line 442
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Lorg/eclipse/jetty/server/Request;->setPathInfo(Ljava/lang/String;)V

    :cond_9
    throw v13

    .line 428
    :cond_a
    :try_start_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/jetty/servlet/ServletHandler;->_outerScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    if-eqz v13, :cond_b

    .line 429
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/jetty/servlet/ServletHandler;->_outerScope:Lorg/eclipse/jetty/server/handler/ScopedHandler;

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-virtual {v13, v0, v1, v2, v3}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->doHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_2

    .line 431
    :cond_b
    invoke-virtual/range {p0 .. p4}, Lorg/eclipse/jetty/servlet/ServletHandler;->doHandle(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_2
.end method

.method protected declared-synchronized doStart()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 163
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getCurrentContext()Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletContext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    .line 164
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletContext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    if-nez v1, :cond_4

    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lorg/eclipse/jetty/servlet/ServletContextHandler;

    check-cast v1, Lorg/eclipse/jetty/servlet/ServletContextHandler;

    iput-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_contextHandler:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    .line 166
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_contextHandler:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_contextHandler:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    const-class v2, Lorg/eclipse/jetty/security/SecurityHandler;

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->getChildHandlerByClass(Ljava/lang/Class;)Lorg/eclipse/jetty/server/Handler;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/security/SecurityHandler;

    .line 169
    .local v0, "security_handler":Lorg/eclipse/jetty/security/SecurityHandler;
    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0}, Lorg/eclipse/jetty/security/SecurityHandler;->getIdentityService()Lorg/eclipse/jetty/security/IdentityService;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    .line 173
    .end local v0    # "security_handler":Lorg/eclipse/jetty/security/SecurityHandler;
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->updateNameMappings()V

    .line 174
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->updateMappings()V

    .line 176
    iget-boolean v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterChainsCached:Z

    if-eqz v1, :cond_1

    .line 178
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    const/4 v2, 0x1

    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    aput-object v3, v1, v2

    .line 179
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    const/4 v2, 0x2

    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    aput-object v3, v1, v2

    .line 180
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    const/4 v2, 0x4

    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    aput-object v3, v1, v2

    .line 181
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    const/16 v2, 0x8

    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    aput-object v3, v1, v2

    .line 182
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    const/16 v2, 0x10

    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    aput-object v3, v1, v2

    .line 184
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainLRU:[Ljava/util/Queue;

    const/4 v2, 0x1

    new-instance v3, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    aput-object v3, v1, v2

    .line 185
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainLRU:[Ljava/util/Queue;

    const/4 v2, 0x2

    new-instance v3, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    aput-object v3, v1, v2

    .line 186
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainLRU:[Ljava/util/Queue;

    const/4 v2, 0x4

    new-instance v3, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    aput-object v3, v1, v2

    .line 187
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainLRU:[Ljava/util/Queue;

    const/16 v2, 0x8

    new-instance v3, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    aput-object v3, v1, v2

    .line 188
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainLRU:[Ljava/util/Queue;

    const/16 v2, 0x10

    new-instance v3, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    aput-object v3, v1, v2

    .line 191
    :cond_1
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->doStart()V

    .line 193
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_contextHandler:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_contextHandler:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    instance-of v1, v1, Lorg/eclipse/jetty/servlet/ServletContextHandler;

    if-nez v1, :cond_3

    .line 194
    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->initialize()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    :cond_3
    monitor-exit p0

    return-void

    .line 164
    :cond_4
    :try_start_1
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletContext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto/16 :goto_0

    .line 163
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method protected declared-synchronized doStop()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v12, -0x1

    .line 202
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->doStop()V

    .line 205
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 206
    .local v1, "filterHolders":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/servlet/FilterHolder;>;"
    iget-object v11, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    invoke-static {v11}, Lorg/eclipse/jetty/util/LazyList;->array2List([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    .line 207
    .local v2, "filterMappings":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/servlet/FilterMapping;>;"
    iget-object v11, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    if-eqz v11, :cond_3

    .line 209
    iget-object v11, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    array-length v5, v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v5, "i":I
    move v6, v5

    .end local v5    # "i":I
    .local v6, "i":I
    :goto_0
    add-int/lit8 v5, v6, -0x1

    .end local v6    # "i":I
    .restart local v5    # "i":I
    if-lez v6, :cond_3

    .line 211
    :try_start_1
    iget-object v11, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    aget-object v11, v11, v5

    invoke-virtual {v11}, Lorg/eclipse/jetty/servlet/FilterHolder;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 212
    :goto_1
    :try_start_2
    iget-object v11, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    aget-object v11, v11, v5

    invoke-virtual {v11}, Lorg/eclipse/jetty/servlet/FilterHolder;->getSource()Lorg/eclipse/jetty/servlet/Holder$Source;

    move-result-object v11

    sget-object v13, Lorg/eclipse/jetty/servlet/Holder$Source;->EMBEDDED:Lorg/eclipse/jetty/servlet/Holder$Source;

    if-eq v11, v13, :cond_2

    .line 215
    iget-object v11, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterNameMap:Ljava/util/Map;

    iget-object v13, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    aget-object v13, v13, v5

    invoke-virtual {v13}, Lorg/eclipse/jetty/servlet/FilterHolder;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    invoke-interface {v2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v4

    .line 218
    .local v4, "fmitor":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/eclipse/jetty/servlet/FilterMapping;>;"
    :cond_0
    :goto_2
    invoke-interface {v4}, Ljava/util/ListIterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_1

    .line 220
    invoke-interface {v4}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jetty/servlet/FilterMapping;

    .line 221
    .local v3, "fm":Lorg/eclipse/jetty/servlet/FilterMapping;
    invoke-virtual {v3}, Lorg/eclipse/jetty/servlet/FilterMapping;->getFilterName()Ljava/lang/String;

    move-result-object v11

    iget-object v13, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    aget-object v13, v13, v5

    invoke-virtual {v13}, Lorg/eclipse/jetty/servlet/FilterHolder;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 222
    invoke-interface {v4}, Ljava/util/ListIterator;->remove()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 202
    .end local v1    # "filterHolders":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/servlet/FilterHolder;>;"
    .end local v2    # "filterMappings":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/servlet/FilterMapping;>;"
    .end local v3    # "fm":Lorg/eclipse/jetty/servlet/FilterMapping;
    .end local v4    # "fmitor":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/eclipse/jetty/servlet/FilterMapping;>;"
    .end local v5    # "i":I
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    .line 211
    .restart local v1    # "filterHolders":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/servlet/FilterHolder;>;"
    .restart local v2    # "filterMappings":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/servlet/FilterMapping;>;"
    .restart local v5    # "i":I
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v11, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v13, "EXCEPTION "

    invoke-interface {v11, v13, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v4    # "fmitor":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/eclipse/jetty/servlet/FilterMapping;>;"
    :cond_1
    move v6, v5

    .line 224
    .end local v5    # "i":I
    .restart local v6    # "i":I
    goto :goto_0

    .line 226
    .end local v4    # "fmitor":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/eclipse/jetty/servlet/FilterMapping;>;"
    .end local v6    # "i":I
    .restart local v5    # "i":I
    :cond_2
    iget-object v11, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    aget-object v11, v11, v5

    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v6, v5

    .end local v5    # "i":I
    .restart local v6    # "i":I
    goto :goto_0

    .line 229
    .end local v6    # "i":I
    :cond_3
    const-class v11, Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-static {v1, v11}, Lorg/eclipse/jetty/util/LazyList;->toArray(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lorg/eclipse/jetty/servlet/FilterHolder;

    check-cast v11, [Lorg/eclipse/jetty/servlet/FilterHolder;

    iput-object v11, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    .line 230
    const-class v11, Lorg/eclipse/jetty/servlet/FilterMapping;

    invoke-static {v2, v11}, Lorg/eclipse/jetty/util/LazyList;->toArray(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lorg/eclipse/jetty/servlet/FilterMapping;

    check-cast v11, [Lorg/eclipse/jetty/servlet/FilterMapping;

    iput-object v11, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    .line 231
    iget-object v11, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    if-eqz v11, :cond_4

    iget-object v11, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    array-length v11, v11

    if-nez v11, :cond_6

    :cond_4
    move v11, v12

    :goto_3
    iput v11, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_matchAfterIndex:I

    .line 232
    const/4 v11, -0x1

    iput v11, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_matchBeforeIndex:I

    .line 236
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 237
    .local v7, "servletHolders":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/servlet/ServletHolder;>;"
    iget-object v11, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/eclipse/jetty/servlet/ServletMapping;

    invoke-static {v11}, Lorg/eclipse/jetty/util/LazyList;->array2List([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 238
    .local v8, "servletMappings":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/servlet/ServletMapping;>;"
    iget-object v11, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    if-eqz v11, :cond_9

    .line 240
    iget-object v11, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    array-length v5, v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .restart local v5    # "i":I
    move v6, v5

    .end local v5    # "i":I
    .restart local v6    # "i":I
    :goto_4
    add-int/lit8 v5, v6, -0x1

    .end local v6    # "i":I
    .restart local v5    # "i":I
    if-lez v6, :cond_9

    .line 242
    :try_start_4
    iget-object v11, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    aget-object v11, v11, v5

    invoke-virtual {v11}, Lorg/eclipse/jetty/servlet/ServletHolder;->stop()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 243
    :goto_5
    :try_start_5
    iget-object v11, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    aget-object v11, v11, v5

    invoke-virtual {v11}, Lorg/eclipse/jetty/servlet/ServletHolder;->getSource()Lorg/eclipse/jetty/servlet/Holder$Source;

    move-result-object v11

    sget-object v12, Lorg/eclipse/jetty/servlet/Holder$Source;->EMBEDDED:Lorg/eclipse/jetty/servlet/Holder$Source;

    if-eq v11, v12, :cond_8

    .line 246
    iget-object v11, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletNameMap:Ljava/util/Map;

    iget-object v12, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    aget-object v12, v12, v5

    invoke-virtual {v12}, Lorg/eclipse/jetty/servlet/ServletHolder;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    invoke-interface {v8}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v10

    .line 249
    .local v10, "smitor":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/eclipse/jetty/servlet/ServletMapping;>;"
    :cond_5
    :goto_6
    invoke-interface {v10}, Ljava/util/ListIterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 251
    invoke-interface {v10}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/eclipse/jetty/servlet/ServletMapping;

    .line 252
    .local v9, "sm":Lorg/eclipse/jetty/servlet/ServletMapping;
    invoke-virtual {v9}, Lorg/eclipse/jetty/servlet/ServletMapping;->getServletName()Ljava/lang/String;

    move-result-object v11

    iget-object v12, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    aget-object v12, v12, v5

    invoke-virtual {v12}, Lorg/eclipse/jetty/servlet/ServletHolder;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 253
    invoke-interface {v10}, Ljava/util/ListIterator;->remove()V

    goto :goto_6

    .line 231
    .end local v5    # "i":I
    .end local v7    # "servletHolders":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/servlet/ServletHolder;>;"
    .end local v8    # "servletMappings":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/servlet/ServletMapping;>;"
    .end local v9    # "sm":Lorg/eclipse/jetty/servlet/ServletMapping;
    .end local v10    # "smitor":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/eclipse/jetty/servlet/ServletMapping;>;"
    :cond_6
    iget-object v11, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    array-length v11, v11

    add-int/lit8 v11, v11, -0x1

    goto :goto_3

    .line 242
    .restart local v5    # "i":I
    .restart local v7    # "servletHolders":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/servlet/ServletHolder;>;"
    .restart local v8    # "servletMappings":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/servlet/ServletMapping;>;"
    :catch_1
    move-exception v0

    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v11, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v12, "EXCEPTION "

    invoke-interface {v11, v12, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v10    # "smitor":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/eclipse/jetty/servlet/ServletMapping;>;"
    :cond_7
    move v6, v5

    .line 255
    .end local v5    # "i":I
    .restart local v6    # "i":I
    goto :goto_4

    .line 257
    .end local v6    # "i":I
    .end local v10    # "smitor":Ljava/util/ListIterator;, "Ljava/util/ListIterator<Lorg/eclipse/jetty/servlet/ServletMapping;>;"
    .restart local v5    # "i":I
    :cond_8
    iget-object v11, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    aget-object v11, v11, v5

    invoke-interface {v7, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v6, v5

    .end local v5    # "i":I
    .restart local v6    # "i":I
    goto :goto_4

    .line 260
    .end local v6    # "i":I
    :cond_9
    const-class v11, Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-static {v7, v11}, Lorg/eclipse/jetty/util/LazyList;->toArray(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lorg/eclipse/jetty/servlet/ServletHolder;

    check-cast v11, [Lorg/eclipse/jetty/servlet/ServletHolder;

    iput-object v11, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    .line 261
    const-class v11, Lorg/eclipse/jetty/servlet/ServletMapping;

    invoke-static {v8, v11}, Lorg/eclipse/jetty/util/LazyList;->toArray(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, [Lorg/eclipse/jetty/servlet/ServletMapping;

    check-cast v11, [Lorg/eclipse/jetty/servlet/ServletMapping;

    iput-object v11, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/eclipse/jetty/servlet/ServletMapping;

    .line 265
    const/4 v11, 0x0

    iput-object v11, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterPathMappings:Ljava/util/List;

    .line 266
    const/4 v11, 0x0

    iput-object v11, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterNameMappings:Lorg/eclipse/jetty/util/MultiMap;

    .line 267
    const/4 v11, 0x0

    iput-object v11, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletPathMap:Lorg/eclipse/jetty/http/PathMap;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 268
    monitor-exit p0

    return-void
.end method

.method public dump(Ljava/lang/Appendable;Ljava/lang/String;)V
    .locals 3
    .param p1, "out"    # Ljava/lang/Appendable;
    .param p2, "indent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1640
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->dumpThis(Ljava/lang/Appendable;)V

    .line 1641
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/util/Collection;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getHandlers()[Lorg/eclipse/jetty/server/Handler;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jetty/util/TypeUtil;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getBeans()Ljava/util/Collection;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilterMappings()[Lorg/eclipse/jetty/servlet/FilterMapping;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jetty/util/TypeUtil;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilters()[Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jetty/util/TypeUtil;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServletMappings()[Lorg/eclipse/jetty/servlet/ServletMapping;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jetty/util/TypeUtil;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServlets()[Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jetty/util/TypeUtil;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, p2, v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->dump(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/util/Collection;)V

    .line 1648
    return-void
.end method

.method public getContextLog()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 282
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFilter(Ljava/lang/String;)Lorg/eclipse/jetty/servlet/FilterHolder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 922
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterNameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/servlet/FilterHolder;

    return-object v0
.end method

.method protected getFilterChain(Lorg/eclipse/jetty/server/Request;Ljava/lang/String;Lorg/eclipse/jetty/servlet/ServletHolder;)Ljavax/servlet/FilterChain;
    .locals 14
    .param p1, "baseRequest"    # Lorg/eclipse/jetty/server/Request;
    .param p2, "pathInContext"    # Ljava/lang/String;
    .param p3, "servletHolder"    # Lorg/eclipse/jetty/servlet/ServletHolder;

    .prologue
    .line 614
    if-nez p2, :cond_1

    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/jetty/servlet/ServletHolder;->getName()Ljava/lang/String;

    move-result-object v7

    .line 615
    .local v7, "key":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Request;->getDispatcherType()Ljavax/servlet/DispatcherType;

    move-result-object v11

    invoke-static {v11}, Lorg/eclipse/jetty/servlet/FilterMapping;->dispatch(Ljavax/servlet/DispatcherType;)I

    move-result v3

    .line 617
    .local v3, "dispatch":I
    iget-boolean v11, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterChainsCached:Z

    if-eqz v11, :cond_2

    iget-object v11, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    if-eqz v11, :cond_2

    .line 619
    iget-object v11, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    aget-object v11, v11, v3

    invoke-interface {v11, v7}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavax/servlet/FilterChain;

    .line 620
    .local v2, "chain":Ljavax/servlet/FilterChain;
    if-eqz v2, :cond_2

    .line 695
    .end local v2    # "chain":Ljavax/servlet/FilterChain;
    :cond_0
    :goto_1
    return-object v2

    .end local v3    # "dispatch":I
    .end local v7    # "key":Ljava/lang/String;
    :cond_1
    move-object/from16 v7, p2

    .line 614
    goto :goto_0

    .line 625
    .restart local v3    # "dispatch":I
    .restart local v7    # "key":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    .line 627
    .local v4, "filters":Ljava/lang/Object;
    if-eqz p2, :cond_e

    iget-object v11, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterPathMappings:Ljava/util/List;

    if-eqz v11, :cond_e

    .line 629
    const/4 v5, 0x0

    .end local v4    # "filters":Ljava/lang/Object;
    .local v5, "i":I
    :goto_2
    iget-object v11, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterPathMappings:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v11

    if-ge v5, v11, :cond_4

    .line 631
    iget-object v11, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterPathMappings:Ljava/util/List;

    invoke-interface {v11, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/eclipse/jetty/servlet/FilterMapping;

    .line 632
    .local v9, "mapping":Lorg/eclipse/jetty/servlet/FilterMapping;
    move-object/from16 v0, p2

    invoke-virtual {v9, v0, v3}, Lorg/eclipse/jetty/servlet/FilterMapping;->appliesTo(Ljava/lang/String;I)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 633
    invoke-virtual {v9}, Lorg/eclipse/jetty/servlet/FilterMapping;->getFilterHolder()Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v11

    invoke-static {v4, v11}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 629
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .end local v9    # "mapping":Lorg/eclipse/jetty/servlet/FilterMapping;
    :cond_4
    move-object v11, v4

    .line 638
    .end local v5    # "i":I
    :goto_3
    if-eqz p3, :cond_8

    iget-object v12, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterNameMappings:Lorg/eclipse/jetty/util/MultiMap;

    if-eqz v12, :cond_8

    iget-object v12, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterNameMappings:Lorg/eclipse/jetty/util/MultiMap;

    invoke-virtual {v12}, Lorg/eclipse/jetty/util/MultiMap;->size()I

    move-result v12

    if-lez v12, :cond_8

    .line 641
    iget-object v12, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterNameMappings:Lorg/eclipse/jetty/util/MultiMap;

    invoke-virtual {v12}, Lorg/eclipse/jetty/util/MultiMap;->size()I

    move-result v12

    if-lez v12, :cond_8

    .line 643
    iget-object v12, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterNameMappings:Lorg/eclipse/jetty/util/MultiMap;

    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/jetty/servlet/ServletHolder;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/eclipse/jetty/util/MultiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 644
    .local v10, "o":Ljava/lang/Object;
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_4
    invoke-static {v10}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v12

    if-ge v5, v12, :cond_6

    .line 646
    invoke-static {v10, v5}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/eclipse/jetty/servlet/FilterMapping;

    .line 647
    .restart local v9    # "mapping":Lorg/eclipse/jetty/servlet/FilterMapping;
    invoke-virtual {v9, v3}, Lorg/eclipse/jetty/servlet/FilterMapping;->appliesTo(I)Z

    move-result v12

    if-eqz v12, :cond_5

    .line 648
    invoke-virtual {v9}, Lorg/eclipse/jetty/servlet/FilterMapping;->getFilterHolder()Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v12

    invoke-static {v11, v12}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .restart local v4    # "filters":Ljava/lang/Object;
    move-object v11, v4

    .line 644
    .end local v4    # "filters":Ljava/lang/Object;
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 651
    .end local v9    # "mapping":Lorg/eclipse/jetty/servlet/FilterMapping;
    :cond_6
    iget-object v12, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterNameMappings:Lorg/eclipse/jetty/util/MultiMap;

    const-string v13, "*"

    invoke-virtual {v12, v13}, Lorg/eclipse/jetty/util/MultiMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 652
    const/4 v5, 0x0

    :goto_5
    invoke-static {v10}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v12

    if-ge v5, v12, :cond_8

    .line 654
    invoke-static {v10, v5}, Lorg/eclipse/jetty/util/LazyList;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/eclipse/jetty/servlet/FilterMapping;

    .line 655
    .restart local v9    # "mapping":Lorg/eclipse/jetty/servlet/FilterMapping;
    invoke-virtual {v9, v3}, Lorg/eclipse/jetty/servlet/FilterMapping;->appliesTo(I)Z

    move-result v12

    if-eqz v12, :cond_7

    .line 656
    invoke-virtual {v9}, Lorg/eclipse/jetty/servlet/FilterMapping;->getFilterHolder()Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v12

    invoke-static {v11, v12}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .restart local v4    # "filters":Ljava/lang/Object;
    move-object v11, v4

    .line 652
    .end local v4    # "filters":Ljava/lang/Object;
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    .line 661
    .end local v5    # "i":I
    .end local v9    # "mapping":Lorg/eclipse/jetty/servlet/FilterMapping;
    .end local v10    # "o":Ljava/lang/Object;
    :cond_8
    if-nez v11, :cond_9

    .line 662
    const/4 v2, 0x0

    goto/16 :goto_1

    .line 665
    :cond_9
    const/4 v2, 0x0

    .line 666
    .restart local v2    # "chain":Ljavax/servlet/FilterChain;
    iget-boolean v12, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterChainsCached:Z

    if-eqz v12, :cond_d

    .line 668
    invoke-static {v11}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v12

    if-lez v12, :cond_a

    .line 669
    new-instance v2, Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;

    .end local v2    # "chain":Ljavax/servlet/FilterChain;
    move-object/from16 v0, p3

    invoke-direct {v2, p0, v11, v0}, Lorg/eclipse/jetty/servlet/ServletHandler$CachedChain;-><init>(Lorg/eclipse/jetty/servlet/ServletHandler;Ljava/lang/Object;Lorg/eclipse/jetty/servlet/ServletHolder;)V

    .line 671
    .restart local v2    # "chain":Ljavax/servlet/FilterChain;
    :cond_a
    iget-object v11, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    aget-object v1, v11, v3

    .line 672
    .local v1, "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavax/servlet/FilterChain;>;"
    iget-object v11, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainLRU:[Ljava/util/Queue;

    aget-object v8, v11, v3

    .line 675
    .local v8, "lru":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/String;>;"
    :goto_6
    iget v11, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_maxFilterChainsCacheSize:I

    if-lez v11, :cond_b

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v11

    iget v12, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_maxFilterChainsCacheSize:I

    if-lt v11, v12, :cond_b

    .line 680
    invoke-interface {v8}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 681
    .local v6, "k":Ljava/lang/String;
    if-nez v6, :cond_c

    .line 683
    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 689
    .end local v6    # "k":Ljava/lang/String;
    :cond_b
    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 690
    invoke-interface {v8, v7}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 686
    .restart local v6    # "k":Ljava/lang/String;
    :cond_c
    invoke-interface {v1, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 692
    .end local v1    # "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljavax/servlet/FilterChain;>;"
    .end local v6    # "k":Ljava/lang/String;
    .end local v8    # "lru":Ljava/util/Queue;, "Ljava/util/Queue<Ljava/lang/String;>;"
    :cond_d
    invoke-static {v11}, Lorg/eclipse/jetty/util/LazyList;->size(Ljava/lang/Object;)I

    move-result v12

    if-lez v12, :cond_0

    .line 693
    new-instance v2, Lorg/eclipse/jetty/servlet/ServletHandler$Chain;

    .end local v2    # "chain":Ljavax/servlet/FilterChain;
    move-object/from16 v0, p3

    invoke-direct {v2, p0, p1, v11, v0}, Lorg/eclipse/jetty/servlet/ServletHandler$Chain;-><init>(Lorg/eclipse/jetty/servlet/ServletHandler;Lorg/eclipse/jetty/server/Request;Ljava/lang/Object;Lorg/eclipse/jetty/servlet/ServletHolder;)V

    .restart local v2    # "chain":Ljavax/servlet/FilterChain;
    goto/16 :goto_1

    .end local v2    # "chain":Ljavax/servlet/FilterChain;
    .restart local v4    # "filters":Ljava/lang/Object;
    :cond_e
    move-object v11, v4

    goto/16 :goto_3
.end method

.method public getFilterMappings()[Lorg/eclipse/jetty/servlet/FilterMapping;
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    return-object v0
.end method

.method public getFilters()[Lorg/eclipse/jetty/servlet/FilterHolder;
    .locals 1

    .prologue
    .line 300
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    return-object v0
.end method

.method public getHolderEntry(Ljava/lang/String;)Lorg/eclipse/jetty/http/PathMap$Entry;
    .locals 1
    .param p1, "pathInContext"    # Ljava/lang/String;

    .prologue
    .line 310
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletPathMap:Lorg/eclipse/jetty/http/PathMap;

    if-nez v0, :cond_0

    .line 311
    const/4 v0, 0x0

    .line 312
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletPathMap:Lorg/eclipse/jetty/http/PathMap;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/PathMap;->getMatch(Ljava/lang/String;)Lorg/eclipse/jetty/http/PathMap$Entry;

    move-result-object v0

    goto :goto_0
.end method

.method protected getIdentityService()Lorg/eclipse/jetty/security/IdentityService;
    .locals 1

    .prologue
    .line 273
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    return-object v0
.end method

.method public getMaxFilterChainsCacheSize()I
    .locals 1

    .prologue
    .line 1607
    iget v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_maxFilterChainsCacheSize:I

    return v0
.end method

.method public getServlet(Ljava/lang/String;)Lorg/eclipse/jetty/servlet/ServletHolder;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 367
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletNameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/servlet/ServletHolder;

    return-object v0
.end method

.method public getServletContext()Ljavax/servlet/ServletContext;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletContext:Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    return-object v0
.end method

.method public getServletMapping(Ljava/lang/String;)Lorg/eclipse/jetty/servlet/ServletMapping;
    .locals 11
    .param p1, "pattern"    # Ljava/lang/String;

    .prologue
    .line 336
    const/4 v9, 0x0

    .line 337
    .local v9, "theMapping":Lorg/eclipse/jetty/servlet/ServletMapping;
    iget-object v10, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/eclipse/jetty/servlet/ServletMapping;

    if-eqz v10, :cond_2

    .line 339
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/eclipse/jetty/servlet/ServletMapping;

    .local v0, "arr$":[Lorg/eclipse/jetty/servlet/ServletMapping;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v0    # "arr$":[Lorg/eclipse/jetty/servlet/ServletMapping;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v6, v0, v3

    .line 341
    .local v6, "m":Lorg/eclipse/jetty/servlet/ServletMapping;
    invoke-virtual {v6}, Lorg/eclipse/jetty/servlet/ServletMapping;->getPathSpecs()[Ljava/lang/String;

    move-result-object v8

    .line 342
    .local v8, "paths":[Ljava/lang/String;
    if-eqz v8, :cond_1

    .line 344
    move-object v1, v8

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v5, :cond_1

    aget-object v7, v1, v2

    .line 346
    .local v7, "path":Ljava/lang/String;
    invoke-virtual {p1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 347
    move-object v9, v6

    .line 344
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 339
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v5    # "len$":I
    .end local v7    # "path":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    .restart local v2    # "i$":I
    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0

    .line 352
    .end local v3    # "i$":I
    .end local v6    # "m":Lorg/eclipse/jetty/servlet/ServletMapping;
    .end local v8    # "paths":[Ljava/lang/String;
    :cond_2
    return-object v9
.end method

.method public getServletMappings()[Lorg/eclipse/jetty/servlet/ServletMapping;
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/eclipse/jetty/servlet/ServletMapping;

    return-object v0
.end method

.method public getServlets()[Lorg/eclipse/jetty/servlet/ServletHolder;
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    return-object v0
.end method

.method public initialize()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 762
    new-instance v3, Lorg/eclipse/jetty/util/MultiException;

    invoke-direct {v3}, Lorg/eclipse/jetty/util/MultiException;-><init>()V

    .line 765
    .local v3, "mx":Lorg/eclipse/jetty/util/MultiException;
    iget-object v5, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    if-eqz v5, :cond_0

    .line 767
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    array-length v5, v5

    if-ge v2, v5, :cond_0

    .line 768
    iget-object v5, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lorg/eclipse/jetty/servlet/FilterHolder;->start()V

    .line 767
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 771
    .end local v2    # "i":I
    :cond_0
    iget-object v5, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    if-eqz v5, :cond_5

    .line 774
    iget-object v5, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-virtual {v5}, [Lorg/eclipse/jetty/servlet/ServletHolder;->clone()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lorg/eclipse/jetty/servlet/ServletHolder;

    move-object v4, v5

    check-cast v4, [Lorg/eclipse/jetty/servlet/ServletHolder;

    .line 775
    .local v4, "servlets":[Lorg/eclipse/jetty/servlet/ServletHolder;
    invoke-static {v4}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 776
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    array-length v5, v4

    if-ge v2, v5, :cond_4

    .line 780
    :try_start_0
    aget-object v5, v4, v2

    invoke-virtual {v5}, Lorg/eclipse/jetty/servlet/ServletHolder;->getClassName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    aget-object v5, v4, v2

    invoke-virtual {v5}, Lorg/eclipse/jetty/servlet/ServletHolder;->getForcedPath()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 782
    iget-object v5, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletPathMap:Lorg/eclipse/jetty/http/PathMap;

    aget-object v6, v4, v2

    invoke-virtual {v6}, Lorg/eclipse/jetty/servlet/ServletHolder;->getForcedPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/http/PathMap;->match(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/servlet/ServletHolder;

    .line 783
    .local v1, "forced_holder":Lorg/eclipse/jetty/servlet/ServletHolder;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletHolder;->getClassName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    .line 785
    :cond_1
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No forced path servlet for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v4, v2

    invoke-virtual {v7}, Lorg/eclipse/jetty/servlet/ServletHolder;->getForcedPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Lorg/eclipse/jetty/util/MultiException;->add(Ljava/lang/Throwable;)V

    .line 776
    .end local v1    # "forced_holder":Lorg/eclipse/jetty/servlet/ServletHolder;
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 788
    .restart local v1    # "forced_holder":Lorg/eclipse/jetty/servlet/ServletHolder;
    :cond_2
    aget-object v5, v4, v2

    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletHolder;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/servlet/ServletHolder;->setClassName(Ljava/lang/String;)V

    .line 791
    .end local v1    # "forced_holder":Lorg/eclipse/jetty/servlet/ServletHolder;
    :cond_3
    aget-object v5, v4, v2

    invoke-virtual {v5}, Lorg/eclipse/jetty/servlet/ServletHolder;->start()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 793
    :catch_0
    move-exception v0

    .line 795
    .local v0, "e":Ljava/lang/Throwable;
    sget-object v5, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v6, "EXCEPTION "

    invoke-interface {v5, v6, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 796
    invoke-virtual {v3, v0}, Lorg/eclipse/jetty/util/MultiException;->add(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 799
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_4
    invoke-virtual {v3}, Lorg/eclipse/jetty/util/MultiException;->ifExceptionThrow()V

    .line 801
    .end local v2    # "i":I
    .end local v4    # "servlets":[Lorg/eclipse/jetty/servlet/ServletHolder;
    :cond_5
    return-void
.end method

.method protected insertFilterMapping(Lorg/eclipse/jetty/servlet/FilterMapping;IZ)[Lorg/eclipse/jetty/servlet/FilterMapping;
    .locals 6
    .param p1, "mapping"    # Lorg/eclipse/jetty/servlet/FilterMapping;
    .param p2, "pos"    # I
    .param p3, "before"    # Z

    .prologue
    const/4 v3, 0x0

    .line 1209
    if-gez p2, :cond_0

    .line 1210
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "FilterMapping insertion pos < 0"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1211
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilterMappings()[Lorg/eclipse/jetty/servlet/FilterMapping;

    move-result-object v0

    .line 1213
    .local v0, "mappings":[Lorg/eclipse/jetty/servlet/FilterMapping;
    if-eqz v0, :cond_1

    array-length v2, v0

    if-nez v2, :cond_3

    .line 1215
    :cond_1
    const/4 v2, 0x1

    new-array v1, v2, [Lorg/eclipse/jetty/servlet/FilterMapping;

    aput-object p1, v1, v3

    .line 1243
    :cond_2
    :goto_0
    return-object v1

    .line 1217
    :cond_3
    array-length v2, v0

    add-int/lit8 v2, v2, 0x1

    new-array v1, v2, [Lorg/eclipse/jetty/servlet/FilterMapping;

    .line 1220
    .local v1, "new_mappings":[Lorg/eclipse/jetty/servlet/FilterMapping;
    if-eqz p3, :cond_4

    .line 1223
    invoke-static {v0, v3, v1, v3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1226
    aput-object p1, v1, p2

    .line 1229
    add-int/lit8 v2, p2, 0x1

    array-length v3, v0

    sub-int/2addr v3, p2

    invoke-static {v0, p2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    .line 1235
    :cond_4
    add-int/lit8 v2, p2, 0x1

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1237
    add-int/lit8 v2, p2, 0x1

    aput-object p1, v1, v2

    .line 1240
    array-length v2, v0

    add-int/lit8 v3, p2, 0x1

    if-le v2, v3, :cond_2

    .line 1241
    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v3, p2, 0x2

    array-length v4, v0

    add-int/lit8 v5, p2, 0x1

    sub-int/2addr v4, v5

    invoke-static {v0, v2, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method protected invalidateChainsCache()V
    .locals 6

    .prologue
    const/16 v5, 0x10

    const/16 v4, 0x8

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 701
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainLRU:[Ljava/util/Queue;

    aget-object v0, v0, v1

    if-eqz v0, :cond_0

    .line 703
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainLRU:[Ljava/util/Queue;

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 704
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainLRU:[Ljava/util/Queue;

    aget-object v0, v0, v2

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 705
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainLRU:[Ljava/util/Queue;

    aget-object v0, v0, v3

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 706
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainLRU:[Ljava/util/Queue;

    aget-object v0, v0, v4

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 707
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainLRU:[Ljava/util/Queue;

    aget-object v0, v0, v5

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    .line 709
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    aget-object v0, v0, v1

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 710
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    aget-object v0, v0, v2

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 711
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    aget-object v0, v0, v3

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 712
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    aget-object v0, v0, v4

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 713
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    aget-object v0, v0, v5

    invoke-interface {v0}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 715
    :cond_0
    return-void
.end method

.method public isAvailable()Z
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 723
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->isStarted()Z

    move-result v4

    if-nez v4, :cond_1

    .line 732
    :cond_0
    :goto_0
    return v3

    .line 725
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServlets()[Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v1

    .line 726
    .local v1, "holders":[Lorg/eclipse/jetty/servlet/ServletHolder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v4, v1

    if-ge v2, v4, :cond_3

    .line 728
    aget-object v0, v1, v2

    .line 729
    .local v0, "holder":Lorg/eclipse/jetty/servlet/ServletHolder;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->isAvailable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 726
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 732
    .end local v0    # "holder":Lorg/eclipse/jetty/servlet/ServletHolder;
    :cond_3
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public isFilterChainsCached()Z
    .locals 1

    .prologue
    .line 809
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterChainsCached:Z

    return v0
.end method

.method public isStartWithUnavailable()Z
    .locals 1

    .prologue
    .line 750
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_startWithUnavailable:Z

    return v0
.end method

.method public newFilterHolder(Lorg/eclipse/jetty/servlet/Holder$Source;)Lorg/eclipse/jetty/servlet/FilterHolder;
    .locals 1
    .param p1, "source"    # Lorg/eclipse/jetty/servlet/Holder$Source;

    .prologue
    .line 916
    new-instance v0, Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-direct {v0, p1}, Lorg/eclipse/jetty/servlet/FilterHolder;-><init>(Lorg/eclipse/jetty/servlet/Holder$Source;)V

    return-object v0
.end method

.method public newServletHolder(Lorg/eclipse/jetty/servlet/Holder$Source;)Lorg/eclipse/jetty/servlet/ServletHolder;
    .locals 1
    .param p1, "source"    # Lorg/eclipse/jetty/servlet/Holder$Source;

    .prologue
    .line 818
    new-instance v0, Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-direct {v0, p1}, Lorg/eclipse/jetty/servlet/ServletHolder;-><init>(Lorg/eclipse/jetty/servlet/Holder$Source;)V

    return-object v0
.end method

.method protected notFound(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 3
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1370
    sget-object v0, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1371
    sget-object v0, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not Found "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1373
    :cond_0
    return-void
.end method

.method public prependFilterMapping(Lorg/eclipse/jetty/servlet/FilterMapping;)V
    .locals 6
    .param p1, "mapping"    # Lorg/eclipse/jetty/servlet/FilterMapping;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1151
    if-eqz p1, :cond_1

    .line 1153
    invoke-virtual {p1}, Lorg/eclipse/jetty/servlet/FilterMapping;->getFilterHolder()Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jetty/servlet/FilterHolder;->getSource()Lorg/eclipse/jetty/servlet/Holder$Source;

    move-result-object v2

    .line 1155
    .local v2, "source":Lorg/eclipse/jetty/servlet/Holder$Source;
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilterMappings()[Lorg/eclipse/jetty/servlet/FilterMapping;

    move-result-object v0

    .line 1156
    .local v0, "mappings":[Lorg/eclipse/jetty/servlet/FilterMapping;
    if-eqz v0, :cond_0

    array-length v3, v0

    if-nez v3, :cond_2

    .line 1158
    :cond_0
    invoke-virtual {p0, p1, v4, v4}, Lorg/eclipse/jetty/servlet/ServletHandler;->insertFilterMapping(Lorg/eclipse/jetty/servlet/FilterMapping;IZ)[Lorg/eclipse/jetty/servlet/FilterMapping;

    move-result-object v3

    invoke-virtual {p0, v3}, Lorg/eclipse/jetty/servlet/ServletHandler;->setFilterMappings([Lorg/eclipse/jetty/servlet/FilterMapping;)V

    .line 1159
    if-eqz v2, :cond_1

    sget-object v3, Lorg/eclipse/jetty/servlet/Holder$Source;->JAVAX_API:Lorg/eclipse/jetty/servlet/Holder$Source;

    if-ne v3, v2, :cond_1

    .line 1160
    iput v4, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_matchBeforeIndex:I

    .line 1196
    .end local v0    # "mappings":[Lorg/eclipse/jetty/servlet/FilterMapping;
    .end local v2    # "source":Lorg/eclipse/jetty/servlet/Holder$Source;
    :cond_1
    :goto_0
    return-void

    .line 1164
    .restart local v0    # "mappings":[Lorg/eclipse/jetty/servlet/FilterMapping;
    .restart local v2    # "source":Lorg/eclipse/jetty/servlet/Holder$Source;
    :cond_2
    if-eqz v2, :cond_4

    sget-object v3, Lorg/eclipse/jetty/servlet/Holder$Source;->JAVAX_API:Lorg/eclipse/jetty/servlet/Holder$Source;

    if-ne v3, v2, :cond_4

    .line 1170
    iget v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_matchBeforeIndex:I

    if-gez v3, :cond_3

    .line 1173
    iput v4, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_matchBeforeIndex:I

    .line 1174
    invoke-virtual {p0, p1, v4, v5}, Lorg/eclipse/jetty/servlet/ServletHandler;->insertFilterMapping(Lorg/eclipse/jetty/servlet/FilterMapping;IZ)[Lorg/eclipse/jetty/servlet/FilterMapping;

    move-result-object v1

    .line 1175
    .local v1, "new_mappings":[Lorg/eclipse/jetty/servlet/FilterMapping;
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->setFilterMappings([Lorg/eclipse/jetty/servlet/FilterMapping;)V

    .line 1192
    :goto_1
    iget v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_matchAfterIndex:I

    if-ltz v3, :cond_1

    .line 1193
    iget v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_matchAfterIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_matchAfterIndex:I

    goto :goto_0

    .line 1179
    .end local v1    # "new_mappings":[Lorg/eclipse/jetty/servlet/FilterMapping;
    :cond_3
    iget v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_matchBeforeIndex:I

    invoke-virtual {p0, p1, v3, v4}, Lorg/eclipse/jetty/servlet/ServletHandler;->insertFilterMapping(Lorg/eclipse/jetty/servlet/FilterMapping;IZ)[Lorg/eclipse/jetty/servlet/FilterMapping;

    move-result-object v1

    .line 1180
    .restart local v1    # "new_mappings":[Lorg/eclipse/jetty/servlet/FilterMapping;
    iget v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_matchBeforeIndex:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_matchBeforeIndex:I

    .line 1181
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->setFilterMappings([Lorg/eclipse/jetty/servlet/FilterMapping;)V

    goto :goto_1

    .line 1187
    .end local v1    # "new_mappings":[Lorg/eclipse/jetty/servlet/FilterMapping;
    :cond_4
    invoke-virtual {p0, p1, v4, v5}, Lorg/eclipse/jetty/servlet/ServletHandler;->insertFilterMapping(Lorg/eclipse/jetty/servlet/FilterMapping;IZ)[Lorg/eclipse/jetty/servlet/FilterMapping;

    move-result-object v1

    .line 1188
    .restart local v1    # "new_mappings":[Lorg/eclipse/jetty/servlet/FilterMapping;
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->setFilterMappings([Lorg/eclipse/jetty/servlet/FilterMapping;)V

    goto :goto_1
.end method

.method public setFilterChainsCached(Z)V
    .locals 0
    .param p1, "filterChainsCached"    # Z

    .prologue
    .line 1381
    iput-boolean p1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterChainsCached:Z

    .line 1382
    return-void
.end method

.method public setFilterMappings([Lorg/eclipse/jetty/servlet/FilterMapping;)V
    .locals 6
    .param p1, "filterMappings"    # [Lorg/eclipse/jetty/servlet/FilterMapping;

    .prologue
    .line 1390
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1391
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    const-string v4, "filterMapping"

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1392
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    .line 1393
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->updateMappings()V

    .line 1394
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->invalidateChainsCache()V

    .line 1395
    return-void
.end method

.method public declared-synchronized setFilters([Lorg/eclipse/jetty/servlet/FilterHolder;)V
    .locals 6
    .param p1, "holders"    # [Lorg/eclipse/jetty/servlet/FilterHolder;

    .prologue
    .line 1400
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1401
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    const-string v4, "filter"

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1402
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    .line 1403
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->updateNameMappings()V

    .line 1404
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->invalidateChainsCache()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1405
    monitor-exit p0

    return-void

    .line 1400
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMaxFilterChainsCacheSize(I)V
    .locals 0
    .param p1, "maxFilterChainsCacheSize"    # I

    .prologue
    .line 1619
    iput p1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_maxFilterChainsCacheSize:I

    .line 1620
    return-void
.end method

.method public setServer(Lorg/eclipse/jetty/server/Server;)V
    .locals 13
    .param p1, "server"    # Lorg/eclipse/jetty/server/Server;

    .prologue
    const/4 v3, 0x0

    const/4 v5, 0x1

    .line 138
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v12

    .line 139
    .local v12, "old":Lorg/eclipse/jetty/server/Server;
    if-eqz v12, :cond_0

    if-eq v12, p1, :cond_0

    .line 141
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    const-string v4, "filter"

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 142
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    const-string v4, "filterMapping"

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 143
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    const-string v4, "servlet"

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 144
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/eclipse/jetty/servlet/ServletMapping;

    const-string v4, "servletMapping"

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 147
    :cond_0
    invoke-super {p0, p1}, Lorg/eclipse/jetty/server/handler/ScopedHandler;->setServer(Lorg/eclipse/jetty/server/Server;)V

    .line 149
    if-eqz p1, :cond_1

    if-eq v12, p1, :cond_1

    .line 151
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v6

    iget-object v9, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    const-string v10, "filter"

    move-object v7, p0

    move-object v8, v3

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 152
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v6

    iget-object v9, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    const-string v10, "filterMapping"

    move-object v7, p0

    move-object v8, v3

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 153
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v6

    iget-object v9, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    const-string v10, "servlet"

    move-object v7, p0

    move-object v8, v3

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 154
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v6

    iget-object v9, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/eclipse/jetty/servlet/ServletMapping;

    const-string v10, "servletMapping"

    move-object v7, p0

    move-object v8, v3

    move v11, v5

    invoke-virtual/range {v6 .. v11}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 156
    :cond_1
    return-void
.end method

.method public setServletMappings([Lorg/eclipse/jetty/servlet/ServletMapping;)V
    .locals 6
    .param p1, "servletMappings"    # [Lorg/eclipse/jetty/servlet/ServletMapping;

    .prologue
    .line 1413
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1414
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/eclipse/jetty/servlet/ServletMapping;

    const-string v4, "servletMapping"

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1415
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/eclipse/jetty/servlet/ServletMapping;

    .line 1416
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->updateMappings()V

    .line 1417
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->invalidateChainsCache()V

    .line 1418
    return-void
.end method

.method public setServletSecurity(Ljavax/servlet/ServletRegistration$Dynamic;Ljavax/servlet/ServletSecurityElement;)Ljava/util/Set;
    .locals 1
    .param p1, "registration"    # Ljavax/servlet/ServletRegistration$Dynamic;
    .param p2, "servletSecurityElement"    # Ljavax/servlet/ServletSecurityElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/servlet/ServletRegistration$Dynamic;",
            "Ljavax/servlet/ServletSecurityElement;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 904
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_contextHandler:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    if-eqz v0, :cond_0

    .line 905
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_contextHandler:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->setServletSecurity(Ljavax/servlet/ServletRegistration$Dynamic;Ljavax/servlet/ServletSecurityElement;)Ljava/util/Set;

    move-result-object v0

    .line 907
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0
.end method

.method public declared-synchronized setServlets([Lorg/eclipse/jetty/servlet/ServletHolder;)V
    .locals 6
    .param p1, "holders"    # [Lorg/eclipse/jetty/servlet/ServletHolder;

    .prologue
    .line 1426
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1427
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getContainer()Lorg/eclipse/jetty/util/component/Container;

    move-result-object v0

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    const-string v4, "servlet"

    const/4 v5, 0x1

    move-object v1, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/util/component/Container;->update(Ljava/lang/Object;[Ljava/lang/Object;[Ljava/lang/Object;Ljava/lang/String;Z)V

    .line 1428
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    .line 1429
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->updateNameMappings()V

    .line 1430
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->invalidateChainsCache()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1431
    monitor-exit p0

    return-void

    .line 1426
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setStartWithUnavailable(Z)V
    .locals 0
    .param p1, "start"    # Z

    .prologue
    .line 741
    iput-boolean p1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_startWithUnavailable:Z

    .line 742
    return-void
.end method

.method protected declared-synchronized updateMappings()V
    .locals 12

    .prologue
    .line 1278
    monitor-enter p0

    :try_start_0
    iget-object v9, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    if-nez v9, :cond_2

    .line 1280
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterPathMappings:Ljava/util/List;

    .line 1281
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterNameMappings:Lorg/eclipse/jetty/util/MultiMap;

    .line 1309
    :cond_0
    iget-object v9, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/eclipse/jetty/servlet/ServletMapping;

    if-eqz v9, :cond_1

    iget-object v9, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletNameMap:Ljava/util/Map;

    if-nez v9, :cond_7

    .line 1311
    :cond_1
    const/4 v9, 0x0

    iput-object v9, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletPathMap:Lorg/eclipse/jetty/http/PathMap;

    .line 1336
    :goto_0
    iget-object v9, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    if-eqz v9, :cond_c

    .line 1338
    iget-object v9, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    array-length v2, v9

    .local v2, "i":I
    move v3, v2

    .end local v2    # "i":I
    .local v3, "i":I
    :goto_1
    add-int/lit8 v2, v3, -0x1

    .end local v3    # "i":I
    .restart local v2    # "i":I
    if-lez v3, :cond_c

    .line 1340
    iget-object v9, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    aget-object v9, v9, v2

    if-eqz v9, :cond_11

    .line 1341
    iget-object v9, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_chainCache:[Ljava/util/concurrent/ConcurrentMap;

    aget-object v9, v9, v2

    invoke-interface {v9}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto :goto_1

    .line 1285
    .end local v3    # "i":I
    :cond_2
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterPathMappings:Ljava/util/List;

    .line 1286
    new-instance v9, Lorg/eclipse/jetty/util/MultiMap;

    invoke-direct {v9}, Lorg/eclipse/jetty/util/MultiMap;-><init>()V

    iput-object v9, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterNameMappings:Lorg/eclipse/jetty/util/MultiMap;

    .line 1287
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    iget-object v9, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    array-length v9, v9

    if-ge v2, v9, :cond_0

    .line 1289
    iget-object v9, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterNameMap:Ljava/util/Map;

    iget-object v10, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    aget-object v10, v10, v2

    invoke-virtual {v10}, Lorg/eclipse/jetty/servlet/FilterMapping;->getFilterName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/servlet/FilterHolder;

    .line 1290
    .local v1, "filter_holder":Lorg/eclipse/jetty/servlet/FilterHolder;
    if-nez v1, :cond_3

    .line 1291
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No filter named "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    aget-object v11, v11, v2

    invoke-virtual {v11}, Lorg/eclipse/jetty/servlet/FilterMapping;->getFilterName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1278
    .end local v1    # "filter_holder":Lorg/eclipse/jetty/servlet/FilterHolder;
    .end local v2    # "i":I
    :catchall_0
    move-exception v9

    monitor-exit p0

    throw v9

    .line 1292
    .restart local v1    # "filter_holder":Lorg/eclipse/jetty/servlet/FilterHolder;
    .restart local v2    # "i":I
    :cond_3
    :try_start_1
    iget-object v9, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    aget-object v9, v9, v2

    invoke-virtual {v9, v1}, Lorg/eclipse/jetty/servlet/FilterMapping;->setFilterHolder(Lorg/eclipse/jetty/servlet/FilterHolder;)V

    .line 1293
    iget-object v9, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    aget-object v9, v9, v2

    invoke-virtual {v9}, Lorg/eclipse/jetty/servlet/FilterMapping;->getPathSpecs()[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 1294
    iget-object v9, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterPathMappings:Ljava/util/List;

    iget-object v10, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    aget-object v10, v10, v2

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1296
    :cond_4
    iget-object v9, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    aget-object v9, v9, v2

    invoke-virtual {v9}, Lorg/eclipse/jetty/servlet/FilterMapping;->getServletNames()[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_6

    .line 1298
    iget-object v9, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    aget-object v9, v9, v2

    invoke-virtual {v9}, Lorg/eclipse/jetty/servlet/FilterMapping;->getServletNames()[Ljava/lang/String;

    move-result-object v5

    .line 1299
    .local v5, "names":[Ljava/lang/String;
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3
    array-length v9, v5

    if-ge v4, v9, :cond_6

    .line 1301
    aget-object v9, v5, v4

    if-eqz v9, :cond_5

    .line 1302
    iget-object v9, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterNameMappings:Lorg/eclipse/jetty/util/MultiMap;

    aget-object v10, v5, v4

    iget-object v11, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterMappings:[Lorg/eclipse/jetty/servlet/FilterMapping;

    aget-object v11, v11, v2

    invoke-virtual {v9, v10, v11}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1299
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1287
    .end local v4    # "j":I
    .end local v5    # "names":[Ljava/lang/String;
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1315
    .end local v1    # "filter_holder":Lorg/eclipse/jetty/servlet/FilterHolder;
    .end local v2    # "i":I
    :cond_7
    new-instance v7, Lorg/eclipse/jetty/http/PathMap;

    invoke-direct {v7}, Lorg/eclipse/jetty/http/PathMap;-><init>()V

    .line 1318
    .local v7, "pm":Lorg/eclipse/jetty/http/PathMap;
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    iget-object v9, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/eclipse/jetty/servlet/ServletMapping;

    array-length v9, v9

    if-ge v2, v9, :cond_b

    .line 1320
    iget-object v9, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletNameMap:Ljava/util/Map;

    iget-object v10, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/eclipse/jetty/servlet/ServletMapping;

    aget-object v10, v10, v2

    invoke-virtual {v10}, Lorg/eclipse/jetty/servlet/ServletMapping;->getServletName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/eclipse/jetty/servlet/ServletHolder;

    .line 1321
    .local v8, "servlet_holder":Lorg/eclipse/jetty/servlet/ServletHolder;
    if-nez v8, :cond_8

    .line 1322
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No such servlet: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/eclipse/jetty/servlet/ServletMapping;

    aget-object v11, v11, v2

    invoke-virtual {v11}, Lorg/eclipse/jetty/servlet/ServletMapping;->getServletName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1323
    :cond_8
    invoke-virtual {v8}, Lorg/eclipse/jetty/servlet/ServletHolder;->isEnabled()Z

    move-result v9

    if-eqz v9, :cond_a

    iget-object v9, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/eclipse/jetty/servlet/ServletMapping;

    aget-object v9, v9, v2

    invoke-virtual {v9}, Lorg/eclipse/jetty/servlet/ServletMapping;->getPathSpecs()[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_a

    .line 1325
    iget-object v9, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletMappings:[Lorg/eclipse/jetty/servlet/ServletMapping;

    aget-object v9, v9, v2

    invoke-virtual {v9}, Lorg/eclipse/jetty/servlet/ServletMapping;->getPathSpecs()[Ljava/lang/String;

    move-result-object v6

    .line 1326
    .local v6, "pathSpecs":[Ljava/lang/String;
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_5
    array-length v9, v6

    if-ge v4, v9, :cond_a

    .line 1327
    aget-object v9, v6, v4

    if-eqz v9, :cond_9

    .line 1328
    aget-object v9, v6, v4

    invoke-virtual {v7, v9, v8}, Lorg/eclipse/jetty/http/PathMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1326
    :cond_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 1318
    .end local v4    # "j":I
    .end local v6    # "pathSpecs":[Ljava/lang/String;
    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1332
    .end local v8    # "servlet_holder":Lorg/eclipse/jetty/servlet/ServletHolder;
    :cond_b
    iput-object v7, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletPathMap:Lorg/eclipse/jetty/http/PathMap;

    goto/16 :goto_0

    .line 1345
    .end local v2    # "i":I
    .end local v7    # "pm":Lorg/eclipse/jetty/http/PathMap;
    :cond_c
    sget-object v9, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v9}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_d

    .line 1347
    sget-object v9, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "filterNameMap="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterNameMap:Ljava/util/Map;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-interface {v9, v10, v11}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1348
    sget-object v9, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "pathFilters="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterPathMappings:Ljava/util/List;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-interface {v9, v10, v11}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1349
    sget-object v9, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "servletFilterMap="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterNameMappings:Lorg/eclipse/jetty/util/MultiMap;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-interface {v9, v10, v11}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1350
    sget-object v9, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "servletPathMap="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletPathMap:Lorg/eclipse/jetty/http/PathMap;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-interface {v9, v10, v11}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1351
    sget-object v9, Lorg/eclipse/jetty/servlet/ServletHandler;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "servletNameMap="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletNameMap:Ljava/util/Map;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-interface {v9, v10, v11}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1356
    :cond_d
    :try_start_2
    iget-object v9, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_contextHandler:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    if-eqz v9, :cond_e

    iget-object v9, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_contextHandler:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    invoke-virtual {v9}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->isStarted()Z

    move-result v9

    if-nez v9, :cond_f

    :cond_e
    iget-object v9, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_contextHandler:Lorg/eclipse/jetty/servlet/ServletContextHandler;

    if-nez v9, :cond_10

    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->isStarted()Z

    move-result v9

    if-eqz v9, :cond_10

    .line 1357
    :cond_f
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHandler;->initialize()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1363
    :cond_10
    monitor-exit p0

    return-void

    .line 1359
    :catch_0
    move-exception v0

    .line 1361
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    new-instance v9, Ljava/lang/RuntimeException;

    invoke-direct {v9, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "i":I
    :cond_11
    move v3, v2

    .end local v2    # "i":I
    .restart local v3    # "i":I
    goto/16 :goto_1
.end method

.method protected declared-synchronized updateNameMappings()V
    .locals 4

    .prologue
    .line 1251
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterNameMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1252
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    if-eqz v1, :cond_0

    .line 1254
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1256
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filterNameMap:Ljava/util/Map;

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/eclipse/jetty/servlet/FilterHolder;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    aget-object v3, v3, v0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1257
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_filters:[Lorg/eclipse/jetty/servlet/FilterHolder;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Lorg/eclipse/jetty/servlet/FilterHolder;->setServletHandler(Lorg/eclipse/jetty/servlet/ServletHandler;)V

    .line 1254
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1262
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletNameMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1263
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    if-eqz v1, :cond_1

    .line 1266
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1268
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servletNameMap:Ljava/util/Map;

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lorg/eclipse/jetty/servlet/ServletHolder;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    aget-object v3, v3, v0

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1269
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHandler;->_servlets:[Lorg/eclipse/jetty/servlet/ServletHolder;

    aget-object v1, v1, v0

    invoke-virtual {v1, p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->setServletHandler(Lorg/eclipse/jetty/servlet/ServletHandler;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1266
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1272
    .end local v0    # "i":I
    :cond_1
    monitor-exit p0

    return-void

    .line 1251
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
