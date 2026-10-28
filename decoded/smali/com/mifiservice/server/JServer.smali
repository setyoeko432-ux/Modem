.class public Lcom/mifiservice/server/JServer;
.super Ljava/lang/Object;
.source "JServer.java"


# static fields
.field private static final ASSETS_DIR:Ljava/lang/String; = "jetty2"

.field private static final TAG:Ljava/lang/String; = "JServer"

.field private static mContext:Landroid/content/Context;


# instance fields
.field private mPort:I

.field private mServer:Lorg/eclipse/jetty/server/Server;


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Lcom/mifiservice/server/JServer;->mPort:I

    .line 38
    return-void
.end method

.method private static extractAssets(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    .locals 14
    .param p0, "am"    # Landroid/content/res/AssetManager;
    .param p1, "assetsDir"    # Ljava/lang/String;

    .prologue
    .line 84
    const/4 v5, 0x0

    .line 86
    .local v5, "files":[Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 87
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 92
    :cond_0
    :goto_0
    if-eqz v5, :cond_1

    array-length v12, v5

    if-nez v12, :cond_2

    .line 144
    :cond_1
    :goto_1
    return-void

    .line 89
    :catch_0
    move-exception v2

    .line 90
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 97
    .end local v2    # "e":Ljava/io/IOException;
    :cond_2
    new-instance v3, Ljava/io/File;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v13, Lcom/mifiservice/server/JServer;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v13

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v3, v12}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 98
    .local v3, "extractDir":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v12

    if-eqz v12, :cond_3

    .line 99
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_1

    .line 102
    :cond_3
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v12

    if-nez v12, :cond_4

    .line 103
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 106
    :cond_4
    move-object v0, v5

    .local v0, "arr$":[Ljava/lang/String;
    array-length v9, v0

    .local v9, "len$":I
    const/4 v6, 0x0

    .local v6, "i$":I
    :goto_2
    if-ge v6, v9, :cond_1

    aget-object v4, v0, v6

    .line 107
    .local v4, "file":Ljava/lang/String;
    const/4 v7, 0x0

    .line 108
    .local v7, "in":Ljava/io/InputStream;
    const/4 v10, 0x0

    .line 110
    .local v10, "out":Ljava/io/BufferedOutputStream;
    :try_start_1
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {p0, v12}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    .line 111
    new-instance v11, Ljava/io/BufferedOutputStream;

    new-instance v12, Ljava/io/FileOutputStream;

    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v12, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v11, v12}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 113
    .end local v10    # "out":Ljava/io/BufferedOutputStream;
    .local v11, "out":Ljava/io/BufferedOutputStream;
    const/16 v12, 0x1000

    :try_start_2
    new-array v1, v12, [B

    .line 114
    .local v1, "buffer":[B
    const/4 v8, 0x0

    .line 115
    .local v8, "len":I
    :goto_3
    invoke-virtual {v7, v1}, Ljava/io/InputStream;->read([B)I

    move-result v8

    const/4 v12, -0x1

    if-eq v8, v12, :cond_7

    .line 116
    const/4 v12, 0x0

    invoke-virtual {v11, v1, v12, v8}, Ljava/io/BufferedOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    .line 120
    .end local v1    # "buffer":[B
    .end local v8    # "len":I
    :catch_1
    move-exception v2

    move-object v10, v11

    .line 121
    .end local v11    # "out":Ljava/io/BufferedOutputStream;
    .local v2, "e":Ljava/io/FileNotFoundException;
    .restart local v10    # "out":Ljava/io/BufferedOutputStream;
    :goto_4
    :try_start_3
    const-string v12, "JServer"

    const-string v13, "JServer extractAssets not found"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {p0, v12}, Lcom/mifiservice/server/JServer;->extractAssets(Landroid/content/res/AssetManager;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 130
    if-eqz v10, :cond_5

    .line 131
    :try_start_4
    invoke-virtual {v10}, Ljava/io/BufferedOutputStream;->close()V

    .line 133
    :cond_5
    if-eqz v7, :cond_6

    .line 134
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 106
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :cond_6
    :goto_5
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 118
    .end local v10    # "out":Ljava/io/BufferedOutputStream;
    .restart local v1    # "buffer":[B
    .restart local v8    # "len":I
    .restart local v11    # "out":Ljava/io/BufferedOutputStream;
    :cond_7
    :try_start_5
    invoke-virtual {v11}, Ljava/io/BufferedOutputStream;->close()V

    .line 119
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 130
    if-eqz v11, :cond_8

    .line 131
    :try_start_6
    invoke-virtual {v11}, Ljava/io/BufferedOutputStream;->close()V

    .line 133
    :cond_8
    if-eqz v7, :cond_9

    .line 134
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 140
    :cond_9
    :goto_6
    const-string v12, "JServer"

    const-string v13, "JServer extractAssets six"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v10, v11

    .end local v11    # "out":Ljava/io/BufferedOutputStream;
    .restart local v10    # "out":Ljava/io/BufferedOutputStream;
    goto :goto_5

    .line 125
    .end local v1    # "buffer":[B
    .end local v8    # "len":I
    :catch_2
    move-exception v2

    .line 126
    .local v2, "e":Ljava/io/IOException;
    :goto_7
    :try_start_7
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 130
    if-eqz v10, :cond_a

    .line 131
    :try_start_8
    invoke-virtual {v10}, Ljava/io/BufferedOutputStream;->close()V

    .line 133
    :cond_a
    if-eqz v7, :cond_6

    .line 134
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto :goto_5

    .line 136
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v12

    goto :goto_5

    .line 129
    :catchall_0
    move-exception v12

    .line 130
    :goto_8
    if-eqz v10, :cond_b

    .line 131
    :try_start_9
    invoke-virtual {v10}, Ljava/io/BufferedOutputStream;->close()V

    .line 133
    :cond_b
    if-eqz v7, :cond_c

    .line 134
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    .line 129
    :cond_c
    :goto_9
    throw v12

    .line 136
    .end local v10    # "out":Ljava/io/BufferedOutputStream;
    .restart local v1    # "buffer":[B
    .restart local v8    # "len":I
    .restart local v11    # "out":Ljava/io/BufferedOutputStream;
    :catch_4
    move-exception v12

    goto :goto_6

    .end local v1    # "buffer":[B
    .end local v8    # "len":I
    .end local v11    # "out":Ljava/io/BufferedOutputStream;
    .restart local v10    # "out":Ljava/io/BufferedOutputStream;
    :catch_5
    move-exception v13

    goto :goto_9

    .line 129
    .end local v10    # "out":Ljava/io/BufferedOutputStream;
    .restart local v11    # "out":Ljava/io/BufferedOutputStream;
    :catchall_1
    move-exception v12

    move-object v10, v11

    .end local v11    # "out":Ljava/io/BufferedOutputStream;
    .restart local v10    # "out":Ljava/io/BufferedOutputStream;
    goto :goto_8

    .line 125
    .end local v10    # "out":Ljava/io/BufferedOutputStream;
    .restart local v11    # "out":Ljava/io/BufferedOutputStream;
    :catch_6
    move-exception v2

    move-object v10, v11

    .end local v11    # "out":Ljava/io/BufferedOutputStream;
    .restart local v10    # "out":Ljava/io/BufferedOutputStream;
    goto :goto_7

    .line 120
    :catch_7
    move-exception v2

    goto :goto_4
.end method


# virtual methods
.method public declared-synchronized isStarted()Z
    .locals 2

    .prologue
    .line 167
    monitor-enter p0

    :try_start_0
    const-string v0, "JServer"

    const-string v1, "JServer extractAssets isStarted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    iget-object v0, p0, Lcom/mifiservice/server/JServer;->mServer:Lorg/eclipse/jetty/server/Server;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 169
    const/4 v0, 0x0

    .line 171
    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/mifiservice/server/JServer;->mServer:Lorg/eclipse/jetty/server/Server;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->isStarted()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    goto :goto_0

    .line 167
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start(Landroid/content/Context;)V
    .locals 8
    .param p1, "applicationContext"    # Landroid/content/Context;

    .prologue
    .line 44
    monitor-enter p0

    :try_start_0
    const-string v5, "JServer"

    const-string v6, "JServer start one"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    iget-object v5, p0, Lcom/mifiservice/server/JServer;->mServer:Lorg/eclipse/jetty/server/Server;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/mifiservice/server/JServer;->mServer:Lorg/eclipse/jetty/server/Server;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/Server;->isStarted()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    if-eqz v5, :cond_0

    .line 80
    :goto_0
    monitor-exit p0

    return-void

    .line 48
    :cond_0
    :try_start_1
    sput-object p1, Lcom/mifiservice/server/JServer;->mContext:Landroid/content/Context;

    .line 49
    const-string v5, "JServer"

    const-string v6, "JServer start two"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object v5, p0, Lcom/mifiservice/server/JServer;->mServer:Lorg/eclipse/jetty/server/Server;

    if-nez v5, :cond_1

    .line 52
    new-instance v4, Lorg/eclipse/jetty/servlet/ServletContextHandler;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Lorg/eclipse/jetty/servlet/ServletContextHandler;-><init>(I)V

    .line 54
    .local v4, "servletHandler":Lorg/eclipse/jetty/servlet/ServletContextHandler;
    new-instance v5, Lorg/eclipse/jetty/servlet/ServletHolder;

    new-instance v6, Lcom/mifiservice/server/AjaxSevlet;

    invoke-direct {v6}, Lcom/mifiservice/server/AjaxSevlet;-><init>()V

    invoke-direct {v5, v6}, Lorg/eclipse/jetty/servlet/ServletHolder;-><init>(Ljavax/servlet/Servlet;)V

    const-string v6, "/ajax"

    invoke-virtual {v4, v5, v6}, Lorg/eclipse/jetty/servlet/ServletContextHandler;->addServlet(Lorg/eclipse/jetty/servlet/ServletHolder;Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    const-string v6, "jetty2"

    invoke-static {v5, v6}, Lcom/mifiservice/server/JServer;->extractAssets(Landroid/content/res/AssetManager;Ljava/lang/String;)V

    .line 58
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/mifiservice/server/JServer;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "jetty2"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 61
    .local v2, "resourceBase":Ljava/lang/String;
    const-string v5, "JServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "JServer start resourceBase="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    new-instance v3, Lorg/eclipse/jetty/server/handler/ResourceHandler;

    invoke-direct {v3}, Lorg/eclipse/jetty/server/handler/ResourceHandler;-><init>()V

    .line 63
    .local v3, "resourceHandler":Lorg/eclipse/jetty/server/handler/ResourceHandler;
    invoke-virtual {v3, v2}, Lorg/eclipse/jetty/server/handler/ResourceHandler;->setResourceBase(Ljava/lang/String;)V

    .line 66
    new-instance v1, Lorg/eclipse/jetty/server/handler/HandlerList;

    invoke-direct {v1}, Lorg/eclipse/jetty/server/handler/HandlerList;-><init>()V

    .line 67
    .local v1, "handlerList":Lorg/eclipse/jetty/server/handler/HandlerList;
    invoke-virtual {v1, v4}, Lorg/eclipse/jetty/server/handler/HandlerList;->addHandler(Lorg/eclipse/jetty/server/Handler;)V

    .line 68
    invoke-virtual {v1, v3}, Lorg/eclipse/jetty/server/handler/HandlerList;->addHandler(Lorg/eclipse/jetty/server/Handler;)V

    .line 69
    new-instance v5, Lorg/eclipse/jetty/server/Server;

    iget v6, p0, Lcom/mifiservice/server/JServer;->mPort:I

    invoke-direct {v5, v6}, Lorg/eclipse/jetty/server/Server;-><init>(I)V

    iput-object v5, p0, Lcom/mifiservice/server/JServer;->mServer:Lorg/eclipse/jetty/server/Server;

    .line 70
    iget-object v5, p0, Lcom/mifiservice/server/JServer;->mServer:Lorg/eclipse/jetty/server/Server;

    invoke-virtual {v5, v1}, Lorg/eclipse/jetty/server/Server;->setHandler(Lorg/eclipse/jetty/server/Handler;)V

    .line 73
    .end local v1    # "handlerList":Lorg/eclipse/jetty/server/handler/HandlerList;
    .end local v2    # "resourceBase":Ljava/lang/String;
    .end local v3    # "resourceHandler":Lorg/eclipse/jetty/server/handler/ResourceHandler;
    .end local v4    # "servletHandler":Lorg/eclipse/jetty/servlet/ServletContextHandler;
    :cond_1
    const-string v5, "JServer"

    const-string v6, "JServer start three"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    :try_start_2
    iget-object v5, p0, Lcom/mifiservice/server/JServer;->mServer:Lorg/eclipse/jetty/server/Server;

    invoke-virtual {v5}, Lorg/eclipse/jetty/server/Server;->start()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 76
    :catch_0
    move-exception v0

    .line 77
    .local v0, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v5, "JServer"

    const-string v6, "JServer start error"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 44
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public declared-synchronized stop()V
    .locals 3

    .prologue
    .line 150
    monitor-enter p0

    :try_start_0
    const-string v1, "JServer"

    const-string v2, "JServer stop"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v1, p0, Lcom/mifiservice/server/JServer;->mServer:Lorg/eclipse/jetty/server/Server;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mifiservice/server/JServer;->mServer:Lorg/eclipse/jetty/server/Server;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/Server;->isStopped()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 159
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 155
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/mifiservice/server/JServer;->mServer:Lorg/eclipse/jetty/server/Server;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/Server;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 150
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
