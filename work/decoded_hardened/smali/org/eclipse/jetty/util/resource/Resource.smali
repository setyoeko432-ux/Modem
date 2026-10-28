.class public abstract Lorg/eclipse/jetty/util/resource/Resource;
.super Ljava/lang/Object;
.source "Resource.java"

# interfaces
.implements Lorg/eclipse/jetty/util/resource/ResourceFactory;


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field public static __defaultUseCaches:Z


# instance fields
.field volatile _associate:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Lorg/eclipse/jetty/util/resource/Resource;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/resource/Resource;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 50
    const/4 v0, 0x1

    sput-boolean v0, Lorg/eclipse/jetty/util/resource/Resource;->__defaultUseCaches:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static deTag(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "raw"    # Ljava/lang/String;

    .prologue
    .line 607
    const-string v0, "<"

    const-string v1, "&lt;"

    invoke-static {p0, v0, v1}, Lorg/eclipse/jetty/util/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ">"

    const-string v2, "&gt;"

    invoke-static {v0, v1, v2}, Lorg/eclipse/jetty/util/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDefaultUseCaches()Z
    .locals 1

    .prologue
    .line 67
    sget-boolean v0, Lorg/eclipse/jetty/util/resource/Resource;->__defaultUseCaches:Z

    return v0
.end method

.method private static hrefEncodeURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "raw"    # Ljava/lang/String;

    .prologue
    .line 560
    const/4 v0, 0x0

    .line 563
    .local v0, "buf":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 565
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 566
    .local v1, "c":C
    sparse-switch v1, :sswitch_data_0

    .line 563
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 572
    :sswitch_0
    new-instance v0, Ljava/lang/StringBuffer;

    .end local v0    # "buf":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    shl-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    .line 576
    .end local v1    # "c":C
    .restart local v0    # "buf":Ljava/lang/StringBuffer;
    :cond_0
    if-nez v0, :cond_1

    .line 602
    .end local p0    # "raw":Ljava/lang/String;
    :goto_1
    return-object p0

    .line 579
    .restart local p0    # "raw":Ljava/lang/String;
    :cond_1
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 581
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 582
    .restart local v1    # "c":C
    sparse-switch v1, :sswitch_data_1

    .line 597
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 579
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 585
    :sswitch_1
    const-string v3, "%22"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 588
    :sswitch_2
    const-string v3, "%27"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 591
    :sswitch_3
    const-string v3, "%3C"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 594
    :sswitch_4
    const-string v3, "%3E"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_3

    .line 602
    .end local v1    # "c":C
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 566
    nop

    :sswitch_data_0
    .sparse-switch
        0x22 -> :sswitch_0
        0x27 -> :sswitch_0
        0x3c -> :sswitch_0
        0x3e -> :sswitch_0
    .end sparse-switch

    .line 582
    :sswitch_data_1
    .sparse-switch
        0x22 -> :sswitch_1
        0x27 -> :sswitch_2
        0x3c -> :sswitch_3
        0x3e -> :sswitch_4
    .end sparse-switch
.end method

.method public static isContainedIn(Lorg/eclipse/jetty/util/resource/Resource;Lorg/eclipse/jetty/util/resource/Resource;)Z
    .locals 1
    .param p0, "r"    # Lorg/eclipse/jetty/util/resource/Resource;
    .param p1, "containingResource"    # Lorg/eclipse/jetty/util/resource/Resource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 295
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/resource/Resource;->isContainedIn(Lorg/eclipse/jetty/util/resource/Resource;)Z

    move-result v0

    return v0
.end method

.method public static newClassPathResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 2
    .param p0, "resource"    # Ljava/lang/String;

    .prologue
    .line 266
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lorg/eclipse/jetty/util/resource/Resource;->newClassPathResource(Ljava/lang/String;ZZ)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    return-object v0
.end method

.method public static newClassPathResource(Ljava/lang/String;ZZ)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "useCaches"    # Z
    .param p2, "checkParents"    # Z

    .prologue
    .line 283
    const-class v1, Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 285
    .local v0, "url":Ljava/net/URL;
    if-nez v0, :cond_0

    .line 286
    const-class v1, Lorg/eclipse/jetty/util/resource/Resource;

    invoke-static {v1, p0, p2}, Lorg/eclipse/jetty/util/Loader;->getResource(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v0

    .line 287
    :cond_0
    if-nez v0, :cond_1

    .line 288
    const/4 v1, 0x0

    .line 289
    :goto_0
    return-object v1

    :cond_1
    invoke-static {v0, p1}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/net/URL;Z)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v1

    goto :goto_0
.end method

.method public static newResource(Ljava/io/File;)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 3
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 199
    invoke-virtual {p0}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object p0

    .line 200
    invoke-static {p0}, Lorg/eclipse/jetty/util/resource/Resource;->toURL(Ljava/io/File;)Ljava/net/URL;

    move-result-object v2

    .line 202
    .local v2, "url":Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 203
    .local v0, "connection":Ljava/net/URLConnection;
    new-instance v1, Lorg/eclipse/jetty/util/resource/FileResource;

    invoke-direct {v1, v2, v0, p0}, Lorg/eclipse/jetty/util/resource/FileResource;-><init>(Ljava/net/URL;Ljava/net/URLConnection;Ljava/io/File;)V

    .line 204
    .local v1, "fileResource":Lorg/eclipse/jetty/util/resource/FileResource;
    return-object v1
.end method

.method public static newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 1
    .param p0, "resource"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    sget-boolean v0, Lorg/eclipse/jetty/util/resource/Resource;->__defaultUseCaches:Z

    invoke-static {p0, v0}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/lang/String;Z)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    return-object v0
