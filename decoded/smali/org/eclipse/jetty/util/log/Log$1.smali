.class final Lorg/eclipse/jetty/util/log/Log$1;
.super Ljava/lang/Object;
.source "Log.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/util/log/Log;
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


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()Ljava/lang/Object;
    .locals 9

    .prologue
    .line 94
    const-class v6, Lorg/eclipse/jetty/util/log/Log;

    const-string v7, "jetty-logging.properties"

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lorg/eclipse/jetty/util/Loader;->getResource(Ljava/lang/Class;Ljava/lang/String;Z)Ljava/net/URL;

    move-result-object v4

    .line 95
    .local v4, "testProps":Ljava/net/URL;
    if-eqz v4, :cond_0

    .line 97
    const/4 v1, 0x0

    .line 100
    .local v1, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {v4}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    .line 101
    sget-object v6, Lorg/eclipse/jetty/util/log/Log;->__props:Ljava/util/Properties;

    invoke-virtual {v6, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 110
    invoke-static {v1}, Lorg/eclipse/jetty/util/IO;->close(Ljava/io/InputStream;)V

    .line 118
    .end local v1    # "in":Ljava/io/InputStream;
    :cond_0
    :goto_0
    invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v3

    .line 119
    .local v3, "systemKeyEnum":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 121
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 122
    .local v2, "key":Ljava/lang/String;
    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 124
    .local v5, "val":Ljava/lang/String;
    if-eqz v5, :cond_1

    .line 125
    sget-object v6, Lorg/eclipse/jetty/util/log/Log;->__props:Ljava/util/Properties;

    invoke-virtual {v6, v2, v5}, Ljava/util/Properties;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_1

    .line 103
    .end local v2    # "key":Ljava/lang/String;
    .end local v3    # "systemKeyEnum":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v5    # "val":Ljava/lang/String;
    .restart local v1    # "in":Ljava/io/InputStream;
    :catch_0
    move-exception v0

    .line 105
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to load "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 106
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v0, v6}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 110
    invoke-static {v1}, Lorg/eclipse/jetty/util/IO;->close(Ljava/io/InputStream;)V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    invoke-static {v1}, Lorg/eclipse/jetty/util/IO;->close(Ljava/io/InputStream;)V

    throw v6

    .line 130
    .end local v1    # "in":Ljava/io/InputStream;
    .restart local v3    # "systemKeyEnum":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_2
    sget-object v6, Lorg/eclipse/jetty/util/log/Log;->__props:Ljava/util/Properties;

    const-string v7, "org.eclipse.jetty.util.log.class"

    const-string v8, "org.eclipse.jetty.util.log.Slf4jLog"

    invoke-virtual {v6, v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lorg/eclipse/jetty/util/log/Log;->__logClass:Ljava/lang/String;

    .line 131
    sget-object v6, Lorg/eclipse/jetty/util/log/Log;->__props:Ljava/util/Properties;

    const-string v7, "org.eclipse.jetty.util.log.IGNORED"

    const-string v8, "false"

    invoke-virtual {v6, v7, v8}, Ljava/util/Properties;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    sput-boolean v6, Lorg/eclipse/jetty/util/log/Log;->__ignored:Z

    .line 132
    const/4 v6, 0x0

    return-object v6
.end method
