.class public Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;
.super Lorg/eclipse/jetty/webapp/IterativeDescriptorProcessor;
.source "StandardDescriptorProcessor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor$1;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field public static final STANDARD_PROCESSOR:Ljava/lang/String; = "org.eclipse.jetty.standardDescriptorProcessor"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const-class v0, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    .line 82
    invoke-direct {p0}, Lorg/eclipse/jetty/webapp/IterativeDescriptorProcessor;-><init>()V

    .line 86
    :try_start_0
    const-string v1, "context-param"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "visitContextParam"

    sget-object v4, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->__signature:[Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->registerVisitor(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 87
    const-string v1, "display-name"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "visitDisplayName"

    sget-object v4, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->__signature:[Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->registerVisitor(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 88
    const-string v1, "servlet"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "visitServlet"

    sget-object v4, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->__signature:[Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->registerVisitor(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 89
    const-string v1, "servlet-mapping"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "visitServletMapping"

    sget-object v4, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->__signature:[Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->registerVisitor(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 90
    const-string v1, "session-config"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "visitSessionConfig"

    sget-object v4, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->__signature:[Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->registerVisitor(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 91
    const-string v1, "mime-mapping"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "visitMimeMapping"

    sget-object v4, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->__signature:[Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->registerVisitor(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 92
    const-string v1, "welcome-file-list"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "visitWelcomeFileList"

    sget-object v4, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->__signature:[Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->registerVisitor(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 93
    const-string v1, "locale-encoding-mapping-list"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "visitLocaleEncodingList"

    sget-object v4, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->__signature:[Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->registerVisitor(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 94
    const-string v1, "error-page"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "visitErrorPage"

    sget-object v4, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->__signature:[Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->registerVisitor(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 95
    const-string v1, "taglib"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "visitTagLib"

    sget-object v4, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->__signature:[Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->registerVisitor(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 96
    const-string v1, "jsp-config"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "visitJspConfig"

    sget-object v4, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->__signature:[Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->registerVisitor(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 97
    const-string v1, "security-constraint"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "visitSecurityConstraint"

    sget-object v4, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->__signature:[Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->registerVisitor(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 98
    const-string v1, "login-config"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "visitLoginConfig"

    sget-object v4, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->__signature:[Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->registerVisitor(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 99
    const-string v1, "security-role"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "visitSecurityRole"

    sget-object v4, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->__signature:[Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->registerVisitor(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 100
    const-string v1, "filter"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "visitFilter"

    sget-object v4, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->__signature:[Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->registerVisitor(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 101
    const-string v1, "filter-mapping"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "visitFilterMapping"

    sget-object v4, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->__signature:[Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->registerVisitor(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 102
    const-string v1, "listener"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "visitListener"

    sget-object v4, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->__signature:[Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->registerVisitor(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 103
    const-string v1, "distributable"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v3, "visitDistributable"

    sget-object v4, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->__signature:[Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->registerVisitor(Ljava/lang/String;Ljava/lang/reflect/Method;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    return-void

    .line 105
    :catch_0
    move-exception v0

    .line 107
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method protected addFilterMapping(Ljava/lang/String;Lorg/eclipse/jetty/xml/XmlParser$Node;Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/webapp/Descriptor;)V
    .locals 11
    .param p1, "filterName"    # Ljava/lang/String;
    .param p2, "node"    # Lorg/eclipse/jetty/xml/XmlParser$Node;
    .param p3, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .param p4, "descriptor"    # Lorg/eclipse/jetty/webapp/Descriptor;

    .prologue
    .line 1239
    new-instance v3, Lorg/eclipse/jetty/servlet/FilterMapping;

    invoke-direct {v3}, Lorg/eclipse/jetty/servlet/FilterMapping;-><init>()V

    .line 1240
    .local v3, "mapping":Lorg/eclipse/jetty/servlet/FilterMapping;
    invoke-virtual {v3, p1}, Lorg/eclipse/jetty/servlet/FilterMapping;->setFilterName(Ljava/lang/String;)V

    .line 1242
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 1243
    .local v7, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v8, "url-pattern"

    invoke-virtual {p2, v8}, Lorg/eclipse/jetty/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v2

    .line 1244
    .local v2, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/xml/XmlParser$Node;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1246
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/eclipse/jetty/xml/XmlParser$Node;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lorg/eclipse/jetty/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v6

    .line 1247
    .local v6, "p":Ljava/lang/String;
    invoke-virtual {p0, v6}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->normalizePattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 1248
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1249
    invoke-virtual {p3}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ".filter.mapping."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9, p4}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto :goto_0

    .line 1251
    .end local v6    # "p":Ljava/lang/String;
    :cond_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    check-cast v8, [Ljava/lang/String;

    invoke-virtual {v3, v8}, Lorg/eclipse/jetty/servlet/FilterMapping;->setPathSpecs([Ljava/lang/String;)V

    .line 1253
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1254
    .local v5, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v8, "servlet-name"

    invoke-virtual {p2, v8}, Lorg/eclipse/jetty/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v2

    .line 1255
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1257
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/eclipse/jetty/xml/XmlParser$Node;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lorg/eclipse/jetty/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v4

    .line 1258
    .local v4, "n":Ljava/lang/String;
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1260
    .end local v4    # "n":Ljava/lang/String;
    :cond_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    new-array v8, v8, [Ljava/lang/String;

    invoke-interface {v5, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/String;

    check-cast v8, [Ljava/lang/String;

    invoke-virtual {v3, v8}, Lorg/eclipse/jetty/servlet/FilterMapping;->setServletNames([Ljava/lang/String;)V

    .line 1263
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1264
    .local v1, "dispatches":Ljava/util/List;, "Ljava/util/List<Ljavax/servlet/DispatcherType;>;"
    const-string v8, "dispatcher"

    invoke-virtual {p2, v8}, Lorg/eclipse/jetty/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v2

    .line 1265
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1267
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/eclipse/jetty/xml/XmlParser$Node;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lorg/eclipse/jetty/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v0

    .line 1268
    .local v0, "d":Ljava/lang/String;
    invoke-static {v0}, Lorg/eclipse/jetty/servlet/FilterMapping;->dispatch(Ljava/lang/String;)Ljavax/servlet/DispatcherType;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1271
    .end local v0    # "d":Ljava/lang/String;
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    if-lez v8, :cond_3

    .line 1272
    invoke-static {v1}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v8

    invoke-virtual {v3, v8}, Lorg/eclipse/jetty/servlet/FilterMapping;->setDispatcherTypes(Ljava/util/EnumSet;)V

    .line 1274
    :cond_3
    invoke-virtual {p3}, Lorg/eclipse/jetty/webapp/WebAppContext;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v8

    invoke-virtual {v8, v3}, Lorg/eclipse/jetty/servlet/ServletHandler;->addFilterMapping(Lorg/eclipse/jetty/servlet/FilterMapping;)V

    .line 1275
    return-void
.end method

.method protected addServletMapping(Ljava/lang/String;Lorg/eclipse/jetty/xml/XmlParser$Node;Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/webapp/Descriptor;)Lorg/eclipse/jetty/servlet/ServletMapping;
    .locals 7
    .param p1, "servletName"    # Ljava/lang/String;
    .param p2, "node"    # Lorg/eclipse/jetty/xml/XmlParser$Node;
    .param p3, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .param p4, "descriptor"    # Lorg/eclipse/jetty/webapp/Descriptor;

    .prologue
    .line 1215
    new-instance v1, Lorg/eclipse/jetty/servlet/ServletMapping;

    invoke-direct {v1}, Lorg/eclipse/jetty/servlet/ServletMapping;-><init>()V

    .line 1216
    .local v1, "mapping":Lorg/eclipse/jetty/servlet/ServletMapping;
    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/servlet/ServletMapping;->setServletName(Ljava/lang/String;)V

    .line 1218
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1219
    .local v3, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v4, "url-pattern"

    invoke-virtual {p2, v4}, Lorg/eclipse/jetty/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v0

    .line 1220
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/xml/XmlParser$Node;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1222
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jetty/xml/XmlParser$Node;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lorg/eclipse/jetty/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v2

    .line 1223
    .local v2, "p":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->normalizePattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1224
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1225
    invoke-virtual {p3}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".servlet.mapping."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, p4}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto :goto_0

    .line 1227
    .end local v2    # "p":Ljava/lang/String;
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/String;

    check-cast v4, [Ljava/lang/String;

    invoke-virtual {v1, v4}, Lorg/eclipse/jetty/servlet/ServletMapping;->setPathSpecs([Ljava/lang/String;)V

    .line 1228
    invoke-virtual {p3}, Lorg/eclipse/jetty/webapp/WebAppContext;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->addServletMapping(Lorg/eclipse/jetty/servlet/ServletMapping;)V

    .line 1229
    return-object v1
.end method

.method protected addWelcomeFiles(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/xml/XmlParser$Node;)V
    .locals 5
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .param p2, "node"    # Lorg/eclipse/jetty/xml/XmlParser$Node;

    .prologue
    .line 1195
    const-string v3, "welcome-file"

    invoke-virtual {p2, v3}, Lorg/eclipse/jetty/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v1

    .line 1196
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/xml/XmlParser$Node;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1198
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/xml/XmlParser$Node;

    .line 1199
    .local v0, "indexNode":Lorg/eclipse/jetty/xml/XmlParser$Node;
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lorg/eclipse/jetty/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v2

    .line 1202
    .local v2, "welcome":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 1203
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getWelcomeFiles()[Ljava/lang/String;

    move-result-object v3

    const-class v4, Ljava/lang/String;

    invoke-static {v3, v2, v4}, Lorg/eclipse/jetty/util/LazyList;->addToArray([Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {p1, v3}, Lorg/eclipse/jetty/webapp/WebAppContext;->setWelcomeFiles([Ljava/lang/String;)V

    goto :goto_0

    .line 1205
    .end local v0    # "indexNode":Lorg/eclipse/jetty/xml/XmlParser$Node;
    .end local v2    # "welcome":Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public end(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/webapp/Descriptor;)V
    .locals 0
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .param p2, "descriptor"    # Lorg/eclipse/jetty/webapp/Descriptor;

    .prologue
    .line 127
    return-void
.end method

.method protected newListenerInstance(Lorg/eclipse/jetty/webapp/WebAppContext;Ljava/lang/Class;)Ljava/util/EventListener;
    .locals 3
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jetty/webapp/WebAppContext;",
            "Ljava/lang/Class",
            "<+",
            "Ljava/util/EventListener;",
            ">;)",
            "Ljava/util/EventListener;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 1937
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/EventListener;>;"
    :try_start_0
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getServletContext()Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-result-object v2

    invoke-virtual {v2, p2}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->createListener(Ljava/lang/Class;)Ljava/util/EventListener;
    :try_end_0
    .catch Ljavax/servlet/ServletException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 1939
    :catch_0
    move-exception v1

    .line 1941
    .local v1, "se":Ljavax/servlet/ServletException;
    invoke-virtual {v1}, Ljavax/servlet/ServletException;->getRootCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 1942
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v2, v0, Ljava/lang/InstantiationException;

    if-eqz v2, :cond_0

    .line 1943
    check-cast v0, Ljava/lang/InstantiationException;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 1944
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_0
    instance-of v2, v0, Ljava/lang/IllegalAccessException;

    if-eqz v2, :cond_1

    .line 1945
    check-cast v0, Ljava/lang/IllegalAccessException;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 1946
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_1
    throw v1
.end method

.method protected normalizePattern(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "p"    # Ljava/lang/String;

    .prologue
    .line 1956
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "*"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1957
    .end local p1    # "p":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method public start(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/webapp/Descriptor;)V
    .locals 0
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .param p2, "descriptor"    # Lorg/eclipse/jetty/webapp/Descriptor;

    .prologue
    .line 118
    return-void
.end method

.method public visitContextParam(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/webapp/Descriptor;Lorg/eclipse/jetty/xml/XmlParser$Node;)V
    .locals 7
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .param p2, "descriptor"    # Lorg/eclipse/jetty/webapp/Descriptor;
    .param p3, "node"    # Lorg/eclipse/jetty/xml/XmlParser$Node;

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 136
    const-string v3, "param-name"

    invoke-virtual {p3, v3, v6, v4}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 137
    .local v0, "name":Ljava/lang/String;
    const-string v3, "param-value"

    invoke-virtual {p3, v3, v6, v4}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    .line 138
    .local v2, "value":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "context-param."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/eclipse/jetty/webapp/MetaData;->getOrigin(Ljava/lang/String;)Lorg/eclipse/jetty/webapp/Origin;

    move-result-object v1

    .line 139
    .local v1, "o":Lorg/eclipse/jetty/webapp/Origin;
    sget-object v3, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor$1;->$SwitchMap$org$eclipse$jetty$webapp$Origin:[I

    invoke-virtual {v1}, Lorg/eclipse/jetty/webapp/Origin;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 171
    :cond_0
    :goto_0
    sget-object v3, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 172
    sget-object v3, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ContextParam: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v6, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    :cond_1
    return-void

    .line 144
    :pswitch_0
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getInitParams()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "context-param."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto :goto_0

    .line 153
    :pswitch_1
    instance-of v3, p2, Lorg/eclipse/jetty/webapp/FragmentDescriptor;

    if-nez v3, :cond_0

    .line 155
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getInitParams()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "context-param."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto :goto_0

    .line 163
    :pswitch_2
    instance-of v3, p2, Lorg/eclipse/jetty/webapp/FragmentDescriptor;

    if-eqz v3, :cond_0

    .line 165
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getInitParams()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 166
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Conflicting context-param "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lorg/eclipse/jetty/webapp/Descriptor;->getResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 139
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected visitDisplayName(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/webapp/Descriptor;Lorg/eclipse/jetty/xml/XmlParser$Node;)V
    .locals 2
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .param p2, "descriptor"    # Lorg/eclipse/jetty/webapp/Descriptor;
    .param p3, "node"    # Lorg/eclipse/jetty/xml/XmlParser$Node;

    .prologue
    .line 186
    instance-of v0, p2, Lorg/eclipse/jetty/webapp/FragmentDescriptor;

    if-nez v0, :cond_0

    .line 188
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p3, v0, v1}, Lorg/eclipse/jetty/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/webapp/WebAppContext;->setDisplayName(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v0

    const-string v1, "display-name"

    invoke-virtual {v0, v1, p2}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    .line 191
    :cond_0
    return-void
.end method

.method protected visitDistributable(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/webapp/Descriptor;Lorg/eclipse/jetty/xml/XmlParser$Node;)V
    .locals 1
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .param p2, "descriptor"    # Lorg/eclipse/jetty/webapp/Descriptor;
    .param p3, "node"    # Lorg/eclipse/jetty/xml/XmlParser$Node;

    .prologue
    .line 1922
    check-cast p2, Lorg/eclipse/jetty/webapp/WebDescriptor;

    .end local p2    # "descriptor":Lorg/eclipse/jetty/webapp/Descriptor;
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lorg/eclipse/jetty/webapp/WebDescriptor;->setDistributable(Z)V

    .line 1923
    return-void
.end method

.method protected visitErrorPage(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/webapp/Descriptor;Lorg/eclipse/jetty/xml/XmlParser$Node;)V
    .locals 8
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .param p2, "descriptor"    # Lorg/eclipse/jetty/webapp/Descriptor;
    .param p3, "node"    # Lorg/eclipse/jetty/xml/XmlParser$Node;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1131
    const-string v5, "error-code"

    invoke-virtual {p3, v5, v6, v7}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 1132
    .local v1, "error":Ljava/lang/String;
    const/4 v0, 0x0

    .line 1133
    .local v0, "code":I
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_4

    .line 1135
    :cond_0
    const-string v5, "exception-type"

    invoke-virtual {p3, v5, v6, v7}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 1136
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    .line 1137
    :cond_1
    const-string v1, "org.eclipse.jetty.server.error_page.global"

    .line 1142
    :cond_2
    :goto_0
    const-string v5, "location"

    invoke-virtual {p3, v5, v6, v7}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    .line 1143
    .local v3, "location":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getErrorHandler()Lorg/eclipse/jetty/server/handler/ErrorHandler;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;

    .line 1144
    .local v2, "handler":Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/webapp/MetaData;->getOrigin(Ljava/lang/String;)Lorg/eclipse/jetty/webapp/Origin;

    move-result-object v4

    .line 1146
    .local v4, "o":Lorg/eclipse/jetty/webapp/Origin;
    sget-object v5, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor$1;->$SwitchMap$org$eclipse$jetty$webapp$Origin:[I

    invoke-virtual {v4}, Lorg/eclipse/jetty/webapp/Origin;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 1187
    :cond_3
    :goto_1
    return-void

    .line 1140
    .end local v2    # "handler":Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;
    .end local v3    # "location":Ljava/lang/String;
    .end local v4    # "o":Lorg/eclipse/jetty/webapp/Origin;
    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 1151
    .restart local v2    # "handler":Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;
    .restart local v3    # "location":Ljava/lang/String;
    .restart local v4    # "o":Lorg/eclipse/jetty/webapp/Origin;
    :pswitch_0
    if-lez v0, :cond_5

    .line 1152
    invoke-virtual {v2, v0, v3}, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->addErrorPage(ILjava/lang/String;)V

    .line 1155
    :goto_2
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, p2}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto :goto_1

    .line 1154
    :cond_5
    invoke-virtual {v2, v1, v3}, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->addErrorPage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 1163
    :pswitch_1
    instance-of v5, p2, Lorg/eclipse/jetty/webapp/FragmentDescriptor;

    if-nez v5, :cond_3

    .line 1165
    instance-of v5, p2, Lorg/eclipse/jetty/webapp/OverrideDescriptor;

    if-nez v5, :cond_6

    instance-of v5, p2, Lorg/eclipse/jetty/webapp/DefaultsDescriptor;

    if-eqz v5, :cond_8

    .line 1167
    :cond_6
    if-lez v0, :cond_7

    .line 1168
    invoke-virtual {v2, v0, v3}, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->addErrorPage(ILjava/lang/String;)V

    .line 1171
    :goto_3
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, p2}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto :goto_1

    .line 1170
    :cond_7
    invoke-virtual {v2, v1, v3}, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->addErrorPage(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 1174
    :cond_8
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Duplicate global error-page "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1181
    :pswitch_2
    invoke-virtual {v2}, Lorg/eclipse/jetty/servlet/ErrorPageErrorHandler;->getErrorPages()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1182
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Conflicting error-code or exception-type "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lorg/eclipse/jetty/webapp/Descriptor;->getResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1146
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected visitFilter(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/webapp/Descriptor;Lorg/eclipse/jetty/xml/XmlParser$Node;)V
    .locals 15
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .param p2, "descriptor"    # Lorg/eclipse/jetty/webapp/Descriptor;
    .param p3, "node"    # Lorg/eclipse/jetty/xml/XmlParser$Node;

    .prologue
    .line 1692
    const-string v12, "filter-name"

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13, v14}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v5

    .line 1693
    .local v5, "name":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v12

    invoke-virtual {v12, v5}, Lorg/eclipse/jetty/servlet/ServletHandler;->getFilter(Ljava/lang/String;)Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v3

    .line 1694
    .local v3, "holder":Lorg/eclipse/jetty/servlet/FilterHolder;
    if-nez v3, :cond_0

    .line 1696
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v12

    sget-object v13, Lorg/eclipse/jetty/servlet/Holder$Source;->DESCRIPTOR:Lorg/eclipse/jetty/servlet/Holder$Source;

    invoke-virtual {v12, v13}, Lorg/eclipse/jetty/servlet/ServletHandler;->newFilterHolder(Lorg/eclipse/jetty/servlet/Holder$Source;)Lorg/eclipse/jetty/servlet/FilterHolder;

    move-result-object v3

    .line 1697
    invoke-virtual {v3, v5}, Lorg/eclipse/jetty/servlet/FilterHolder;->setName(Ljava/lang/String;)V

    .line 1698
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v12

    invoke-virtual {v12, v3}, Lorg/eclipse/jetty/servlet/ServletHandler;->addFilter(Lorg/eclipse/jetty/servlet/FilterHolder;)V

    .line 1701
    :cond_0
    const-string v12, "filter-class"

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13, v14}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    .line 1702
    .local v2, "filter_class":Ljava/lang/String;
    if-eqz v2, :cond_1

    move-object/from16 v12, p2

    .line 1704
    check-cast v12, Lorg/eclipse/jetty/webapp/WebDescriptor;

    invoke-virtual {v12, v2}, Lorg/eclipse/jetty/webapp/WebDescriptor;->addClassName(Ljava/lang/String;)V

    .line 1706
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".filter.filter-class"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/eclipse/jetty/webapp/MetaData;->getOrigin(Ljava/lang/String;)Lorg/eclipse/jetty/webapp/Origin;

    move-result-object v6

    .line 1707
    .local v6, "o":Lorg/eclipse/jetty/webapp/Origin;
    sget-object v12, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor$1;->$SwitchMap$org$eclipse$jetty$webapp$Origin:[I

    invoke-virtual {v6}, Lorg/eclipse/jetty/webapp/Origin;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_0

    .line 1739
    .end local v6    # "o":Lorg/eclipse/jetty/webapp/Origin;
    :cond_1
    :goto_0
    const-string v12, "init-param"

    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Lorg/eclipse/jetty/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v4

    .line 1740
    .local v4, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/xml/XmlParser$Node;>;"
    :cond_2
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 1742
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/eclipse/jetty/xml/XmlParser$Node;

    .line 1743
    .local v8, "paramNode":Lorg/eclipse/jetty/xml/XmlParser$Node;
    const-string v12, "param-name"

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v8, v12, v13, v14}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v9

    .line 1744
    .local v9, "pname":Ljava/lang/String;
    const-string v12, "param-value"

    const/4 v13, 0x0

    const/4 v14, 0x1

    invoke-virtual {v8, v12, v13, v14}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v10

    .line 1746
    .local v10, "pvalue":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".filter.init-param."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/eclipse/jetty/webapp/MetaData;->getOrigin(Ljava/lang/String;)Lorg/eclipse/jetty/webapp/Origin;

    move-result-object v7

    .line 1747
    .local v7, "origin":Lorg/eclipse/jetty/webapp/Origin;
    sget-object v12, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor$1;->$SwitchMap$org$eclipse$jetty$webapp$Origin:[I

    invoke-virtual {v7}, Lorg/eclipse/jetty/webapp/Origin;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_1

    goto :goto_1

    .line 1752
    :pswitch_0
    invoke-virtual {v3, v9, v10}, Lorg/eclipse/jetty/servlet/FilterHolder;->setInitParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1753
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".filter.init-param."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v12, v13, v0}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto :goto_1

    .line 1712
    .end local v4    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/xml/XmlParser$Node;>;"
    .end local v7    # "origin":Lorg/eclipse/jetty/webapp/Origin;
    .end local v8    # "paramNode":Lorg/eclipse/jetty/xml/XmlParser$Node;
    .end local v9    # "pname":Ljava/lang/String;
    .end local v10    # "pvalue":Ljava/lang/String;
    .restart local v6    # "o":Lorg/eclipse/jetty/webapp/Origin;
    :pswitch_1
    invoke-virtual {v3, v2}, Lorg/eclipse/jetty/servlet/FilterHolder;->setClassName(Ljava/lang/String;)V

    .line 1713
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".filter.filter-class"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v12, v13, v0}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto/16 :goto_0

    .line 1721
    :pswitch_2
    move-object/from16 v0, p2

    instance-of v12, v0, Lorg/eclipse/jetty/webapp/FragmentDescriptor;

    if-nez v12, :cond_1

    .line 1723
    invoke-virtual {v3, v2}, Lorg/eclipse/jetty/servlet/FilterHolder;->setClassName(Ljava/lang/String;)V

    .line 1724
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".filter.filter-class"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v12, v13, v0}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto/16 :goto_0

    .line 1731
    :pswitch_3
    invoke-virtual {v3}, Lorg/eclipse/jetty/servlet/FilterHolder;->getClassName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 1732
    new-instance v12, Ljava/lang/IllegalStateException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Conflicting filter-class for filter "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " in "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/webapp/Descriptor;->getResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1762
    .end local v6    # "o":Lorg/eclipse/jetty/webapp/Origin;
    .restart local v4    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/xml/XmlParser$Node;>;"
    .restart local v7    # "origin":Lorg/eclipse/jetty/webapp/Origin;
    .restart local v8    # "paramNode":Lorg/eclipse/jetty/xml/XmlParser$Node;
    .restart local v9    # "pname":Ljava/lang/String;
    .restart local v10    # "pvalue":Ljava/lang/String;
    :pswitch_4
    move-object/from16 v0, p2

    instance-of v12, v0, Lorg/eclipse/jetty/webapp/FragmentDescriptor;

    if-nez v12, :cond_2

    .line 1764
    invoke-virtual {v3, v9, v10}, Lorg/eclipse/jetty/servlet/FilterHolder;->setInitParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 1765
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".filter.init-param."

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v12, v13, v0}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto/16 :goto_1

    .line 1772
    :pswitch_5
    invoke-virtual {v3, v9}, Lorg/eclipse/jetty/servlet/FilterHolder;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 1773
    new-instance v12, Ljava/lang/IllegalStateException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Mismatching init-param "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " in "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/webapp/Descriptor;->getResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1779
    .end local v7    # "origin":Lorg/eclipse/jetty/webapp/Origin;
    .end local v8    # "paramNode":Lorg/eclipse/jetty/xml/XmlParser$Node;
    .end local v9    # "pname":Ljava/lang/String;
    .end local v10    # "pvalue":Ljava/lang/String;
    :cond_3
    const-string v12, "async-supported"

    const/4 v13, 0x0

    const/4 v14, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v12, v13, v14}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 1780
    .local v1, "async":Ljava/lang/String;
    if-eqz v1, :cond_5

    .line 1781
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_8

    :cond_4
    const/4 v12, 0x1

    :goto_2
    invoke-virtual {v3, v12}, Lorg/eclipse/jetty/servlet/FilterHolder;->setAsyncSupported(Z)V

    .line 1782
    :cond_5
    if-eqz v1, :cond_7

    .line 1784
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v12

    if-eqz v12, :cond_6

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-eqz v12, :cond_9

    :cond_6
    const/4 v11, 0x1

    .line 1785
    .local v11, "val":Z
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".filter.async-supported"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lorg/eclipse/jetty/webapp/MetaData;->getOrigin(Ljava/lang/String;)Lorg/eclipse/jetty/webapp/Origin;

    move-result-object v6

    .line 1786
    .restart local v6    # "o":Lorg/eclipse/jetty/webapp/Origin;
    sget-object v12, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor$1;->$SwitchMap$org$eclipse$jetty$webapp$Origin:[I

    invoke-virtual {v6}, Lorg/eclipse/jetty/webapp/Origin;->ordinal()I

    move-result v13

    aget v12, v12, v13

    packed-switch v12, :pswitch_data_2

    .line 1817
    .end local v6    # "o":Lorg/eclipse/jetty/webapp/Origin;
    .end local v11    # "val":Z
    :cond_7
    :goto_4
    return-void

    .line 1781
    :cond_8
    const/4 v12, 0x0

    goto :goto_2

    .line 1784
    :cond_9
    const/4 v11, 0x0

    goto :goto_3

    .line 1791
    .restart local v6    # "o":Lorg/eclipse/jetty/webapp/Origin;
    .restart local v11    # "val":Z
    :pswitch_6
    invoke-virtual {v3, v11}, Lorg/eclipse/jetty/servlet/FilterHolder;->setAsyncSupported(Z)V

    .line 1792
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".filter.async-supported"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v12, v13, v0}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto :goto_4

    .line 1800
    :pswitch_7
    move-object/from16 v0, p2

    instance-of v12, v0, Lorg/eclipse/jetty/webapp/FragmentDescriptor;

    if-nez v12, :cond_7

    .line 1802
    invoke-virtual {v3, v11}, Lorg/eclipse/jetty/servlet/FilterHolder;->setAsyncSupported(Z)V

    .line 1803
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ".filter.async-supported"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    move-object/from16 v0, p2

    invoke-virtual {v12, v13, v0}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto :goto_4

    .line 1810
    :pswitch_8
    invoke-virtual {v3}, Lorg/eclipse/jetty/servlet/FilterHolder;->isAsyncSupported()Z

    move-result v12

    if-eq v12, v11, :cond_7

    .line 1811
    new-instance v12, Ljava/lang/IllegalStateException;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Conflicting async-supported="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " for filter "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " in "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/webapp/Descriptor;->getResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v12

    .line 1707
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 1747
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 1786
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method protected visitFilterMapping(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/webapp/Descriptor;Lorg/eclipse/jetty/xml/XmlParser$Node;)V
    .locals 5
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .param p2, "descriptor"    # Lorg/eclipse/jetty/webapp/Descriptor;
    .param p3, "node"    # Lorg/eclipse/jetty/xml/XmlParser$Node;

    .prologue
    .line 1832
    const-string v2, "filter-name"

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {p3, v2, v3, v4}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 1834
    .local v0, "filter_name":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".filter.mappings"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/eclipse/jetty/webapp/MetaData;->getOrigin(Ljava/lang/String;)Lorg/eclipse/jetty/webapp/Origin;

    move-result-object v1

    .line 1836
    .local v1, "origin":Lorg/eclipse/jetty/webapp/Origin;
    sget-object v2, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor$1;->$SwitchMap$org$eclipse$jetty$webapp$Origin:[I

    invoke-virtual {v1}, Lorg/eclipse/jetty/webapp/Origin;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 1863
    :cond_0
    :goto_0
    return-void

    .line 1841
    :pswitch_0
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".filter.mappings"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, p2}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    .line 1842
    invoke-virtual {p0, v0, p3, p1, p2}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->addFilterMapping(Ljava/lang/String;Lorg/eclipse/jetty/xml/XmlParser$Node;Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto :goto_0

    .line 1850
    :pswitch_1
    instance-of v2, p2, Lorg/eclipse/jetty/webapp/FragmentDescriptor;

    if-nez v2, :cond_0

    .line 1852
    invoke-virtual {p0, v0, p3, p1, p2}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->addFilterMapping(Ljava/lang/String;Lorg/eclipse/jetty/xml/XmlParser$Node;Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto :goto_0

    .line 1859
    :pswitch_2
    invoke-virtual {p0, v0, p3, p1, p2}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->addFilterMapping(Ljava/lang/String;Lorg/eclipse/jetty/xml/XmlParser$Node;Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto :goto_0

    .line 1836
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected visitJspConfig(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/webapp/Descriptor;Lorg/eclipse/jetty/xml/XmlParser$Node;)V
    .locals 22
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .param p2, "descriptor"    # Lorg/eclipse/jetty/webapp/Descriptor;
    .param p3, "node"    # Lorg/eclipse/jetty/xml/XmlParser$Node;

    .prologue
    .line 1312
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getServletContext()Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getJspConfigDescriptor()Ljavax/servlet/descriptor/JspConfigDescriptor;

    move-result-object v5

    check-cast v5, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspConfig;

    .line 1313
    .local v5, "config":Lorg/eclipse/jetty/servlet/ServletContextHandler$JspConfig;
    if-nez v5, :cond_0

    .line 1315
    new-instance v5, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspConfig;

    .end local v5    # "config":Lorg/eclipse/jetty/servlet/ServletContextHandler$JspConfig;
    invoke-direct {v5}, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspConfig;-><init>()V

    .line 1316
    .restart local v5    # "config":Lorg/eclipse/jetty/servlet/ServletContextHandler$JspConfig;
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getServletContext()Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->setJspConfigDescriptor(Ljavax/servlet/descriptor/JspConfigDescriptor;)V

    .line 1320
    :cond_0
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/jetty/xml/XmlParser$Node;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v8, v0, :cond_2

    .line 1322
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Lorg/eclipse/jetty/xml/XmlParser$Node;->get(I)Ljava/lang/Object;

    move-result-object v14

    .line 1323
    .local v14, "o":Ljava/lang/Object;
    instance-of v0, v14, Lorg/eclipse/jetty/xml/XmlParser$Node;

    move/from16 v19, v0

    if-eqz v19, :cond_1

    const-string v20, "taglib"

    move-object/from16 v19, v14

    check-cast v19, Lorg/eclipse/jetty/xml/XmlParser$Node;

    invoke-virtual/range {v19 .. v19}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getTag()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_1

    .line 1324
    check-cast v14, Lorg/eclipse/jetty/xml/XmlParser$Node;

    .end local v14    # "o":Ljava/lang/Object;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v14}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->visitTagLib(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/webapp/Descriptor;Lorg/eclipse/jetty/xml/XmlParser$Node;)V

    .line 1320
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 1329
    :cond_2
    const-string v19, "jsp-property-group"

    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v9

    .line 1330
    .local v9, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/xml/XmlParser$Node;>;"
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 1331
    .local v15, "paths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_3
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_7

    .line 1333
    new-instance v11, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;

    invoke-direct {v11}, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;-><init>()V

    .line 1334
    .local v11, "jpg":Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;
    invoke-virtual {v5, v11}, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspConfig;->addJspPropertyGroup(Ljavax/servlet/descriptor/JspPropertyGroupDescriptor;)V

    .line 1335
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jetty/xml/XmlParser$Node;

    .line 1338
    .local v6, "group":Lorg/eclipse/jetty/xml/XmlParser$Node;
    const-string v19, "url-pattern"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lorg/eclipse/jetty/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v10

    .line 1339
    .local v10, "iter2":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/xml/XmlParser$Node;>;"
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_4

    .line 1341
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/eclipse/jetty/xml/XmlParser$Node;

    const/16 v20, 0x0

    const/16 v21, 0x1

    invoke-virtual/range {v19 .. v21}, Lorg/eclipse/jetty/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v18

    .line 1342
    .local v18, "url":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->normalizePattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 1343
    move-object/from16 v0, v18

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1344
    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->addUrlPattern(Ljava/lang/String;)V

    goto :goto_2

    .line 1347
    .end local v18    # "url":Ljava/lang/String;
    :cond_4
    const-string v19, "el-ignored"

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v6, v0, v1, v2}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->setElIgnored(Ljava/lang/String;)V

    .line 1348
    const-string v19, "page-encoding"

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v6, v0, v1, v2}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->setPageEncoding(Ljava/lang/String;)V

    .line 1349
    const-string v19, "scripting-invalid"

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v6, v0, v1, v2}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->setScriptingInvalid(Ljava/lang/String;)V

    .line 1350
    const-string v19, "is-xml"

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v6, v0, v1, v2}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->setIsXml(Ljava/lang/String;)V

    .line 1351
    const-string v19, "deferred-syntax-allowed-as-literal"

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v6, v0, v1, v2}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->setDeferredSyntaxAllowedAsLiteral(Ljava/lang/String;)V

    .line 1352
    const-string v19, "trim-directive-whitespaces"

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v6, v0, v1, v2}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->setTrimDirectiveWhitespaces(Ljava/lang/String;)V

    .line 1353
    const-string v19, "default-content-type"

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v6, v0, v1, v2}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->setDefaultContentType(Ljava/lang/String;)V

    .line 1354
    const-string v19, "buffer"

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v6, v0, v1, v2}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->setBuffer(Ljava/lang/String;)V

    .line 1355
    const-string v19, "error-on-undeclared-namespace"

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v6, v0, v1, v2}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->setErrorOnUndeclaredNamespace(Ljava/lang/String;)V

    .line 1358
    const-string v19, "include-prelude"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lorg/eclipse/jetty/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v17

    .line 1359
    .local v17, "preludes":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/xml/XmlParser$Node;>;"
    :goto_3
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_5

    .line 1361
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/eclipse/jetty/xml/XmlParser$Node;

    const/16 v20, 0x0

    const/16 v21, 0x1

    invoke-virtual/range {v19 .. v21}, Lorg/eclipse/jetty/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v16

    .line 1362
    .local v16, "prelude":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->addIncludePrelude(Ljava/lang/String;)V

    goto :goto_3

    .line 1365
    .end local v16    # "prelude":Ljava/lang/String;
    :cond_5
    const-string v19, "include-coda"

    move-object/from16 v0, v19

    invoke-virtual {v6, v0}, Lorg/eclipse/jetty/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v4

    .line 1366
    .local v4, "codas":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/xml/XmlParser$Node;>;"
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_6

    .line 1368
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lorg/eclipse/jetty/xml/XmlParser$Node;

    const/16 v20, 0x0

    const/16 v21, 0x1

    invoke-virtual/range {v19 .. v21}, Lorg/eclipse/jetty/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v3

    .line 1369
    .local v3, "coda":Ljava/lang/String;
    invoke-virtual {v11, v3}, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->addIncludeCoda(Ljava/lang/String;)V

    goto :goto_4

    .line 1372
    .end local v3    # "coda":Ljava/lang/String;
    :cond_6
    sget-object v19, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface/range {v19 .. v19}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v19

    if-eqz v19, :cond_3

    sget-object v19, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual {v5}, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspConfig;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    invoke-interface/range {v19 .. v21}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 1375
    .end local v4    # "codas":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/xml/XmlParser$Node;>;"
    .end local v6    # "group":Lorg/eclipse/jetty/xml/XmlParser$Node;
    .end local v10    # "iter2":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/xml/XmlParser$Node;>;"
    .end local v11    # "jpg":Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;
    .end local v17    # "preludes":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/xml/XmlParser$Node;>;"
    :cond_7
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v19

    if-lez v19, :cond_9

    .line 1377
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v7

    .line 1378
    .local v7, "handler":Lorg/eclipse/jetty/servlet/ServletHandler;
    const-string v19, "__org.eclipse.jetty.servlet.JspPropertyGroupServlet__"

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServlet(Ljava/lang/String;)Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v12

    .line 1379
    .local v12, "jsp_pg_servlet":Lorg/eclipse/jetty/servlet/ServletHolder;
    if-nez v12, :cond_8

    .line 1381
    new-instance v12, Lorg/eclipse/jetty/servlet/ServletHolder;

    .end local v12    # "jsp_pg_servlet":Lorg/eclipse/jetty/servlet/ServletHolder;
    const-string v19, "__org.eclipse.jetty.servlet.JspPropertyGroupServlet__"

    new-instance v20, Lorg/eclipse/jetty/servlet/JspPropertyGroupServlet;

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v7}, Lorg/eclipse/jetty/servlet/JspPropertyGroupServlet;-><init>(Lorg/eclipse/jetty/server/handler/ContextHandler;Lorg/eclipse/jetty/servlet/ServletHandler;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    invoke-direct {v12, v0, v1}, Lorg/eclipse/jetty/servlet/ServletHolder;-><init>(Ljava/lang/String;Ljavax/servlet/Servlet;)V

    .line 1382
    .restart local v12    # "jsp_pg_servlet":Lorg/eclipse/jetty/servlet/ServletHolder;
    invoke-virtual {v7, v12}, Lorg/eclipse/jetty/servlet/ServletHandler;->addServlet(Lorg/eclipse/jetty/servlet/ServletHolder;)V

    .line 1385
    :cond_8
    new-instance v13, Lorg/eclipse/jetty/servlet/ServletMapping;

    invoke-direct {v13}, Lorg/eclipse/jetty/servlet/ServletMapping;-><init>()V

    .line 1386
    .local v13, "mapping":Lorg/eclipse/jetty/servlet/ServletMapping;
    const-string v19, "__org.eclipse.jetty.servlet.JspPropertyGroupServlet__"

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lorg/eclipse/jetty/servlet/ServletMapping;->setServletName(Ljava/lang/String;)V

    .line 1387
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-interface {v15, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lorg/eclipse/jetty/servlet/ServletMapping;->setPathSpecs([Ljava/lang/String;)V

    .line 1388
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Lorg/eclipse/jetty/servlet/ServletHandler;->addServletMapping(Lorg/eclipse/jetty/servlet/ServletMapping;)V

    .line 1390
    .end local v7    # "handler":Lorg/eclipse/jetty/servlet/ServletHandler;
    .end local v12    # "jsp_pg_servlet":Lorg/eclipse/jetty/servlet/ServletHolder;
    .end local v13    # "mapping":Lorg/eclipse/jetty/servlet/ServletMapping;
    :cond_9
    return-void
.end method

.method protected visitListener(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/webapp/Descriptor;Lorg/eclipse/jetty/xml/XmlParser$Node;)V
    .locals 13
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .param p2, "descriptor"    # Lorg/eclipse/jetty/webapp/Descriptor;
    .param p3, "node"    # Lorg/eclipse/jetty/xml/XmlParser$Node;

    .prologue
    const/4 v12, 0x0

    .line 1873
    const-string v10, "listener-class"

    const/4 v11, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v10, v12, v11}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    .line 1874
    .local v2, "className":Ljava/lang/String;
    const/4 v7, 0x0

    .line 1877
    .local v7, "listener":Ljava/util/EventListener;
    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_0

    .line 1881
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getEventListeners()[Ljava/util/EventListener;

    move-result-object v9

    .line 1882
    .local v9, "listeners":[Ljava/util/EventListener;
    if-eqz v9, :cond_2

    .line 1884
    move-object v1, v9

    .local v1, "arr$":[Ljava/util/EventListener;
    array-length v6, v1

    .local v6, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v6, :cond_2

    aget-object v5, v1, v4

    .line 1886
    .local v5, "l":Ljava/util/EventListener;
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 1910
    .end local v1    # "arr$":[Ljava/util/EventListener;
    .end local v4    # "i$":I
    .end local v5    # "l":Ljava/util/EventListener;
    .end local v6    # "len$":I
    .end local v9    # "listeners":[Ljava/util/EventListener;
    :cond_0
    :goto_1
    return-void

    .line 1884
    .restart local v1    # "arr$":[Ljava/util/EventListener;
    .restart local v4    # "i$":I
    .restart local v5    # "l":Ljava/util/EventListener;
    .restart local v6    # "len$":I
    .restart local v9    # "listeners":[Ljava/util/EventListener;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1891
    .end local v1    # "arr$":[Ljava/util/EventListener;
    .end local v4    # "i$":I
    .end local v5    # "l":Ljava/util/EventListener;
    .end local v6    # "len$":I
    :cond_2
    move-object v0, p2

    check-cast v0, Lorg/eclipse/jetty/webapp/WebDescriptor;

    move-object v10, v0

    invoke-virtual {v10, v2}, Lorg/eclipse/jetty/webapp/WebDescriptor;->addClassName(Ljava/lang/String;)V

    .line 1893
    invoke-virtual {p1, v2}, Lorg/eclipse/jetty/webapp/WebAppContext;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 1894
    .local v8, "listenerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/EventListener;>;"
    invoke-virtual {p0, p1, v8}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->newListenerInstance(Lorg/eclipse/jetty/webapp/WebAppContext;Ljava/lang/Class;)Ljava/util/EventListener;

    move-result-object v7

    .line 1895
    instance-of v10, v7, Ljava/util/EventListener;

    if-nez v10, :cond_3

    .line 1897
    sget-object v10, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Not an EventListener: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-interface {v10, v11, v12}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 1905
    .end local v8    # "listenerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/EventListener;>;"
    .end local v9    # "listeners":[Ljava/util/EventListener;
    :catch_0
    move-exception v3

    .line 1907
    .local v3, "e":Ljava/lang/Exception;
    sget-object v10, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Could not instantiate listener "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v10, v11, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 1900
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v8    # "listenerClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/EventListener;>;"
    .restart local v9    # "listeners":[Ljava/util/EventListener;
    :cond_3
    :try_start_1
    invoke-virtual {p1, v7}, Lorg/eclipse/jetty/webapp/WebAppContext;->addEventListener(Ljava/util/EventListener;)V

    .line 1901
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v10

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".listener"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11, p2}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method protected visitLocaleEncodingList(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/webapp/Descriptor;Lorg/eclipse/jetty/xml/XmlParser$Node;)V
    .locals 10
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .param p2, "descriptor"    # Lorg/eclipse/jetty/webapp/Descriptor;
    .param p3, "node"    # Lorg/eclipse/jetty/xml/XmlParser$Node;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 1081
    const-string v5, "locale-encoding-mapping"

    invoke-virtual {p3, v5}, Lorg/eclipse/jetty/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v1

    .line 1082
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/xml/XmlParser$Node;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1084
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jetty/xml/XmlParser$Node;

    .line 1085
    .local v3, "mapping":Lorg/eclipse/jetty/xml/XmlParser$Node;
    const-string v5, "locale"

    invoke-virtual {v3, v5, v8, v9}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    .line 1086
    .local v2, "locale":Ljava/lang/String;
    const-string v5, "encoding"

    invoke-virtual {v3, v5, v8, v9}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 1088
    .local v0, "encoding":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1090
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "locale-encoding."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/webapp/MetaData;->getOrigin(Ljava/lang/String;)Lorg/eclipse/jetty/webapp/Origin;

    move-result-object v4

    .line 1091
    .local v4, "o":Lorg/eclipse/jetty/webapp/Origin;
    sget-object v5, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor$1;->$SwitchMap$org$eclipse$jetty$webapp$Origin:[I

    invoke-virtual {v4}, Lorg/eclipse/jetty/webapp/Origin;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 1096
    :pswitch_0
    invoke-virtual {p1, v2, v0}, Lorg/eclipse/jetty/webapp/WebAppContext;->addLocaleEncoding(Ljava/lang/String;Ljava/lang/String;)V

    .line 1097
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "locale-encoding."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, p2}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto :goto_0

    .line 1105
    :pswitch_1
    instance-of v5, p2, Lorg/eclipse/jetty/webapp/FragmentDescriptor;

    if-nez v5, :cond_0

    .line 1107
    invoke-virtual {p1, v2, v0}, Lorg/eclipse/jetty/webapp/WebAppContext;->addLocaleEncoding(Ljava/lang/String;Ljava/lang/String;)V

    .line 1108
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "locale-encoding."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, p2}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto :goto_0

    .line 1115
    :pswitch_2
    invoke-virtual {p1, v2}, Lorg/eclipse/jetty/webapp/WebAppContext;->getLocaleEncoding(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1116
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Conflicting loacle-encoding mapping for locale "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Lorg/eclipse/jetty/webapp/Descriptor;->getResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1122
    .end local v0    # "encoding":Ljava/lang/String;
    .end local v2    # "locale":Ljava/lang/String;
    .end local v3    # "mapping":Lorg/eclipse/jetty/xml/XmlParser$Node;
    .end local v4    # "o":Lorg/eclipse/jetty/webapp/Origin;
    :cond_1
    return-void

    .line 1091
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected visitLoginConfig(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/webapp/Descriptor;Lorg/eclipse/jetty/xml/XmlParser$Node;)V
    .locals 12
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .param p2, "descriptor"    # Lorg/eclipse/jetty/webapp/Descriptor;
    .param p3, "node"    # Lorg/eclipse/jetty/xml/XmlParser$Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 1516
    const-string v9, "auth-method"

    invoke-virtual {p3, v9}, Lorg/eclipse/jetty/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/eclipse/jetty/xml/XmlParser$Node;

    move-result-object v5

    .line 1517
    .local v5, "method":Lorg/eclipse/jetty/xml/XmlParser$Node;
    if-eqz v5, :cond_5

    .line 1520
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v9

    const-string v10, "auth-method"

    invoke-virtual {v9, v10}, Lorg/eclipse/jetty/webapp/MetaData;->getOrigin(Ljava/lang/String;)Lorg/eclipse/jetty/webapp/Origin;

    move-result-object v8

    .line 1521
    .local v8, "o":Lorg/eclipse/jetty/webapp/Origin;
    sget-object v9, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor$1;->$SwitchMap$org$eclipse$jetty$webapp$Origin:[I

    invoke-virtual {v8}, Lorg/eclipse/jetty/webapp/Origin;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 1552
    :cond_0
    :goto_0
    const-string v9, "realm-name"

    invoke-virtual {p3, v9}, Lorg/eclipse/jetty/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/eclipse/jetty/xml/XmlParser$Node;

    move-result-object v6

    .line 1553
    .local v6, "name":Lorg/eclipse/jetty/xml/XmlParser$Node;
    if-nez v6, :cond_6

    const-string v7, "default"

    .line 1554
    .local v7, "nameStr":Ljava/lang/String;
    :goto_1
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v9

    const-string v10, "realm-name"

    invoke-virtual {v9, v10}, Lorg/eclipse/jetty/webapp/MetaData;->getOrigin(Ljava/lang/String;)Lorg/eclipse/jetty/webapp/Origin;

    move-result-object v8

    .line 1555
    sget-object v9, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor$1;->$SwitchMap$org$eclipse$jetty$webapp$Origin:[I

    invoke-virtual {v8}, Lorg/eclipse/jetty/webapp/Origin;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_1

    .line 1585
    :cond_1
    :goto_2
    const-string v9, "FORM"

    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getSecurityHandler()Lorg/eclipse/jetty/security/SecurityHandler;

    move-result-object v10

    invoke-virtual {v10}, Lorg/eclipse/jetty/security/SecurityHandler;->getAuthMethod()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1587
    const-string v9, "form-login-config"

    invoke-virtual {p3, v9}, Lorg/eclipse/jetty/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/eclipse/jetty/xml/XmlParser$Node;

    move-result-object v2

    .line 1588
    .local v2, "formConfig":Lorg/eclipse/jetty/xml/XmlParser$Node;
    if-eqz v2, :cond_7

    .line 1590
    const/4 v4, 0x0

    .line 1591
    .local v4, "loginPageName":Ljava/lang/String;
    const-string v9, "form-login-page"

    invoke-virtual {v2, v9}, Lorg/eclipse/jetty/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/eclipse/jetty/xml/XmlParser$Node;

    move-result-object v3

    .line 1592
    .local v3, "loginPage":Lorg/eclipse/jetty/xml/XmlParser$Node;
    if-eqz v3, :cond_2

    .line 1593
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v3, v9, v10}, Lorg/eclipse/jetty/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v4

    .line 1594
    :cond_2
    const/4 v1, 0x0

    .line 1595
    .local v1, "errorPageName":Ljava/lang/String;
    const-string v9, "form-error-page"

    invoke-virtual {v2, v9}, Lorg/eclipse/jetty/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/eclipse/jetty/xml/XmlParser$Node;

    move-result-object v0

    .line 1596
    .local v0, "errorPage":Lorg/eclipse/jetty/xml/XmlParser$Node;
    if-eqz v0, :cond_3

    .line 1597
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v0, v9, v10}, Lorg/eclipse/jetty/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v1

    .line 1600
    :cond_3
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v9

    const-string v10, "form-login-page"

    invoke-virtual {v9, v10}, Lorg/eclipse/jetty/webapp/MetaData;->getOrigin(Ljava/lang/String;)Lorg/eclipse/jetty/webapp/Origin;

    move-result-object v8

    .line 1601
    sget-object v9, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor$1;->$SwitchMap$org$eclipse$jetty$webapp$Origin:[I

    invoke-virtual {v8}, Lorg/eclipse/jetty/webapp/Origin;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_2

    .line 1632
    :cond_4
    :goto_3
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v9

    const-string v10, "form-error-page"

    invoke-virtual {v9, v10}, Lorg/eclipse/jetty/webapp/MetaData;->getOrigin(Ljava/lang/String;)Lorg/eclipse/jetty/webapp/Origin;

    move-result-object v8

    .line 1633
    sget-object v9, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor$1;->$SwitchMap$org$eclipse$jetty$webapp$Origin:[I

    invoke-virtual {v8}, Lorg/eclipse/jetty/webapp/Origin;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_3

    .line 1669
    .end local v0    # "errorPage":Lorg/eclipse/jetty/xml/XmlParser$Node;
    .end local v1    # "errorPageName":Ljava/lang/String;
    .end local v2    # "formConfig":Lorg/eclipse/jetty/xml/XmlParser$Node;
    .end local v3    # "loginPage":Lorg/eclipse/jetty/xml/XmlParser$Node;
    .end local v4    # "loginPageName":Ljava/lang/String;
    .end local v6    # "name":Lorg/eclipse/jetty/xml/XmlParser$Node;
    .end local v7    # "nameStr":Ljava/lang/String;
    .end local v8    # "o":Lorg/eclipse/jetty/webapp/Origin;
    :cond_5
    :goto_4
    return-void

    .line 1526
    .restart local v8    # "o":Lorg/eclipse/jetty/webapp/Origin;
    :pswitch_0
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getSecurityHandler()Lorg/eclipse/jetty/security/SecurityHandler;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v5, v10, v11}, Lorg/eclipse/jetty/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/eclipse/jetty/security/SecurityHandler;->setAuthMethod(Ljava/lang/String;)V

    .line 1527
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v9

    const-string v10, "auth-method"

    invoke-virtual {v9, v10, p2}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto/16 :goto_0

    .line 1535
    :pswitch_1
    instance-of v9, p2, Lorg/eclipse/jetty/webapp/FragmentDescriptor;

    if-nez v9, :cond_0

    .line 1537
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getSecurityHandler()Lorg/eclipse/jetty/security/SecurityHandler;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v5, v10, v11}, Lorg/eclipse/jetty/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lorg/eclipse/jetty/security/SecurityHandler;->setAuthMethod(Ljava/lang/String;)V

    .line 1538
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v9

    const-string v10, "auth-method"

    invoke-virtual {v9, v10, p2}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto/16 :goto_0

    .line 1545
    :pswitch_2
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getSecurityHandler()Lorg/eclipse/jetty/security/SecurityHandler;

    move-result-object v9

    invoke-virtual {v9}, Lorg/eclipse/jetty/security/SecurityHandler;->getAuthMethod()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x1

    invoke-virtual {v5, v10, v11}, Lorg/eclipse/jetty/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 1546
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Conflicting auth-method value in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Lorg/eclipse/jetty/webapp/Descriptor;->getResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1553
    .restart local v6    # "name":Lorg/eclipse/jetty/xml/XmlParser$Node;
    :cond_6
    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v6, v9, v10}, Lorg/eclipse/jetty/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_1

    .line 1560
    .restart local v7    # "nameStr":Ljava/lang/String;
    :pswitch_3
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getSecurityHandler()Lorg/eclipse/jetty/security/SecurityHandler;

    move-result-object v9

    invoke-virtual {v9, v7}, Lorg/eclipse/jetty/security/SecurityHandler;->setRealmName(Ljava/lang/String;)V

    .line 1561
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v9

    const-string v10, "realm-name"

    invoke-virtual {v9, v10, p2}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto/16 :goto_2

    .line 1569
    :pswitch_4
    instance-of v9, p2, Lorg/eclipse/jetty/webapp/FragmentDescriptor;

    if-nez v9, :cond_1

    .line 1571
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getSecurityHandler()Lorg/eclipse/jetty/security/SecurityHandler;

    move-result-object v9

    invoke-virtual {v9, v7}, Lorg/eclipse/jetty/security/SecurityHandler;->setRealmName(Ljava/lang/String;)V

    .line 1572
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v9

    const-string v10, "realm-name"

    invoke-virtual {v9, v10, p2}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto/16 :goto_2

    .line 1579
    :pswitch_5
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getSecurityHandler()Lorg/eclipse/jetty/security/SecurityHandler;

    move-result-object v9

    invoke-virtual {v9}, Lorg/eclipse/jetty/security/SecurityHandler;->getRealmName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 1580
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Conflicting realm-name value in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Lorg/eclipse/jetty/webapp/Descriptor;->getResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1606
    .restart local v0    # "errorPage":Lorg/eclipse/jetty/xml/XmlParser$Node;
    .restart local v1    # "errorPageName":Ljava/lang/String;
    .restart local v2    # "formConfig":Lorg/eclipse/jetty/xml/XmlParser$Node;
    .restart local v3    # "loginPage":Lorg/eclipse/jetty/xml/XmlParser$Node;
    .restart local v4    # "loginPageName":Ljava/lang/String;
    :pswitch_6
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getSecurityHandler()Lorg/eclipse/jetty/security/SecurityHandler;

    move-result-object v9

    const-string v10, "org.eclipse.jetty.security.form_login_page"

    invoke-virtual {v9, v10, v4}, Lorg/eclipse/jetty/security/SecurityHandler;->setInitParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1607
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v9

    const-string v10, "form-login-page"

    invoke-virtual {v9, v10, p2}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto/16 :goto_3

    .line 1615
    :pswitch_7
    instance-of v9, p2, Lorg/eclipse/jetty/webapp/FragmentDescriptor;

    if-nez v9, :cond_4

    .line 1617
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getSecurityHandler()Lorg/eclipse/jetty/security/SecurityHandler;

    move-result-object v9

    const-string v10, "org.eclipse.jetty.security.form_login_page"

    invoke-virtual {v9, v10, v4}, Lorg/eclipse/jetty/security/SecurityHandler;->setInitParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1618
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v9

    const-string v10, "form-login-page"

    invoke-virtual {v9, v10, p2}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto/16 :goto_3

    .line 1625
    :pswitch_8
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getSecurityHandler()Lorg/eclipse/jetty/security/SecurityHandler;

    move-result-object v9

    const-string v10, "org.eclipse.jetty.security.form_login_page"

    invoke-virtual {v9, v10}, Lorg/eclipse/jetty/security/SecurityHandler;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_4

    .line 1626
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Conflicting form-login-page value in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Lorg/eclipse/jetty/webapp/Descriptor;->getResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1638
    :pswitch_9
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getSecurityHandler()Lorg/eclipse/jetty/security/SecurityHandler;

    move-result-object v9

    const-string v10, "org.eclipse.jetty.security.form_error_page"

    invoke-virtual {v9, v10, v1}, Lorg/eclipse/jetty/security/SecurityHandler;->setInitParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1639
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v9

    const-string v10, "form-error-page"

    invoke-virtual {v9, v10, p2}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto/16 :goto_4

    .line 1647
    :pswitch_a
    instance-of v9, p2, Lorg/eclipse/jetty/webapp/FragmentDescriptor;

    if-nez v9, :cond_5

    .line 1649
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getSecurityHandler()Lorg/eclipse/jetty/security/SecurityHandler;

    move-result-object v9

    const-string v10, "org.eclipse.jetty.security.form_error_page"

    invoke-virtual {v9, v10, v1}, Lorg/eclipse/jetty/security/SecurityHandler;->setInitParameter(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 1650
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v9

    const-string v10, "form-error-page"

    invoke-virtual {v9, v10, p2}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto/16 :goto_4

    .line 1657
    :pswitch_b
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getSecurityHandler()Lorg/eclipse/jetty/security/SecurityHandler;

    move-result-object v9

    const-string v10, "org.eclipse.jetty.security.form_error_page"

    invoke-virtual {v9, v10}, Lorg/eclipse/jetty/security/SecurityHandler;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 1658
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Conflicting form-error-page value in "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p2}, Lorg/eclipse/jetty/webapp/Descriptor;->getResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1665
    .end local v0    # "errorPage":Lorg/eclipse/jetty/xml/XmlParser$Node;
    .end local v1    # "errorPageName":Ljava/lang/String;
    .end local v3    # "loginPage":Lorg/eclipse/jetty/xml/XmlParser$Node;
    .end local v4    # "loginPageName":Ljava/lang/String;
    :cond_7
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "!form-login-config"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 1521
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 1555
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch

    .line 1601
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_7
        :pswitch_7
        :pswitch_8
    .end packed-switch

    .line 1633
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_9
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method protected visitMimeMapping(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/webapp/Descriptor;Lorg/eclipse/jetty/xml/XmlParser$Node;)V
    .locals 6
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .param p2, "descriptor"    # Lorg/eclipse/jetty/webapp/Descriptor;
    .param p3, "node"    # Lorg/eclipse/jetty/xml/XmlParser$Node;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 987
    const-string v3, "extension"

    invoke-virtual {p3, v3, v5, v4}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 988
    .local v0, "extension":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 989
    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 990
    :cond_0
    const-string v3, "mime-type"

    invoke-virtual {p3, v3, v5, v4}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 991
    .local v1, "mimeType":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 993
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extension."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/eclipse/jetty/webapp/MetaData;->getOrigin(Ljava/lang/String;)Lorg/eclipse/jetty/webapp/Origin;

    move-result-object v2

    .line 994
    .local v2, "o":Lorg/eclipse/jetty/webapp/Origin;
    sget-object v3, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor$1;->$SwitchMap$org$eclipse$jetty$webapp$Origin:[I

    invoke-virtual {v2}, Lorg/eclipse/jetty/webapp/Origin;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1024
    .end local v2    # "o":Lorg/eclipse/jetty/webapp/Origin;
    :cond_1
    :goto_0
    return-void

    .line 999
    .restart local v2    # "o":Lorg/eclipse/jetty/webapp/Origin;
    :pswitch_0
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMimeTypes()Lorg/eclipse/jetty/http/MimeTypes;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lorg/eclipse/jetty/http/MimeTypes;->addMimeMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 1000
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extension."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto :goto_0

    .line 1008
    :pswitch_1
    instance-of v3, p2, Lorg/eclipse/jetty/webapp/FragmentDescriptor;

    if-nez v3, :cond_1

    .line 1010
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMimeTypes()Lorg/eclipse/jetty/http/MimeTypes;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lorg/eclipse/jetty/http/MimeTypes;->addMimeMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 1011
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "extension."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto :goto_0

    .line 1018
    :pswitch_2
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMimeTypes()Lorg/eclipse/jetty/http/MimeTypes;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/eclipse/jetty/http/MimeTypes;->getMimeByExtension(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v3

    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMimeTypes()Lorg/eclipse/jetty/http/MimeTypes;

    sget-object v4, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    invoke-virtual {v4, v1}, Lorg/eclipse/jetty/io/BufferCache;->lookup(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1019
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Conflicting mime-type "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for extension "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p2}, Lorg/eclipse/jetty/webapp/Descriptor;->getResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 994
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected visitSecurityConstraint(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/webapp/Descriptor;Lorg/eclipse/jetty/xml/XmlParser$Node;)V
    .locals 23
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .param p2, "descriptor"    # Lorg/eclipse/jetty/webapp/Descriptor;
    .param p3, "node"    # Lorg/eclipse/jetty/xml/XmlParser$Node;

    .prologue
    .line 1399
    new-instance v18, Lorg/eclipse/jetty/util/security/Constraint;

    invoke-direct/range {v18 .. v18}, Lorg/eclipse/jetty/util/security/Constraint;-><init>()V

    .line 1407
    .local v18, "scBase":Lorg/eclipse/jetty/util/security/Constraint;
    :try_start_0
    const-string v20, "auth-constraint"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/eclipse/jetty/xml/XmlParser$Node;

    move-result-object v3

    .line 1409
    .local v3, "auths":Lorg/eclipse/jetty/xml/XmlParser$Node;
    if-eqz v3, :cond_2

    .line 1411
    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/util/security/Constraint;->setAuthenticate(Z)V

    .line 1413
    const-string v20, "role-name"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Lorg/eclipse/jetty/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v8

    .line 1414
    .local v8, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/xml/XmlParser$Node;>;"
    new-instance v16, Ljava/util/ArrayList;

    invoke-direct/range {v16 .. v16}, Ljava/util/ArrayList;-><init>()V

    .line 1415
    .local v16, "roles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 1417
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/eclipse/jetty/xml/XmlParser$Node;

    const/16 v21, 0x0

    const/16 v22, 0x1

    invoke-virtual/range {v20 .. v22}, Lorg/eclipse/jetty/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v15

    .line 1418
    .local v15, "role":Ljava/lang/String;
    move-object/from16 v0, v16

    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1499
    .end local v3    # "auths":Lorg/eclipse/jetty/xml/XmlParser$Node;
    .end local v8    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/xml/XmlParser$Node;>;"
    .end local v15    # "role":Ljava/lang/String;
    .end local v16    # "roles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v6

    .line 1501
    .local v6, "e":Ljava/lang/CloneNotSupportedException;
    sget-object v20, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    .line 1503
    .end local v6    # "e":Ljava/lang/CloneNotSupportedException;
    :cond_0
    return-void

    .line 1420
    .restart local v3    # "auths":Lorg/eclipse/jetty/xml/XmlParser$Node;
    .restart local v8    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/xml/XmlParser$Node;>;"
    .restart local v16    # "roles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :try_start_1
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v20

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v20

    check-cast v20, [Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/util/security/Constraint;->setRoles([Ljava/lang/String;)V

    .line 1423
    .end local v8    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/xml/XmlParser$Node;>;"
    .end local v16    # "roles":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_2
    const-string v20, "user-data-constraint"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/eclipse/jetty/xml/XmlParser$Node;

    move-result-object v5

    .line 1424
    .local v5, "data":Lorg/eclipse/jetty/xml/XmlParser$Node;
    if-eqz v5, :cond_4

    .line 1426
    const-string v20, "transport-guarantee"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Lorg/eclipse/jetty/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/eclipse/jetty/xml/XmlParser$Node;

    move-result-object v5

    .line 1427
    const/16 v20, 0x0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    invoke-virtual {v5, v0, v1}, Lorg/eclipse/jetty/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v20

    sget-object v21, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    .line 1428
    .local v7, "guarantee":Ljava/lang/String;
    if-eqz v7, :cond_3

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v20

    if-eqz v20, :cond_3

    const-string v20, "NONE"

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_7

    .line 1429
    :cond_3
    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/util/security/Constraint;->setDataConstraint(I)V

    .line 1440
    .end local v7    # "guarantee":Ljava/lang/String;
    :cond_4
    :goto_1
    const-string v20, "web-resource-collection"

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v8

    .line 1441
    .restart local v8    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/xml/XmlParser$Node;>;"
    :cond_5
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 1443
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jetty/xml/XmlParser$Node;

    .line 1444
    .local v4, "collection":Lorg/eclipse/jetty/xml/XmlParser$Node;
    const-string v20, "web-resource-name"

    const/16 v21, 0x0

    const/16 v22, 0x1

    move-object/from16 v0, v20

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v4, v0, v1, v2}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v14

    .line 1445
    .local v14, "name":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/jetty/util/security/Constraint;->clone()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lorg/eclipse/jetty/util/security/Constraint;

    .line 1446
    .local v17, "sc":Lorg/eclipse/jetty/util/security/Constraint;
    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Lorg/eclipse/jetty/util/security/Constraint;->setName(Ljava/lang/String;)V

    .line 1448
    const-string v20, "url-pattern"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lorg/eclipse/jetty/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v9

    .line 1449
    .local v9, "iter2":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/xml/XmlParser$Node;>;"
    :cond_6
    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_5

    .line 1451
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/eclipse/jetty/xml/XmlParser$Node;

    const/16 v21, 0x0

    const/16 v22, 0x1

    invoke-virtual/range {v20 .. v22}, Lorg/eclipse/jetty/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v19

    .line 1452
    .local v19, "url":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->normalizePattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 1454
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v20

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "constraint.url."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    .line 1456
    const-string v20, "http-method"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lorg/eclipse/jetty/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v10

    .line 1457
    .local v10, "iter3":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/xml/XmlParser$Node;>;"
    const-string v20, "http-method-omission"

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Lorg/eclipse/jetty/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v11

    .line 1459
    .local v11, "iter4":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/xml/XmlParser$Node;>;"
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_b

    .line 1461
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_a

    .line 1462
    new-instance v20, Ljava/lang/IllegalStateException;

    const-string v21, "web-resource-collection cannot contain both http-method and http-method-omission"

    invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v20

    .line 1430
    .end local v4    # "collection":Lorg/eclipse/jetty/xml/XmlParser$Node;
    .end local v8    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/xml/XmlParser$Node;>;"
    .end local v9    # "iter2":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/xml/XmlParser$Node;>;"
    .end local v10    # "iter3":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/xml/XmlParser$Node;>;"
    .end local v11    # "iter4":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/xml/XmlParser$Node;>;"
    .end local v14    # "name":Ljava/lang/String;
    .end local v17    # "sc":Lorg/eclipse/jetty/util/security/Constraint;
    .end local v19    # "url":Ljava/lang/String;
    .restart local v7    # "guarantee":Ljava/lang/String;
    :cond_7
    const-string v20, "INTEGRAL"

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 1431
    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/util/security/Constraint;->setDataConstraint(I)V

    goto/16 :goto_1

    .line 1432
    :cond_8
    const-string v20, "CONFIDENTIAL"

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_9

    .line 1433
    const/16 v20, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/util/security/Constraint;->setDataConstraint(I)V

    goto/16 :goto_1

    .line 1436
    :cond_9
    sget-object v20, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Unknown user-data-constraint:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-interface/range {v20 .. v22}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1437
    const/16 v20, 0x2

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/util/security/Constraint;->setDataConstraint(I)V

    goto/16 :goto_1

    .line 1465
    .end local v7    # "guarantee":Ljava/lang/String;
    .restart local v4    # "collection":Lorg/eclipse/jetty/xml/XmlParser$Node;
    .restart local v8    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/xml/XmlParser$Node;>;"
    .restart local v9    # "iter2":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/xml/XmlParser$Node;>;"
    .restart local v10    # "iter3":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/xml/XmlParser$Node;>;"
    .restart local v11    # "iter4":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/eclipse/jetty/xml/XmlParser$Node;>;"
    .restart local v14    # "name":Ljava/lang/String;
    .restart local v17    # "sc":Lorg/eclipse/jetty/util/security/Constraint;
    .restart local v19    # "url":Ljava/lang/String;
    :cond_a
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_6

    .line 1467
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/eclipse/jetty/xml/XmlParser$Node;

    const/16 v21, 0x0

    const/16 v22, 0x1

    invoke-virtual/range {v20 .. v22}, Lorg/eclipse/jetty/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v13

    .line 1468
    .local v13, "method":Ljava/lang/String;
    new-instance v12, Lorg/eclipse/jetty/security/ConstraintMapping;

    invoke-direct {v12}, Lorg/eclipse/jetty/security/ConstraintMapping;-><init>()V

    .line 1469
    .local v12, "mapping":Lorg/eclipse/jetty/security/ConstraintMapping;
    invoke-virtual {v12, v13}, Lorg/eclipse/jetty/security/ConstraintMapping;->setMethod(Ljava/lang/String;)V

    .line 1470
    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lorg/eclipse/jetty/security/ConstraintMapping;->setPathSpec(Ljava/lang/String;)V

    .line 1471
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/eclipse/jetty/security/ConstraintMapping;->setConstraint(Lorg/eclipse/jetty/util/security/Constraint;)V

    .line 1472
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getSecurityHandler()Lorg/eclipse/jetty/security/SecurityHandler;

    move-result-object v20

    check-cast v20, Lorg/eclipse/jetty/security/ConstraintAware;

    move-object/from16 v0, v20

    invoke-interface {v0, v12}, Lorg/eclipse/jetty/security/ConstraintAware;->addConstraintMapping(Lorg/eclipse/jetty/security/ConstraintMapping;)V

    goto :goto_3

    .line 1475
    .end local v12    # "mapping":Lorg/eclipse/jetty/security/ConstraintMapping;
    .end local v13    # "method":Ljava/lang/String;
    :cond_b
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_c

    .line 1478
    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_6

    .line 1480
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lorg/eclipse/jetty/xml/XmlParser$Node;

    const/16 v21, 0x0

    const/16 v22, 0x1

    invoke-virtual/range {v20 .. v22}, Lorg/eclipse/jetty/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v13

    .line 1481
    .restart local v13    # "method":Ljava/lang/String;
    new-instance v12, Lorg/eclipse/jetty/security/ConstraintMapping;

    invoke-direct {v12}, Lorg/eclipse/jetty/security/ConstraintMapping;-><init>()V

    .line 1482
    .restart local v12    # "mapping":Lorg/eclipse/jetty/security/ConstraintMapping;
    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput-object v13, v20, v21

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Lorg/eclipse/jetty/security/ConstraintMapping;->setMethodOmissions([Ljava/lang/String;)V

    .line 1483
    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lorg/eclipse/jetty/security/ConstraintMapping;->setPathSpec(Ljava/lang/String;)V

    .line 1484
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/eclipse/jetty/security/ConstraintMapping;->setConstraint(Lorg/eclipse/jetty/util/security/Constraint;)V

    .line 1485
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getSecurityHandler()Lorg/eclipse/jetty/security/SecurityHandler;

    move-result-object v20

    check-cast v20, Lorg/eclipse/jetty/security/ConstraintAware;

    move-object/from16 v0, v20

    invoke-interface {v0, v12}, Lorg/eclipse/jetty/security/ConstraintAware;->addConstraintMapping(Lorg/eclipse/jetty/security/ConstraintMapping;)V

    goto :goto_4

    .line 1491
    .end local v12    # "mapping":Lorg/eclipse/jetty/security/ConstraintMapping;
    .end local v13    # "method":Ljava/lang/String;
    :cond_c
    new-instance v12, Lorg/eclipse/jetty/security/ConstraintMapping;

    invoke-direct {v12}, Lorg/eclipse/jetty/security/ConstraintMapping;-><init>()V

    .line 1492
    .restart local v12    # "mapping":Lorg/eclipse/jetty/security/ConstraintMapping;
    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Lorg/eclipse/jetty/security/ConstraintMapping;->setPathSpec(Ljava/lang/String;)V

    .line 1493
    move-object/from16 v0, v17

    invoke-virtual {v12, v0}, Lorg/eclipse/jetty/security/ConstraintMapping;->setConstraint(Lorg/eclipse/jetty/util/security/Constraint;)V

    .line 1494
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getSecurityHandler()Lorg/eclipse/jetty/security/SecurityHandler;

    move-result-object v20

    check-cast v20, Lorg/eclipse/jetty/security/ConstraintAware;

    move-object/from16 v0, v20

    invoke-interface {v0, v12}, Lorg/eclipse/jetty/security/ConstraintAware;->addConstraintMapping(Lorg/eclipse/jetty/security/ConstraintMapping;)V
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_2
.end method

.method protected visitSecurityRole(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/webapp/Descriptor;Lorg/eclipse/jetty/xml/XmlParser$Node;)V
    .locals 4
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .param p2, "descriptor"    # Lorg/eclipse/jetty/webapp/Descriptor;
    .param p3, "node"    # Lorg/eclipse/jetty/xml/XmlParser$Node;

    .prologue
    .line 1679
    const-string v2, "role-name"

    invoke-virtual {p3, v2}, Lorg/eclipse/jetty/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/eclipse/jetty/xml/XmlParser$Node;

    move-result-object v1

    .line 1680
    .local v1, "roleNode":Lorg/eclipse/jetty/xml/XmlParser$Node;
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jetty/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v0

    .line 1681
    .local v0, "role":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getSecurityHandler()Lorg/eclipse/jetty/security/SecurityHandler;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jetty/security/ConstraintAware;

    invoke-interface {v2, v0}, Lorg/eclipse/jetty/security/ConstraintAware;->addRole(Ljava/lang/String;)V

    .line 1682
    return-void
.end method

.method protected visitServlet(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/webapp/Descriptor;Lorg/eclipse/jetty/xml/XmlParser$Node;)V
    .locals 42
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .param p2, "descriptor"    # Lorg/eclipse/jetty/webapp/Descriptor;
    .param p3, "node"    # Lorg/eclipse/jetty/xml/XmlParser$Node;

    .prologue
    .line 201
    const-string v4, "id"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 204
    .local v15, "id":Ljava/lang/String;
    const-string v4, "servlet-name"

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5, v6}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v37

    .line 205
    .local v37, "servlet_name":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v4

    move-object/from16 v0, v37

    invoke-virtual {v4, v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServlet(Ljava/lang/String;)Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v13

    .line 210
    .local v13, "holder":Lorg/eclipse/jetty/servlet/ServletHolder;
    if-nez v13, :cond_0

    .line 212
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v4

    sget-object v5, Lorg/eclipse/jetty/servlet/Holder$Source;->DESCRIPTOR:Lorg/eclipse/jetty/servlet/Holder$Source;

    invoke-virtual {v4, v5}, Lorg/eclipse/jetty/servlet/ServletHandler;->newServletHolder(Lorg/eclipse/jetty/servlet/Holder$Source;)Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v13

    .line 213
    move-object/from16 v0, v37

    invoke-virtual {v13, v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->setName(Ljava/lang/String;)V

    .line 214
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v4

    invoke-virtual {v4, v13}, Lorg/eclipse/jetty/servlet/ServletHandler;->addServlet(Lorg/eclipse/jetty/servlet/ServletHolder;)V

    .line 218
    :cond_0
    const-string v4, "init-param"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lorg/eclipse/jetty/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v14

    .line 219
    .local v14, "iParamsIter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_1
    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 221
    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lorg/eclipse/jetty/xml/XmlParser$Node;

    .line 222
    .local v26, "paramNode":Lorg/eclipse/jetty/xml/XmlParser$Node;
    const-string v4, "param-name"

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5, v6}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v27

    .line 223
    .local v27, "pname":Ljava/lang/String;
    const-string v4, "param-value"

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, v26

    invoke-virtual {v0, v4, v5, v6}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v28

    .line 225
    .local v28, "pvalue":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".servlet.init-param."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/eclipse/jetty/webapp/MetaData;->getOrigin(Ljava/lang/String;)Lorg/eclipse/jetty/webapp/Origin;

    move-result-object v25

    .line 227
    .local v25, "origin":Lorg/eclipse/jetty/webapp/Origin;
    sget-object v4, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor$1;->$SwitchMap$org$eclipse$jetty$webapp$Origin:[I

    invoke-virtual/range {v25 .. v25}, Lorg/eclipse/jetty/webapp/Origin;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_0

    .line 233
    :pswitch_0
    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v13, v0, v1}, Lorg/eclipse/jetty/servlet/ServletHolder;->setInitParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".servlet.init-param."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v4, v5, v0}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto :goto_0

    .line 243
    :pswitch_1
    move-object/from16 v0, p2

    instance-of v4, v0, Lorg/eclipse/jetty/webapp/FragmentDescriptor;

    if-nez v4, :cond_1

    .line 245
    move-object/from16 v0, v27

    move-object/from16 v1, v28

    invoke-virtual {v13, v0, v1}, Lorg/eclipse/jetty/servlet/ServletHolder;->setInitParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".servlet.init-param."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v4, v5, v0}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto/16 :goto_0

    .line 253
    :pswitch_2
    move-object/from16 v0, v27

    invoke-virtual {v13, v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v28

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 254
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Mismatching init-param "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v27

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v28

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/webapp/Descriptor;->getResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 260
    .end local v25    # "origin":Lorg/eclipse/jetty/webapp/Origin;
    .end local v26    # "paramNode":Lorg/eclipse/jetty/xml/XmlParser$Node;
    .end local v27    # "pname":Ljava/lang/String;
    .end local v28    # "pvalue":Ljava/lang/String;
    :cond_2
    const-string v4, "servlet-class"

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5, v6}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v36

    .line 263
    .local v36, "servlet_class":Ljava/lang/String;
    const/16 v18, 0x0

    .line 266
    .local v18, "jspServletClass":Ljava/lang/String;
    if-eqz v15, :cond_4

    const-string v4, "jsp"

    invoke-virtual {v15, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 268
    move-object/from16 v18, v36

    .line 271
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-static {v4, v0}, Lorg/eclipse/jetty/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;

    .line 274
    const-string v4, "scratchdir"

    invoke-virtual {v13, v4}, Lorg/eclipse/jetty/servlet/ServletHolder;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_4

    .line 276
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getTempDirectory()Ljava/io/File;

    move-result-object v40

    .line 277
    .local v40, "tmp":Ljava/io/File;
    new-instance v34, Ljava/io/File;

    const-string v4, "jsp"

    move-object/from16 v0, v34

    move-object/from16 v1, v40

    invoke-direct {v0, v1, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 278
    .local v34, "scratch":Ljava/io/File;
    invoke-virtual/range {v34 .. v34}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual/range {v34 .. v34}, Ljava/io/File;->mkdir()Z

    .line 279
    :cond_3
    const-string v4, "scratchdir"

    invoke-virtual/range {v34 .. v34}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v13, v4, v5}, Lorg/eclipse/jetty/servlet/ServletHolder;->setInitParameter(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 291
    .end local v34    # "scratch":Ljava/io/File;
    .end local v40    # "tmp":Ljava/io/File;
    :cond_4
    :goto_1
    if-eqz v36, :cond_5

    move-object/from16 v4, p2

    .line 293
    check-cast v4, Lorg/eclipse/jetty/webapp/WebDescriptor;

    move-object/from16 v0, v36

    invoke-virtual {v4, v0}, Lorg/eclipse/jetty/webapp/WebDescriptor;->addClassName(Ljava/lang/String;)V

    .line 295
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".servlet.servlet-class"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/eclipse/jetty/webapp/MetaData;->getOrigin(Ljava/lang/String;)Lorg/eclipse/jetty/webapp/Origin;

    move-result-object v23

    .line 296
    .local v23, "o":Lorg/eclipse/jetty/webapp/Origin;
    sget-object v4, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor$1;->$SwitchMap$org$eclipse$jetty$webapp$Origin:[I

    invoke-virtual/range {v23 .. v23}, Lorg/eclipse/jetty/webapp/Origin;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    .line 328
    .end local v23    # "o":Lorg/eclipse/jetty/webapp/Origin;
    :cond_5
    :goto_2
    const-string v4, "jsp-file"

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5, v6}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v19

    .line 329
    .local v19, "jsp_file":Ljava/lang/String;
    if-eqz v19, :cond_6

    .line 331
    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->setForcedPath(Ljava/lang/String;)V

    .line 332
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v4

    const-string v5, "jsp"

    invoke-virtual {v4, v5}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServlet(Ljava/lang/String;)Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v17

    .line 333
    .local v17, "jsp":Lorg/eclipse/jetty/servlet/ServletHolder;
    if-eqz v17, :cond_6

    .line 334
    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/servlet/ServletHolder;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v4}, Lorg/eclipse/jetty/servlet/ServletHolder;->setClassName(Ljava/lang/String;)V

    .line 338
    .end local v17    # "jsp":Lorg/eclipse/jetty/servlet/ServletHolder;
    :cond_6
    const-string v4, "load-on-startup"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lorg/eclipse/jetty/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/eclipse/jetty/xml/XmlParser$Node;

    move-result-object v38

    .line 339
    .local v38, "startup":Lorg/eclipse/jetty/xml/XmlParser$Node;
    if-eqz v38, :cond_8

    .line 341
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object/from16 v0, v38

    invoke-virtual {v0, v4, v5}, Lorg/eclipse/jetty/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v32

    .line 342
    .local v32, "s":Ljava/lang/String;
    const/16 v24, 0x0

    .line 343
    .local v24, "order":I
    const-string v4, "t"

    move-object/from16 v0, v32

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 345
    sget-object v4, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v5, "Deprecated boolean load-on-startup.  Please use integer"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 346
    const/16 v24, 0x1

    .line 361
    :cond_7
    :goto_3
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".servlet.load-on-startup"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/eclipse/jetty/webapp/MetaData;->getOrigin(Ljava/lang/String;)Lorg/eclipse/jetty/webapp/Origin;

    move-result-object v23

    .line 362
    .restart local v23    # "o":Lorg/eclipse/jetty/webapp/Origin;
    sget-object v4, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor$1;->$SwitchMap$org$eclipse$jetty$webapp$Origin:[I

    invoke-virtual/range {v23 .. v23}, Lorg/eclipse/jetty/webapp/Origin;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_2

    .line 393
    .end local v23    # "o":Lorg/eclipse/jetty/webapp/Origin;
    .end local v24    # "order":I
    .end local v32    # "s":Ljava/lang/String;
    :cond_8
    :goto_4
    const-string v4, "security-role-ref"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lorg/eclipse/jetty/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v33

    .line 394
    .local v33, "sRefsIter":Ljava/util/Iterator;
    :cond_9
    :goto_5
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 396
    invoke-interface/range {v33 .. v33}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lorg/eclipse/jetty/xml/XmlParser$Node;

    .line 397
    .local v35, "securityRef":Lorg/eclipse/jetty/xml/XmlParser$Node;
    const-string v4, "role-name"

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5, v6}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v30

    .line 398
    .local v30, "roleName":Ljava/lang/String;
    const-string v4, "role-link"

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, v35

    invoke-virtual {v0, v4, v5, v6}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v29

    .line 399
    .local v29, "roleLink":Ljava/lang/String;
    if-eqz v30, :cond_c

    invoke-virtual/range {v30 .. v30}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_c

    if-eqz v29, :cond_c

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_c

    .line 401
    sget-object v4, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_a

    sget-object v4, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "link role "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v29

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 402
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".servlet.role-name."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/eclipse/jetty/webapp/MetaData;->getOrigin(Ljava/lang/String;)Lorg/eclipse/jetty/webapp/Origin;

    move-result-object v23

    .line 403
    .restart local v23    # "o":Lorg/eclipse/jetty/webapp/Origin;
    sget-object v4, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor$1;->$SwitchMap$org$eclipse$jetty$webapp$Origin:[I

    invoke-virtual/range {v23 .. v23}, Lorg/eclipse/jetty/webapp/Origin;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_3

    goto/16 :goto_5

    .line 408
    :pswitch_3
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v13, v0, v1}, Lorg/eclipse/jetty/servlet/ServletHolder;->setUserRoleLink(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".servlet.role-name."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v4, v5, v0}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto/16 :goto_5

    .line 282
    .end local v19    # "jsp_file":Ljava/lang/String;
    .end local v23    # "o":Lorg/eclipse/jetty/webapp/Origin;
    .end local v29    # "roleLink":Ljava/lang/String;
    .end local v30    # "roleName":Ljava/lang/String;
    .end local v33    # "sRefsIter":Ljava/util/Iterator;
    .end local v35    # "securityRef":Lorg/eclipse/jetty/xml/XmlParser$Node;
    .end local v38    # "startup":Lorg/eclipse/jetty/xml/XmlParser$Node;
    :catch_0
    move-exception v11

    .line 284
    .local v11, "e":Ljava/lang/ClassNotFoundException;
    sget-object v4, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v5, "NO JSP Support for {}, did not find {}"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getContextPath()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    aput-object v36, v6, v7

    invoke-interface {v4, v5, v6}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 285
    const-string v36, "org.eclipse.jetty.servlet.NoJspServlet"

    move-object/from16 v18, v36

    goto/16 :goto_1

    .line 301
    .end local v11    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v23    # "o":Lorg/eclipse/jetty/webapp/Origin;
    :pswitch_4
    move-object/from16 v0, v36

    invoke-virtual {v13, v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->setClassName(Ljava/lang/String;)V

    .line 302
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".servlet.servlet-class"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v4, v5, v0}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto/16 :goto_2

    .line 310
    :pswitch_5
    move-object/from16 v0, p2

    instance-of v4, v0, Lorg/eclipse/jetty/webapp/FragmentDescriptor;

    if-nez v4, :cond_5

    .line 312
    move-object/from16 v0, v36

    invoke-virtual {v13, v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->setClassName(Ljava/lang/String;)V

    .line 313
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".servlet.servlet-class"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v4, v5, v0}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto/16 :goto_2

    .line 320
    :pswitch_6
    invoke-virtual {v13}, Lorg/eclipse/jetty/servlet/ServletHolder;->getClassName()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v36

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    .line 321
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Conflicting servlet-class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v36

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/webapp/Descriptor;->getResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 352
    .end local v23    # "o":Lorg/eclipse/jetty/webapp/Origin;
    .restart local v19    # "jsp_file":Ljava/lang/String;
    .restart local v24    # "order":I
    .restart local v32    # "s":Ljava/lang/String;
    .restart local v38    # "startup":Lorg/eclipse/jetty/xml/XmlParser$Node;
    :cond_b
    if-eqz v32, :cond_7

    :try_start_1
    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_7

    invoke-static/range {v32 .. v32}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v24

    goto/16 :goto_3

    .line 354
    :catch_1
    move-exception v11

    .line 356
    .local v11, "e":Ljava/lang/Exception;
    sget-object v4, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot parse load-on-startup "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v32

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Please use integer"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 357
    sget-object v4, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4, v11}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 367
    .end local v11    # "e":Ljava/lang/Exception;
    .restart local v23    # "o":Lorg/eclipse/jetty/webapp/Origin;
    :pswitch_7
    move/from16 v0, v24

    invoke-virtual {v13, v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->setInitOrder(I)V

    .line 368
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".servlet.load-on-startup"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v4, v5, v0}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto/16 :goto_4

    .line 376
    :pswitch_8
    move-object/from16 v0, p2

    instance-of v4, v0, Lorg/eclipse/jetty/webapp/FragmentDescriptor;

    if-nez v4, :cond_8

    .line 378
    move/from16 v0, v24

    invoke-virtual {v13, v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->setInitOrder(I)V

    .line 379
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".servlet.load-on-startup"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v4, v5, v0}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto/16 :goto_4

    .line 386
    :pswitch_9
    invoke-virtual {v13}, Lorg/eclipse/jetty/servlet/ServletHolder;->getInitOrder()I

    move-result v4

    move/from16 v0, v24

    if-eq v0, v4, :cond_8

    .line 387
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Conflicting load-on-startup value in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/webapp/Descriptor;->getResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 417
    .end local v24    # "order":I
    .end local v32    # "s":Ljava/lang/String;
    .restart local v29    # "roleLink":Ljava/lang/String;
    .restart local v30    # "roleName":Ljava/lang/String;
    .restart local v33    # "sRefsIter":Ljava/util/Iterator;
    .restart local v35    # "securityRef":Lorg/eclipse/jetty/xml/XmlParser$Node;
    :pswitch_a
    move-object/from16 v0, p2

    instance-of v4, v0, Lorg/eclipse/jetty/webapp/FragmentDescriptor;

    if-nez v4, :cond_9

    .line 419
    move-object/from16 v0, v30

    move-object/from16 v1, v29

    invoke-virtual {v13, v0, v1}, Lorg/eclipse/jetty/servlet/ServletHolder;->setUserRoleLink(Ljava/lang/String;Ljava/lang/String;)V

    .line 420
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".servlet.role-name."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v4, v5, v0}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto/16 :goto_5

    .line 426
    :pswitch_b
    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->getUserRoleLink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v29

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    .line 427
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Conflicting role-link for role-name "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for servlet "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/webapp/Descriptor;->getResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 434
    .end local v23    # "o":Lorg/eclipse/jetty/webapp/Origin;
    :cond_c
    sget-object v4, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignored invalid security-role-ref element: servlet-name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v13}, Lorg/eclipse/jetty/servlet/ServletHolder;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v35

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_5

    .line 439
    .end local v29    # "roleLink":Ljava/lang/String;
    .end local v30    # "roleName":Ljava/lang/String;
    .end local v35    # "securityRef":Lorg/eclipse/jetty/xml/XmlParser$Node;
    :cond_d
    const-string v4, "run-as"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lorg/eclipse/jetty/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/eclipse/jetty/xml/XmlParser$Node;

    move-result-object v31

    .line 440
    .local v31, "run_as":Lorg/eclipse/jetty/xml/XmlParser$Node;
    if-eqz v31, :cond_e

    .line 442
    const-string v4, "role-name"

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, v31

    invoke-virtual {v0, v4, v5, v6}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v30

    .line 444
    .restart local v30    # "roleName":Ljava/lang/String;
    if-eqz v30, :cond_e

    .line 446
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".servlet.run-as"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/eclipse/jetty/webapp/MetaData;->getOrigin(Ljava/lang/String;)Lorg/eclipse/jetty/webapp/Origin;

    move-result-object v23

    .line 447
    .restart local v23    # "o":Lorg/eclipse/jetty/webapp/Origin;
    sget-object v4, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor$1;->$SwitchMap$org$eclipse$jetty$webapp$Origin:[I

    invoke-virtual/range {v23 .. v23}, Lorg/eclipse/jetty/webapp/Origin;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_4

    .line 479
    .end local v23    # "o":Lorg/eclipse/jetty/webapp/Origin;
    .end local v30    # "roleName":Ljava/lang/String;
    :cond_e
    :goto_6
    const-string v4, "async-supported"

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5, v6}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v9

    .line 480
    .local v9, "async":Ljava/lang/String;
    if-eqz v9, :cond_10

    .line 482
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_f

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_17

    :cond_f
    const/16 v41, 0x1

    .line 483
    .local v41, "val":Z
    :goto_7
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".servlet.async-supported"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/eclipse/jetty/webapp/MetaData;->getOrigin(Ljava/lang/String;)Lorg/eclipse/jetty/webapp/Origin;

    move-result-object v23

    .line 484
    .restart local v23    # "o":Lorg/eclipse/jetty/webapp/Origin;
    sget-object v4, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor$1;->$SwitchMap$org$eclipse$jetty$webapp$Origin:[I

    invoke-virtual/range {v23 .. v23}, Lorg/eclipse/jetty/webapp/Origin;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_5

    .line 515
    .end local v23    # "o":Lorg/eclipse/jetty/webapp/Origin;
    .end local v41    # "val":Z
    :cond_10
    :goto_8
    const-string v4, "enabled"

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v4, v5, v6}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v12

    .line 516
    .local v12, "enabled":Ljava/lang/String;
    if-eqz v12, :cond_12

    .line 518
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_11

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_18

    :cond_11
    const/16 v16, 0x1

    .line 519
    .local v16, "is_enabled":Z
    :goto_9
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".servlet.enabled"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/eclipse/jetty/webapp/MetaData;->getOrigin(Ljava/lang/String;)Lorg/eclipse/jetty/webapp/Origin;

    move-result-object v23

    .line 520
    .restart local v23    # "o":Lorg/eclipse/jetty/webapp/Origin;
    sget-object v4, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor$1;->$SwitchMap$org$eclipse$jetty$webapp$Origin:[I

    invoke-virtual/range {v23 .. v23}, Lorg/eclipse/jetty/webapp/Origin;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_6

    .line 556
    .end local v16    # "is_enabled":Z
    .end local v23    # "o":Lorg/eclipse/jetty/webapp/Origin;
    :cond_12
    :goto_a
    const-string v4, "multipart-config"

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Lorg/eclipse/jetty/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/eclipse/jetty/xml/XmlParser$Node;

    move-result-object v22

    .line 557
    .local v22, "multipart":Lorg/eclipse/jetty/xml/XmlParser$Node;
    if-eqz v22, :cond_16

    .line 559
    const-string v4, "location"

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5, v6}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    .line 560
    .local v3, "location":Ljava/lang/String;
    const-string v4, "max-file-size"

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5, v6}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v20

    .line 561
    .local v20, "maxFile":Ljava/lang/String;
    const-string v4, "max-request-size"

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5, v6}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v21

    .line 562
    .local v21, "maxRequest":Ljava/lang/String;
    const-string v4, "file-size-threshold"

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v4, v5, v6}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v39

    .line 563
    .local v39, "threshold":Ljava/lang/String;
    new-instance v2, Ljavax/servlet/MultipartConfigElement;

    if-eqz v20, :cond_13

    const-string v4, ""

    move-object/from16 v0, v20

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_19

    :cond_13
    const-wide/16 v4, -0x1

    :goto_b
    if-eqz v21, :cond_14

    const-string v6, ""

    move-object/from16 v0, v21

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1a

    :cond_14
    const-wide/16 v6, -0x1

    :goto_c
    if-eqz v39, :cond_15

    const-string v8, ""

    move-object/from16 v0, v39

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1b

    :cond_15
    const/4 v8, 0x0

    :goto_d
    invoke-direct/range {v2 .. v8}, Ljavax/servlet/MultipartConfigElement;-><init>(Ljava/lang/String;JJI)V

    .line 568
    .local v2, "element":Ljavax/servlet/MultipartConfigElement;
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".servlet.multipart-config"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/eclipse/jetty/webapp/MetaData;->getOrigin(Ljava/lang/String;)Lorg/eclipse/jetty/webapp/Origin;

    move-result-object v23

    .line 569
    .restart local v23    # "o":Lorg/eclipse/jetty/webapp/Origin;
    sget-object v4, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor$1;->$SwitchMap$org$eclipse$jetty$webapp$Origin:[I

    invoke-virtual/range {v23 .. v23}, Lorg/eclipse/jetty/webapp/Origin;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_7

    .line 608
    .end local v2    # "element":Ljavax/servlet/MultipartConfigElement;
    .end local v3    # "location":Ljava/lang/String;
    .end local v20    # "maxFile":Ljava/lang/String;
    .end local v21    # "maxRequest":Ljava/lang/String;
    .end local v23    # "o":Lorg/eclipse/jetty/webapp/Origin;
    .end local v39    # "threshold":Ljava/lang/String;
    :cond_16
    :goto_e
    return-void

    .line 452
    .end local v9    # "async":Ljava/lang/String;
    .end local v12    # "enabled":Ljava/lang/String;
    .end local v22    # "multipart":Lorg/eclipse/jetty/xml/XmlParser$Node;
    .restart local v23    # "o":Lorg/eclipse/jetty/webapp/Origin;
    .restart local v30    # "roleName":Ljava/lang/String;
    :pswitch_c
    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->setRunAsRole(Ljava/lang/String;)V

    .line 453
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".servlet.run-as"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v4, v5, v0}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto/16 :goto_6

    .line 461
    :pswitch_d
    move-object/from16 v0, p2

    instance-of v4, v0, Lorg/eclipse/jetty/webapp/FragmentDescriptor;

    if-nez v4, :cond_e

    .line 463
    move-object/from16 v0, v30

    invoke-virtual {v13, v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->setRunAsRole(Ljava/lang/String;)V

    .line 464
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".servlet.run-as"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v4, v5, v0}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto/16 :goto_6

    .line 471
    :pswitch_e
    invoke-virtual {v13}, Lorg/eclipse/jetty/servlet/ServletHolder;->getRunAsRole()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v30

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_e

    .line 472
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Conflicting run-as role "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v30

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for servlet "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/webapp/Descriptor;->getResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 482
    .end local v23    # "o":Lorg/eclipse/jetty/webapp/Origin;
    .end local v30    # "roleName":Ljava/lang/String;
    .restart local v9    # "async":Ljava/lang/String;
    :cond_17
    const/16 v41, 0x0

    goto/16 :goto_7

    .line 489
    .restart local v23    # "o":Lorg/eclipse/jetty/webapp/Origin;
    .restart local v41    # "val":Z
    :pswitch_f
    move/from16 v0, v41

    invoke-virtual {v13, v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->setAsyncSupported(Z)V

    .line 490
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".servlet.async-supported"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v4, v5, v0}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto/16 :goto_8

    .line 498
    :pswitch_10
    move-object/from16 v0, p2

    instance-of v4, v0, Lorg/eclipse/jetty/webapp/FragmentDescriptor;

    if-nez v4, :cond_10

    .line 500
    move/from16 v0, v41

    invoke-virtual {v13, v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->setAsyncSupported(Z)V

    .line 501
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".servlet.async-supported"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v4, v5, v0}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto/16 :goto_8

    .line 508
    :pswitch_11
    invoke-virtual {v13}, Lorg/eclipse/jetty/servlet/ServletHolder;->isAsyncSupported()Z

    move-result v4

    move/from16 v0, v41

    if-eq v4, v0, :cond_10

    .line 509
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Conflicting async-supported="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " for servlet "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/webapp/Descriptor;->getResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 518
    .end local v23    # "o":Lorg/eclipse/jetty/webapp/Origin;
    .end local v41    # "val":Z
    .restart local v12    # "enabled":Ljava/lang/String;
    :cond_18
    const/16 v16, 0x0

    goto/16 :goto_9

    .line 525
    .restart local v16    # "is_enabled":Z
    .restart local v23    # "o":Lorg/eclipse/jetty/webapp/Origin;
    :pswitch_12
    move/from16 v0, v16

    invoke-virtual {v13, v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->setEnabled(Z)V

    .line 526
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".servlet.enabled"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v4, v5, v0}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto/16 :goto_a

    .line 534
    :pswitch_13
    move-object/from16 v0, p2

    instance-of v4, v0, Lorg/eclipse/jetty/webapp/FragmentDescriptor;

    if-nez v4, :cond_12

    .line 536
    move/from16 v0, v16

    invoke-virtual {v13, v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->setEnabled(Z)V

    .line 537
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".servlet.enabled"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v4, v5, v0}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto/16 :goto_a

    .line 544
    :pswitch_14
    invoke-virtual {v13}, Lorg/eclipse/jetty/servlet/ServletHolder;->isEnabled()Z

    move-result v4

    move/from16 v0, v16

    if-eq v4, v0, :cond_12

    .line 545
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Conflicting value of servlet enabled for servlet "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/webapp/Descriptor;->getResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 563
    .end local v16    # "is_enabled":Z
    .end local v23    # "o":Lorg/eclipse/jetty/webapp/Origin;
    .restart local v3    # "location":Ljava/lang/String;
    .restart local v20    # "maxFile":Ljava/lang/String;
    .restart local v21    # "maxRequest":Ljava/lang/String;
    .restart local v22    # "multipart":Lorg/eclipse/jetty/xml/XmlParser$Node;
    .restart local v39    # "threshold":Ljava/lang/String;
    :cond_19
    invoke-static/range {v20 .. v20}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    goto/16 :goto_b

    :cond_1a
    invoke-static/range {v21 .. v21}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    goto/16 :goto_c

    :cond_1b
    invoke-static/range {v39 .. v39}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    goto/16 :goto_d

    .line 574
    .restart local v2    # "element":Ljavax/servlet/MultipartConfigElement;
    .restart local v23    # "o":Lorg/eclipse/jetty/webapp/Origin;
    :pswitch_15
    invoke-virtual {v13}, Lorg/eclipse/jetty/servlet/ServletHolder;->getRegistration()Ljavax/servlet/ServletRegistration$Dynamic;

    move-result-object v4

    invoke-interface {v4, v2}, Ljavax/servlet/ServletRegistration$Dynamic;->setMultipartConfig(Ljavax/servlet/MultipartConfigElement;)V

    .line 575
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".servlet.multipart-config"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v4, v5, v0}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto/16 :goto_e

    .line 583
    :pswitch_16
    move-object/from16 v0, p2

    instance-of v4, v0, Lorg/eclipse/jetty/webapp/FragmentDescriptor;

    if-nez v4, :cond_16

    .line 585
    invoke-virtual {v13}, Lorg/eclipse/jetty/servlet/ServletHolder;->getRegistration()Ljavax/servlet/ServletRegistration$Dynamic;

    move-result-object v4

    invoke-interface {v4, v2}, Ljavax/servlet/ServletRegistration$Dynamic;->setMultipartConfig(Ljavax/servlet/MultipartConfigElement;)V

    .line 586
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".servlet.multipart-config"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v4, v5, v0}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto/16 :goto_e

    .line 593
    :pswitch_17
    invoke-virtual {v13}, Lorg/eclipse/jetty/servlet/ServletHolder;->getRegistration()Ljavax/servlet/ServletRegistration$Dynamic;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jetty/servlet/ServletHolder$Registration;

    invoke-virtual {v4}, Lorg/eclipse/jetty/servlet/ServletHolder$Registration;->getMultipartConfig()Ljavax/servlet/MultipartConfigElement;

    move-result-object v10

    .line 595
    .local v10, "cfg":Ljavax/servlet/MultipartConfigElement;
    invoke-virtual {v10}, Ljavax/servlet/MultipartConfigElement;->getMaxFileSize()J

    move-result-wide v4

    invoke-virtual {v2}, Ljavax/servlet/MultipartConfigElement;->getMaxFileSize()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1c

    .line 596
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Conflicting multipart-config max-file-size for servlet "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/webapp/Descriptor;->getResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 597
    :cond_1c
    invoke-virtual {v10}, Ljavax/servlet/MultipartConfigElement;->getMaxRequestSize()J

    move-result-wide v4

    invoke-virtual {v2}, Ljavax/servlet/MultipartConfigElement;->getMaxRequestSize()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1d

    .line 598
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Conflicting multipart-config max-request-size for servlet "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/webapp/Descriptor;->getResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 599
    :cond_1d
    invoke-virtual {v10}, Ljavax/servlet/MultipartConfigElement;->getFileSizeThreshold()I

    move-result v4

    invoke-virtual {v2}, Ljavax/servlet/MultipartConfigElement;->getFileSizeThreshold()I

    move-result v5

    if-eq v4, v5, :cond_1e

    .line 600
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Conflicting multipart-config file-size-threshold for servlet "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/webapp/Descriptor;->getResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 601
    :cond_1e
    invoke-virtual {v10}, Ljavax/servlet/MultipartConfigElement;->getLocation()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_1f

    invoke-virtual {v2}, Ljavax/servlet/MultipartConfigElement;->getLocation()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_20

    invoke-virtual {v2}, Ljavax/servlet/MultipartConfigElement;->getLocation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_20

    :cond_1f
    invoke-virtual {v10}, Ljavax/servlet/MultipartConfigElement;->getLocation()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_16

    invoke-virtual {v2}, Ljavax/servlet/MultipartConfigElement;->getLocation()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_20

    invoke-virtual {v2}, Ljavax/servlet/MultipartConfigElement;->getLocation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_16

    .line 603
    :cond_20
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Conflicting multipart-config location for servlet "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v37

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/webapp/Descriptor;->getResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 296
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_6
    .end packed-switch

    .line 362
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_8
        :pswitch_9
    .end packed-switch

    .line 403
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_3
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_b
    .end packed-switch

    .line 447
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_c
        :pswitch_d
        :pswitch_d
        :pswitch_d
        :pswitch_e
    .end packed-switch

    .line 484
    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_f
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_11
    .end packed-switch

    .line 520
    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_12
        :pswitch_13
        :pswitch_13
        :pswitch_13
        :pswitch_14
    .end packed-switch

    .line 569
    :pswitch_data_7
    .packed-switch 0x1
        :pswitch_15
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_17
    .end packed-switch
.end method

.method protected visitServletMapping(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/webapp/Descriptor;Lorg/eclipse/jetty/xml/XmlParser$Node;)V
    .locals 8
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .param p2, "descriptor"    # Lorg/eclipse/jetty/webapp/Descriptor;
    .param p3, "node"    # Lorg/eclipse/jetty/xml/XmlParser$Node;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 625
    const-string v5, "servlet-name"

    invoke-virtual {p3, v5, v4, v3}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v2

    .line 626
    .local v2, "servlet_name":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".servlet.mappings"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/webapp/MetaData;->getOrigin(Ljava/lang/String;)Lorg/eclipse/jetty/webapp/Origin;

    move-result-object v1

    .line 628
    .local v1, "origin":Lorg/eclipse/jetty/webapp/Origin;
    sget-object v5, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor$1;->$SwitchMap$org$eclipse$jetty$webapp$Origin:[I

    invoke-virtual {v1}, Lorg/eclipse/jetty/webapp/Origin;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 657
    :cond_0
    :goto_0
    return-void

    .line 633
    :pswitch_0
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".servlet.mappings"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, p2}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    .line 634
    invoke-virtual {p0, v2, p3, p1, p2}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->addServletMapping(Ljava/lang/String;Lorg/eclipse/jetty/xml/XmlParser$Node;Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/webapp/Descriptor;)Lorg/eclipse/jetty/servlet/ServletMapping;

    move-result-object v0

    .line 635
    .local v0, "mapping":Lorg/eclipse/jetty/servlet/ServletMapping;
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".servlet.mappings"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/eclipse/jetty/webapp/MetaData;->getOrigin(Ljava/lang/String;)Lorg/eclipse/jetty/webapp/Origin;

    move-result-object v5

    sget-object v6, Lorg/eclipse/jetty/webapp/Origin;->WebDefaults:Lorg/eclipse/jetty/webapp/Origin;

    if-ne v5, v6, :cond_1

    :goto_1
    invoke-virtual {v0, v3}, Lorg/eclipse/jetty/servlet/ServletMapping;->setDefault(Z)V

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1

    .line 644
    .end local v0    # "mapping":Lorg/eclipse/jetty/servlet/ServletMapping;
    :pswitch_1
    instance-of v3, p2, Lorg/eclipse/jetty/webapp/FragmentDescriptor;

    if-nez v3, :cond_0

    .line 646
    invoke-virtual {p0, v2, p3, p1, p2}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->addServletMapping(Ljava/lang/String;Lorg/eclipse/jetty/xml/XmlParser$Node;Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/webapp/Descriptor;)Lorg/eclipse/jetty/servlet/ServletMapping;

    goto :goto_0

    .line 653
    :pswitch_2
    invoke-virtual {p0, v2, p3, p1, p2}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->addServletMapping(Ljava/lang/String;Lorg/eclipse/jetty/xml/XmlParser$Node;Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/webapp/Descriptor;)Lorg/eclipse/jetty/servlet/ServletMapping;

    goto :goto_0

    .line 628
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected visitSessionConfig(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/webapp/Descriptor;Lorg/eclipse/jetty/xml/XmlParser$Node;)V
    .locals 21
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .param p2, "descriptor"    # Lorg/eclipse/jetty/webapp/Descriptor;
    .param p3, "node"    # Lorg/eclipse/jetty/xml/XmlParser$Node;

    .prologue
    .line 667
    const-string v18, "session-timeout"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/eclipse/jetty/xml/XmlParser$Node;

    move-result-object v15

    .line 668
    .local v15, "tNode":Lorg/eclipse/jetty/xml/XmlParser$Node;
    if-eqz v15, :cond_0

    .line 670
    const/16 v18, 0x0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Lorg/eclipse/jetty/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v16

    .line 671
    .local v16, "timeout":I
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getSessionHandler()Lorg/eclipse/jetty/server/session/SessionHandler;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/jetty/server/session/SessionHandler;->getSessionManager()Lorg/eclipse/jetty/server/SessionManager;

    move-result-object v18

    mul-int/lit8 v19, v16, 0x3c

    invoke-interface/range {v18 .. v19}, Lorg/eclipse/jetty/server/SessionManager;->setMaxInactiveInterval(I)V

    .line 677
    .end local v16    # "timeout":I
    :cond_0
    const-string v18, "tracking-mode"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/xml/XmlParser$Node;->iterator(Ljava/lang/String;)Ljava/util/Iterator;

    move-result-object v7

    .line 678
    .local v7, "iter":Ljava/util/Iterator;
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 680
    const/4 v10, 0x0

    .line 681
    .local v10, "modes":Ljava/util/Set;, "Ljava/util/Set<Ljavax/servlet/SessionTrackingMode;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v18

    const-string v19, "session.tracking-mode"

    invoke-virtual/range {v18 .. v19}, Lorg/eclipse/jetty/webapp/MetaData;->getOrigin(Ljava/lang/String;)Lorg/eclipse/jetty/webapp/Origin;

    move-result-object v12

    .line 682
    .local v12, "o":Lorg/eclipse/jetty/webapp/Origin;
    sget-object v18, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor$1;->$SwitchMap$org$eclipse$jetty$webapp$Origin:[I

    invoke-virtual {v12}, Lorg/eclipse/jetty/webapp/Origin;->ordinal()I

    move-result v19

    aget v18, v18, v19

    packed-switch v18, :pswitch_data_0

    .line 706
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_2

    .line 708
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/eclipse/jetty/xml/XmlParser$Node;

    .line 709
    .local v8, "mNode":Lorg/eclipse/jetty/xml/XmlParser$Node;
    const/16 v18, 0x0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v8, v0, v1}, Lorg/eclipse/jetty/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v17

    .line 710
    .local v17, "trackMode":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Ljavax/servlet/SessionTrackingMode;->valueOf(Ljava/lang/String;)Ljavax/servlet/SessionTrackingMode;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v10, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 688
    .end local v8    # "mNode":Lorg/eclipse/jetty/xml/XmlParser$Node;
    .end local v17    # "trackMode":Ljava/lang/String;
    :pswitch_0
    new-instance v10, Ljava/util/HashSet;

    .end local v10    # "modes":Ljava/util/Set;, "Ljava/util/Set<Ljavax/servlet/SessionTrackingMode;>;"
    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 689
    .restart local v10    # "modes":Ljava/util/Set;, "Ljava/util/Set<Ljavax/servlet/SessionTrackingMode;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v18

    const-string v19, "session.tracking-mode"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto :goto_0

    .line 697
    :pswitch_1
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/eclipse/jetty/webapp/OverrideDescriptor;

    move/from16 v18, v0

    if-eqz v18, :cond_1

    .line 698
    new-instance v10, Ljava/util/HashSet;

    .end local v10    # "modes":Ljava/util/Set;, "Ljava/util/Set<Ljavax/servlet/SessionTrackingMode;>;"
    invoke-direct {v10}, Ljava/util/HashSet;-><init>()V

    .line 701
    .restart local v10    # "modes":Ljava/util/Set;, "Ljava/util/Set<Ljavax/servlet/SessionTrackingMode;>;"
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v18

    const-string v19, "session.tracking-mode"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto :goto_0

    .line 700
    :cond_1
    new-instance v10, Ljava/util/HashSet;

    .end local v10    # "modes":Ljava/util/Set;, "Ljava/util/Set<Ljavax/servlet/SessionTrackingMode;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getSessionHandler()Lorg/eclipse/jetty/server/session/SessionHandler;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/jetty/server/session/SessionHandler;->getSessionManager()Lorg/eclipse/jetty/server/SessionManager;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/eclipse/jetty/server/SessionManager;->getEffectiveSessionTrackingModes()Ljava/util/Set;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v10, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .restart local v10    # "modes":Ljava/util/Set;, "Ljava/util/Set<Ljavax/servlet/SessionTrackingMode;>;"
    goto :goto_1

    .line 712
    :cond_2
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getSessionHandler()Lorg/eclipse/jetty/server/session/SessionHandler;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/jetty/server/session/SessionHandler;->getSessionManager()Lorg/eclipse/jetty/server/SessionManager;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v10}, Lorg/eclipse/jetty/server/SessionManager;->setSessionTrackingModes(Ljava/util/Set;)V

    .line 718
    .end local v10    # "modes":Ljava/util/Set;, "Ljava/util/Set<Ljavax/servlet/SessionTrackingMode;>;"
    .end local v12    # "o":Lorg/eclipse/jetty/webapp/Origin;
    :cond_3
    const-string v18, "cookie-config"

    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/eclipse/jetty/xml/XmlParser$Node;

    move-result-object v4

    .line 719
    .local v4, "cookieConfig":Lorg/eclipse/jetty/xml/XmlParser$Node;
    if-eqz v4, :cond_a

    .line 722
    const-string v18, "name"

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v4, v0, v1, v2}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v11

    .line 723
    .local v11, "name":Ljava/lang/String;
    if-eqz v11, :cond_4

    .line 725
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v18

    const-string v19, "cookie-config.name"

    invoke-virtual/range {v18 .. v19}, Lorg/eclipse/jetty/webapp/MetaData;->getOrigin(Ljava/lang/String;)Lorg/eclipse/jetty/webapp/Origin;

    move-result-object v12

    .line 726
    .restart local v12    # "o":Lorg/eclipse/jetty/webapp/Origin;
    sget-object v18, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor$1;->$SwitchMap$org$eclipse$jetty$webapp$Origin:[I

    invoke-virtual {v12}, Lorg/eclipse/jetty/webapp/Origin;->ordinal()I

    move-result v19

    aget v18, v18, v19

    packed-switch v18, :pswitch_data_1

    .line 758
    .end local v12    # "o":Lorg/eclipse/jetty/webapp/Origin;
    :cond_4
    :goto_2
    const-string v18, "domain"

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v4, v0, v1, v2}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v5

    .line 759
    .local v5, "domain":Ljava/lang/String;
    if-eqz v5, :cond_5

    .line 761
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v18

    const-string v19, "cookie-config.domain"

    invoke-virtual/range {v18 .. v19}, Lorg/eclipse/jetty/webapp/MetaData;->getOrigin(Ljava/lang/String;)Lorg/eclipse/jetty/webapp/Origin;

    move-result-object v12

    .line 762
    .restart local v12    # "o":Lorg/eclipse/jetty/webapp/Origin;
    sget-object v18, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor$1;->$SwitchMap$org$eclipse$jetty$webapp$Origin:[I

    invoke-virtual {v12}, Lorg/eclipse/jetty/webapp/Origin;->ordinal()I

    move-result v19

    aget v18, v18, v19

    packed-switch v18, :pswitch_data_2

    .line 794
    .end local v12    # "o":Lorg/eclipse/jetty/webapp/Origin;
    :cond_5
    :goto_3
    const-string v18, "path"

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v4, v0, v1, v2}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v13

    .line 795
    .local v13, "path":Ljava/lang/String;
    if-eqz v13, :cond_6

    .line 797
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v18

    const-string v19, "cookie-config.path"

    invoke-virtual/range {v18 .. v19}, Lorg/eclipse/jetty/webapp/MetaData;->getOrigin(Ljava/lang/String;)Lorg/eclipse/jetty/webapp/Origin;

    move-result-object v12

    .line 798
    .restart local v12    # "o":Lorg/eclipse/jetty/webapp/Origin;
    sget-object v18, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor$1;->$SwitchMap$org$eclipse$jetty$webapp$Origin:[I

    invoke-virtual {v12}, Lorg/eclipse/jetty/webapp/Origin;->ordinal()I

    move-result v19

    aget v18, v18, v19

    packed-switch v18, :pswitch_data_3

    .line 830
    .end local v12    # "o":Lorg/eclipse/jetty/webapp/Origin;
    :cond_6
    :goto_4
    const-string v18, "comment"

    const/16 v19, 0x0

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v4, v0, v1, v2}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    .line 831
    .local v3, "comment":Ljava/lang/String;
    if-eqz v3, :cond_7

    .line 833
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v18

    const-string v19, "cookie-config.comment"

    invoke-virtual/range {v18 .. v19}, Lorg/eclipse/jetty/webapp/MetaData;->getOrigin(Ljava/lang/String;)Lorg/eclipse/jetty/webapp/Origin;

    move-result-object v12

    .line 834
    .restart local v12    # "o":Lorg/eclipse/jetty/webapp/Origin;
    sget-object v18, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor$1;->$SwitchMap$org$eclipse$jetty$webapp$Origin:[I

    invoke-virtual {v12}, Lorg/eclipse/jetty/webapp/Origin;->ordinal()I

    move-result v19

    aget v18, v18, v19

    packed-switch v18, :pswitch_data_4

    .line 866
    .end local v12    # "o":Lorg/eclipse/jetty/webapp/Origin;
    :cond_7
    :goto_5
    const-string v18, "http-only"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lorg/eclipse/jetty/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/eclipse/jetty/xml/XmlParser$Node;

    move-result-object v15

    .line 867
    if-eqz v15, :cond_8

    .line 869
    const/16 v18, 0x0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Lorg/eclipse/jetty/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 870
    .local v6, "httpOnly":Z
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v18

    const-string v19, "cookie-config.http-only"

    invoke-virtual/range {v18 .. v19}, Lorg/eclipse/jetty/webapp/MetaData;->getOrigin(Ljava/lang/String;)Lorg/eclipse/jetty/webapp/Origin;

    move-result-object v12

    .line 871
    .restart local v12    # "o":Lorg/eclipse/jetty/webapp/Origin;
    sget-object v18, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor$1;->$SwitchMap$org$eclipse$jetty$webapp$Origin:[I

    invoke-virtual {v12}, Lorg/eclipse/jetty/webapp/Origin;->ordinal()I

    move-result v19

    aget v18, v18, v19

    packed-switch v18, :pswitch_data_5

    .line 903
    .end local v6    # "httpOnly":Z
    .end local v12    # "o":Lorg/eclipse/jetty/webapp/Origin;
    :cond_8
    :goto_6
    const-string v18, "secure"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lorg/eclipse/jetty/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/eclipse/jetty/xml/XmlParser$Node;

    move-result-object v15

    .line 904
    if-eqz v15, :cond_9

    .line 906
    const/16 v18, 0x0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Lorg/eclipse/jetty/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v14

    .line 907
    .local v14, "secure":Z
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v18

    const-string v19, "cookie-config.secure"

    invoke-virtual/range {v18 .. v19}, Lorg/eclipse/jetty/webapp/MetaData;->getOrigin(Ljava/lang/String;)Lorg/eclipse/jetty/webapp/Origin;

    move-result-object v12

    .line 908
    .restart local v12    # "o":Lorg/eclipse/jetty/webapp/Origin;
    sget-object v18, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor$1;->$SwitchMap$org$eclipse$jetty$webapp$Origin:[I

    invoke-virtual {v12}, Lorg/eclipse/jetty/webapp/Origin;->ordinal()I

    move-result v19

    aget v18, v18, v19

    packed-switch v18, :pswitch_data_6

    .line 940
    .end local v12    # "o":Lorg/eclipse/jetty/webapp/Origin;
    .end local v14    # "secure":Z
    :cond_9
    :goto_7
    const-string v18, "max-age"

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lorg/eclipse/jetty/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/eclipse/jetty/xml/XmlParser$Node;

    move-result-object v15

    .line 941
    if-eqz v15, :cond_a

    .line 943
    const/16 v18, 0x0

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v15, v0, v1}, Lorg/eclipse/jetty/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    .line 944
    .local v9, "maxAge":I
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v18

    const-string v19, "cookie-config.max-age"

    invoke-virtual/range {v18 .. v19}, Lorg/eclipse/jetty/webapp/MetaData;->getOrigin(Ljava/lang/String;)Lorg/eclipse/jetty/webapp/Origin;

    move-result-object v12

    .line 945
    .restart local v12    # "o":Lorg/eclipse/jetty/webapp/Origin;
    sget-object v18, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor$1;->$SwitchMap$org$eclipse$jetty$webapp$Origin:[I

    invoke-virtual {v12}, Lorg/eclipse/jetty/webapp/Origin;->ordinal()I

    move-result v19

    aget v18, v18, v19

    packed-switch v18, :pswitch_data_7

    .line 976
    .end local v3    # "comment":Ljava/lang/String;
    .end local v5    # "domain":Ljava/lang/String;
    .end local v9    # "maxAge":I
    .end local v11    # "name":Ljava/lang/String;
    .end local v12    # "o":Lorg/eclipse/jetty/webapp/Origin;
    .end local v13    # "path":Ljava/lang/String;
    :cond_a
    :goto_8
    return-void

    .line 731
    .restart local v11    # "name":Ljava/lang/String;
    .restart local v12    # "o":Lorg/eclipse/jetty/webapp/Origin;
    :pswitch_2
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getSessionHandler()Lorg/eclipse/jetty/server/session/SessionHandler;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/jetty/server/session/SessionHandler;->getSessionManager()Lorg/eclipse/jetty/server/SessionManager;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/eclipse/jetty/server/SessionManager;->getSessionCookieConfig()Ljavax/servlet/SessionCookieConfig;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Ljavax/servlet/SessionCookieConfig;->setName(Ljava/lang/String;)V

    .line 732
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v18

    const-string v19, "cookie-config.name"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto/16 :goto_2

    .line 740
    :pswitch_3
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/eclipse/jetty/webapp/FragmentDescriptor;

    move/from16 v18, v0

    if-nez v18, :cond_4

    .line 742
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getSessionHandler()Lorg/eclipse/jetty/server/session/SessionHandler;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/jetty/server/session/SessionHandler;->getSessionManager()Lorg/eclipse/jetty/server/SessionManager;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/eclipse/jetty/server/SessionManager;->getSessionCookieConfig()Ljavax/servlet/SessionCookieConfig;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v11}, Ljavax/servlet/SessionCookieConfig;->setName(Ljava/lang/String;)V

    .line 743
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v18

    const-string v19, "cookie-config.name"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto/16 :goto_2

    .line 750
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getSessionHandler()Lorg/eclipse/jetty/server/session/SessionHandler;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/jetty/server/session/SessionHandler;->getSessionManager()Lorg/eclipse/jetty/server/SessionManager;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/eclipse/jetty/server/SessionManager;->getSessionCookieConfig()Ljavax/servlet/SessionCookieConfig;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljavax/servlet/SessionCookieConfig;->getName()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_4

    .line 751
    new-instance v18, Ljava/lang/IllegalStateException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Conflicting cookie-config name "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " in "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/webapp/Descriptor;->getResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 767
    .restart local v5    # "domain":Ljava/lang/String;
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getSessionHandler()Lorg/eclipse/jetty/server/session/SessionHandler;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/jetty/server/session/SessionHandler;->getSessionManager()Lorg/eclipse/jetty/server/SessionManager;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/eclipse/jetty/server/SessionManager;->getSessionCookieConfig()Ljavax/servlet/SessionCookieConfig;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Ljavax/servlet/SessionCookieConfig;->setDomain(Ljava/lang/String;)V

    .line 768
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v18

    const-string v19, "cookie-config.domain"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto/16 :goto_3

    .line 776
    :pswitch_6
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/eclipse/jetty/webapp/FragmentDescriptor;

    move/from16 v18, v0

    if-nez v18, :cond_5

    .line 778
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getSessionHandler()Lorg/eclipse/jetty/server/session/SessionHandler;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/jetty/server/session/SessionHandler;->getSessionManager()Lorg/eclipse/jetty/server/SessionManager;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/eclipse/jetty/server/SessionManager;->getSessionCookieConfig()Ljavax/servlet/SessionCookieConfig;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v5}, Ljavax/servlet/SessionCookieConfig;->setDomain(Ljava/lang/String;)V

    .line 779
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v18

    const-string v19, "cookie-config.domain"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto/16 :goto_3

    .line 786
    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getSessionHandler()Lorg/eclipse/jetty/server/session/SessionHandler;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/jetty/server/session/SessionHandler;->getSessionManager()Lorg/eclipse/jetty/server/SessionManager;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/eclipse/jetty/server/SessionManager;->getSessionCookieConfig()Ljavax/servlet/SessionCookieConfig;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljavax/servlet/SessionCookieConfig;->getDomain()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_5

    .line 787
    new-instance v18, Ljava/lang/IllegalStateException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Conflicting cookie-config domain "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " in "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/webapp/Descriptor;->getResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 803
    .restart local v13    # "path":Ljava/lang/String;
    :pswitch_8
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getSessionHandler()Lorg/eclipse/jetty/server/session/SessionHandler;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/jetty/server/session/SessionHandler;->getSessionManager()Lorg/eclipse/jetty/server/SessionManager;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/eclipse/jetty/server/SessionManager;->getSessionCookieConfig()Ljavax/servlet/SessionCookieConfig;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Ljavax/servlet/SessionCookieConfig;->setPath(Ljava/lang/String;)V

    .line 804
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v18

    const-string v19, "cookie-config.path"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto/16 :goto_4

    .line 812
    :pswitch_9
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/eclipse/jetty/webapp/FragmentDescriptor;

    move/from16 v18, v0

    if-nez v18, :cond_6

    .line 814
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getSessionHandler()Lorg/eclipse/jetty/server/session/SessionHandler;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/jetty/server/session/SessionHandler;->getSessionManager()Lorg/eclipse/jetty/server/SessionManager;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/eclipse/jetty/server/SessionManager;->getSessionCookieConfig()Ljavax/servlet/SessionCookieConfig;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v13}, Ljavax/servlet/SessionCookieConfig;->setPath(Ljava/lang/String;)V

    .line 815
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v18

    const-string v19, "cookie-config.path"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto/16 :goto_4

    .line 822
    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getSessionHandler()Lorg/eclipse/jetty/server/session/SessionHandler;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/jetty/server/session/SessionHandler;->getSessionManager()Lorg/eclipse/jetty/server/SessionManager;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/eclipse/jetty/server/SessionManager;->getSessionCookieConfig()Ljavax/servlet/SessionCookieConfig;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljavax/servlet/SessionCookieConfig;->getPath()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_6

    .line 823
    new-instance v18, Ljava/lang/IllegalStateException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Conflicting cookie-config path "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " in "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/webapp/Descriptor;->getResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 839
    .restart local v3    # "comment":Ljava/lang/String;
    :pswitch_b
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getSessionHandler()Lorg/eclipse/jetty/server/session/SessionHandler;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/jetty/server/session/SessionHandler;->getSessionManager()Lorg/eclipse/jetty/server/SessionManager;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/eclipse/jetty/server/SessionManager;->getSessionCookieConfig()Ljavax/servlet/SessionCookieConfig;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljavax/servlet/SessionCookieConfig;->setComment(Ljava/lang/String;)V

    .line 840
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v18

    const-string v19, "cookie-config.comment"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto/16 :goto_5

    .line 848
    :pswitch_c
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/eclipse/jetty/webapp/FragmentDescriptor;

    move/from16 v18, v0

    if-nez v18, :cond_7

    .line 850
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getSessionHandler()Lorg/eclipse/jetty/server/session/SessionHandler;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/jetty/server/session/SessionHandler;->getSessionManager()Lorg/eclipse/jetty/server/SessionManager;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/eclipse/jetty/server/SessionManager;->getSessionCookieConfig()Ljavax/servlet/SessionCookieConfig;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljavax/servlet/SessionCookieConfig;->setComment(Ljava/lang/String;)V

    .line 851
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v18

    const-string v19, "cookie-config.comment"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto/16 :goto_5

    .line 858
    :pswitch_d
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getSessionHandler()Lorg/eclipse/jetty/server/session/SessionHandler;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/jetty/server/session/SessionHandler;->getSessionManager()Lorg/eclipse/jetty/server/SessionManager;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/eclipse/jetty/server/SessionManager;->getSessionCookieConfig()Ljavax/servlet/SessionCookieConfig;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljavax/servlet/SessionCookieConfig;->getComment()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v18

    if-nez v18, :cond_7

    .line 859
    new-instance v18, Ljava/lang/IllegalStateException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Conflicting cookie-config comment "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " in "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/webapp/Descriptor;->getResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 876
    .restart local v6    # "httpOnly":Z
    :pswitch_e
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getSessionHandler()Lorg/eclipse/jetty/server/session/SessionHandler;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/jetty/server/session/SessionHandler;->getSessionManager()Lorg/eclipse/jetty/server/SessionManager;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/eclipse/jetty/server/SessionManager;->getSessionCookieConfig()Ljavax/servlet/SessionCookieConfig;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Ljavax/servlet/SessionCookieConfig;->setHttpOnly(Z)V

    .line 877
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v18

    const-string v19, "cookie-config.http-only"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto/16 :goto_6

    .line 885
    :pswitch_f
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/eclipse/jetty/webapp/FragmentDescriptor;

    move/from16 v18, v0

    if-nez v18, :cond_8

    .line 887
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getSessionHandler()Lorg/eclipse/jetty/server/session/SessionHandler;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/jetty/server/session/SessionHandler;->getSessionManager()Lorg/eclipse/jetty/server/SessionManager;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/eclipse/jetty/server/SessionManager;->getSessionCookieConfig()Ljavax/servlet/SessionCookieConfig;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v6}, Ljavax/servlet/SessionCookieConfig;->setHttpOnly(Z)V

    .line 888
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v18

    const-string v19, "cookie-config.http-only"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto/16 :goto_6

    .line 895
    :pswitch_10
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getSessionHandler()Lorg/eclipse/jetty/server/session/SessionHandler;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/jetty/server/session/SessionHandler;->getSessionManager()Lorg/eclipse/jetty/server/SessionManager;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/eclipse/jetty/server/SessionManager;->getSessionCookieConfig()Ljavax/servlet/SessionCookieConfig;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljavax/servlet/SessionCookieConfig;->isHttpOnly()Z

    move-result v18

    move/from16 v0, v18

    if-eq v0, v6, :cond_8

    .line 896
    new-instance v18, Ljava/lang/IllegalStateException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Conflicting cookie-config http-only "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " in "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/webapp/Descriptor;->getResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 913
    .end local v6    # "httpOnly":Z
    .restart local v14    # "secure":Z
    :pswitch_11
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getSessionHandler()Lorg/eclipse/jetty/server/session/SessionHandler;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/jetty/server/session/SessionHandler;->getSessionManager()Lorg/eclipse/jetty/server/SessionManager;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/eclipse/jetty/server/SessionManager;->getSessionCookieConfig()Ljavax/servlet/SessionCookieConfig;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Ljavax/servlet/SessionCookieConfig;->setSecure(Z)V

    .line 914
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v18

    const-string v19, "cookie-config.secure"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto/16 :goto_7

    .line 922
    :pswitch_12
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/eclipse/jetty/webapp/FragmentDescriptor;

    move/from16 v18, v0

    if-nez v18, :cond_9

    .line 924
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getSessionHandler()Lorg/eclipse/jetty/server/session/SessionHandler;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/jetty/server/session/SessionHandler;->getSessionManager()Lorg/eclipse/jetty/server/SessionManager;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/eclipse/jetty/server/SessionManager;->getSessionCookieConfig()Ljavax/servlet/SessionCookieConfig;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v14}, Ljavax/servlet/SessionCookieConfig;->setSecure(Z)V

    .line 925
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v18

    const-string v19, "cookie-config.secure"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto/16 :goto_7

    .line 932
    :pswitch_13
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getSessionHandler()Lorg/eclipse/jetty/server/session/SessionHandler;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/jetty/server/session/SessionHandler;->getSessionManager()Lorg/eclipse/jetty/server/SessionManager;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/eclipse/jetty/server/SessionManager;->getSessionCookieConfig()Ljavax/servlet/SessionCookieConfig;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljavax/servlet/SessionCookieConfig;->isSecure()Z

    move-result v18

    move/from16 v0, v18

    if-eq v0, v14, :cond_9

    .line 933
    new-instance v18, Ljava/lang/IllegalStateException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Conflicting cookie-config secure "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " in "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/webapp/Descriptor;->getResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 950
    .end local v14    # "secure":Z
    .restart local v9    # "maxAge":I
    :pswitch_14
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getSessionHandler()Lorg/eclipse/jetty/server/session/SessionHandler;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/jetty/server/session/SessionHandler;->getSessionManager()Lorg/eclipse/jetty/server/SessionManager;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/eclipse/jetty/server/SessionManager;->getSessionCookieConfig()Ljavax/servlet/SessionCookieConfig;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v9}, Ljavax/servlet/SessionCookieConfig;->setMaxAge(I)V

    .line 951
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v18

    const-string v19, "cookie-config.max-age"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto/16 :goto_8

    .line 959
    :pswitch_15
    move-object/from16 v0, p2

    instance-of v0, v0, Lorg/eclipse/jetty/webapp/FragmentDescriptor;

    move/from16 v18, v0

    if-nez v18, :cond_a

    .line 961
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getSessionHandler()Lorg/eclipse/jetty/server/session/SessionHandler;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/jetty/server/session/SessionHandler;->getSessionManager()Lorg/eclipse/jetty/server/SessionManager;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/eclipse/jetty/server/SessionManager;->getSessionCookieConfig()Ljavax/servlet/SessionCookieConfig;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-interface {v0, v9}, Ljavax/servlet/SessionCookieConfig;->setMaxAge(I)V

    .line 962
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v18

    const-string v19, "cookie-config.max-age"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    goto/16 :goto_8

    .line 969
    :pswitch_16
    invoke-virtual/range {p1 .. p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getSessionHandler()Lorg/eclipse/jetty/server/session/SessionHandler;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/jetty/server/session/SessionHandler;->getSessionManager()Lorg/eclipse/jetty/server/SessionManager;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/eclipse/jetty/server/SessionManager;->getSessionCookieConfig()Ljavax/servlet/SessionCookieConfig;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Ljavax/servlet/SessionCookieConfig;->getMaxAge()I

    move-result v18

    move/from16 v0, v18

    if-eq v0, v9, :cond_a

    .line 970
    new-instance v18, Ljava/lang/IllegalStateException;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Conflicting cookie-config max-age "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " in "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/webapp/Descriptor;->getResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-direct/range {v18 .. v19}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v18

    .line 682
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 726
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 762
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_7
    .end packed-switch

    .line 798
    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_8
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_a
    .end packed-switch

    .line 834
    :pswitch_data_4
    .packed-switch 0x1
        :pswitch_b
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_d
    .end packed-switch

    .line 871
    :pswitch_data_5
    .packed-switch 0x1
        :pswitch_e
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_10
    .end packed-switch

    .line 908
    :pswitch_data_6
    .packed-switch 0x1
        :pswitch_11
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_13
    .end packed-switch

    .line 945
    :pswitch_data_7
    .packed-switch 0x1
        :pswitch_14
        :pswitch_15
        :pswitch_15
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method

.method protected visitTagLib(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/webapp/Descriptor;Lorg/eclipse/jetty/xml/XmlParser$Node;)V
    .locals 7
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .param p2, "descriptor"    # Lorg/eclipse/jetty/webapp/Descriptor;
    .param p3, "node"    # Lorg/eclipse/jetty/xml/XmlParser$Node;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1286
    const-string v4, "taglib-uri"

    invoke-virtual {p3, v4, v5, v6}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v3

    .line 1287
    .local v3, "uri":Ljava/lang/String;
    const-string v4, "taglib-location"

    invoke-virtual {p3, v4, v5, v6}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v1

    .line 1289
    .local v1, "location":Ljava/lang/String;
    invoke-virtual {p1, v3, v1}, Lorg/eclipse/jetty/webapp/WebAppContext;->setResourceAlias(Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getServletContext()Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getJspConfigDescriptor()Ljavax/servlet/descriptor/JspConfigDescriptor;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspConfig;

    .line 1292
    .local v0, "config":Lorg/eclipse/jetty/servlet/ServletContextHandler$JspConfig;
    if-nez v0, :cond_0

    .line 1294
    new-instance v0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspConfig;

    .end local v0    # "config":Lorg/eclipse/jetty/servlet/ServletContextHandler$JspConfig;
    invoke-direct {v0}, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspConfig;-><init>()V

    .line 1295
    .restart local v0    # "config":Lorg/eclipse/jetty/servlet/ServletContextHandler$JspConfig;
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getServletContext()Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->setJspConfigDescriptor(Ljavax/servlet/descriptor/JspConfigDescriptor;)V

    .line 1298
    :cond_0
    new-instance v2, Lorg/eclipse/jetty/servlet/ServletContextHandler$TagLib;

    invoke-direct {v2}, Lorg/eclipse/jetty/servlet/ServletContextHandler$TagLib;-><init>()V

    .line 1299
    .local v2, "tl":Lorg/eclipse/jetty/servlet/ServletContextHandler$TagLib;
    invoke-virtual {v2, v1}, Lorg/eclipse/jetty/servlet/ServletContextHandler$TagLib;->setTaglibLocation(Ljava/lang/String;)V

    .line 1300
    invoke-virtual {v2, v3}, Lorg/eclipse/jetty/servlet/ServletContextHandler$TagLib;->setTaglibURI(Ljava/lang/String;)V

    .line 1301
    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspConfig;->addTaglibDescriptor(Ljavax/servlet/descriptor/TaglibDescriptor;)V

    .line 1302
    return-void
.end method

.method protected visitWelcomeFileList(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/webapp/Descriptor;Lorg/eclipse/jetty/xml/XmlParser$Node;)V
    .locals 3
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .param p2, "descriptor"    # Lorg/eclipse/jetty/webapp/Descriptor;
    .param p3, "node"    # Lorg/eclipse/jetty/xml/XmlParser$Node;

    .prologue
    .line 1033
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v1

    const-string v2, "welcome-file-list"

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/webapp/MetaData;->getOrigin(Ljava/lang/String;)Lorg/eclipse/jetty/webapp/Origin;

    move-result-object v0

    .line 1034
    .local v0, "o":Lorg/eclipse/jetty/webapp/Origin;
    sget-object v1, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor$1;->$SwitchMap$org$eclipse$jetty$webapp$Origin:[I

    invoke-virtual {v0}, Lorg/eclipse/jetty/webapp/Origin;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 1072
    :goto_0
    return-void

    .line 1038
    :pswitch_0
    invoke-virtual {p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v1

    const-string v2, "welcome-file-list"

    invoke-virtual {v1, v2, p2}, Lorg/eclipse/jetty/webapp/MetaData;->setOrigin(Ljava/lang/String;Lorg/eclipse/jetty/webapp/Descriptor;)V

    .line 1039
    invoke-virtual {p0, p1, p3}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->addWelcomeFiles(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/xml/XmlParser$Node;)V

    goto :goto_0

    .line 1045
    :pswitch_1
    invoke-virtual {p0, p1, p3}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->addWelcomeFiles(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/xml/XmlParser$Node;)V

    goto :goto_0

    .line 1052
    :pswitch_2
    instance-of v1, p2, Lorg/eclipse/jetty/webapp/DefaultsDescriptor;

    if-nez v1, :cond_0

    instance-of v1, p2, Lorg/eclipse/jetty/webapp/OverrideDescriptor;

    if-nez v1, :cond_0

    instance-of v1, p2, Lorg/eclipse/jetty/webapp/FragmentDescriptor;

    if-nez v1, :cond_0

    .line 1054
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {p1, v1}, Lorg/eclipse/jetty/webapp/WebAppContext;->setWelcomeFiles([Ljava/lang/String;)V

    .line 1056
    :cond_0
    invoke-virtual {p0, p1, p3}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->addWelcomeFiles(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/xml/XmlParser$Node;)V

    goto :goto_0

    .line 1062
    :pswitch_3
    invoke-virtual {p0, p1, p3}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->addWelcomeFiles(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/xml/XmlParser$Node;)V

    goto :goto_0

    .line 1068
    :pswitch_4
    invoke-virtual {p0, p1, p3}, Lorg/eclipse/jetty/webapp/StandardDescriptorProcessor;->addWelcomeFiles(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/xml/XmlParser$Node;)V

    goto :goto_0

    .line 1034
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
