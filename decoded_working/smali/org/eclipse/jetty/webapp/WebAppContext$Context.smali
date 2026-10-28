.class public Lorg/eclipse/jetty/webapp/WebAppContext$Context;
.super Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;
.source "WebAppContext.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/webapp/WebAppContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Context"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/webapp/WebAppContext;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/webapp/WebAppContext;)V
    .locals 0

    .prologue
    .line 1319
    iput-object p1, p0, Lorg/eclipse/jetty/webapp/WebAppContext$Context;->this$0:Lorg/eclipse/jetty/webapp/WebAppContext;

    invoke-direct {p0, p1}, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;-><init>(Lorg/eclipse/jetty/servlet/ServletContextHandler;)V

    return-void
.end method


# virtual methods
.method public getContext(Ljava/lang/String;)Ljavax/servlet/ServletContext;
    .locals 6
    .param p1, "uripath"    # Ljava/lang/String;

    .prologue
    .line 1347
    invoke-super {p0, p1}, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->getContext(Ljava/lang/String;)Ljavax/servlet/ServletContext;

    move-result-object v4

    .line 1349
    .local v4, "servletContext":Ljavax/servlet/ServletContext;
    if-eqz v4, :cond_0

    iget-object v5, p0, Lorg/eclipse/jetty/webapp/WebAppContext$Context;->this$0:Lorg/eclipse/jetty/webapp/WebAppContext;

    invoke-static {v5}, Lorg/eclipse/jetty/webapp/WebAppContext;->access$000(Lorg/eclipse/jetty/webapp/WebAppContext;)[Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 1351
    iget-object v5, p0, Lorg/eclipse/jetty/webapp/WebAppContext$Context;->this$0:Lorg/eclipse/jetty/webapp/WebAppContext;

    invoke-static {v5}, Lorg/eclipse/jetty/webapp/WebAppContext;->access$000(Lorg/eclipse/jetty/webapp/WebAppContext;)[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_2

    aget-object v1, v0, v2

    .line 1353
    .local v1, "context":Ljava/lang/String;
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1363
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "context":Ljava/lang/String;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    .end local v4    # "servletContext":Ljavax/servlet/ServletContext;
    :cond_0
    :goto_1
    return-object v4

    .line 1351
    .restart local v0    # "arr$":[Ljava/lang/String;
    .restart local v1    # "context":Ljava/lang/String;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    .restart local v4    # "servletContext":Ljavax/servlet/ServletContext;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1359
    .end local v1    # "context":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public getResource(Ljava/lang/String;)Ljava/net/URL;
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .prologue
    .line 1325
    iget-object v4, p0, Lorg/eclipse/jetty/webapp/WebAppContext$Context;->this$0:Lorg/eclipse/jetty/webapp/WebAppContext;

    invoke-virtual {v4, p1}, Lorg/eclipse/jetty/webapp/WebAppContext;->getResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v2

    .line 1326
    .local v2, "resource":Lorg/eclipse/jetty/util/resource/Resource;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1327
    :cond_0
    const/4 v4, 0x0

    .line 1340
    :goto_0
    return-object v4

    .line 1330
    :cond_1
    invoke-virtual {v2}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_2

    instance-of v4, v2, Lorg/eclipse/jetty/util/resource/ResourceCollection;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/eclipse/jetty/webapp/WebAppContext$Context;->this$0:Lorg/eclipse/jetty/webapp/WebAppContext;

    invoke-virtual {v4}, Lorg/eclipse/jetty/webapp/WebAppContext;->isExtractWAR()Z

    move-result v4

    if-nez v4, :cond_2

    move-object v4, v2

    .line 1332
    check-cast v4, Lorg/eclipse/jetty/util/resource/ResourceCollection;

    invoke-virtual {v4}, Lorg/eclipse/jetty/util/resource/ResourceCollection;->getResources()[Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v3

    .line 1333
    .local v3, "resources":[Lorg/eclipse/jetty/util/resource/Resource;
    array-length v0, v3

    .local v0, "i":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_1
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-lez v1, :cond_2

    .line 1335
    aget-object v4, v3, v0

    invoke-virtual {v4}, Lorg/eclipse/jetty/util/resource/Resource;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "jar:file"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1336
    aget-object v4, v3, v0

    invoke-virtual {v4}, Lorg/eclipse/jetty/util/resource/Resource;->getURL()Ljava/net/URL;

    move-result-object v4

    goto :goto_0

    .line 1340
    .end local v0    # "i":I
    .end local v3    # "resources":[Lorg/eclipse/jetty/util/resource/Resource;
    :cond_2
    invoke-virtual {v2}, Lorg/eclipse/jetty/util/resource/Resource;->getURL()Ljava/net/URL;

    move-result-object v4

    goto :goto_0

    .restart local v0    # "i":I
    .restart local v3    # "resources":[Lorg/eclipse/jetty/util/resource/Resource;
    :cond_3
    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_1
.end method
