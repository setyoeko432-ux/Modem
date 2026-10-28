.class public Lorg/eclipse/jetty/webapp/WebAppClassLoader;
.super Ljava/net/URLClassLoader;
.source "WebAppClassLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/webapp/WebAppClassLoader$Context;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private final _context:Lorg/eclipse/jetty/webapp/WebAppClassLoader$Context;

.field private final _extensions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _name:Ljava/lang/String;

.field private final _parent:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 63
    const-class v0, Lorg/eclipse/jetty/webapp/WebAppClassLoader;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/ClassLoader;Lorg/eclipse/jetty/webapp/WebAppClassLoader$Context;)V
    .locals 4
    .param p1, "parent"    # Ljava/lang/ClassLoader;
    .param p2, "context"    # Lorg/eclipse/jetty/webapp/WebAppClassLoader$Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 141
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/net/URL;

    if-eqz p1, :cond_0

    .end local p1    # "parent":Ljava/lang/ClassLoader;
    :goto_0
    invoke-direct {p0, v2, p1}, Ljava/net/URLClassLoader;-><init>([Ljava/net/URL;Ljava/lang/ClassLoader;)V

    .line 67
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->_extensions:Ljava/util/Set;

    .line 68
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->_name:Ljava/lang/String;

    .line 145
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->_parent:Ljava/lang/ClassLoader;

    .line 146
    iput-object p2, p0, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->_context:Lorg/eclipse/jetty/webapp/WebAppClassLoader$Context;

    .line 147
    iget-object v2, p0, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->_parent:Ljava/lang/ClassLoader;

    if-nez v2, :cond_3

    .line 148
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "no parent classloader!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 141
    .restart local p1    # "parent":Ljava/lang/ClassLoader;
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-class v3, Lorg/eclipse/jetty/webapp/WebAppClassLoader;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    if-eqz v3, :cond_2

    const-class v3, Lorg/eclipse/jetty/webapp/WebAppClassLoader;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object p1

    goto :goto_0

    .line 150
    .end local p1    # "parent":Ljava/lang/ClassLoader;
    :cond_3
    iget-object v2, p0, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->_extensions:Ljava/util/Set;

    const-string v3, ".jar"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 151
    iget-object v2, p0, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->_extensions:Ljava/util/Set;

    const-string v3, ".zip"

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Lorg/eclipse/jetty/webapp/WebAppClassLoader;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".extensions"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 155
    .local v0, "extensions":Ljava/lang/String;
    if-eqz v0, :cond_4

    .line 157
    new-instance v1, Ljava/util/StringTokenizer;

    const-string v2, ",;"

    invoke-direct {v1, v0, v2}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    .local v1, "tokenizer":Ljava/util/StringTokenizer;
    :goto_1
    invoke-virtual {v1}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 159
    iget-object v2, p0, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->_extensions:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 162
    .end local v1    # "tokenizer":Ljava/util/StringTokenizer;
    :cond_4
    invoke-interface {p2}, Lorg/eclipse/jetty/webapp/WebAppClassLoader$Context;->getExtraClasspath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 163
    invoke-interface {p2}, Lorg/eclipse/jetty/webapp/WebAppClassLoader$Context;->getExtraClasspath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->addClassPath(Ljava/lang/String;)V

    .line 164
    :cond_5
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/webapp/WebAppClassLoader$Context;)V
    .locals 1
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppClassLoader$Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lorg/eclipse/jetty/webapp/WebAppClassLoader;-><init>(Ljava/lang/ClassLoader;Lorg/eclipse/jetty/webapp/WebAppClassLoader$Context;)V

    .line 133
    return-void
.end method

