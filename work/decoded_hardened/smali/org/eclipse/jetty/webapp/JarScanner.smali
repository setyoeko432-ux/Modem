.class public abstract Lorg/eclipse/jetty/webapp/JarScanner;
.super Lorg/eclipse/jetty/util/PatternMatcher;
.source "JarScanner.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lorg/eclipse/jetty/webapp/JarScanner;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/webapp/JarScanner;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lorg/eclipse/jetty/util/PatternMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public matched(Ljava/net/URI;)V
    .locals 7
    .param p1, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 147
    sget-object v3, Lorg/eclipse/jetty/webapp/JarScanner;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v4, "Search of {}"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 148
    invoke-virtual {p1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ".jar"

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 151
    invoke-static {p1}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/net/URI;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jetty/util/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 152
    .local v1, "in":Ljava/io/InputStream;
    if-nez v1, :cond_1

    .line 170
    .end local v1    # "in":Ljava/io/InputStream;
    :cond_0
    :goto_0
    return-void

    .line 155
    .restart local v1    # "in":Ljava/io/InputStream;
    :cond_1
    new-instance v2, Ljava/util/jar/JarInputStream;

    invoke-direct {v2, v1}, Ljava/util/jar/JarInputStream;-><init>(Ljava/io/InputStream;)V

    .line 158
    .local v2, "jar_in":Ljava/util/jar/JarInputStream;
    :try_start_0
    invoke-virtual {v2}, Ljava/util/jar/JarInputStream;->getNextJarEntry()Ljava/util/jar/JarEntry;

    move-result-object v0

    .line 159
    .local v0, "entry":Ljava/util/jar/JarEntry;
    :goto_1
    if-eqz v0, :cond_2

    .line 161
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/webapp/JarScanner;->processEntry(Ljava/net/URI;Ljava/util/jar/JarEntry;)V

    .line 162
    invoke-virtual {v2}, Ljava/util/jar/JarInputStream;->getNextJarEntry()Ljava/util/jar/JarEntry;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    goto :goto_1

    .line 167
    :cond_2
    invoke-virtual {v2}, Ljava/util/jar/JarInputStream;->close()V

    goto :goto_0

    .end local v0    # "entry":Ljava/util/jar/JarEntry;
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Ljava/util/jar/JarInputStream;->close()V

    throw v3
.end method

.method public abstract processEntry(Ljava/net/URI;Ljava/util/jar/JarEntry;)V
.end method

.method public scan(Ljava/util/regex/Pattern;Ljava/lang/ClassLoader;ZZ)V
    .locals 9
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .param p3, "isNullInclusive"    # Z
    .param p4, "visitParent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 122
    :goto_0
    if-eqz p2, :cond_3

    .line 124
    instance-of v8, p2, Ljava/net/URLClassLoader;

    if-eqz v8, :cond_1

    move-object v8, p2

    .line 126
    check-cast v8, Ljava/net/URLClassLoader;

    invoke-virtual {v8}, Ljava/net/URLClassLoader;->getURLs()[Ljava/net/URL;

    move-result-object v7

    .line 127
    .local v7, "urls":[Ljava/net/URL;
    if-eqz v7, :cond_1

    .line 129
    array-length v8, v7

    new-array v6, v8, [Ljava/net/URI;

    .line 130
    .local v6, "uris":[Ljava/net/URI;
    const/4 v1, 0x0

    .line 131
    .local v1, "i":I
    move-object v0, v7

    .local v0, "arr$":[Ljava/net/URL;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v3, 0x0

    .local v3, "i$":I
    move v2, v1

    .end local v1    # "i":I
    .local v2, "i":I
    :goto_1
    if-ge v3, v4, :cond_0

    aget-object v5, v0, v3

    .line 132
    .local v5, "u":Ljava/net/URL;
    add-int/lit8 v1, v2, 0x1

    .end local v2    # "i":I
    .restart local v1    # "i":I
    invoke-virtual {v5}, Ljava/net/URL;->toURI()Ljava/net/URI;

    move-result-object v8

    aput-object v8, v6, v2

    .line 131
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1    # "i":I
    .restart local v2    # "i":I
    goto :goto_1

    .line 133
    .end local v5    # "u":Ljava/net/URL;
    :cond_0
    invoke-virtual {p0, p1, v6, p3}, Lorg/eclipse/jetty/webapp/JarScanner;->scan(Ljava/util/regex/Pattern;[Ljava/net/URI;Z)V

    .line 136
    .end local v0    # "arr$":[Ljava/net/URL;
    .end local v2    # "i":I
    .end local v3    # "i$":I
    .end local v4    # "len$":I
    .end local v6    # "uris":[Ljava/net/URI;
    .end local v7    # "urls":[Ljava/net/URL;
    :cond_1
    if-eqz p4, :cond_2

    .line 137
    invoke-virtual {p2}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object p2

    goto :goto_0

    .line 139
    :cond_2
    const/4 p2, 0x0

    goto :goto_0

    .line 141
    :cond_3
    return-void
.end method

.method public scan(Ljava/util/regex/Pattern;[Ljava/net/URI;Z)V
    .locals 0
    .param p1, "pattern"    # Ljava/util/regex/Pattern;
    .param p2, "uris"    # [Ljava/net/URI;
    .param p3, "isNullInclusive"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 84
    invoke-super {p0, p1, p2, p3}, Lorg/eclipse/jetty/util/PatternMatcher;->match(Ljava/util/regex/Pattern;[Ljava/net/URI;Z)V

    .line 85
    return-void
.end method
