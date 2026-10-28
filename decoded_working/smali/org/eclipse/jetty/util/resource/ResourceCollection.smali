.class public Lorg/eclipse/jetty/util/resource/ResourceCollection;
.super Lorg/eclipse/jetty/util/resource/Resource;
.source "ResourceCollection.java"


# instance fields
.field private _resources:[Lorg/eclipse/jetty/util/resource/Resource;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0}, Lorg/eclipse/jetty/util/resource/Resource;-><init>()V

    .line 57
    const/4 v0, 0x0

    new-array v0, v0, [Lorg/eclipse/jetty/util/resource/Resource;

    iput-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "csvResources"    # Ljava/lang/String;

    .prologue
    .line 125
    invoke-direct {p0}, Lorg/eclipse/jetty/util/resource/Resource;-><init>()V

    .line 126
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/resource/ResourceCollection;->setResourcesAsCSV(Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 5
    .param p1, "resources"    # [Ljava/lang/String;

    .prologue
    .line 97
    invoke-direct {p0}, Lorg/eclipse/jetty/util/resource/Resource;-><init>()V

    .line 98
    array-length v2, p1

    new-array v2, v2, [Lorg/eclipse/jetty/util/resource/Resource;

    iput-object v2, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    .line 101
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    array-length v2, p1

    if-ge v1, v2, :cond_2

    .line 103
    iget-object v2, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    aget-object v3, p1, v1

    invoke-static {v3}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v3

    aput-object v3, v2, v1

    .line 104
    iget-object v2, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_1

    .line 105
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not an existing directory."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 108
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    throw v0

    .line 101
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 112
    :catch_1
    move-exception v0

    .line 114
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 116
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    return-void
.end method

.method public varargs constructor <init>([Lorg/eclipse/jetty/util/resource/Resource;)V
    .locals 12
    .param p1, "resources"    # [Lorg/eclipse/jetty/util/resource/Resource;

    .prologue
    .line 67
    invoke-direct {p0}, Lorg/eclipse/jetty/util/resource/Resource;-><init>()V

    .line 68
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/util/resource/Resource;>;"
    move-object v0, p1

    .local v0, "arr$":[Lorg/eclipse/jetty/util/resource/Resource;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v0    # "arr$":[Lorg/eclipse/jetty/util/resource/Resource;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_3

    aget-object v7, v0, v3

    .line 71
    .local v7, "r":Lorg/eclipse/jetty/util/resource/Resource;
    if-nez v7, :cond_1

    .line 69
    .end local v3    # "i$":I
    .end local v7    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_0
    :goto_1
    add-int/lit8 v2, v3, 0x1

    .restart local v2    # "i$":I
    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0

    .line 73
    .restart local v7    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_1
    instance-of v9, v7, Lorg/eclipse/jetty/util/resource/ResourceCollection;

    if-eqz v9, :cond_2

    .line 75
    check-cast v7, Lorg/eclipse/jetty/util/resource/ResourceCollection;

    .end local v7    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v7}, Lorg/eclipse/jetty/util/resource/ResourceCollection;->getResources()[Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v1

    .local v1, "arr$":[Lorg/eclipse/jetty/util/resource/Resource;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_2
    if-ge v2, v5, :cond_0

    aget-object v8, v1, v2

    .line 76
    .local v8, "r2":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 79
    .end local v1    # "arr$":[Lorg/eclipse/jetty/util/resource/Resource;
    .end local v2    # "i$":I
    .end local v5    # "len$":I
    .end local v8    # "r2":Lorg/eclipse/jetty/util/resource/Resource;
    .restart local v3    # "i$":I
    .restart local v7    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_2
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 81
    .end local v7    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_3
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Lorg/eclipse/jetty/util/resource/Resource;

    invoke-interface {v6, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Lorg/eclipse/jetty/util/resource/Resource;

    iput-object v9, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    .line 82
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    .restart local v0    # "arr$":[Lorg/eclipse/jetty/util/resource/Resource;
    array-length v4, v0

    .restart local v4    # "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_3
    if-ge v2, v4, :cond_6

    aget-object v7, v0, v2

    .line 84
    .restart local v7    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v7}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v7}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v9

    if-nez v9, :cond_5

    .line 85
    :cond_4
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is not an existing directory."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 82
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 87
    .end local v7    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_6
    return-void
.end method


# virtual methods
.method public addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 193
    iget-object v4, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v4, :cond_0

    .line 194
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "*resources* not set."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 196
    :cond_0
    if-nez p1, :cond_1

    .line 197
    new-instance v4, Ljava/net/MalformedURLException;

    invoke-direct {v4}, Ljava/net/MalformedURLException;-><init>()V

    throw v4

    .line 199
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "/"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_2
    move-object v2, p0

    .line 235
    :cond_3
    :goto_0
    return-object v2

    .line 202
    :cond_4
    const/4 v2, 0x0

    .line 203
    .local v2, "resource":Lorg/eclipse/jetty/util/resource/Resource;
    const/4 v3, 0x0

    .line 204
    .local v3, "resources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/eclipse/jetty/util/resource/Resource;>;"
    const/4 v0, 0x0

    .line 205
    .local v0, "i":I
    :goto_1
    iget-object v4, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    array-length v4, v4

    if-ge v0, v4, :cond_5

    .line 207
    iget-object v4, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    aget-object v4, v4, v0

    invoke-virtual {v4, p1}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v2

    .line 208
    invoke-virtual {v2}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 210
    invoke-virtual {v2}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 216
    :cond_5
    add-int/lit8 v0, v0, 0x1

    :goto_2
    iget-object v4, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    array-length v4, v4

    if-ge v0, v4, :cond_9

    .line 218
    iget-object v4, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    aget-object v4, v4, v0

    invoke-virtual {v4, p1}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v1

    .line 219
    .local v1, "r":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 221
    if-eqz v2, :cond_6

    .line 223
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "resources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/eclipse/jetty/util/resource/Resource;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 224
    .restart local v3    # "resources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/eclipse/jetty/util/resource/Resource;>;"
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 225
    const/4 v2, 0x0

    .line 227
    :cond_6
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 216
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 205
    .end local v1    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 231
    :cond_9
    if-nez v2, :cond_3

    .line 233
    if-eqz v3, :cond_a

    .line 234
    new-instance v2, Lorg/eclipse/jetty/util/resource/ResourceCollection;

    .end local v2    # "resource":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Lorg/eclipse/jetty/util/resource/Resource;

    invoke-direct {v2, v4}, Lorg/eclipse/jetty/util/resource/ResourceCollection;-><init>([Lorg/eclipse/jetty/util/resource/Resource;)V

    goto :goto_0

    .line 235
    .restart local v2    # "resource":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_a
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public copyTo(Ljava/io/File;)V
    .locals 3
    .param p1, "destination"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 457
    iget-object v2, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    array-length v0, v2

    .local v0, "r":I
    move v1, v0

    .end local v0    # "r":I
    .local v1, "r":I
    :goto_0
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "r":I
    .restart local v0    # "r":I
    if-lez v1, :cond_0

    .line 458
    iget-object v2, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    aget-object v2, v2, v0

    invoke-virtual {v2, p1}, Lorg/eclipse/jetty/util/resource/Resource;->copyTo(Ljava/io/File;)V

    move v1, v0

    .end local v0    # "r":I
    .restart local v1    # "r":I
    goto :goto_0

    .line 459
    .end local v1    # "r":I
    .restart local v0    # "r":I
    :cond_0
    return-void
.end method

.method public delete()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 287
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public exists()Z
    .locals 2

    .prologue
    .line 294
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v0, :cond_0

    .line 295
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "*resources* not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 297
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected findResource(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 247
    const/4 v2, 0x0

    .line 248
    .local v2, "resource":Lorg/eclipse/jetty/util/resource/Resource;
    const/4 v3, 0x0

    .line 249
    .local v3, "resources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/eclipse/jetty/util/resource/Resource;>;"
    const/4 v0, 0x0

    .line 250
    .local v0, "i":I
    :goto_0
    iget-object v4, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    array-length v4, v4

    if-ge v0, v4, :cond_0

    .line 252
    iget-object v4, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    aget-object v4, v4, v0

    invoke-virtual {v4, p1}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v2

    .line 253
    invoke-virtual {v2}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 255
    invoke-virtual {v2}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 262
    :cond_0
    add-int/lit8 v0, v0, 0x1

    :goto_1
    iget-object v4, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    array-length v4, v4

    if-ge v0, v4, :cond_5

    .line 264
    iget-object v4, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    aget-object v4, v4, v0

    invoke-virtual {v4, p1}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v1

    .line 265
    .local v1, "r":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 267
    if-eqz v2, :cond_1

    .line 269
    new-instance v3, Ljava/util/ArrayList;

    .end local v3    # "resources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/eclipse/jetty/util/resource/Resource;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 270
    .restart local v3    # "resources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/eclipse/jetty/util/resource/Resource;>;"
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 272
    :cond_1
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 262
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_3
    move-object v4, v2

    .line 280
    :goto_2
    return-object v4

    .line 250
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 276
    :cond_5
    if-eqz v2, :cond_6

    move-object v4, v2

    .line 277
    goto :goto_2

    .line 278
    :cond_6
    if-eqz v3, :cond_7

    move-object v4, v3

    .line 279
    goto :goto_2

    .line 280
    :cond_7
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public getFile()Ljava/io/File;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 304
    iget-object v5, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v5, :cond_0

    .line 305
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "*resources* not set."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 307
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    .local v0, "arr$":[Lorg/eclipse/jetty/util/resource/Resource;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v4, v0, v2

    .line 309
    .local v4, "r":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v4}, Lorg/eclipse/jetty/util/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v1

    .line 310
    .local v1, "f":Ljava/io/File;
    if-eqz v1, :cond_1

    .line 313
    .end local v1    # "f":Ljava/io/File;
    .end local v4    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    :goto_1
    return-object v1

    .line 307
    .restart local v1    # "f":Ljava/io/File;
    .restart local v4    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 313
    .end local v1    # "f":Ljava/io/File;
    .end local v4    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public getInputStream()Ljava/io/InputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 320
    iget-object v5, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v5, :cond_0

    .line 321
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "*resources* not set."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 323
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    .local v0, "arr$":[Lorg/eclipse/jetty/util/resource/Resource;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v4, v0, v1

    .line 325
    .local v4, "r":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v4}, Lorg/eclipse/jetty/util/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 326
    .local v2, "is":Ljava/io/InputStream;
    if-eqz v2, :cond_1

    .line 329
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v4    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    :goto_1
    return-object v2

    .line 323
    .restart local v2    # "is":Ljava/io/InputStream;
    .restart local v4    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 329
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v4    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public getName()Ljava/lang/String;
    .locals 7

    .prologue
    .line 336
    iget-object v5, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v5, :cond_0

    .line 337
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "*resources* not set."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 339
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    .local v0, "arr$":[Lorg/eclipse/jetty/util/resource/Resource;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .line 341
    .local v4, "r":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v4}, Lorg/eclipse/jetty/util/resource/Resource;->getName()Ljava/lang/String;

    move-result-object v3

    .line 342
    .local v3, "name":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 345
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    :goto_1
    return-object v3

    .line 339
    .restart local v3    # "name":Ljava/lang/String;
    .restart local v4    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 345
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getOutputStream()Ljava/io/OutputStream;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 352
    iget-object v5, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v5, :cond_0

    .line 353
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "*resources* not set."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 355
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    .local v0, "arr$":[Lorg/eclipse/jetty/util/resource/Resource;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v4, v0, v1

    .line 357
    .local v4, "r":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v4}, Lorg/eclipse/jetty/util/resource/Resource;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    .line 358
    .local v3, "os":Ljava/io/OutputStream;
    if-eqz v3, :cond_1

    .line 361
    .end local v3    # "os":Ljava/io/OutputStream;
    .end local v4    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    :goto_1
    return-object v3

    .line 355
    .restart local v3    # "os":Ljava/io/OutputStream;
    .restart local v4    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 361
    .end local v3    # "os":Ljava/io/OutputStream;
    .end local v4    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public getResources()[Lorg/eclipse/jetty/util/resource/Resource;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    return-object v0
.end method

.method public getURL()Ljava/net/URL;
    .locals 7

    .prologue
    .line 368
    iget-object v5, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v5, :cond_0

    .line 369
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "*resources* not set."

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 371
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    .local v0, "arr$":[Lorg/eclipse/jetty/util/resource/Resource;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 373
    .local v3, "r":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v3}, Lorg/eclipse/jetty/util/resource/Resource;->getURL()Ljava/net/URL;

    move-result-object v4

    .line 374
    .local v4, "url":Ljava/net/URL;
    if-eqz v4, :cond_1

    .line 377
    .end local v3    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    .end local v4    # "url":Ljava/net/URL;
    :goto_1
    return-object v4

    .line 371
    .restart local v3    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    .restart local v4    # "url":Ljava/net/URL;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 377
    .end local v3    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    .end local v4    # "url":Ljava/net/URL;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public isContainedIn(Lorg/eclipse/jetty/util/resource/Resource;)Z
    .locals 1
    .param p1, "r"    # Lorg/eclipse/jetty/util/resource/Resource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 479
    const/4 v0, 0x0

    return v0
.end method

.method public isDirectory()Z
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v0, :cond_0

    .line 385
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "*resources* not set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 387
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public lastModified()J
    .locals 9

    .prologue
    const-wide/16 v6, -0x1

    .line 394
    iget-object v8, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v8, :cond_0

    .line 395
    new-instance v6, Ljava/lang/IllegalStateException;

    const-string v7, "*resources* not set."

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 397
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    .local v0, "arr$":[Lorg/eclipse/jetty/util/resource/Resource;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v5, v0, v1

    .line 399
    .local v5, "r":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v5}, Lorg/eclipse/jetty/util/resource/Resource;->lastModified()J

    move-result-wide v3

    .line 400
    .local v3, "lm":J
    cmp-long v8, v3, v6

    if-eqz v8, :cond_1

    .line 403
    .end local v3    # "lm":J
    .end local v5    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    :goto_1
    return-wide v3

    .line 397
    .restart local v3    # "lm":J
    .restart local v5    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .end local v3    # "lm":J
    .end local v5    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_2
    move-wide v3, v6

    .line 403
    goto :goto_1
.end method

.method public length()J
    .locals 2

    .prologue
    .line 410
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public list()[Ljava/lang/String;
    .locals 12

    .prologue
    .line 420
    iget-object v10, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v10, :cond_0

    .line 421
    new-instance v10, Ljava/lang/IllegalStateException;

    const-string v11, "*resources* not set."

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 423
    :cond_0
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 424
    .local v9, "set":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    .local v0, "arr$":[Lorg/eclipse/jetty/util/resource/Resource;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v0    # "arr$":[Lorg/eclipse/jetty/util/resource/Resource;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v6, v0, v3

    .line 426
    .local v6, "r":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v6}, Lorg/eclipse/jetty/util/resource/Resource;->list()[Ljava/lang/String;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/String;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v5, :cond_1

    aget-object v8, v1, v2

    .line 427
    .local v8, "s":Ljava/lang/String;
    invoke-virtual {v9, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 426
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 424
    .end local v8    # "s":Ljava/lang/String;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0

    .line 429
    .end local v1    # "arr$":[Ljava/lang/String;
    .end local v5    # "len$":I
    .end local v6    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_2
    invoke-virtual {v9}, Ljava/util/HashSet;->size()I

    move-result v10

    new-array v10, v10, [Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/String;

    .line 430
    .local v7, "result":[Ljava/lang/String;
    invoke-static {v7}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 431
    return-object v7
.end method

.method public release()V
    .locals 6

    .prologue
    .line 438
    iget-object v4, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v4, :cond_0

    .line 439
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "*resources* not set."

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 441
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    .local v0, "arr$":[Lorg/eclipse/jetty/util/resource/Resource;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 442
    .local v3, "r":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v3}, Lorg/eclipse/jetty/util/resource/Resource;->release()V

    .line 441
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 443
    .end local v3    # "r":Lorg/eclipse/jetty/util/resource/Resource;
    :cond_1
    return-void
.end method

.method public renameTo(Lorg/eclipse/jetty/util/resource/Resource;)Z
    .locals 1
    .param p1, "dest"    # Lorg/eclipse/jetty/util/resource/Resource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 449
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setResources([Lorg/eclipse/jetty/util/resource/Resource;)V
    .locals 1
    .param p1, "resources"    # [Lorg/eclipse/jetty/util/resource/Resource;

    .prologue
    .line 148
    if-eqz p1, :cond_0

    .end local p1    # "resources":[Lorg/eclipse/jetty/util/resource/Resource;
    :goto_0
    iput-object p1, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    .line 149
    return-void

    .line 148
    .restart local p1    # "resources":[Lorg/eclipse/jetty/util/resource/Resource;
    :cond_0
    const/4 v0, 0x0

    new-array p1, v0, [Lorg/eclipse/jetty/util/resource/Resource;

    goto :goto_0
.end method

.method public setResourcesAsCSV(Ljava/lang/String;)V
    .locals 7
    .param p1, "csvResources"    # Ljava/lang/String;

    .prologue
    .line 161
    new-instance v3, Ljava/util/StringTokenizer;

    const-string v4, ",;"

    invoke-direct {v3, p1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    .local v3, "tokenizer":Ljava/util/StringTokenizer;
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->countTokens()I

    move-result v2

    .line 163
    .local v2, "len":I
    if-nez v2, :cond_0

    .line 165
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "ResourceCollection@setResourcesAsCSV(String)  argument must be a string containing one or more comma-separated resource strings."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 169
    :cond_0
    new-array v4, v2, [Lorg/eclipse/jetty/util/resource/Resource;

    iput-object v4, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    .line 172
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 174
    iget-object v4, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v5

    aput-object v5, v4, v1

    .line 175
    iget-object v4, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    aget-object v4, v4, v1

    invoke-virtual {v4}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_2

    .line 176
    :cond_1
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " is not an existing directory."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :catch_0
    move-exception v0

    .line 181
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 172
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 183
    :cond_3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v0, :cond_0

    .line 469
    const-string v0, "[]"

    .line 471
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/resource/ResourceCollection;->_resources:[Lorg/eclipse/jetty/util/resource/Resource;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