.end method

.method public static newResource(Ljava/lang/String;Z)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 9
    .param p0, "resource"    # Ljava/lang/String;
    .param p1, "useCaches"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 154
    const/4 v4, 0x0

    .line 158
    .local v4, "url":Ljava/net/URL;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    .end local v4    # "url":Ljava/net/URL;
    .local v5, "url":Ljava/net/URL;
    invoke-static {v5}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/net/URL;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v6

    move-object v4, v5

    .end local v5    # "url":Ljava/net/URL;
    .restart local v4    # "url":Ljava/net/URL;
    :goto_0
    return-object v6

    .line 160
    :catch_0
    move-exception v1

    .line 162
    .local v1, "e":Ljava/net/MalformedURLException;
    const-string v6, "ftp:"

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "file:"

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "jar:"

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 169
    :try_start_1
    const-string v6, "./"

    invoke-virtual {p0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 170
    const/4 v6, 0x2

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 172
    :cond_0
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getCanonicalFile()Ljava/io/File;

    move-result-object v3

    .line 173
    .local v3, "file":Ljava/io/File;
    invoke-static {v3}, Lorg/eclipse/jetty/util/resource/Resource;->toURL(Ljava/io/File;)Ljava/net/URL;

    move-result-object v4

    .line 175
    invoke-virtual {v4}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v0

    .line 176
    .local v0, "connection":Ljava/net/URLConnection;
    invoke-virtual {v0, p1}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 177
    new-instance v6, Lorg/eclipse/jetty/util/resource/FileResource;

    invoke-direct {v6, v4, v0, v3}, Lorg/eclipse/jetty/util/resource/FileResource;-><init>(Ljava/net/URL;Ljava/net/URLConnection;Ljava/io/File;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 179
    .end local v0    # "connection":Ljava/net/URLConnection;
    .end local v3    # "file":Ljava/io/File;
    :catch_1
    move-exception v2

    .line 181
    .local v2, "e2":Ljava/lang/Exception;
    sget-object v6, Lorg/eclipse/jetty/util/resource/Resource;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v7, "EXCEPTION "

    invoke-interface {v6, v7, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 182
    throw v1

    .line 187
    .end local v2    # "e2":Ljava/lang/Exception;
    :cond_1
    sget-object v6, Lorg/eclipse/jetty/util/resource/Resource;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad Resource: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    throw v1
.end method

.method public static newResource(Ljava/net/URI;)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 1
    .param p0, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 79
    invoke-virtual {p0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    invoke-static {v0}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/net/URL;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    return-object v0
.end method

.method public static newResource(Ljava/net/URL;)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 1
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    sget-boolean v0, Lorg/eclipse/jetty/util/resource/Resource;->__defaultUseCaches:Z

    invoke-static {p0, v0}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/net/URL;Z)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    return-object v0
.end method

.method static newResource(Ljava/net/URL;Z)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 5
    .param p0, "url"    # Ljava/net/URL;
    .param p1, "useCaches"    # Z

    .prologue
    const/4 v1, 0x0

    .line 103
    if-nez p0, :cond_0

    .line 129
    :goto_0
    return-object v1

    .line 106
    :cond_0
    invoke-virtual {p0}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v2

    .line 107
    .local v2, "url_string":Ljava/lang/String;
    const-string v3, "file:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 111
    :try_start_0
    new-instance v1, Lorg/eclipse/jetty/util/resource/FileResource;

    invoke-direct {v1, p0}, Lorg/eclipse/jetty/util/resource/FileResource;-><init>(Ljava/net/URL;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .local v1, "fileResource":Lorg/eclipse/jetty/util/resource/FileResource;
    goto :goto_0

    .line 114
    .end local v1    # "fileResource":Lorg/eclipse/jetty/util/resource/FileResource;
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lorg/eclipse/jetty/util/resource/Resource;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v4, "EXCEPTION "

    invoke-interface {v3, v4, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 117
    new-instance v1, Lorg/eclipse/jetty/util/resource/BadResource;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, p0, v3}, Lorg/eclipse/jetty/util/resource/BadResource;-><init>(Ljava/net/URL;Ljava/lang/String;)V

    goto :goto_0

    .line 120
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_1
    const-string v3, "jar:file:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 122
    new-instance v1, Lorg/eclipse/jetty/util/resource/JarFileResource;

    invoke-direct {v1, p0, p1}, Lorg/eclipse/jetty/util/resource/JarFileResource;-><init>(Ljava/net/URL;Z)V

    goto :goto_0

    .line 124
    :cond_2
    const-string v3, "jar:"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 126
    new-instance v1, Lorg/eclipse/jetty/util/resource/JarResource;

    invoke-direct {v1, p0, p1}, Lorg/eclipse/jetty/util/resource/JarResource;-><init>(Ljava/net/URL;Z)V

    goto :goto_0

    .line 129
    :cond_3
    new-instance v3, Lorg/eclipse/jetty/util/resource/URLResource;

    invoke-direct {v3, p0, v1, p1}, Lorg/eclipse/jetty/util/resource/URLResource;-><init>(Ljava/net/URL;Ljava/net/URLConnection;Z)V

    move-object v1, v3

    goto :goto_0
.end method

.method public static newSystemResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 5
    .param p0, "resource"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 218
    const/4 v2, 0x0

    .line 220
    .local v2, "url":Ljava/net/URL;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 221
    .local v1, "loader":Ljava/lang/ClassLoader;
    if-eqz v1, :cond_0

    .line 225
    :try_start_0
    invoke-virtual {v1, p0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    .line 226
    if-nez v2, :cond_0

    const-string v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 227
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 237
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 239
    const-class v3, Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 240
    if-eqz v1, :cond_1

    .line 242
    invoke-virtual {v1, p0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    .line 243
    if-nez v2, :cond_1

    const-string v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 244
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    .line 248
    :cond_1
    if-nez v2, :cond_2

    .line 250
    invoke-static {p0}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    .line 251
    if-nez v2, :cond_2

    const-string v3, "/"

    invoke-virtual {p0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 252
    invoke-virtual {p0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/ClassLoader;->getSystemResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    .line 255
    :cond_2
    if-nez v2, :cond_3

    .line 256
    const/4 v3, 0x0

    .line 258
    :goto_1
    return-object v3

    .line 229
    :catch_0
    move-exception v0

    .line 234
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v2, 0x0

    goto :goto_0

    .line 258
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_3
    invoke-static {v2}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/net/URL;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v3

    goto :goto_1
.end method

.method public static setDefaultUseCaches(Z)V
    .locals 0
    .param p0, "useCaches"    # Z

    .prologue
    .line 61
    sput-boolean p0, Lorg/eclipse/jetty/util/resource/Resource;->__defaultUseCaches:Z

    .line 62
    return-void
.end method

.method public static toURL(Ljava/io/File;)Ljava/net/URL;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 676
    invoke-virtual {p0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation
.end method

.method public copyTo(Ljava/io/File;)V
    .locals 6
    .param p1, "destination"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 638
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " exists"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 640
    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lorg/eclipse/jetty/util/resource/Resource;->writeTo(Ljava/io/OutputStream;JJ)V

    .line 641
    return-void
.end method

.method public abstract delete()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 456
    invoke-static {p1}, Lorg/eclipse/jetty/util/URIUtil;->encodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract exists()Z
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 302
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/Resource;->release()V

    .line 303
    return-void
.end method

.method public getAlias()Ljava/net/URL;
    .locals 1

    .prologue
    .line 477
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAssociate()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/Resource;->_associate:Ljava/lang/Object;

    return-object v0
.end method

.method public abstract getFile()Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getInputStream()Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public getListHTML(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 12
    .param p1, "base"    # Ljava/lang/String;
    .param p2, "parent"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    const/4 v11, 0x2

    .line 489
    invoke-static {p1}, Lorg/eclipse/jetty/util/URIUtil;->canonicalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 490
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v10

    if-nez v10, :cond_1

    .line 545
    :cond_0
    :goto_0
    return-object v9

    .line 493
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/Resource;->list()[Ljava/lang/String;

    move-result-object v6

    .line 494
    .local v6, "ls":[Ljava/lang/String;
    if-eqz v6, :cond_0

    .line 496
    invoke-static {v6}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 498
    invoke-static {p1}, Lorg/eclipse/jetty/util/URIUtil;->decodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 499
    .local v1, "decodedBase":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Directory: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {v1}, Lorg/eclipse/jetty/util/resource/Resource;->deTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 501
    .local v8, "title":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v9, 0x1000

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 502
    .local v0, "buf":Ljava/lang/StringBuilder;
    const-string v9, "<HTML><HEAD>"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 503
    const-string v9, "<LINK HREF=\""

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "jetty-dir.css"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\" REL=\"stylesheet\" TYPE=\"text/css\"/><TITLE>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 504
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 505
    const-string v9, "</TITLE></HEAD><BODY>\n<H1>"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    const-string v9, "</H1>\n<TABLE BORDER=0>\n"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    if-eqz p2, :cond_2

    .line 511
    const-string v9, "<TR><TD><A HREF=\""

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    const-string v9, "../"

    invoke-static {p1, v9}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 513
    const-string v9, "\">Parent Directory</A></TD><TD></TD><TD></TD></TR>\n"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    :cond_2
    invoke-static {p1}, Lorg/eclipse/jetty/util/resource/Resource;->hrefEncodeURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 518
    .local v3, "encodedBase":Ljava/lang/String;
    invoke-static {v11, v11}, Ljava/text/DateFormat;->getDateTimeInstance(II)Ljava/text/DateFormat;

    move-result-object v2

    .line 520
    .local v2, "dfmt":Ljava/text/DateFormat;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    array-length v9, v6

    if-ge v4, v9, :cond_4

    .line 522
    aget-object v9, v6, v4

    invoke-virtual {p0, v9}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v5

    .line 524
    .local v5, "item":Lorg/eclipse/jetty/util/resource/Resource;
    const-string v9, "\n<TR><TD><A HREF=\""

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    aget-object v9, v6, v4

    invoke-static {v9}, Lorg/eclipse/jetty/util/URIUtil;->encodePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 527
    .local v7, "path":Ljava/lang/String;
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    invoke-virtual {v5}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v9, "/"

    invoke-virtual {v7, v9}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 530
    const-string v9, "/"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    :cond_3
    const-string v9, "\">"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 534
    aget-object v9, v6, v4

    invoke-static {v9}, Lorg/eclipse/jetty/util/resource/Resource;->deTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    const-string v9, "&nbsp;"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    const-string v9, "</A></TD><TD ALIGN=right>"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 537
    invoke-virtual {v5}, Lorg/eclipse/jetty/util/resource/Resource;->length()J

    move-result-wide v9

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 538
    const-string v9, " bytes&nbsp;</TD><TD>"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    new-instance v9, Ljava/util/Date;

    invoke-virtual {v5}, Lorg/eclipse/jetty/util/resource/Resource;->lastModified()J

    move-result-wide v10

    invoke-direct {v9, v10, v11}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v2, v9}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 540
    const-string v9, "</TD></TR>"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 542
    .end local v5    # "item":Lorg/eclipse/jetty/util/resource/Resource;
    .end local v7    # "path":Ljava/lang/String;
    :cond_4
    const-string v9, "</TABLE>\n"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 543
    const-string v9, "</BODY></HTML>\n"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getOutputStream()Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public getResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 439
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 444
    :goto_0
    return-object v1

    .line 441
    :catch_0
    move-exception v0

    .line 443
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lorg/eclipse/jetty/util/resource/Resource;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 444
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getURI()Ljava/net/URI;
    .locals 2

    .prologue
    .line 358
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/Resource;->getURL()Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toURI()Ljava/net/URI;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 360
    :catch_0
    move-exception v0

    .line 362
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public abstract getURL()Ljava/net/URL;
.end method

.method public getWeakETag()Ljava/lang/String;
    .locals 11

    .prologue
    .line 648
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v7, 0x20

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 649
    .local v0, "b":Ljava/lang/StringBuilder;
    const-string v7, "W/\""

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 651
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/Resource;->getName()Ljava/lang/String;

    move-result-object v6

    .line 652
    .local v6, "name":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v3

    .line 653
    .local v3, "length":I
    const-wide/16 v4, 0x0

    .line 654
    .local v4, "lhash":J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 655
    const-wide/16 v7, 0x1f

    mul-long/2addr v7, v4

    invoke-virtual {v6, v2}, Ljava/lang/String;->charAt(I)C

    move-result v9

    int-to-long v9, v9

    add-long v4, v7, v9

    .line 654
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 657
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/Resource;->lastModified()J

    move-result-wide v7

    xor-long/2addr v7, v4

    invoke-static {v7, v8, v0}, Lorg/eclipse/jetty/util/B64Code;->encode(JLjava/lang/Appendable;)V

    .line 658
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/Resource;->length()J

    move-result-wide v7

    xor-long/2addr v7, v4

    invoke-static {v7, v8, v0}, Lorg/eclipse/jetty/util/B64Code;->encode(JLjava/lang/Appendable;)V

    .line 659
    const/16 v7, 0x22

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 660
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    return-object v7

    .line 662
    .end local v0    # "b":Ljava/lang/StringBuilder;
    .end local v2    # "i":I
    .end local v3    # "length":I
    .end local v4    # "lhash":J
    .end local v6    # "name":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 664
    .local v1, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7
.end method

.method public abstract isContainedIn(Lorg/eclipse/jetty/util/resource/Resource;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation
.end method

.method public abstract isDirectory()Z
.end method

.method public abstract lastModified()J
.end method

.method public abstract length()J
.end method

.method public abstract list()[Ljava/lang/String;
.end method

.method public abstract release()V
.end method

.method public abstract renameTo(Lorg/eclipse/jetty/util/resource/Resource;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation
.end method

.method public setAssociate(Ljava/lang/Object;)V
    .locals 0
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 468
    iput-object p1, p0, Lorg/eclipse/jetty/util/resource/Resource;->_associate:Ljava/lang/Object;

    .line 469
    return-void
.end method

.method public writeTo(Ljava/io/OutputStream;JJ)V
    .locals 3
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "start"    # J
    .param p4, "count"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 619
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    .line 622
    .local v0, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v0, p2, p3}, Ljava/io/InputStream;->skip(J)J

    .line 623
    const-wide/16 v1, 0x0

    cmp-long v1, p4, v1

    if-gez v1, :cond_0

    .line 624
    invoke-static {v0, p1}, Lorg/eclipse/jetty/util/IO;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 630
    :goto_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 632
    return-void

    .line 626
    :cond_0
    :try_start_1
    invoke-static {v0, p1, p4, p5}, Lorg/eclipse/jetty/util/IO;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 630
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    throw v1
.end method
