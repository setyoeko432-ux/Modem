.class Lorg/eclipse/jetty/util/resource/JarFileResource;
.super Lorg/eclipse/jetty/util/resource/JarResource;
.source "JarFileResource.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _directory:Z

.field private _entry:Ljava/util/jar/JarEntry;

.field private _exists:Z

.field private _file:Ljava/io/File;

.field private _jarFile:Ljava/util/jar/JarFile;

.field private _jarUrl:Ljava/lang/String;

.field private _list:[Ljava/lang/String;

.field private _path:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lorg/eclipse/jetty/util/resource/JarFileResource;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/resource/JarFileResource;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method constructor <init>(Ljava/net/URL;)V
    .locals 0
    .param p1, "url"    # Ljava/net/URL;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/util/resource/JarResource;-><init>(Ljava/net/URL;)V

    .line 52
    return-void
.end method

.method constructor <init>(Ljava/net/URL;Z)V
    .locals 0
    .param p1, "url"    # Ljava/net/URL;
    .param p2, "useCaches"    # Z

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Lorg/eclipse/jetty/util/resource/JarResource;-><init>(Ljava/net/URL;Z)V

    .line 58
    return-void
.end method

.method public static getNonCachingResource(Lorg/eclipse/jetty/util/resource/Resource;)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 4
    .param p0, "resource"    # Lorg/eclipse/jetty/util/resource/Resource;

    .prologue
    .line 397
    instance-of v2, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;

    if-nez v2, :cond_0

    .line 403
    .end local p0    # "resource":Lorg/eclipse/jetty/util/resource/Resource;
    :goto_0
    return-object p0

    .restart local p0    # "resource":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_0
    move-object v1, p0

    .line 400
    check-cast v1, Lorg/eclipse/jetty/util/resource/JarFileResource;

    .line 402
    .local v1, "oldResource":Lorg/eclipse/jetty/util/resource/JarFileResource;
    new-instance v0, Lorg/eclipse/jetty/util/resource/JarFileResource;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/JarFileResource;->getURL()Ljava/net/URL;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3}, Lorg/eclipse/jetty/util/resource/JarFileResource;-><init>(Ljava/net/URL;Z)V

    .local v0, "newResource":Lorg/eclipse/jetty/util/resource/JarFileResource;
    move-object p0, v0

    .line 403
    goto :goto_0
.end method