.method private isFileSupported(Ljava/lang/String;)Z
    .locals 3
    .param p1, "file"    # Ljava/lang/String;

    .prologue
    .line 256
    const/16 v1, 0x2e

    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 257
    .local v0, "dot":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->_extensions:Ljava/util/Set;

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private toList(Ljava/util/Enumeration;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/URL;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .prologue
    .line 323
    .local p1, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/net/URL;>;"
    if-nez p1, :cond_0

    .line 324
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 325
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public addClassPath(Ljava/lang/String;)V
    .locals 7
    .param p1, "classPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 220
    if-nez p1, :cond_1

    .line 248
    :cond_0
    return-void

    .line 223
    :cond_1
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v4, ",;"

    invoke-direct {v2, p1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .local v2, "tokenizer":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 226
    iget-object v4, p0, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->_context:Lorg/eclipse/jetty/webapp/WebAppClassLoader$Context;

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/eclipse/jetty/webapp/WebAppClassLoader$Context;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v1

    .line 227
    .local v1, "resource":Lorg/eclipse/jetty/util/resource/Resource;
    sget-object v4, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 228
    sget-object v4, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Path resource="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    :cond_2
    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    instance-of v4, v1, Lorg/eclipse/jetty/util/resource/ResourceCollection;

    if-eqz v4, :cond_3

    .line 232
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->addClassPath(Lorg/eclipse/jetty/util/resource/Resource;)V

    goto :goto_0

    .line 236
    :cond_3
    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v0

    .line 237
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_4

    .line 239
    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->getURL()Ljava/net/URL;

    move-result-object v3

    .line 240
    .local v3, "url":Ljava/net/URL;
    invoke-virtual {p0, v3}, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->addURL(Ljava/net/URL;)V

    goto :goto_0

    .line 242
    .end local v3    # "url":Ljava/net/URL;
    :cond_4
    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 243
    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->getURL()Ljava/net/URL;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->addURL(Ljava/net/URL;)V

    goto :goto_0

    .line 245
    :cond_5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!file: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public addClassPath(Lorg/eclipse/jetty/util/resource/Resource;)V
    .locals 5
    .param p1, "resource"    # Lorg/eclipse/jetty/util/resource/Resource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 200
    instance-of v4, p1, Lorg/eclipse/jetty/util/resource/ResourceCollection;

    if-eqz v4, :cond_0

    .line 202
    check-cast p1, Lorg/eclipse/jetty/util/resource/ResourceCollection;

    .end local p1    # "resource":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {p1}, Lorg/eclipse/jetty/util/resource/ResourceCollection;->getResources()[Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    .local v0, "arr$":[Lorg/eclipse/jetty/util/resource/Resource;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 203
    .local v3, "r":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {p0, v3}, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->addClassPath(Lorg/eclipse/jetty/util/resource/Resource;)V

    .line 202
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 207
    .end local v0    # "arr$":[Lorg/eclipse/jetty/util/resource/Resource;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    .restart local p1    # "resource":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->addClassPath(Ljava/lang/String;)V

    .line 209
    .end local p1    # "resource":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_1
    return-void
.end method

.method public addJars(Lorg/eclipse/jetty/util/resource/Resource;)V
    .locals 8
    .param p1, "lib"    # Lorg/eclipse/jetty/util/resource/Resource;

    .prologue
    .line 267
    invoke-virtual {p1}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p1}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 269
    invoke-virtual {p1}, Lorg/eclipse/jetty/util/resource/Resource;->list()[Ljava/lang/String;

    move-result-object v2

    .line 270
    .local v2, "files":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "f":I
    :goto_0
    if-eqz v2, :cond_1

    array-length v6, v2

    if-ge v1, v6, :cond_1

    .line 274
    :try_start_0
    aget-object v6, v2, v1

    invoke-virtual {p1, v6}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v3

    .line 275
    .local v3, "fn":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v3}, Lorg/eclipse/jetty/util/resource/Resource;->getName()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v6, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    .line 277
    .local v4, "fnlc":Ljava/lang/String;
    invoke-direct {p0, v4}, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->isFileSupported(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 279
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 280
    .local v5, "jar":Ljava/lang/String;
    const-string v6, ","

    const-string v7, "%2C"

    invoke-static {v5, v6, v7}, Lorg/eclipse/jetty/util/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 281
    const-string v6, ";"

    const-string v7, "%3B"

    invoke-static {v5, v6, v7}, Lorg/eclipse/jetty/util/StringUtil;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 282
    invoke-virtual {p0, v5}, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->addClassPath(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 270
    .end local v3    # "fn":Lorg/eclipse/jetty/util/resource/Resource;
    .end local v4    # "fnlc":Ljava/lang/String;
    .end local v5    # "jar":Ljava/lang/String;
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 285
    :catch_0
    move-exception v0

    .line 287
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v6, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v7, "EXCEPTION "

    invoke-interface {v6, v7, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 291
    .end local v0    # "ex":Ljava/lang/Exception;
    .end local v1    # "f":I
    .end local v2    # "files":[Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public getContext()Lorg/eclipse/jetty/webapp/WebAppClassLoader$Context;
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->_context:Lorg/eclipse/jetty/webapp/WebAppClassLoader$Context;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissions(Ljava/security/CodeSource;)Ljava/security/PermissionCollection;
    .locals 3
    .param p1, "cs"    # Ljava/security/CodeSource;

    .prologue
    .line 297
    iget-object v2, p0, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->_context:Lorg/eclipse/jetty/webapp/WebAppClassLoader$Context;

    invoke-interface {v2}, Lorg/eclipse/jetty/webapp/WebAppClassLoader$Context;->getPermissions()Ljava/security/PermissionCollection;

    move-result-object v1

    .line 298
    .local v1, "permissions":Ljava/security/PermissionCollection;
    if-nez v1, :cond_0

    invoke-super {p0, p1}, Ljava/net/URLClassLoader;->getPermissions(Ljava/security/CodeSource;)Ljava/security/PermissionCollection;

    move-result-object v0

    .line 299
    .local v0, "pc":Ljava/security/PermissionCollection;
    :goto_0
    return-object v0

    .end local v0    # "pc":Ljava/security/PermissionCollection;
    :cond_0
    move-object v0, v1

    .line 298
    goto :goto_0
.end method

.method public getResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 338
    const/4 v3, 0x0

    .line 339
    .local v3, "url":Ljava/net/URL;
    const/4 v2, 0x0

    .line 340
    .local v2, "tried_parent":Z
    iget-object v4, p0, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->_context:Lorg/eclipse/jetty/webapp/WebAppClassLoader$Context;

    invoke-interface {v4, p1}, Lorg/eclipse/jetty/webapp/WebAppClassLoader$Context;->isSystemClass(Ljava/lang/String;)Z

    move-result v1

    .line 341
    .local v1, "system_class":Z
    iget-object v4, p0, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->_context:Lorg/eclipse/jetty/webapp/WebAppClassLoader$Context;

    invoke-interface {v4, p1}, Lorg/eclipse/jetty/webapp/WebAppClassLoader$Context;->isServerClass(Ljava/lang/String;)Z

    move-result v0

    .line 343
    .local v0, "server_class":Z
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 344
    const/4 v4, 0x0

    .line 376
    :goto_0
    return-object v4

    .line 346
    :cond_0
    iget-object v4, p0, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->_parent:Ljava/lang/ClassLoader;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->_context:Lorg/eclipse/jetty/webapp/WebAppClassLoader$Context;

    invoke-interface {v4}, Lorg/eclipse/jetty/webapp/WebAppClassLoader$Context;->isParentLoaderPriority()Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v1, :cond_2

    :cond_1
    if-nez v0, :cond_2

    .line 348
    const/4 v2, 0x1

    .line 350
    iget-object v4, p0, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->_parent:Ljava/lang/ClassLoader;

    if-eqz v4, :cond_2

    .line 351
    iget-object v4, p0, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->_parent:Ljava/lang/ClassLoader;

    invoke-virtual {v4, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    .line 354
    :cond_2
    if-nez v3, :cond_4

    .line 356
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->findResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    .line 358
    if-nez v3, :cond_4

    const-string v4, "/"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 360
    sget-object v4, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 361
    sget-object v4, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "HACK leading / off "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 362
    :cond_3
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->findResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    .line 366
    :cond_4
    if-nez v3, :cond_5

    if-nez v2, :cond_5

    if-nez v0, :cond_5

    .line 368
    iget-object v4, p0, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->_parent:Ljava/lang/ClassLoader;

    if-eqz v4, :cond_5

    .line 369
    iget-object v4, p0, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->_parent:Ljava/lang/ClassLoader;

    invoke-virtual {v4, p1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    .line 372
    :cond_5
    if-eqz v3, :cond_6

    .line 373
    sget-object v4, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 374
    sget-object v4, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getResource("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_6
    move-object v4, v3

    .line 376
    goto/16 :goto_0
.end method

.method public getResources(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 305
    iget-object v4, p0, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->_context:Lorg/eclipse/jetty/webapp/WebAppClassLoader$Context;

    invoke-interface {v4, p1}, Lorg/eclipse/jetty/webapp/WebAppClassLoader$Context;->isSystemClass(Ljava/lang/String;)Z

    move-result v3

    .line 306
    .local v3, "system_class":Z
    iget-object v4, p0, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->_context:Lorg/eclipse/jetty/webapp/WebAppClassLoader$Context;

    invoke-interface {v4, p1}, Lorg/eclipse/jetty/webapp/WebAppClassLoader$Context;->isServerClass(Ljava/lang/String;)Z

    move-result v2

    .line 308
    .local v2, "server_class":Z
    if-eqz v2, :cond_0

    move-object v4, v5

    :goto_0
    invoke-direct {p0, v4}, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->toList(Ljava/util/Enumeration;)Ljava/util/List;

    move-result-object v0

    .line 309
    .local v0, "from_parent":Ljava/util/List;, "Ljava/util/List<Ljava/net/URL;>;"
    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    :goto_1
    invoke-direct {p0, v5}, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->toList(Ljava/util/Enumeration;)Ljava/util/List;

    move-result-object v1

    .line 311
    .local v1, "from_webapp":Ljava/util/List;, "Ljava/util/List<Ljava/net/URL;>;"
    iget-object v4, p0, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->_context:Lorg/eclipse/jetty/webapp/WebAppClassLoader$Context;

    invoke-interface {v4}, Lorg/eclipse/jetty/webapp/WebAppClassLoader$Context;->isParentLoaderPriority()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 313
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 314
    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v4

    .line 317
    :goto_2
    return-object v4

    .line 308
    .end local v0    # "from_parent":Ljava/util/List;, "Ljava/util/List<Ljava/net/URL;>;"
    .end local v1    # "from_webapp":Ljava/util/List;, "Ljava/util/List<Ljava/net/URL;>;"
    :cond_0
    iget-object v4, p0, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->_parent:Ljava/lang/ClassLoader;

    invoke-virtual {v4, p1}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v4

    goto :goto_0

    .line 309
    .restart local v0    # "from_parent":Ljava/util/List;, "Ljava/util/List<Ljava/net/URL;>;"
    :cond_1
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->findResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v5

    goto :goto_1

    .line 316
    .restart local v1    # "from_webapp":Ljava/util/List;, "Ljava/util/List<Ljava/net/URL;>;"
    :cond_2
    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 317
    invoke-static {v1}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v4

    goto :goto_2
.end method

.method public loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 383
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->loadClass(Ljava/lang/String;Z)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method protected declared-synchronized loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 9
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "resolve"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 390
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->findLoadedClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 391
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    .line 392
    .local v2, "ex":Ljava/lang/ClassNotFoundException;
    const/4 v5, 0x0

    .line 394
    .local v5, "tried_parent":Z
    iget-object v6, p0, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->_context:Lorg/eclipse/jetty/webapp/WebAppClassLoader$Context;

    invoke-interface {v6, p1}, Lorg/eclipse/jetty/webapp/WebAppClassLoader$Context;->isSystemClass(Ljava/lang/String;)Z

    move-result v4

    .line 395
    .local v4, "system_class":Z
    iget-object v6, p0, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->_context:Lorg/eclipse/jetty/webapp/WebAppClassLoader$Context;

    invoke-interface {v6, p1}, Lorg/eclipse/jetty/webapp/WebAppClassLoader$Context;->isServerClass(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 397
    .local v3, "server_class":Z
    if-eqz v4, :cond_0

    if-eqz v3, :cond_0

    .line 399
    const/4 v6, 0x0

    .line 441
    :goto_0
    monitor-exit p0

    return-object v6

    .line 402
    :cond_0
    if-nez v0, :cond_2

    :try_start_1
    iget-object v6, p0, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->_parent:Ljava/lang/ClassLoader;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->_context:Lorg/eclipse/jetty/webapp/WebAppClassLoader$Context;

    invoke-interface {v6}, Lorg/eclipse/jetty/webapp/WebAppClassLoader$Context;->isParentLoaderPriority()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-nez v6, :cond_1

    if-eqz v4, :cond_2

    :cond_1
    if-nez v3, :cond_2

    .line 404
    const/4 v5, 0x1

    .line 407
    :try_start_2
    iget-object v6, p0, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->_parent:Ljava/lang/ClassLoader;

    invoke-virtual {v6, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 408
    sget-object v6, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v6}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 409
    sget-object v6, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loaded "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 417
    :cond_2
    :goto_1
    if-nez v0, :cond_3

    .line 421
    :try_start_3
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    .line 429
    :cond_3
    :goto_2
    if-nez v0, :cond_4

    :try_start_4
    iget-object v6, p0, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->_parent:Ljava/lang/ClassLoader;

    if-eqz v6, :cond_4

    if-nez v5, :cond_4

    if-nez v3, :cond_4

    .line 430
    iget-object v6, p0, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->_parent:Ljava/lang/ClassLoader;

    invoke-virtual {v6, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 432
    :cond_4
    if-nez v0, :cond_5

    .line 433
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 390
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "ex":Ljava/lang/ClassNotFoundException;
    .end local v3    # "server_class":Z
    .end local v4    # "system_class":Z
    .end local v5    # "tried_parent":Z
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 411
    .restart local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v2    # "ex":Ljava/lang/ClassNotFoundException;
    .restart local v3    # "server_class":Z
    .restart local v4    # "system_class":Z
    .restart local v5    # "tried_parent":Z
    :catch_0
    move-exception v1

    .line 413
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    move-object v2, v1

    goto :goto_1

    .line 423
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v1

    .line 425
    .restart local v1    # "e":Ljava/lang/ClassNotFoundException;
    move-object v2, v1

    goto :goto_2

    .line 435
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :cond_5
    if-eqz p2, :cond_6

    .line 436
    :try_start_5
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->resolveClass(Ljava/lang/Class;)V

    .line 438
    :cond_6
    sget-object v6, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v6}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 439
    sget-object v6, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loaded "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " from "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :cond_7
    move-object v6, v0

    .line 441
    goto/16 :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 181
    iput-object p1, p0, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->_name:Ljava/lang/String;

    .line 182
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 447
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WebAppClassLoader="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/webapp/WebAppClassLoader;->_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
