.class final Lorg/eclipse/jetty/xml/XmlConfiguration$1;
.super Ljava/lang/Object;
.source "XmlConfiguration.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jetty/xml/XmlConfiguration;->main([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/security/PrivilegedAction",
        "<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$args:[Ljava/lang/String;

.field final synthetic val$exception:Ljava/util/concurrent/atomic/AtomicReference;


# direct methods
.method constructor <init>([Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .prologue
    .line 1198
    iput-object p1, p0, Lorg/eclipse/jetty/xml/XmlConfiguration$1;->val$args:[Ljava/lang/String;

    iput-object p2, p0, Lorg/eclipse/jetty/xml/XmlConfiguration$1;->val$exception:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 19

    .prologue
    .line 1204
    const/4 v12, 0x0

    .line 1209
    .local v12, "properties":Ljava/util/Properties;
    :try_start_0
    const-class v15, Lorg/eclipse/jetty/xml/XmlConfiguration;

    invoke-virtual {v15}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v15

    const-string v16, "org.eclipse.jetty.start.Config"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 1210
    .local v1, "config":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v15, "getProperties"

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Class;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v1, v15, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    invoke-virtual/range {v15 .. v17}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    move-object v0, v15

    check-cast v0, Ljava/util/Properties;

    move-object v12, v0

    .line 1211
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v15

    const-string v16, "org.eclipse.jetty.start.Config properties = {}"

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v12, v17, v18

    invoke-interface/range {v15 .. v17}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-object v13, v12

    .line 1227
    .end local v1    # "config":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v12    # "properties":Ljava/util/Properties;
    .local v13, "properties":Ljava/util/Properties;
    :goto_0
    if-nez v13, :cond_1

    .line 1229
    :try_start_1
    new-instance v12, Ljava/util/Properties;

    invoke-direct {v12}, Ljava/util/Properties;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    .line 1231
    .end local v13    # "properties":Ljava/util/Properties;
    .restart local v12    # "properties":Ljava/util/Properties;
    :try_start_2
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v15

    invoke-virtual {v15}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v4

    .line 1232
    .local v4, "ensysprop":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :goto_1
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v15

    if-eqz v15, :cond_2

    .line 1234
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 1235
    .local v10, "name":Ljava/lang/String;
    invoke-static {v10}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v10, v15}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1278
    .end local v4    # "ensysprop":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    .end local v10    # "name":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 1280
    .local v3, "e":Ljava/lang/Exception;
    :goto_2
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v15

    const-string v16, "EXCEPTION "

    move-object/from16 v0, v16

    invoke-interface {v15, v0, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1281
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/jetty/xml/XmlConfiguration$1;->val$exception:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v15, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1283
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_0
    const/4 v15, 0x0

    return-object v15

    .line 1213
    :catch_1
    move-exception v3

    .line 1215
    .local v3, "e":Ljava/lang/NoClassDefFoundError;
    :try_start_3
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v15

    invoke-interface {v15, v3}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    move-object v13, v12

    .line 1224
    .end local v12    # "properties":Ljava/util/Properties;
    .restart local v13    # "properties":Ljava/util/Properties;
    goto :goto_0

    .line 1217
    .end local v3    # "e":Ljava/lang/NoClassDefFoundError;
    .end local v13    # "properties":Ljava/util/Properties;
    .restart local v12    # "properties":Ljava/util/Properties;
    :catch_2
    move-exception v3

    .line 1219
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v15

    invoke-interface {v15, v3}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    move-object v13, v12

    .line 1224
    .end local v12    # "properties":Ljava/util/Properties;
    .restart local v13    # "properties":Ljava/util/Properties;
    goto :goto_0

    .line 1221
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    .end local v13    # "properties":Ljava/util/Properties;
    .restart local v12    # "properties":Ljava/util/Properties;
    :catch_3
    move-exception v3

    .line 1223
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/eclipse/jetty/xml/XmlConfiguration;->access$100()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v15

    invoke-interface {v15, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    move-object v13, v12

    .end local v12    # "properties":Ljava/util/Properties;
    .restart local v13    # "properties":Ljava/util/Properties;
    goto :goto_0

    .end local v3    # "e":Ljava/lang/Exception;
    :cond_1
    move-object v12, v13

    .line 1240
    .end local v13    # "properties":Ljava/util/Properties;
    .restart local v12    # "properties":Ljava/util/Properties;
    :cond_2
    const/4 v8, 0x0

    .line 1241
    .local v8, "last":Lorg/eclipse/jetty/xml/XmlConfiguration;
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/jetty/xml/XmlConfiguration$1;->val$args:[Ljava/lang/String;

    array-length v15, v15

    new-array v11, v15, [Ljava/lang/Object;

    .line 1242
    .local v11, "obj":[Ljava/lang/Object;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/jetty/xml/XmlConfiguration$1;->val$args:[Ljava/lang/String;

    array-length v15, v15

    if-ge v5, v15, :cond_7

    .line 1244
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/jetty/xml/XmlConfiguration$1;->val$args:[Ljava/lang/String;

    aget-object v15, v15, v5

    sget-object v16, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v15

    const-string v16, ".properties"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_3

    .line 1246
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/jetty/xml/XmlConfiguration$1;->val$args:[Ljava/lang/String;

    aget-object v15, v15, v5

    invoke-static {v15}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v15

    invoke-virtual {v15}, Lorg/eclipse/jetty/util/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v15

    invoke-virtual {v12, v15}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    .line 1242
    :goto_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 1250
    :cond_3
    new-instance v2, Lorg/eclipse/jetty/xml/XmlConfiguration;

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/jetty/xml/XmlConfiguration$1;->val$args:[Ljava/lang/String;

    aget-object v15, v15, v5

    invoke-static {v15}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v15

    invoke-virtual {v15}, Lorg/eclipse/jetty/util/resource/Resource;->getURL()Ljava/net/URL;

    move-result-object v15

    invoke-direct {v2, v15}, Lorg/eclipse/jetty/xml/XmlConfiguration;-><init>(Ljava/net/URL;)V

    .line 1251
    .local v2, "configuration":Lorg/eclipse/jetty/xml/XmlConfiguration;
    if-eqz v8, :cond_4

    .line 1252
    invoke-virtual {v2}, Lorg/eclipse/jetty/xml/XmlConfiguration;->getIdMap()Ljava/util/Map;

    move-result-object v15

    invoke-virtual {v8}, Lorg/eclipse/jetty/xml/XmlConfiguration;->getIdMap()Ljava/util/Map;

    move-result-object v16

    invoke-interface/range {v15 .. v16}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1253
    :cond_4
    invoke-virtual {v12}, Ljava/util/Properties;->size()I

    move-result v15

    if-lez v15, :cond_6

    .line 1255
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 1256
    .local v14, "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v12}, Ljava/util/Properties;->keySet()Ljava/util/Set;

    move-result-object v15

    invoke-interface {v15}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 1258
    .local v7, "key":Ljava/lang/Object;
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v7}, Ljava/util/Properties;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    invoke-interface/range {v14 .. v16}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 1260
    .end local v7    # "key":Ljava/lang/Object;
    :cond_5
    invoke-virtual {v2}, Lorg/eclipse/jetty/xml/XmlConfiguration;->getProperties()Ljava/util/Map;

    move-result-object v15

    invoke-interface {v15, v14}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1262
    .end local v6    # "i$":Ljava/util/Iterator;
    .end local v14    # "props":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_6
    invoke-virtual {v2}, Lorg/eclipse/jetty/xml/XmlConfiguration;->configure()Ljava/lang/Object;

    move-result-object v15

    aput-object v15, v11, v5

    .line 1263
    move-object v8, v2

    goto :goto_4

    .line 1268
    .end local v2    # "configuration":Lorg/eclipse/jetty/xml/XmlConfiguration;
    :cond_7
    const/4 v5, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/eclipse/jetty/xml/XmlConfiguration$1;->val$args:[Ljava/lang/String;

    array-length v15, v15

    if-ge v5, v15, :cond_0

    .line 1270
    aget-object v15, v11, v5

    instance-of v15, v15, Lorg/eclipse/jetty/util/component/LifeCycle;

    if-eqz v15, :cond_8

    .line 1272
    aget-object v9, v11, v5

    check-cast v9, Lorg/eclipse/jetty/util/component/LifeCycle;

    .line 1273
    .local v9, "lc":Lorg/eclipse/jetty/util/component/LifeCycle;
    invoke-interface {v9}, Lorg/eclipse/jetty/util/component/LifeCycle;->isRunning()Z

    move-result v15

    if-nez v15, :cond_8

    .line 1274
    invoke-interface {v9}, Lorg/eclipse/jetty/util/component/LifeCycle;->start()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 1268
    .end local v9    # "lc":Lorg/eclipse/jetty/util/component/LifeCycle;
    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 1278
    .end local v5    # "i":I
    .end local v8    # "last":Lorg/eclipse/jetty/xml/XmlConfiguration;
    .end local v11    # "obj":[Ljava/lang/Object;
    .end local v12    # "properties":Ljava/util/Properties;
    .restart local v13    # "properties":Ljava/util/Properties;
    :catch_4
    move-exception v3

    move-object v12, v13

    .end local v13    # "properties":Ljava/util/Properties;
    .restart local v12    # "properties":Ljava/util/Properties;
    goto/16 :goto_2
.end method