.method private listEntries()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/16 v14, 0x2f

    .line 301
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/JarFileResource;->checkConnection()Z

    .line 303
    new-instance v8, Ljava/util/ArrayList;

    const/16 v11, 0x20

    invoke-direct {v8, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 304
    .local v8, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v6, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_jarFile:Ljava/util/jar/JarFile;

    .line 305
    .local v6, "jarFile":Ljava/util/jar/JarFile;
    if-nez v6, :cond_0

    .line 309
    :try_start_0
    new-instance v11, Ljava/net/URL;

    iget-object v12, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_jarUrl:Ljava/lang/String;

    invoke-direct {v11, v12}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    check-cast v11, Ljava/net/JarURLConnection;

    move-object v0, v11

    check-cast v0, Ljava/net/JarURLConnection;

    move-object v7, v0

    .line 310
    .local v7, "jc":Ljava/net/JarURLConnection;
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/JarFileResource;->getUseCaches()Z

    move-result v11

    invoke-virtual {v7, v11}, Ljava/net/JarURLConnection;->setUseCaches(Z)V

    .line 311
    invoke-virtual {v7}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 321
    .end local v7    # "jc":Ljava/net/JarURLConnection;
    :cond_0
    :goto_0
    invoke-virtual {v6}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v4

    .line 322
    .local v4, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    iget-object v11, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_urlString:Ljava/lang/String;

    iget-object v12, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_urlString:Ljava/lang/String;

    const-string v13, "!/"

    invoke-virtual {v12, v13}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v12

    add-int/lit8 v12, v12, 0x2

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 323
    .local v2, "dir":Ljava/lang/String;
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 325
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/jar/JarEntry;

    .line 326
    .local v5, "entry":Ljava/util/jar/JarEntry;
    invoke-virtual {v5}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x5c

    invoke-virtual {v11, v12, v14}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v10

    .line 327
    .local v10, "name":Ljava/lang/String;
    invoke-virtual {v10, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    if-eq v11, v12, :cond_1

    .line 331
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    .line 332
    .local v9, "listName":Ljava/lang/String;
    invoke-virtual {v9, v14}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 333
    .local v1, "dash":I
    if-ltz v1, :cond_3

    .line 337
    if-nez v1, :cond_2

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x1

    if-eq v11, v12, :cond_1

    .line 341
    :cond_2
    if-nez v1, :cond_4

    .line 342
    add-int/lit8 v11, v1, 0x1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v9, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    .line 346
    :goto_2
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    .line 350
    :cond_3
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 313
    .end local v1    # "dash":I
    .end local v2    # "dir":Ljava/lang/String;
    .end local v4    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .end local v5    # "entry":Ljava/util/jar/JarEntry;
    .end local v9    # "listName":Ljava/lang/String;
    .end local v10    # "name":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 316
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 317
    sget-object v11, Lorg/eclipse/jetty/util/resource/JarFileResource;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v11, v3}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 344
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v1    # "dash":I
    .restart local v2    # "dir":Ljava/lang/String;
    .restart local v4    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .restart local v5    # "entry":Ljava/util/jar/JarEntry;
    .restart local v9    # "listName":Ljava/lang/String;
    .restart local v10    # "name":Ljava/lang/String;
    :cond_4
    const/4 v11, 0x0

    add-int/lit8 v12, v1, 0x1

    invoke-virtual {v9, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 353
    .end local v1    # "dash":I
    .end local v5    # "entry":Ljava/util/jar/JarEntry;
    .end local v9    # "listName":Ljava/lang/String;
    .end local v10    # "name":Ljava/lang/String;
    :cond_5
    return-object v8
.end method


# virtual methods
.method protected checkConnection()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 95
    :try_start_0
    invoke-super {p0}, Lorg/eclipse/jetty/util/resource/JarResource;->checkConnection()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_jarConnection:Ljava/net/JarURLConnection;

    if-nez v0, :cond_0

    .line 101
    iput-object v2, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_entry:Ljava/util/jar/JarEntry;

    .line 102
    iput-object v2, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_file:Ljava/io/File;

    .line 103
    iput-object v2, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_jarFile:Ljava/util/jar/JarFile;

    .line 104
    iput-object v2, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_list:[Ljava/lang/String;

    .line 107
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_jarFile:Ljava/util/jar/JarFile;

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    return v0

    .line 99
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_jarConnection:Ljava/net/JarURLConnection;

    if-nez v1, :cond_1

    .line 101
    iput-object v2, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_entry:Ljava/util/jar/JarEntry;

    .line 102
    iput-object v2, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_file:Ljava/io/File;

    .line 103
    iput-object v2, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_jarFile:Ljava/util/jar/JarFile;

    .line 104
    iput-object v2, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_list:[Ljava/lang/String;

    :cond_1
    throw v0

    .line 107
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public encode(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 385
    return-object p1
.end method

.method public exists()Z
    .locals 15

    .prologue
    const/16 v14, 0x2f

    const/4 v11, 0x0

    const/4 v12, 0x1

    .line 140
    iget-boolean v10, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_exists:Z

    if-eqz v10, :cond_0

    .line 231
    :goto_0
    return v12

    .line 143
    :cond_0
    iget-object v10, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_urlString:Ljava/lang/String;

    const-string v13, "!/"

    invoke-virtual {v10, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 146
    iget-object v10, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_urlString:Ljava/lang/String;

    const/4 v12, 0x4

    iget-object v13, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_urlString:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/lit8 v13, v13, -0x2

    invoke-virtual {v10, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 147
    .local v7, "file_url":Ljava/lang/String;
    :try_start_0
    invoke-static {v7}, Lorg/eclipse/jetty/util/resource/JarFileResource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v10

    invoke-virtual {v10}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v12

    goto :goto_0

    .line 148
    :catch_0
    move-exception v3

    .local v3, "e":Ljava/lang/Exception;
    sget-object v10, Lorg/eclipse/jetty/util/resource/JarFileResource;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v10, v3}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    move v12, v11

    goto :goto_0

    .line 151
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v7    # "file_url":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/JarFileResource;->checkConnection()Z

    move-result v2

    .line 154
    .local v2, "check":Z
    iget-object v10, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_jarUrl:Ljava/lang/String;

    if-eqz v10, :cond_2

    iget-object v10, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_path:Ljava/lang/String;

    if-nez v10, :cond_2

    .line 157
    iput-boolean v2, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_directory:Z

    goto :goto_0

    .line 163
    :cond_2
    const/4 v8, 0x0

    .line 164
    .local v8, "jarFile":Ljava/util/jar/JarFile;
    if-eqz v2, :cond_7

    .line 166
    iget-object v8, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_jarFile:Ljava/util/jar/JarFile;

    .line 183
    :goto_1
    if-eqz v8, :cond_5

    iget-object v10, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_entry:Ljava/util/jar/JarEntry;

    if-nez v10, :cond_5

    iget-boolean v10, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_directory:Z

    if-nez v10, :cond_5

    .line 186
    invoke-virtual {v8}, Ljava/util/jar/JarFile;->entries()Ljava/util/Enumeration;

    move-result-object v4

    .line 187
    .local v4, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    :cond_3
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 189
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/jar/JarEntry;

    .line 190
    .local v5, "entry":Ljava/util/jar/JarEntry;
    invoke-virtual {v5}, Ljava/util/jar/JarEntry;->getName()Ljava/lang/String;

    move-result-object v10

    const/16 v13, 0x5c

    invoke-virtual {v10, v13, v14}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    .line 193
    .local v9, "name":Ljava/lang/String;
    iget-object v10, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_path:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 195
    iput-object v5, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_entry:Ljava/util/jar/JarEntry;

    .line 197
    iget-object v10, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_path:Ljava/lang/String;

    const-string v13, "/"

    invoke-virtual {v10, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    iput-boolean v10, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_directory:Z

    .line 215
    .end local v5    # "entry":Ljava/util/jar/JarEntry;
    .end local v9    # "name":Ljava/lang/String;
    :cond_4
    :goto_2
    iget-boolean v10, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_directory:Z

    if-eqz v10, :cond_5

    iget-object v10, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_urlString:Ljava/lang/String;

    const-string v13, "/"

    invoke-virtual {v10, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_5

    .line 217
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v13, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_urlString:Ljava/lang/String;

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v13, "/"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_urlString:Ljava/lang/String;

    .line 220
    :try_start_1
    new-instance v10, Ljava/net/URL;

    iget-object v13, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_urlString:Ljava/lang/String;

    invoke-direct {v10, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v10, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_url:Ljava/net/URL;
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2

    .line 230
    .end local v4    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    :cond_5
    :goto_3
    iget-boolean v10, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_directory:Z

    if-nez v10, :cond_6

    iget-object v10, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_entry:Ljava/util/jar/JarEntry;

    if-eqz v10, :cond_a

    :cond_6
    move v10, v12

    :goto_4
    iput-boolean v10, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_exists:Z

    .line 231
    iget-boolean v12, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_exists:Z

    goto/16 :goto_0

    .line 172
    :cond_7
    :try_start_2
    new-instance v10, Ljava/net/URL;

    iget-object v13, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_jarUrl:Ljava/lang/String;

    invoke-direct {v10, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v10

    check-cast v10, Ljava/net/JarURLConnection;

    move-object v0, v10

    check-cast v0, Ljava/net/JarURLConnection;

    move-object v1, v0

    .line 173
    .local v1, "c":Ljava/net/JarURLConnection;
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/JarFileResource;->getUseCaches()Z

    move-result v10

    invoke-virtual {v1, v10}, Ljava/net/JarURLConnection;->setUseCaches(Z)V

    .line 174
    invoke-virtual {v1}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v8

    goto/16 :goto_1

    .line 176
    .end local v1    # "c":Ljava/net/JarURLConnection;
    :catch_1
    move-exception v3

    .line 178
    .restart local v3    # "e":Ljava/lang/Exception;
    sget-object v10, Lorg/eclipse/jetty/util/resource/JarFileResource;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v10, v3}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 200
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v4    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .restart local v5    # "entry":Ljava/util/jar/JarEntry;
    .restart local v9    # "name":Ljava/lang/String;
    :cond_8
    iget-object v10, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_path:Ljava/lang/String;

    const-string v13, "/"

    invoke-virtual {v10, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 202
    iget-object v10, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_path:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 204
    iput-boolean v12, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_directory:Z

    goto :goto_2

    .line 208
    :cond_9
    iget-object v10, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_path:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v10

    iget-object v13, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_path:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    if-le v10, v13, :cond_3

    iget-object v10, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_path:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-ne v10, v14, :cond_3

    .line 210
    iput-boolean v12, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_directory:Z

    goto/16 :goto_2

    .line 222
    .end local v5    # "entry":Ljava/util/jar/JarEntry;
    .end local v9    # "name":Ljava/lang/String;
    :catch_2
    move-exception v6

    .line 224
    .local v6, "ex":Ljava/net/MalformedURLException;
    sget-object v10, Lorg/eclipse/jetty/util/resource/JarFileResource;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v10, v6}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_3

    .end local v4    # "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/util/jar/JarEntry;>;"
    .end local v6    # "ex":Ljava/net/MalformedURLException;
    :cond_a
    move v10, v11

    .line 230
    goto :goto_4
.end method

.method public isContainedIn(Lorg/eclipse/jetty/util/resource/Resource;)Z
    .locals 4
    .param p1, "resource"    # Lorg/eclipse/jetty/util/resource/Resource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 418
    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_urlString:Ljava/lang/String;

    .line 419
    .local v1, "string":Ljava/lang/String;
    const-string v3, "!/"

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 420
    .local v0, "index":I
    if-lez v0, :cond_0

    .line 421
    const/4 v3, 0x0

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 422
    :cond_0
    const-string v3, "jar:"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 423
    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 424
    :cond_1
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 425
    .local v2, "url":Ljava/net/URL;
    invoke-virtual {p1}, Lorg/eclipse/jetty/util/resource/Resource;->getURL()Ljava/net/URL;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/net/URL;->sameFile(Ljava/net/URL;)Z

    move-result v3

    return v3
.end method

.method public isDirectory()Z
    .locals 2

    .prologue
    .line 244
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_urlString:Ljava/lang/String;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/JarFileResource;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_directory:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public lastModified()J
    .locals 2

    .prologue
    .line 254
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/JarFileResource;->checkConnection()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_file:Ljava/io/File;

    if-eqz v0, :cond_1

    .line 256
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/JarFileResource;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_entry:Ljava/util/jar/JarEntry;

    if-eqz v0, :cond_0

    .line 257
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_entry:Ljava/util/jar/JarEntry;

    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getTime()J

    move-result-wide v0

    .line 260
    :goto_0
    return-wide v0

    .line 258
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    goto :goto_0

    .line 260
    :cond_1
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public length()J
    .locals 3

    .prologue
    const-wide/16 v0, -0x1

    .line 367
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/JarFileResource;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 373
    :cond_0
    :goto_0
    return-wide v0

    .line 370
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_entry:Ljava/util/jar/JarEntry;

    if-eqz v2, :cond_0

    .line 371
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_entry:Ljava/util/jar/JarEntry;

    invoke-virtual {v0}, Ljava/util/jar/JarEntry;->getSize()J

    move-result-wide v0

    goto :goto_0
.end method

.method public declared-synchronized list()[Ljava/lang/String;
    .locals 5

    .prologue
    .line 267
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/JarFileResource;->isDirectory()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_list:[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    .line 269
    const/4 v1, 0x0

    .line 272
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_1
    invoke-direct {p0}, Lorg/eclipse/jetty/util/resource/JarFileResource;->listEntries()Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .line 288
    :goto_0
    if-eqz v1, :cond_0

    .line 290
    :try_start_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    iput-object v2, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_list:[Ljava/lang/String;

    .line 291
    iget-object v2, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_list:[Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 294
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_list:[Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v2

    .line 274
    .restart local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 282
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    sget-object v2, Lorg/eclipse/jetty/util/resource/JarFileResource;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Retrying list:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 283
    sget-object v2, Lorg/eclipse/jetty/util/resource/JarFileResource;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 284
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/JarFileResource;->release()V

    .line 285
    invoke-direct {p0}, Lorg/eclipse/jetty/util/resource/JarFileResource;->listEntries()Ljava/util/List;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 267
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected declared-synchronized newConnection()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 116
    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Lorg/eclipse/jetty/util/resource/JarResource;->newConnection()V

    .line 118
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_entry:Ljava/util/jar/JarEntry;

    .line 119
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_file:Ljava/io/File;

    .line 120
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_jarFile:Ljava/util/jar/JarFile;

    .line 121
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_list:[Ljava/lang/String;

    .line 123
    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_urlString:Ljava/lang/String;

    const-string v2, "!/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 124
    .local v0, "sep":I
    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_urlString:Ljava/lang/String;

    const/4 v2, 0x0

    add-int/lit8 v3, v0, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_jarUrl:Ljava/lang/String;

    .line 125
    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_urlString:Ljava/lang/String;

    add-int/lit8 v2, v0, 0x2

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_path:Ljava/lang/String;

    .line 126
    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_path:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 127
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_path:Ljava/lang/String;

    .line 128
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_jarConnection:Ljava/net/JarURLConnection;

    invoke-virtual {v1}, Ljava/net/JarURLConnection;->getJarFile()Ljava/util/jar/JarFile;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_jarFile:Ljava/util/jar/JarFile;

    .line 129
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_jarFile:Ljava/util/jar/JarFile;

    invoke-virtual {v2}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_file:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    monitor-exit p0

    return-void

    .line 116
    .end local v0    # "sep":I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized release()V
    .locals 4

    .prologue
    .line 65
    monitor-enter p0

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_list:[Ljava/lang/String;

    .line 66
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_entry:Ljava/util/jar/JarEntry;

    .line 67
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_file:Ljava/io/File;

    .line 70
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/resource/JarFileResource;->getUseCaches()Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_jarFile:Ljava/util/jar/JarFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 76
    :try_start_1
    sget-object v1, Lorg/eclipse/jetty/util/resource/JarFileResource;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Closing JarFile "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_jarFile:Ljava/util/jar/JarFile;

    invoke-virtual {v3}, Ljava/util/jar/JarFile;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 77
    iget-object v1, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_jarFile:Ljava/util/jar/JarFile;

    invoke-virtual {v1}, Ljava/util/jar/JarFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    :cond_0
    :goto_0
    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Lorg/eclipse/jetty/util/resource/JarFileResource;->_jarFile:Ljava/util/jar/JarFile;

    .line 86
    invoke-super {p0}, Lorg/eclipse/jetty/util/resource/JarResource;->release()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    monitor-exit p0

    return-void

    .line 79
    :catch_0
    move-exception v0

    .line 81
    .local v0, "ioe":Ljava/io/IOException;
    :try_start_3
    sget-object v1, Lorg/eclipse/jetty/util/resource/JarFileResource;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 65
    .end local v0    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
