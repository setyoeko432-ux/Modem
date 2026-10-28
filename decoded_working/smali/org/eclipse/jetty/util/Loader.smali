.class public Lorg/eclipse/jetty/util/Loader;
.super Ljava/lang/Object;
.source "Loader.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClassPath(Ljava/lang/ClassLoader;)Ljava/lang/String;
    .locals 6
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .local v0, "classpath":Ljava/lang/StringBuilder;
    :goto_0
    if-eqz p0, :cond_3

    instance-of v5, p0, Ljava/net/URLClassLoader;

    if-eqz v5, :cond_3

    move-object v5, p0

    .line 173
    check-cast v5, Ljava/net/URLClassLoader;

    invoke-virtual {v5}, Ljava/net/URLClassLoader;->getURLs()[Ljava/net/URL;

    move-result-object v4

    .line 174
    .local v4, "urls":[Ljava/net/URL;
    if-eqz v4, :cond_2

    .line 176
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v5, v4

    if-ge v2, v5, :cond_2

    .line 178
    aget-object v5, v4, v2

    invoke-static {v5}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/net/URL;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v3

    .line 179
    .local v3, "resource":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v3}, Lorg/eclipse/jetty/util/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v1

    .line 180
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 182
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 183
    sget-char v5, Ljava/io/File;->pathSeparatorChar:C

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 184
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 188
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "i":I
    .end local v3    # "resource":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_2
    invoke-virtual {p0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object p0

    .line 189
    goto :goto_0

    .line 190
    .end local v4    # "urls":[Ljava/net/URL;
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public static getResource(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/net/URL;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "checkParents"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/net/URL;"
        }
    .end annotation

    .prologue
    .local p0, "loadClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 51
    const/4 v1, 0x0

    .line 52
    .local v1, "url":Ljava/net/URL;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 53
    .local v0, "loader":Ljava/lang/ClassLoader;
    :goto_0
    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 55
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 56
    if-nez v1, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    :goto_1
    goto :goto_0

    :cond_0
    move-object v0, v2

    goto :goto_1

    .line 59
    :cond_1
    if-nez p0, :cond_2

    move-object v0, v2

    .line 60
    :goto_2
    if-nez v1, :cond_4

    if-eqz v0, :cond_4

    .line 62
    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 63
    if-nez v1, :cond_3

    if-eqz p2, :cond_3

    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    :goto_3
    goto :goto_2

    .line 59
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_2

    :cond_3
    move-object v0, v2

    .line 63
    goto :goto_3

    .line 66
    :cond_4
    if-nez v1, :cond_5

    .line 68
    invoke-static {p1}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    .line 71
    :cond_5
    return-object v1
.end method

.method public static getResourceBundle(Ljava/lang/Class;Ljava/lang/String;ZLjava/util/Locale;)Ljava/util/ResourceBundle;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "checkParents"    # Z
    .param p3, "locale"    # Ljava/util/Locale;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Locale;",
            ")",
            "Ljava/util/ResourceBundle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/MissingResourceException;
        }
    .end annotation

    .prologue
    .local p0, "loadClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x0

    .line 130
    const/4 v2, 0x0

    .line 131
    .local v2, "ex":Ljava/util/MissingResourceException;
    const/4 v0, 0x0

    .line 132
    .local v0, "bundle":Ljava/util/ResourceBundle;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 133
    .local v3, "loader":Ljava/lang/ClassLoader;
    :goto_0
    if-nez v0, :cond_2

    if-eqz v3, :cond_2

    .line 135
    :try_start_0
    invoke-static {p1, p3, v3}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 137
    :cond_0
    :goto_1
    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {v3}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v3

    :goto_2
    goto :goto_0

    .line 136
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/util/MissingResourceException;
    if-nez v2, :cond_0

    move-object v2, v1

    goto :goto_1

    .end local v1    # "e":Ljava/util/MissingResourceException;
    :cond_1
    move-object v3, v4

    .line 137
    goto :goto_2

    .line 140
    :cond_2
    if-nez p0, :cond_4

    move-object v3, v4

    .line 141
    :goto_3
    if-nez v0, :cond_6

    if-eqz v3, :cond_6

    .line 143
    :try_start_1
    invoke-static {p1, p3, v3}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 145
    :cond_3
    :goto_4
    if-nez v0, :cond_5

    if-eqz p2, :cond_5

    invoke-virtual {v3}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v3

    :goto_5
    goto :goto_3

    .line 140
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    goto :goto_3

    .line 144
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/util/MissingResourceException;
    if-nez v2, :cond_3

    move-object v2, v1

    goto :goto_4

    .end local v1    # "e":Ljava/util/MissingResourceException;
    :cond_5
    move-object v3, v4

    .line 145
    goto :goto_5

    .line 148
    :cond_6
    if-nez v0, :cond_7

    .line 150
    :try_start_2
    invoke-static {p1, p3}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;
    :try_end_2
    .catch Ljava/util/MissingResourceException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 154
    :cond_7
    :goto_6
    if-eqz v0, :cond_8

    .line 155
    return-object v0

    .line 151
    :catch_2
    move-exception v1

    .restart local v1    # "e":Ljava/util/MissingResourceException;
    if-nez v2, :cond_7

    move-object v2, v1

    goto :goto_6

    .line 156
    .end local v1    # "e":Ljava/util/MissingResourceException;
    :cond_8
    throw v2
.end method

.method public static loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p0, "loadClass"    # Ljava/lang/Class;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lorg/eclipse/jetty/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public static loadClass(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 6
    .param p0, "loadClass"    # Ljava/lang/Class;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "checkParents"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 95
    const/4 v2, 0x0

    .line 96
    .local v2, "ex":Ljava/lang/ClassNotFoundException;
    const/4 v0, 0x0

    .line 97
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 98
    .local v3, "loader":Ljava/lang/ClassLoader;
    :goto_0
    if-nez v0, :cond_2

    if-eqz v3, :cond_2

    .line 100
    :try_start_0
    invoke-virtual {v3, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 102
    :cond_0
    :goto_1
    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {v3}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v3

    :goto_2
    goto :goto_0

    .line 101
    :catch_0
    move-exception v1

    .local v1, "e":Ljava/lang/ClassNotFoundException;
    if-nez v2, :cond_0

    move-object v2, v1

    goto :goto_1

    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :cond_1
    move-object v3, v4

    .line 102
    goto :goto_2

    .line 105
    :cond_2
    if-nez p0, :cond_4

    move-object v3, v4

    .line 106
    :goto_3
    if-nez v0, :cond_6

    if-eqz v3, :cond_6

    .line 108
    :try_start_1
    invoke-virtual {v3, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    .line 110
    :cond_3
    :goto_4
    if-nez v0, :cond_5

    if-eqz p2, :cond_5

    invoke-virtual {v3}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v3

    :goto_5
    goto :goto_3

    .line 105
    :cond_4
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    goto :goto_3

    .line 109
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/lang/ClassNotFoundException;
    if-nez v2, :cond_3

    move-object v2, v1

    goto :goto_4

    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :cond_5
    move-object v3, v4

    .line 110
    goto :goto_5

    .line 113
    :cond_6
    if-nez v0, :cond_7

    .line 115
    :try_start_2
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v0

    .line 119
    :cond_7
    :goto_6
    if-eqz v0, :cond_8

    .line 120
    return-object v0

    .line 116
    :catch_2
    move-exception v1

    .restart local v1    # "e":Ljava/lang/ClassNotFoundException;
    if-nez v2, :cond_7

    move-object v2, v1

    goto :goto_6

    .line 121
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :cond_8
    throw v2
.end method
