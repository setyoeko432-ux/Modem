.class public Lorg/eclipse/jetty/servlet/DefaultServlet;
.super Ljavax/servlet/http/HttpServlet;
.source "DefaultServlet.java"

# interfaces
.implements Lorg/eclipse/jetty/util/resource/ResourceFactory;


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field private static final serialVersionUID:J = 0x446c8213da929ba9L


# instance fields
.field private _acceptRanges:Z

.field private _cache:Lorg/eclipse/jetty/server/ResourceCache;

.field private _cacheControl:Lorg/eclipse/jetty/io/ByteArrayBuffer;

.field private _contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

.field private _defaultHolder:Lorg/eclipse/jetty/servlet/ServletHolder;

.field private _dirAllowed:Z

.field private _etags:Z

.field private _gzip:Z

.field private _mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

.field private _pathInfoOnly:Z

.field private _redirectWelcome:Z

.field private _relativeResourceBase:Ljava/lang/String;

.field private _resourceBase:Lorg/eclipse/jetty/util/resource/Resource;

.field private _servletContext:Ljavax/servlet/ServletContext;

.field private _servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

.field private _stylesheet:Lorg/eclipse/jetty/util/resource/Resource;

.field private _useFileMappedBuffer:Z

.field private _welcomeExactServlets:Z

.field private _welcomeServlets:Z

.field private _welcomes:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 145
    const-class v0, Lorg/eclipse/jetty/servlet/DefaultServlet;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 143
    invoke-direct {p0}, Ljavax/servlet/http/HttpServlet;-><init>()V

    .line 151
    iput-boolean v1, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_acceptRanges:Z

    .line 152
    iput-boolean v1, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_dirAllowed:Z

    .line 153
    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_welcomeServlets:Z

    .line 154
    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_welcomeExactServlets:Z

    .line 155
    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_redirectWelcome:Z

    .line 156
    iput-boolean v1, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_gzip:Z

    .line 157
    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_pathInfoOnly:Z

    .line 158
    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_etags:Z

    .line 166
    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_useFileMappedBuffer:Z

    return-void
.end method

.method private getInitBoolean(Ljava/lang/String;Z)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "dft"    # Z

    .prologue
    .line 337
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 338
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    move v1, p2

    .line 340
    :goto_0
    return v1

    :cond_1
    const-string v1, "t"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "T"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "y"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "Y"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getInitInt(Ljava/lang/String;I)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "dft"    # I

    .prologue
    .line 350
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 351
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 352
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 353
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 354
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 355
    .end local p2    # "dft":I
    :cond_1
    return p2
.end method

.method private getWelcomeFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "pathInContext"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 648
    iget-object v5, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_welcomes:[Ljava/lang/String;

    if-nez v5, :cond_1

    .line 649
    const/4 v4, 0x0

    .line 668
    :cond_0
    :goto_0
    return-object v4

    .line 651
    :cond_1
    const/4 v4, 0x0

    .line 652
    .local v4, "welcome_servlet":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v5, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_welcomes:[Ljava/lang/String;

    array-length v5, v5

    if-ge v1, v5, :cond_0

    .line 654
    iget-object v5, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_welcomes:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-static {p1, v5}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 655
    .local v3, "welcome_in_context":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v2

    .line 656
    .local v2, "welcome":Lorg/eclipse/jetty/util/resource/Resource;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 657
    iget-object v5, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_welcomes:[Ljava/lang/String;

    aget-object v4, v5, v1

    goto :goto_0

    .line 659
    :cond_2
    iget-boolean v5, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_welcomeServlets:Z

    if-nez v5, :cond_3

    iget-boolean v5, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_welcomeExactServlets:Z

    if-eqz v5, :cond_5

    :cond_3
    if-nez v4, :cond_5

    .line 661
    iget-object v5, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v5, v3}, Lorg/eclipse/jetty/servlet/ServletHandler;->getHolderEntry(Ljava/lang/String;)Lorg/eclipse/jetty/http/PathMap$Entry;

    move-result-object v0

    .line 662
    .local v0, "entry":Ljava/util/Map$Entry;
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    iget-object v6, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_defaultHolder:Lorg/eclipse/jetty/servlet/ServletHolder;

    if-eq v5, v6, :cond_5

    iget-boolean v5, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_welcomeServlets:Z

    if-nez v5, :cond_4

    iget-boolean v5, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_welcomeExactServlets:Z

    if-eqz v5, :cond_5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 664
    :cond_4
    move-object v4, v3

    .line 652
    .end local v0    # "entry":Ljava/util/Map$Entry;
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private hasDefinedRange(Ljava/util/Enumeration;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 604
    .local p1, "reqRanges":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    .prologue
    .line 1129
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_cache:Lorg/eclipse/jetty/server/ResourceCache;

    if-eqz v0, :cond_0

    .line 1130
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_cache:Lorg/eclipse/jetty/server/ResourceCache;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/ResourceCache;->flushCache()V

    .line 1131
    :cond_0
    invoke-super {p0}, Ljavax/servlet/http/HttpServlet;->destroy()V

    .line 1132
    return-void
.end method

.method protected doGet(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 27
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 409
    const/16 v25, 0x0

    .line 410
    .local v25, "servletPath":Ljava/lang/String;
    const/16 v23, 0x0

    .line 411
    .local v23, "pathInfo":Ljava/lang/String;
    const/4 v10, 0x0

    .line 412
    .local v10, "reqRanges":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    const-string v4, "javax.servlet.include.request_uri"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_7

    const/4 v4, 0x1

    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    .line 413
    .local v18, "included":Ljava/lang/Boolean;
    if-eqz v18, :cond_8

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 415
    const-string v4, "javax.servlet.include.servlet_path"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v25

    .end local v25    # "servletPath":Ljava/lang/String;
    check-cast v25, Ljava/lang/String;

    .line 416
    .restart local v25    # "servletPath":Ljava/lang/String;
    const-string v4, "javax.servlet.include.path_info"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v23

    .end local v23    # "pathInfo":Ljava/lang/String;
    check-cast v23, Ljava/lang/String;

    .line 417
    .restart local v23    # "pathInfo":Ljava/lang/String;
    if-nez v25, :cond_0

    .line 419
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getServletPath()Ljava/lang/String;

    move-result-object v25

    .line 420
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object v23

    .line 435
    :cond_0
    :goto_1
    move-object/from16 v0, v25

    move-object/from16 v1, v23

    invoke-static {v0, v1}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v21

    .line 436
    .local v21, "pathInContext":Ljava/lang/String;
    if-nez v23, :cond_1

    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getServletPath()Ljava/lang/String;

    move-result-object v23

    .end local v23    # "pathInfo":Ljava/lang/String;
    :cond_1
    const-string v4, "/"

    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v16

    .line 440
    .local v16, "endsWithSlash":Z
    const/4 v8, 0x0

    .line 441
    .local v8, "resource":Lorg/eclipse/jetty/util/resource/Resource;
    const/4 v9, 0x0

    .line 445
    .local v9, "content":Lorg/eclipse/jetty/http/HttpContent;
    const/16 v22, 0x0

    .line 446
    .local v22, "pathInContextGz":Ljava/lang/String;
    const/16 v17, 0x0

    .line 447
    .local v17, "gzip":Z
    :try_start_0
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_gzip:Z

    if-eqz v4, :cond_2

    if-nez v10, :cond_2

    if-nez v16, :cond_2

    .line 450
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".gz"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 451
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_cache:Lorg/eclipse/jetty/server/ResourceCache;

    if-nez v4, :cond_a

    .line 452
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v8

    .line 460
    :goto_2
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v8}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_2

    .line 463
    const-string v4, "Vary"

    const-string v5, "Accept-Encoding"

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Ljavax/servlet/http/HttpServletResponse;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    const-string v4, "Accept-Encoding"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 467
    .local v11, "accept":Ljava/lang/String;
    if-eqz v11, :cond_2

    const-string v4, "gzip"

    invoke-virtual {v11, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_2

    .line 468
    const/16 v17, 0x1

    .line 473
    .end local v11    # "accept":Ljava/lang/String;
    :cond_2
    if-nez v17, :cond_26

    .line 475
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_cache:Lorg/eclipse/jetty/server/ResourceCache;

    if-nez v4, :cond_c

    .line 476
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v8

    move-object v13, v9

    .line 484
    .end local v9    # "content":Lorg/eclipse/jetty/http/HttpContent;
    .local v13, "content":Lorg/eclipse/jetty/http/HttpContent;
    :goto_3
    :try_start_1
    sget-object v4, Lorg/eclipse/jetty/servlet/DefaultServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 485
    sget-object v5, Lorg/eclipse/jetty/servlet/DefaultServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "uri="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " resource="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v13, :cond_e

    const-string v4, " content"

    :goto_4
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v5, v4, v6}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 488
    :cond_3
    if-eqz v8, :cond_4

    invoke-virtual {v8}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v4

    if-nez v4, :cond_11

    .line 490
    :cond_4
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 491
    new-instance v4, Ljava/io/FileNotFoundException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "!"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v21

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 585
    :catch_0
    move-exception v15

    move-object v9, v13

    .line 587
    .end local v13    # "content":Lorg/eclipse/jetty/http/HttpContent;
    .restart local v9    # "content":Lorg/eclipse/jetty/http/HttpContent;
    .local v15, "e":Ljava/lang/IllegalArgumentException;
    :goto_5
    :try_start_2
    sget-object v4, Lorg/eclipse/jetty/servlet/DefaultServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v5, "EXCEPTION "

    invoke-interface {v4, v5, v15}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 588
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletResponse;->isCommitted()Z

    move-result v4

    if-nez v4, :cond_5

    .line 589
    const/16 v4, 0x1f4

    invoke-virtual {v15}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 593
    :cond_5
    if-eqz v9, :cond_23

    .line 594
    invoke-interface {v9}, Lorg/eclipse/jetty/http/HttpContent;->release()V

    .line 599
    .end local v15    # "e":Ljava/lang/IllegalArgumentException;
    :cond_6
    :goto_6
    return-void

    .line 412
    .end local v8    # "resource":Lorg/eclipse/jetty/util/resource/Resource;
    .end local v9    # "content":Lorg/eclipse/jetty/http/HttpContent;
    .end local v16    # "endsWithSlash":Z
    .end local v17    # "gzip":Z
    .end local v18    # "included":Ljava/lang/Boolean;
    .end local v21    # "pathInContext":Ljava/lang/String;
    .end local v22    # "pathInContextGz":Ljava/lang/String;
    .restart local v23    # "pathInfo":Ljava/lang/String;
    :cond_7
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 425
    .restart local v18    # "included":Ljava/lang/Boolean;
    :cond_8
    sget-object v18, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 426
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_pathInfoOnly:Z

    if-eqz v4, :cond_9

    const-string v25, "/"

    .line 427
    :goto_7
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getPathInfo()Ljava/lang/String;

    move-result-object v23

    .line 430
    const-string v4, "Range"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljavax/servlet/http/HttpServletRequest;->getHeaders(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v10

    .line 431
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lorg/eclipse/jetty/servlet/DefaultServlet;->hasDefinedRange(Ljava/util/Enumeration;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 432
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 426
    :cond_9
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getServletPath()Ljava/lang/String;

    move-result-object v25

    goto :goto_7

    .line 455
    .end local v23    # "pathInfo":Ljava/lang/String;
    .restart local v8    # "resource":Lorg/eclipse/jetty/util/resource/Resource;
    .restart local v9    # "content":Lorg/eclipse/jetty/http/HttpContent;
    .restart local v16    # "endsWithSlash":Z
    .restart local v17    # "gzip":Z
    .restart local v21    # "pathInContext":Ljava/lang/String;
    .restart local v22    # "pathInContextGz":Ljava/lang/String;
    :cond_a
    :try_start_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_cache:Lorg/eclipse/jetty/server/ResourceCache;

    move-object/from16 v0, v22

    invoke-virtual {v4, v0}, Lorg/eclipse/jetty/server/ResourceCache;->lookup(Ljava/lang/String;)Lorg/eclipse/jetty/http/HttpContent;

    move-result-object v9

    .line 456
    if-nez v9, :cond_b

    const/4 v8, 0x0

    :goto_8
    goto/16 :goto_2

    :cond_b
    invoke-interface {v9}, Lorg/eclipse/jetty/http/HttpContent;->getResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v8

    goto :goto_8

    .line 479
    :cond_c
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_cache:Lorg/eclipse/jetty/server/ResourceCache;

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Lorg/eclipse/jetty/server/ResourceCache;->lookup(Ljava/lang/String;)Lorg/eclipse/jetty/http/HttpContent;

    move-result-object v9

    .line 480
    if-nez v9, :cond_d

    const/4 v8, 0x0

    :goto_9
    move-object v13, v9

    .end local v9    # "content":Lorg/eclipse/jetty/http/HttpContent;
    .restart local v13    # "content":Lorg/eclipse/jetty/http/HttpContent;
    goto/16 :goto_3

    .end local v13    # "content":Lorg/eclipse/jetty/http/HttpContent;
    .restart local v9    # "content":Lorg/eclipse/jetty/http/HttpContent;
    :cond_d
    invoke-interface {v9}, Lorg/eclipse/jetty/http/HttpContent;->getResource()Lorg/eclipse/jetty/util/resource/Resource;
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    move-result-object v8

    goto :goto_9

    .line 485
    .end local v9    # "content":Lorg/eclipse/jetty/http/HttpContent;
    .restart local v13    # "content":Lorg/eclipse/jetty/http/HttpContent;
    :cond_e
    :try_start_4
    const-string v4, ""

    goto/16 :goto_4

    .line 492
    :cond_f
    const/16 v4, 0x194

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v9, v13

    .line 593
    .end local v13    # "content":Lorg/eclipse/jetty/http/HttpContent;
    .restart local v9    # "content":Lorg/eclipse/jetty/http/HttpContent;
    :cond_10
    :goto_a
    if-eqz v9, :cond_22

    .line 594
    invoke-interface {v9}, Lorg/eclipse/jetty/http/HttpContent;->release()V

    goto :goto_6

    .line 494
    .end local v9    # "content":Lorg/eclipse/jetty/http/HttpContent;
    .restart local v13    # "content":Lorg/eclipse/jetty/http/HttpContent;
    :cond_11
    :try_start_5
    invoke-virtual {v8}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v4

    if-nez v4, :cond_16

    .line 496
    if-eqz v16, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/handler/ContextHandler;->isAliases()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_13

    .line 498
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object v24

    .line 499
    .local v24, "q":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    move-object/from16 v0, v21

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    .line 500
    if-eqz v24, :cond_12

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_12

    .line 501
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v21

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 502
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_servletContext:Ljavax/servlet/ServletContext;

    invoke-interface {v4}, Ljavax/servlet/ServletContext;->getContextPath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-static {v4, v0}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljavax/servlet/http/HttpServletResponse;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V

    move-object v9, v13

    .line 503
    .end local v13    # "content":Lorg/eclipse/jetty/http/HttpContent;
    .restart local v9    # "content":Lorg/eclipse/jetty/http/HttpContent;
    goto :goto_a

    .line 507
    .end local v9    # "content":Lorg/eclipse/jetty/http/HttpContent;
    .end local v24    # "q":Ljava/lang/String;
    .restart local v13    # "content":Lorg/eclipse/jetty/http/HttpContent;
    :cond_13
    if-nez v13, :cond_25

    .line 508
    new-instance v9, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/eclipse/jetty/http/MimeTypes;->getMimeByExtension(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v4

    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletResponse;->getBufferSize()I

    move-result v5

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_etags:Z

    invoke-direct {v9, v8, v4, v5, v6}, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;-><init>(Lorg/eclipse/jetty/util/resource/Resource;Lorg/eclipse/jetty/io/Buffer;IZ)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 510
    .end local v13    # "content":Lorg/eclipse/jetty/http/HttpContent;
    .restart local v9    # "content":Lorg/eclipse/jetty/http/HttpContent;
    :goto_b
    :try_start_6
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_14

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v8, v9}, Lorg/eclipse/jetty/servlet/DefaultServlet;->passConditionalHeaders(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lorg/eclipse/jetty/util/resource/Resource;Lorg/eclipse/jetty/http/HttpContent;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 512
    :cond_14
    if-eqz v17, :cond_15

    .line 514
    const-string v4, "Content-Encoding"

    const-string v5, "gzip"

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v5}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_servletContext:Ljavax/servlet/ServletContext;

    move-object/from16 v0, v21

    invoke-interface {v4, v0}, Ljavax/servlet/ServletContext;->getMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 516
    .local v19, "mt":Ljava/lang/String;
    if-eqz v19, :cond_15

    .line 517
    move-object/from16 v0, p2

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 519
    .end local v19    # "mt":Ljava/lang/String;
    :cond_15
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-virtual/range {v4 .. v10}, Lorg/eclipse/jetty/servlet/DefaultServlet;->sendData(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;ZLorg/eclipse/jetty/util/resource/Resource;Lorg/eclipse/jetty/http/HttpContent;Ljava/util/Enumeration;)V
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto/16 :goto_a

    .line 585
    :catch_1
    move-exception v15

    goto/16 :goto_5

    .line 525
    .end local v9    # "content":Lorg/eclipse/jetty/http/HttpContent;
    .restart local v13    # "content":Lorg/eclipse/jetty/http/HttpContent;
    :cond_16
    const/16 v26, 0x0

    .line 527
    .local v26, "welcome":Ljava/lang/String;
    if-eqz v16, :cond_17

    :try_start_7
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1b

    const-string v4, "org.eclipse.jetty.server.nullPathInfo"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_1b

    .line 529
    :cond_17
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestURL()Ljava/lang/StringBuffer;

    move-result-object v12

    .line 530
    .local v12, "buf":Ljava/lang/StringBuffer;
    monitor-enter v12
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 532
    :try_start_8
    const-string v4, ";"

    invoke-virtual {v12, v4}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v20

    .line 533
    .local v20, "param":I
    if-gez v20, :cond_19

    .line 534
    const/16 v4, 0x2f

    invoke-virtual {v12, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 537
    :goto_c
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object v24

    .line 538
    .restart local v24    # "q":Ljava/lang/String;
    if-eqz v24, :cond_18

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_18

    .line 540
    const/16 v4, 0x3f

    invoke-virtual {v12, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 541
    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 543
    :cond_18
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    .line 544
    invoke-virtual {v12}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljavax/servlet/http/HttpServletResponse;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V

    .line 545
    monitor-exit v12

    move-object v9, v13

    .line 546
    .end local v13    # "content":Lorg/eclipse/jetty/http/HttpContent;
    .restart local v9    # "content":Lorg/eclipse/jetty/http/HttpContent;
    goto/16 :goto_a

    .line 536
    .end local v9    # "content":Lorg/eclipse/jetty/http/HttpContent;
    .end local v24    # "q":Ljava/lang/String;
    .restart local v13    # "content":Lorg/eclipse/jetty/http/HttpContent;
    :cond_19
    const/16 v4, 0x2f

    move/from16 v0, v20

    invoke-virtual {v12, v0, v4}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    goto :goto_c

    .line 545
    .end local v20    # "param":I
    :catchall_0
    move-exception v4

    monitor-exit v12
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    :try_start_9
    throw v4
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 593
    .end local v12    # "buf":Ljava/lang/StringBuffer;
    .end local v26    # "welcome":Ljava/lang/String;
    :catchall_1
    move-exception v4

    move-object v9, v13

    .end local v13    # "content":Lorg/eclipse/jetty/http/HttpContent;
    .restart local v9    # "content":Lorg/eclipse/jetty/http/HttpContent;
    :goto_d
    if-eqz v9, :cond_24

    .line 594
    invoke-interface {v9}, Lorg/eclipse/jetty/http/HttpContent;->release()V

    .line 596
    :cond_1a
    :goto_e
    throw v4

    .line 548
    .end local v9    # "content":Lorg/eclipse/jetty/http/HttpContent;
    .restart local v13    # "content":Lorg/eclipse/jetty/http/HttpContent;
    .restart local v26    # "welcome":Ljava/lang/String;
    :cond_1b
    :try_start_a
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getWelcomeFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    if-eqz v26, :cond_20

    .line 550
    sget-object v4, Lorg/eclipse/jetty/servlet/DefaultServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v5, "welcome={}"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v26, v6, v7

    invoke-interface {v4, v5, v6}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 551
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_redirectWelcome:Z

    if-eqz v4, :cond_1d

    .line 554
    const/4 v4, 0x0

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    .line 555
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getQueryString()Ljava/lang/String;

    move-result-object v24

    .line 556
    .restart local v24    # "q":Ljava/lang/String;
    if-eqz v24, :cond_1c

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_1c

    .line 557
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_servletContext:Ljavax/servlet/ServletContext;

    invoke-interface {v5}, Ljavax/servlet/ServletContext;->getContextPath()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v26

    invoke-static {v5, v0}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljavax/servlet/http/HttpServletResponse;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V

    :goto_f
    move-object v9, v13

    .line 560
    .end local v13    # "content":Lorg/eclipse/jetty/http/HttpContent;
    .restart local v9    # "content":Lorg/eclipse/jetty/http/HttpContent;
    goto/16 :goto_a

    .line 559
    .end local v9    # "content":Lorg/eclipse/jetty/http/HttpContent;
    .restart local v13    # "content":Lorg/eclipse/jetty/http/HttpContent;
    :cond_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_servletContext:Ljavax/servlet/ServletContext;

    invoke-interface {v4}, Ljavax/servlet/ServletContext;->getContextPath()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v26

    invoke-static {v4, v0}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljavax/servlet/http/HttpServletResponse;->encodeRedirectURL(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljavax/servlet/http/HttpServletResponse;->sendRedirect(Ljava/lang/String;)V

    goto :goto_f

    .line 564
    .end local v24    # "q":Ljava/lang/String;
    :cond_1d
    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletRequest;->getRequestDispatcher(Ljava/lang/String;)Ljavax/servlet/RequestDispatcher;

    move-result-object v14

    .line 565
    .local v14, "dispatcher":Ljavax/servlet/RequestDispatcher;
    if-eqz v14, :cond_1e

    .line 567
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 568
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v14, v0, v1}, Ljavax/servlet/RequestDispatcher;->include(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    :cond_1e
    :goto_10
    move-object v9, v13

    .line 575
    .end local v13    # "content":Lorg/eclipse/jetty/http/HttpContent;
    .restart local v9    # "content":Lorg/eclipse/jetty/http/HttpContent;
    goto/16 :goto_a

    .line 571
    .end local v9    # "content":Lorg/eclipse/jetty/http/HttpContent;
    .restart local v13    # "content":Lorg/eclipse/jetty/http/HttpContent;
    :cond_1f
    const-string v4, "org.eclipse.jetty.server.welcome"

    move-object/from16 v0, p1

    move-object/from16 v1, v26

    invoke-interface {v0, v4, v1}, Ljavax/servlet/http/HttpServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 572
    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-interface {v14, v0, v1}, Ljavax/servlet/RequestDispatcher;->forward(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V

    goto :goto_10

    .line 579
    .end local v14    # "dispatcher":Ljavax/servlet/RequestDispatcher;
    :cond_20
    new-instance v9, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/eclipse/jetty/http/MimeTypes;->getMimeByExtension(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v4

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_etags:Z

    invoke-direct {v9, v8, v4, v5}, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;-><init>(Lorg/eclipse/jetty/util/resource/Resource;Lorg/eclipse/jetty/io/Buffer;Z)V
    :try_end_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    .line 580
    .end local v13    # "content":Lorg/eclipse/jetty/http/HttpContent;
    .restart local v9    # "content":Lorg/eclipse/jetty/http/HttpContent;
    :try_start_b
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v8, v9}, Lorg/eclipse/jetty/servlet/DefaultServlet;->passConditionalHeaders(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lorg/eclipse/jetty/util/resource/Resource;Lorg/eclipse/jetty/http/HttpContent;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 581
    :cond_21
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v21

    invoke-virtual {v0, v1, v2, v8, v3}, Lorg/eclipse/jetty/servlet/DefaultServlet;->sendDirectory(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lorg/eclipse/jetty/util/resource/Resource;Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto/16 :goto_a

    .line 593
    .end local v26    # "welcome":Ljava/lang/String;
    :catchall_2
    move-exception v4

    goto/16 :goto_d

    .line 595
    :cond_22
    if-eqz v8, :cond_6

    .line 596
    invoke-virtual {v8}, Lorg/eclipse/jetty/util/resource/Resource;->release()V

    goto/16 :goto_6

    .line 595
    .restart local v15    # "e":Ljava/lang/IllegalArgumentException;
    :cond_23
    if-eqz v8, :cond_6

    .line 596
    invoke-virtual {v8}, Lorg/eclipse/jetty/util/resource/Resource;->release()V

    goto/16 :goto_6

    .line 595
    .end local v15    # "e":Ljava/lang/IllegalArgumentException;
    :cond_24
    if-eqz v8, :cond_1a

    .line 596
    invoke-virtual {v8}, Lorg/eclipse/jetty/util/resource/Resource;->release()V

    goto/16 :goto_e

    .end local v9    # "content":Lorg/eclipse/jetty/http/HttpContent;
    .restart local v13    # "content":Lorg/eclipse/jetty/http/HttpContent;
    :cond_25
    move-object v9, v13

    .end local v13    # "content":Lorg/eclipse/jetty/http/HttpContent;
    .restart local v9    # "content":Lorg/eclipse/jetty/http/HttpContent;
    goto/16 :goto_b

    :cond_26
    move-object v13, v9

    .end local v9    # "content":Lorg/eclipse/jetty/http/HttpContent;
    .restart local v13    # "content":Lorg/eclipse/jetty/http/HttpContent;
    goto/16 :goto_3
.end method

.method protected doOptions(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 2
    .param p1, "req"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "resp"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 630
    const-string v0, "Allow"

    const-string v1, "GET,HEAD,POST,OPTIONS"

    invoke-interface {p2, v0, v1}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 631
    return-void
.end method

.method protected doPost(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 0
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 612
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/servlet/DefaultServlet;->doGet(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 613
    return-void
.end method

.method protected doTrace(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 1
    .param p1, "req"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "resp"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 622
    const/16 v0, 0x195

    invoke-interface {p2, v0}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    .line 623
    return-void
.end method

.method public getInitParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 328
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "org.eclipse.jetty.servlet.Default."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljavax/servlet/ServletContext;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 329
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 330
    invoke-super {p0, p1}, Ljavax/servlet/http/HttpServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 331
    :cond_0
    return-object v0
.end method

.method public getResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;
    .locals 6
    .param p1, "pathInContext"    # Ljava/lang/String;

    .prologue
    .line 368
    const/4 v1, 0x0

    .line 369
    .local v1, "r":Lorg/eclipse/jetty/util/resource/Resource;
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_relativeResourceBase:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 370
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_relativeResourceBase:Ljava/lang/String;

    invoke-static {v3, p1}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 374
    :cond_0
    :try_start_0
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_resourceBase:Lorg/eclipse/jetty/util/resource/Resource;

    if-eqz v3, :cond_5

    .line 376
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_resourceBase:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v3, p1}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v1

    .line 377
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v3, p1, v1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->checkAlias(Ljava/lang/String;Lorg/eclipse/jetty/util/resource/Resource;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 378
    const/4 v1, 0x0

    .line 390
    :cond_1
    :goto_0
    sget-object v3, Lorg/eclipse/jetty/servlet/DefaultServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 391
    sget-object v3, Lorg/eclipse/jetty/servlet/DefaultServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Resource "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 398
    :cond_2
    :goto_1
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v3

    if-nez v3, :cond_4

    :cond_3
    const-string v3, "/jetty-dir.css"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 399
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_stylesheet:Lorg/eclipse/jetty/util/resource/Resource;

    .line 401
    :cond_4
    return-object v1

    .line 380
    :cond_5
    :try_start_1
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_servletContext:Ljavax/servlet/ServletContext;

    instance-of v3, v3, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    if-eqz v3, :cond_6

    .line 382
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v3, p1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v1

    goto :goto_0

    .line 386
    :cond_6
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_servletContext:Ljavax/servlet/ServletContext;

    invoke-interface {v3, p1}, Ljavax/servlet/ServletContext;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v2

    .line 387
    .local v2, "u":Ljava/net/URL;
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v3, v2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->newResource(Ljava/net/URL;)Lorg/eclipse/jetty/util/resource/Resource;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_0

    .line 393
    .end local v2    # "u":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 395
    .local v0, "e":Ljava/io/IOException;
    sget-object v3, Lorg/eclipse/jetty/servlet/DefaultServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public init()V
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/UnavailableException;
        }
    .end annotation

    .prologue
    .line 178
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_servletContext:Ljavax/servlet/ServletContext;

    .line 179
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_servletContext:Ljavax/servlet/ServletContext;

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/DefaultServlet;->initContextHandler(Ljavax/servlet/ServletContext;)Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    .line 181
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getMimeTypes()Lorg/eclipse/jetty/http/MimeTypes;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

    .line 183
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getWelcomeFiles()[Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_welcomes:[Ljava/lang/String;

    .line 184
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_welcomes:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 185
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "index.html"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "index.jsp"

    aput-object v3, v1, v2

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_welcomes:[Ljava/lang/String;

    .line 187
    :cond_0
    const-string v1, "acceptRanges"

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_acceptRanges:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitBoolean(Ljava/lang/String;Z)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_acceptRanges:Z

    .line 188
    const-string v1, "dirAllowed"

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_dirAllowed:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitBoolean(Ljava/lang/String;Z)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_dirAllowed:Z

    .line 189
    const-string v1, "redirectWelcome"

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_redirectWelcome:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitBoolean(Ljava/lang/String;Z)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_redirectWelcome:Z

    .line 190
    const-string v1, "gzip"

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_gzip:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitBoolean(Ljava/lang/String;Z)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_gzip:Z

    .line 191
    const-string v1, "pathInfoOnly"

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_pathInfoOnly:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitBoolean(Ljava/lang/String;Z)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_pathInfoOnly:Z

    .line 193
    const-string v1, "exact"

    const-string v2, "welcomeServlets"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 195
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_welcomeExactServlets:Z

    .line 196
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_welcomeServlets:Z

    .line 201
    :goto_0
    const-string v1, "aliases"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 202
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    const-string v2, "aliases"

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->setAliases(Z)V

    .line 204
    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->isAliases()Z

    move-result v7

    .line 205
    .local v7, "aliases":Z
    if-nez v7, :cond_3

    invoke-static {}, Lorg/eclipse/jetty/util/resource/FileResource;->getCheckAliases()Z

    move-result v1

    if-nez v1, :cond_3

    .line 206
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Alias checking disabled"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 199
    .end local v7    # "aliases":Z
    :cond_2
    const-string v1, "welcomeServlets"

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_welcomeServlets:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitBoolean(Ljava/lang/String;Z)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_welcomeServlets:Z

    goto :goto_0

    .line 207
    .restart local v7    # "aliases":Z
    :cond_3
    if-eqz v7, :cond_4

    .line 208
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_servletContext:Ljavax/servlet/ServletContext;

    const-string v2, "Aliases are enabled! Security constraints may be bypassed!!!"

    invoke-interface {v1, v2}, Ljavax/servlet/ServletContext;->log(Ljava/lang/String;)V

    .line 210
    :cond_4
    const-string v1, "useFileMappedBuffer"

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_useFileMappedBuffer:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitBoolean(Ljava/lang/String;Z)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_useFileMappedBuffer:Z

    .line 212
    const-string v1, "relativeResourceBase"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_relativeResourceBase:Ljava/lang/String;

    .line 214
    const-string v1, "resourceBase"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 215
    .local v17, "rb":Ljava/lang/String;
    if-eqz v17, :cond_6

    .line 217
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_relativeResourceBase:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 218
    new-instance v1, Ljavax/servlet/UnavailableException;

    const-string v2, "resourceBase & relativeResourceBase"

    invoke-direct {v1, v2}, Ljavax/servlet/UnavailableException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 219
    :cond_5
    :try_start_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-object/from16 v0, v17

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_resourceBase:Lorg/eclipse/jetty/util/resource/Resource;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :cond_6
    const-string v1, "stylesheet"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 230
    .local v9, "css":Ljava/lang/String;
    if-eqz v9, :cond_7

    .line 232
    :try_start_1
    invoke-static {v9}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_stylesheet:Lorg/eclipse/jetty/util/resource/Resource;

    .line 233
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_stylesheet:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v1

    if-nez v1, :cond_7

    .line 235
    sget-object v1, Lorg/eclipse/jetty/servlet/DefaultServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_stylesheet:Lorg/eclipse/jetty/util/resource/Resource;

    .line 239
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_stylesheet:Lorg/eclipse/jetty/util/resource/Resource;

    if-nez v1, :cond_8

    .line 241
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "/jetty-dir.css"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    invoke-static {v1}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/net/URL;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_stylesheet:Lorg/eclipse/jetty/util/resource/Resource;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 250
    :cond_8
    :goto_1
    const-string v1, "cacheControl"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 251
    .local v19, "t":Ljava/lang/String;
    if-eqz v19, :cond_9

    .line 252
    new-instance v1, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    move-object/from16 v0, v19

    invoke-direct {v1, v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_cacheControl:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    .line 254
    :cond_9
    const-string v1, "resourceCache"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 255
    .local v18, "resourceCache":Ljava/lang/String;
    const-string v1, "maxCacheSize"

    const/4 v2, -0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitInt(Ljava/lang/String;I)I

    move-result v14

    .line 256
    .local v14, "max_cache_size":I
    const-string v1, "maxCachedFileSize"

    const/4 v2, -0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitInt(Ljava/lang/String;I)I

    move-result v15

    .line 257
    .local v15, "max_cached_file_size":I
    const-string v1, "maxCachedFiles"

    const/4 v2, -0x2

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitInt(Ljava/lang/String;I)I

    move-result v16

    .line 258
    .local v16, "max_cached_files":I
    if-eqz v18, :cond_e

    .line 260
    const/4 v1, -0x1

    if-ne v14, v1, :cond_a

    const/4 v1, -0x2

    if-ne v15, v1, :cond_a

    const/4 v1, -0x2

    move/from16 v0, v16

    if-eq v0, v1, :cond_b

    .line 261
    :cond_a
    sget-object v1, Lorg/eclipse/jetty/servlet/DefaultServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "ignoring resource cache configuration, using resourceCache attribute"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 262
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_relativeResourceBase:Ljava/lang/String;

    if-nez v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_resourceBase:Lorg/eclipse/jetty/util/resource/Resource;

    if-eqz v1, :cond_d

    .line 263
    :cond_c
    new-instance v1, Ljavax/servlet/UnavailableException;

    const-string v2, "resourceCache specified with resource bases"

    invoke-direct {v1, v2}, Ljavax/servlet/UnavailableException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 220
    .end local v9    # "css":Ljava/lang/String;
    .end local v14    # "max_cache_size":I
    .end local v15    # "max_cached_file_size":I
    .end local v16    # "max_cached_files":I
    .end local v18    # "resourceCache":Ljava/lang/String;
    .end local v19    # "t":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 222
    .local v10, "e":Ljava/lang/Exception;
    sget-object v1, Lorg/eclipse/jetty/servlet/DefaultServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "EXCEPTION "

    invoke-interface {v1, v2, v10}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 223
    new-instance v1, Ljavax/servlet/UnavailableException;

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/servlet/UnavailableException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 244
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v9    # "css":Ljava/lang/String;
    :catch_1
    move-exception v10

    .line 246
    .restart local v10    # "e":Ljava/lang/Exception;
    sget-object v1, Lorg/eclipse/jetty/servlet/DefaultServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 247
    sget-object v1, Lorg/eclipse/jetty/servlet/DefaultServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v10}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 264
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v14    # "max_cache_size":I
    .restart local v15    # "max_cached_file_size":I
    .restart local v16    # "max_cached_files":I
    .restart local v18    # "resourceCache":Ljava/lang/String;
    .restart local v19    # "t":Ljava/lang/String;
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_servletContext:Ljavax/servlet/ServletContext;

    move-object/from16 v0, v18

    invoke-interface {v1, v0}, Ljavax/servlet/ServletContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/server/ResourceCache;

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_cache:Lorg/eclipse/jetty/server/ResourceCache;

    .line 266
    sget-object v1, Lorg/eclipse/jetty/servlet/DefaultServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "Cache {}={}"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v18, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_cache:Lorg/eclipse/jetty/server/ResourceCache;

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    :cond_e
    const-string v1, "etags"

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_etags:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jetty/servlet/DefaultServlet;->getInitBoolean(Ljava/lang/String;Z)Z

    move-result v1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_etags:Z

    .line 273
    :try_start_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_cache:Lorg/eclipse/jetty/server/ResourceCache;

    if-nez v1, :cond_11

    if-lez v16, :cond_11

    .line 275
    new-instance v1, Lorg/eclipse/jetty/server/ResourceCache;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_useFileMappedBuffer:Z

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_etags:Z

    move-object/from16 v3, p0

    invoke-direct/range {v1 .. v6}, Lorg/eclipse/jetty/server/ResourceCache;-><init>(Lorg/eclipse/jetty/server/ResourceCache;Lorg/eclipse/jetty/util/resource/ResourceFactory;Lorg/eclipse/jetty/http/MimeTypes;ZZ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_cache:Lorg/eclipse/jetty/server/ResourceCache;

    .line 277
    if-lez v14, :cond_f

    .line 278
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_cache:Lorg/eclipse/jetty/server/ResourceCache;

    invoke-virtual {v1, v14}, Lorg/eclipse/jetty/server/ResourceCache;->setMaxCacheSize(I)V

    .line 279
    :cond_f
    const/4 v1, -0x1

    if-lt v15, v1, :cond_10

    .line 280
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_cache:Lorg/eclipse/jetty/server/ResourceCache;

    invoke-virtual {v1, v15}, Lorg/eclipse/jetty/server/ResourceCache;->setMaxCachedFileSize(I)V

    .line 281
    :cond_10
    const/4 v1, -0x1

    move/from16 v0, v16

    if-lt v0, v1, :cond_11

    .line 282
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_cache:Lorg/eclipse/jetty/server/ResourceCache;

    move/from16 v0, v16

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/server/ResourceCache;->setMaxCachedFiles(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 291
    :cond_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    const-class v2, Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getChildHandlerByClass(Ljava/lang/Class;)Lorg/eclipse/jetty/server/Handler;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/servlet/ServletHandler;

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    .line 292
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServlets()[Lorg/eclipse/jetty/servlet/ServletHolder;

    move-result-object v8

    .local v8, "arr$":[Lorg/eclipse/jetty/servlet/ServletHolder;
    array-length v13, v8

    .local v13, "len$":I
    const/4 v12, 0x0

    .local v12, "i$":I
    :goto_2
    if-ge v12, v13, :cond_13

    aget-object v11, v8, v12

    .line 293
    .local v11, "h":Lorg/eclipse/jetty/servlet/ServletHolder;
    invoke-virtual {v11}, Lorg/eclipse/jetty/servlet/ServletHolder;->getServletInstance()Ljavax/servlet/Servlet;

    move-result-object v1

    move-object/from16 v0, p0

    if-ne v1, v0, :cond_12

    .line 294
    move-object/from16 v0, p0

    iput-object v11, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_defaultHolder:Lorg/eclipse/jetty/servlet/ServletHolder;

    .line 292
    :cond_12
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 285
    .end local v8    # "arr$":[Lorg/eclipse/jetty/servlet/ServletHolder;
    .end local v11    # "h":Lorg/eclipse/jetty/servlet/ServletHolder;
    .end local v12    # "i$":I
    .end local v13    # "len$":I
    :catch_2
    move-exception v10

    .line 287
    .restart local v10    # "e":Ljava/lang/Exception;
    sget-object v1, Lorg/eclipse/jetty/servlet/DefaultServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "EXCEPTION "

    invoke-interface {v1, v2, v10}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 288
    new-instance v1, Ljavax/servlet/UnavailableException;

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljavax/servlet/UnavailableException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 297
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v8    # "arr$":[Lorg/eclipse/jetty/servlet/ServletHolder;
    .restart local v12    # "i$":I
    .restart local v13    # "len$":I
    :cond_13
    sget-object v1, Lorg/eclipse/jetty/servlet/DefaultServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 298
    sget-object v1, Lorg/eclipse/jetty/servlet/DefaultServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resource base = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_resourceBase:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    :cond_14
    return-void
.end method

.method protected initContextHandler(Ljavax/servlet/ServletContext;)Lorg/eclipse/jetty/server/handler/ContextHandler;
    .locals 4
    .param p1, "servletContext"    # Ljavax/servlet/ServletContext;

    .prologue
    .line 311
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getCurrentContext()Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-result-object v0

    .line 312
    .local v0, "scontext":Lorg/eclipse/jetty/server/handler/ContextHandler$Context;
    if-nez v0, :cond_1

    .line 314
    instance-of v1, p1, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    if-eqz v1, :cond_0

    .line 315
    check-cast p1, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    .end local p1    # "servletContext":Ljavax/servlet/ServletContext;
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object v1

    .line 321
    :goto_0
    return-object v1

    .line 317
    .restart local p1    # "servletContext":Ljavax/servlet/ServletContext;
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The servletContext "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-class v3, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 321
    :cond_1
    invoke-static {}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getCurrentContext()Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object v1

    goto :goto_0
.end method

.method protected passConditionalHeaders(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lorg/eclipse/jetty/util/resource/Resource;Lorg/eclipse/jetty/http/HttpContent;)Z
    .locals 18
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .param p3, "resource"    # Lorg/eclipse/jetty/util/resource/Resource;
    .param p4, "content"    # Lorg/eclipse/jetty/http/HttpContent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 679
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v14

    const-string v15, "HEAD"

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_d

    .line 681
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_etags:Z

    if-eqz v14, :cond_7

    .line 683
    const-string v14, "If-Match"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 684
    .local v4, "ifm":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 686
    const/4 v9, 0x0

    .line 687
    .local v9, "match":Z
    if-eqz p4, :cond_1

    invoke-interface/range {p4 .. p4}, Lorg/eclipse/jetty/http/HttpContent;->getETag()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v14

    if-eqz v14, :cond_1

    .line 689
    new-instance v11, Lorg/eclipse/jetty/util/QuotedStringTokenizer;

    const-string v14, ", "

    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-direct {v11, v4, v14, v15, v0}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 690
    .local v11, "quoted":Lorg/eclipse/jetty/util/QuotedStringTokenizer;
    :cond_0
    :goto_0
    if-nez v9, :cond_1

    invoke-virtual {v11}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->hasMoreTokens()Z

    move-result v14

    if-eqz v14, :cond_1

    .line 692
    invoke-virtual {v11}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v13

    .line 693
    .local v13, "tag":Ljava/lang/String;
    invoke-interface/range {p4 .. p4}, Lorg/eclipse/jetty/http/HttpContent;->getETag()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_0

    .line 694
    const/4 v9, 0x1

    goto :goto_0

    .line 698
    .end local v11    # "quoted":Lorg/eclipse/jetty/util/QuotedStringTokenizer;
    .end local v13    # "tag":Ljava/lang/String;
    :cond_1
    if-nez v9, :cond_2

    .line 700
    invoke-static/range {p2 .. p2}, Lorg/eclipse/jetty/server/Response;->getResponse(Ljavax/servlet/http/HttpServletResponse;)Lorg/eclipse/jetty/server/Response;

    move-result-object v12

    .line 701
    .local v12, "r":Lorg/eclipse/jetty/server/Response;
    const/4 v14, 0x1

    invoke-virtual {v12, v14}, Lorg/eclipse/jetty/server/Response;->reset(Z)V

    .line 702
    const/16 v14, 0x19c

    invoke-virtual {v12, v14}, Lorg/eclipse/jetty/server/Response;->setStatus(I)V

    .line 703
    const/4 v14, 0x0

    .line 808
    .end local v4    # "ifm":Ljava/lang/String;
    .end local v9    # "match":Z
    .end local v12    # "r":Lorg/eclipse/jetty/server/Response;
    :goto_1
    return v14

    .line 707
    .restart local v4    # "ifm":Ljava/lang/String;
    :cond_2
    const-string v14, "If-None-Match"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 708
    .local v8, "ifnm":Ljava/lang/String;
    if-eqz v8, :cond_7

    if-eqz p4, :cond_7

    invoke-interface/range {p4 .. p4}, Lorg/eclipse/jetty/http/HttpContent;->getETag()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v14

    if-eqz v14, :cond_7

    .line 711
    invoke-interface/range {p4 .. p4}, Lorg/eclipse/jetty/http/HttpContent;->getETag()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    const-string v15, "o.e.j.s.GzipFilter.ETag"

    move-object/from16 v0, p1

    invoke-interface {v0, v15}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 713
    invoke-static/range {p2 .. p2}, Lorg/eclipse/jetty/server/Response;->getResponse(Ljavax/servlet/http/HttpServletResponse;)Lorg/eclipse/jetty/server/Response;

    move-result-object v12

    .line 714
    .restart local v12    # "r":Lorg/eclipse/jetty/server/Response;
    const/4 v14, 0x1

    invoke-virtual {v12, v14}, Lorg/eclipse/jetty/server/Response;->reset(Z)V

    .line 715
    const/16 v14, 0x130

    invoke-virtual {v12, v14}, Lorg/eclipse/jetty/server/Response;->setStatus(I)V

    .line 716
    invoke-virtual {v12}, Lorg/eclipse/jetty/server/Response;->getHttpFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v14

    sget-object v15, Lorg/eclipse/jetty/http/HttpHeaders;->ETAG_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v14, v15, v8}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    .line 717
    const/4 v14, 0x0

    goto :goto_1

    .line 722
    .end local v12    # "r":Lorg/eclipse/jetty/server/Response;
    :cond_3
    invoke-interface/range {p4 .. p4}, Lorg/eclipse/jetty/http/HttpContent;->getETag()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_4

    .line 724
    invoke-static/range {p2 .. p2}, Lorg/eclipse/jetty/server/Response;->getResponse(Ljavax/servlet/http/HttpServletResponse;)Lorg/eclipse/jetty/server/Response;

    move-result-object v12

    .line 725
    .restart local v12    # "r":Lorg/eclipse/jetty/server/Response;
    const/4 v14, 0x1

    invoke-virtual {v12, v14}, Lorg/eclipse/jetty/server/Response;->reset(Z)V

    .line 726
    const/16 v14, 0x130

    invoke-virtual {v12, v14}, Lorg/eclipse/jetty/server/Response;->setStatus(I)V

    .line 727
    invoke-virtual {v12}, Lorg/eclipse/jetty/server/Response;->getHttpFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v14

    sget-object v15, Lorg/eclipse/jetty/http/HttpHeaders;->ETAG_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface/range {p4 .. p4}, Lorg/eclipse/jetty/http/HttpContent;->getETag()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 728
    const/4 v14, 0x0

    goto :goto_1

    .line 732
    .end local v12    # "r":Lorg/eclipse/jetty/server/Response;
    :cond_4
    new-instance v11, Lorg/eclipse/jetty/util/QuotedStringTokenizer;

    const-string v14, ", "

    const/4 v15, 0x0

    const/16 v16, 0x1

    move/from16 v0, v16

    invoke-direct {v11, v8, v14, v15, v0}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 733
    .restart local v11    # "quoted":Lorg/eclipse/jetty/util/QuotedStringTokenizer;
    :cond_5
    invoke-virtual {v11}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->hasMoreTokens()Z

    move-result v14

    if-eqz v14, :cond_6

    .line 735
    invoke-virtual {v11}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v13

    .line 736
    .restart local v13    # "tag":Ljava/lang/String;
    invoke-interface/range {p4 .. p4}, Lorg/eclipse/jetty/http/HttpContent;->getETag()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    .line 738
    invoke-static/range {p2 .. p2}, Lorg/eclipse/jetty/server/Response;->getResponse(Ljavax/servlet/http/HttpServletResponse;)Lorg/eclipse/jetty/server/Response;

    move-result-object v12

    .line 739
    .restart local v12    # "r":Lorg/eclipse/jetty/server/Response;
    const/4 v14, 0x1

    invoke-virtual {v12, v14}, Lorg/eclipse/jetty/server/Response;->reset(Z)V

    .line 740
    const/16 v14, 0x130

    invoke-virtual {v12, v14}, Lorg/eclipse/jetty/server/Response;->setStatus(I)V

    .line 741
    invoke-virtual {v12}, Lorg/eclipse/jetty/server/Response;->getHttpFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v14

    sget-object v15, Lorg/eclipse/jetty/http/HttpHeaders;->ETAG_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface/range {p4 .. p4}, Lorg/eclipse/jetty/http/HttpContent;->getETag()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 742
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 746
    .end local v12    # "r":Lorg/eclipse/jetty/server/Response;
    .end local v13    # "tag":Ljava/lang/String;
    :cond_6
    const/4 v14, 0x1

    goto/16 :goto_1

    .line 750
    .end local v4    # "ifm":Ljava/lang/String;
    .end local v8    # "ifnm":Ljava/lang/String;
    .end local v11    # "quoted":Lorg/eclipse/jetty/util/QuotedStringTokenizer;
    :cond_7
    const-string v14, "If-Modified-Since"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 751
    .local v5, "ifms":Ljava/lang/String;
    if-eqz v5, :cond_b

    .line 754
    invoke-static/range {p2 .. p2}, Lorg/eclipse/jetty/server/Response;->getResponse(Ljavax/servlet/http/HttpServletResponse;)Lorg/eclipse/jetty/server/Response;

    move-result-object v12

    .line 756
    .restart local v12    # "r":Lorg/eclipse/jetty/server/Response;
    if-eqz p4, :cond_9

    .line 758
    invoke-interface/range {p4 .. p4}, Lorg/eclipse/jetty/http/HttpContent;->getLastModified()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v10

    .line 759
    .local v10, "mdlm":Lorg/eclipse/jetty/io/Buffer;
    if-eqz v10, :cond_9

    .line 761
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_9

    .line 763
    const/4 v14, 0x1

    invoke-virtual {v12, v14}, Lorg/eclipse/jetty/server/Response;->reset(Z)V

    .line 764
    const/16 v14, 0x130

    invoke-virtual {v12, v14}, Lorg/eclipse/jetty/server/Response;->setStatus(I)V

    .line 765
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_etags:Z

    if-eqz v14, :cond_8

    .line 766
    invoke-virtual {v12}, Lorg/eclipse/jetty/server/Response;->getHttpFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v14

    sget-object v15, Lorg/eclipse/jetty/http/HttpHeaders;->ETAG_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface/range {p4 .. p4}, Lorg/eclipse/jetty/http/HttpContent;->getETag()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lorg/eclipse/jetty/http/HttpFields;->add(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 767
    :cond_8
    invoke-virtual {v12}, Lorg/eclipse/jetty/server/Response;->flushBuffer()V

    .line 768
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 773
    .end local v10    # "mdlm":Lorg/eclipse/jetty/io/Buffer;
    :cond_9
    const-string v14, "If-Modified-Since"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljavax/servlet/http/HttpServletRequest;->getDateHeader(Ljava/lang/String;)J

    move-result-wide v6

    .line 774
    .local v6, "ifmsl":J
    const-wide/16 v14, -0x1

    cmp-long v14, v6, v14

    if-eqz v14, :cond_b

    .line 776
    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/jetty/util/resource/Resource;->lastModified()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    const-wide/16 v16, 0x3e8

    div-long v16, v6, v16

    cmp-long v14, v14, v16

    if-gtz v14, :cond_b

    .line 778
    const/4 v14, 0x1

    invoke-virtual {v12, v14}, Lorg/eclipse/jetty/server/Response;->reset(Z)V

    .line 779
    const/16 v14, 0x130

    invoke-virtual {v12, v14}, Lorg/eclipse/jetty/server/Response;->setStatus(I)V

    .line 780
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_etags:Z

    if-eqz v14, :cond_a

    .line 781
    invoke-virtual {v12}, Lorg/eclipse/jetty/server/Response;->getHttpFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v14

    sget-object v15, Lorg/eclipse/jetty/http/HttpHeaders;->ETAG_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface/range {p4 .. p4}, Lorg/eclipse/jetty/http/HttpContent;->getETag()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v16

    invoke-virtual/range {v14 .. v16}, Lorg/eclipse/jetty/http/HttpFields;->add(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 782
    :cond_a
    invoke-virtual {v12}, Lorg/eclipse/jetty/server/Response;->flushBuffer()V

    .line 783
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 789
    .end local v6    # "ifmsl":J
    .end local v12    # "r":Lorg/eclipse/jetty/server/Response;
    :cond_b
    const-string v14, "If-Unmodified-Since"

    move-object/from16 v0, p1

    invoke-interface {v0, v14}, Ljavax/servlet/http/HttpServletRequest;->getDateHeader(Ljava/lang/String;)J

    move-result-wide v1

    .line 791
    .local v1, "date":J
    const-wide/16 v14, -0x1

    cmp-long v14, v1, v14

    if-eqz v14, :cond_d

    .line 793
    invoke-virtual/range {p3 .. p3}, Lorg/eclipse/jetty/util/resource/Resource;->lastModified()J

    move-result-wide v14

    const-wide/16 v16, 0x3e8

    div-long v14, v14, v16

    const-wide/16 v16, 0x3e8

    div-long v16, v1, v16

    cmp-long v14, v14, v16

    if-lez v14, :cond_d

    .line 795
    const/16 v14, 0x19c

    move-object/from16 v0, p2

    invoke-interface {v0, v14}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 796
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 802
    .end local v1    # "date":J
    .end local v5    # "ifms":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 804
    .local v3, "iae":Ljava/lang/IllegalArgumentException;
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletResponse;->isCommitted()Z

    move-result v14

    if-nez v14, :cond_c

    .line 805
    const/16 v14, 0x190

    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p2

    invoke-interface {v0, v14, v15}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V

    .line 806
    :cond_c
    throw v3

    .line 808
    .end local v3    # "iae":Ljava/lang/IllegalArgumentException;
    :cond_d
    const/4 v14, 0x1

    goto/16 :goto_1
.end method

.method protected sendData(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;ZLorg/eclipse/jetty/util/resource/Resource;Lorg/eclipse/jetty/http/HttpContent;Ljava/util/Enumeration;)V
    .locals 40
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .param p3, "include"    # Z
    .param p4, "resource"    # Lorg/eclipse/jetty/util/resource/Resource;
    .param p5, "content"    # Lorg/eclipse/jetty/http/HttpContent;
    .param p6, "reqRanges"    # Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 864
    if-nez p5, :cond_1

    .line 866
    const/16 v25, 0x0

    .line 867
    .local v25, "direct":Z
    invoke-virtual/range {p4 .. p4}, Lorg/eclipse/jetty/util/resource/Resource;->length()J

    move-result-wide v8

    .line 878
    .local v8, "content_length":J
    :goto_0
    const/4 v5, 0x0

    .line 882
    .local v5, "out":Ljava/io/OutputStream;
    :try_start_0
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v5

    .line 885
    instance-of v4, v5, Lorg/eclipse/jetty/server/HttpOutput;

    if-eqz v4, :cond_3

    move-object v0, v5

    check-cast v0, Lorg/eclipse/jetty/server/HttpOutput;

    move-object v4, v0

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/HttpOutput;->isWritten()Z
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v37

    .line 895
    .local v37, "written":Z
    :goto_1
    if-eqz p6, :cond_0

    invoke-interface/range {p6 .. p6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v4

    if-eqz v4, :cond_0

    const-wide/16 v6, 0x0

    cmp-long v4, v8, v6

    if-gez v4, :cond_c

    .line 898
    :cond_0
    if-eqz p3, :cond_4

    .line 900
    const-wide/16 v6, 0x0

    move-object/from16 v4, p4

    invoke-virtual/range {v4 .. v9}, Lorg/eclipse/jetty/util/resource/Resource;->writeTo(Ljava/io/OutputStream;JJ)V

    .line 1047
    .end local v5    # "out":Ljava/io/OutputStream;
    .end local p2    # "response":Ljavax/servlet/http/HttpServletResponse;
    :goto_2
    return-void

    .line 871
    .end local v8    # "content_length":J
    .end local v25    # "direct":Z
    .end local v37    # "written":Z
    .restart local p2    # "response":Ljavax/servlet/http/HttpServletResponse;
    :cond_1
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getCurrentConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getConnector()Lorg/eclipse/jetty/server/Connector;

    move-result-object v23

    .line 872
    .local v23, "connector":Lorg/eclipse/jetty/server/Connector;
    move-object/from16 v0, v23

    instance-of v4, v0, Lorg/eclipse/jetty/server/nio/NIOConnector;

    if-eqz v4, :cond_2

    move-object/from16 v4, v23

    check-cast v4, Lorg/eclipse/jetty/server/nio/NIOConnector;

    invoke-interface {v4}, Lorg/eclipse/jetty/server/nio/NIOConnector;->getUseDirectBuffers()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v0, v23

    instance-of v4, v0, Lorg/eclipse/jetty/server/ssl/SslConnector;

    if-nez v4, :cond_2

    const/16 v25, 0x1

    .line 873
    .restart local v25    # "direct":Z
    :goto_3
    invoke-interface/range {p5 .. p5}, Lorg/eclipse/jetty/http/HttpContent;->getContentLength()J

    move-result-wide v8

    .restart local v8    # "content_length":J
    goto :goto_0

    .line 872
    .end local v8    # "content_length":J
    .end local v25    # "direct":Z
    :cond_2
    const/16 v25, 0x0

    goto :goto_3

    .line 885
    .end local v23    # "connector":Lorg/eclipse/jetty/server/Connector;
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local v8    # "content_length":J
    .restart local v25    # "direct":Z
    :cond_3
    :try_start_1
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getCurrentConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getGenerator()Lorg/eclipse/jetty/http/Generator;

    move-result-object v4

    invoke-interface {v4}, Lorg/eclipse/jetty/http/Generator;->isWritten()Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v37

    goto :goto_1

    .line 889
    :catch_0
    move-exception v26

    .line 891
    .local v26, "e":Ljava/lang/IllegalStateException;
    new-instance v5, Lorg/eclipse/jetty/io/WriterOutputStream;

    .end local v5    # "out":Ljava/io/OutputStream;
    invoke-interface/range {p2 .. p2}, Ljavax/servlet/http/HttpServletResponse;->getWriter()Ljava/io/PrintWriter;

    move-result-object v4

    invoke-direct {v5, v4}, Lorg/eclipse/jetty/io/WriterOutputStream;-><init>(Ljava/io/Writer;)V

    .line 892
    .restart local v5    # "out":Ljava/io/OutputStream;
    const/16 v37, 0x1

    .restart local v37    # "written":Z
    goto :goto_1

    .line 905
    .end local v26    # "e":Ljava/lang/IllegalStateException;
    :cond_4
    if-eqz p5, :cond_8

    if-nez v37, :cond_8

    instance-of v4, v5, Lorg/eclipse/jetty/server/HttpOutput;

    if-eqz v4, :cond_8

    .line 907
    move-object/from16 v0, p2

    instance-of v4, v0, Lorg/eclipse/jetty/server/Response;

    if-eqz v4, :cond_5

    .line 909
    check-cast p2, Lorg/eclipse/jetty/server/Response;

    .end local p2    # "response":Ljavax/servlet/http/HttpServletResponse;
    invoke-virtual/range {p2 .. p2}, Lorg/eclipse/jetty/server/Response;->getHttpFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/eclipse/jetty/servlet/DefaultServlet;->writeOptionHeaders(Lorg/eclipse/jetty/http/HttpFields;)V

    .line 910
    check-cast v5, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;

    .end local v5    # "out":Ljava/io/OutputStream;
    move-object/from16 v0, p5

    invoke-virtual {v5, v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->sendContent(Ljava/lang/Object;)V

    goto :goto_2

    .line 914
    .restart local v5    # "out":Ljava/io/OutputStream;
    .restart local p2    # "response":Ljavax/servlet/http/HttpServletResponse;
    :cond_5
    if-eqz v25, :cond_6

    invoke-interface/range {p5 .. p5}, Lorg/eclipse/jetty/http/HttpContent;->getDirectBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v22

    .line 915
    .local v22, "buffer":Lorg/eclipse/jetty/io/Buffer;
    :goto_4
    if-eqz v22, :cond_7

    .line 917
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2, v8, v9}, Lorg/eclipse/jetty/servlet/DefaultServlet;->writeHeaders(Ljavax/servlet/http/HttpServletResponse;Lorg/eclipse/jetty/http/HttpContent;J)V

    .line 918
    check-cast v5, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;

    .end local v5    # "out":Ljava/io/OutputStream;
    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->sendContent(Ljava/lang/Object;)V

    goto :goto_2

    .line 914
    .end local v22    # "buffer":Lorg/eclipse/jetty/io/Buffer;
    .restart local v5    # "out":Ljava/io/OutputStream;
    :cond_6
    invoke-interface/range {p5 .. p5}, Lorg/eclipse/jetty/http/HttpContent;->getIndirectBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v22

    goto :goto_4

    .line 922
    .restart local v22    # "buffer":Lorg/eclipse/jetty/io/Buffer;
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2, v8, v9}, Lorg/eclipse/jetty/servlet/DefaultServlet;->writeHeaders(Ljavax/servlet/http/HttpServletResponse;Lorg/eclipse/jetty/http/HttpContent;J)V

    .line 923
    const-wide/16 v6, 0x0

    move-object/from16 v4, p4

    invoke-virtual/range {v4 .. v9}, Lorg/eclipse/jetty/util/resource/Resource;->writeTo(Ljava/io/OutputStream;JJ)V

    goto/16 :goto_2

    .line 930
    .end local v22    # "buffer":Lorg/eclipse/jetty/io/Buffer;
    :cond_8
    if-eqz v37, :cond_9

    const-wide/16 v6, -0x1

    :goto_5
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2, v6, v7}, Lorg/eclipse/jetty/servlet/DefaultServlet;->writeHeaders(Ljavax/servlet/http/HttpServletResponse;Lorg/eclipse/jetty/http/HttpContent;J)V

    .line 933
    if-nez p5, :cond_a

    const/16 v22, 0x0

    .line 934
    .restart local v22    # "buffer":Lorg/eclipse/jetty/io/Buffer;
    :goto_6
    if-eqz v22, :cond_b

    .line 935
    move-object/from16 v0, v22

    invoke-interface {v0, v5}, Lorg/eclipse/jetty/io/Buffer;->writeTo(Ljava/io/OutputStream;)V

    goto/16 :goto_2

    .end local v22    # "buffer":Lorg/eclipse/jetty/io/Buffer;
    :cond_9
    move-wide v6, v8

    .line 930
    goto :goto_5

    .line 933
    :cond_a
    invoke-interface/range {p5 .. p5}, Lorg/eclipse/jetty/http/HttpContent;->getIndirectBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v22

    goto :goto_6

    .line 937
    .restart local v22    # "buffer":Lorg/eclipse/jetty/io/Buffer;
    :cond_b
    const-wide/16 v6, 0x0

    move-object/from16 v4, p4

    invoke-virtual/range {v4 .. v9}, Lorg/eclipse/jetty/util/resource/Resource;->writeTo(Ljava/io/OutputStream;JJ)V

    goto/16 :goto_2

    .line 944
    .end local v22    # "buffer":Lorg/eclipse/jetty/io/Buffer;
    :cond_c
    move-object/from16 v0, p6

    invoke-static {v0, v8, v9}, Lorg/eclipse/jetty/server/InclusiveByteRange;->satisfiableRanges(Ljava/util/Enumeration;J)Ljava/util/List;

    move-result-object v35

    .line 947
    .local v35, "ranges":Ljava/util/List;
    if-eqz v35, :cond_d

    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_e

    .line 949
    :cond_d
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2, v8, v9}, Lorg/eclipse/jetty/servlet/DefaultServlet;->writeHeaders(Ljavax/servlet/http/HttpServletResponse;Lorg/eclipse/jetty/http/HttpContent;J)V

    .line 950
    const/16 v4, 0x1a0

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 951
    const-string v4, "Content-Range"

    invoke-static {v8, v9}, Lorg/eclipse/jetty/server/InclusiveByteRange;->to416HeaderRangeString(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v6}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 953
    const-wide/16 v6, 0x0

    move-object/from16 v4, p4

    invoke-virtual/range {v4 .. v9}, Lorg/eclipse/jetty/util/resource/Resource;->writeTo(Ljava/io/OutputStream;JJ)V

    goto/16 :goto_2

    .line 959
    :cond_e
    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_f

    .line 961
    const/4 v4, 0x0

    move-object/from16 v0, v35

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lorg/eclipse/jetty/server/InclusiveByteRange;

    .line 963
    .local v36, "singleSatisfiableRange":Lorg/eclipse/jetty/server/InclusiveByteRange;
    move-object/from16 v0, v36

    invoke-virtual {v0, v8, v9}, Lorg/eclipse/jetty/server/InclusiveByteRange;->getSize(J)J

    move-result-wide v14

    .line 964
    .local v14, "singleLength":J
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2, v14, v15}, Lorg/eclipse/jetty/servlet/DefaultServlet;->writeHeaders(Ljavax/servlet/http/HttpServletResponse;Lorg/eclipse/jetty/http/HttpContent;J)V

    .line 965
    const/16 v4, 0xce

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 966
    const-string v4, "Content-Range"

    move-object/from16 v0, v36

    invoke-virtual {v0, v8, v9}, Lorg/eclipse/jetty/server/InclusiveByteRange;->toHeaderRangeString(J)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p2

    invoke-interface {v0, v4, v6}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    move-object/from16 v0, v36

    invoke-virtual {v0, v8, v9}, Lorg/eclipse/jetty/server/InclusiveByteRange;->getFirst(J)J

    move-result-wide v12

    move-object/from16 v10, p4

    move-object v11, v5

    invoke-virtual/range {v10 .. v15}, Lorg/eclipse/jetty/util/resource/Resource;->writeTo(Ljava/io/OutputStream;JJ)V

    goto/16 :goto_2

    .line 976
    .end local v14    # "singleLength":J
    .end local v36    # "singleSatisfiableRange":Lorg/eclipse/jetty/server/InclusiveByteRange;
    :cond_f
    const-wide/16 v6, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2, v6, v7}, Lorg/eclipse/jetty/servlet/DefaultServlet;->writeHeaders(Ljavax/servlet/http/HttpServletResponse;Lorg/eclipse/jetty/http/HttpContent;J)V

    .line 977
    invoke-interface/range {p5 .. p5}, Lorg/eclipse/jetty/http/HttpContent;->getContentType()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v4

    if-nez v4, :cond_11

    const/16 v32, 0x0

    .line 978
    .local v32, "mimetype":Ljava/lang/String;
    :goto_7
    if-nez v32, :cond_10

    .line 979
    sget-object v4, Lorg/eclipse/jetty/servlet/DefaultServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unknown mimetype for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface/range {p1 .. p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v4, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 980
    :cond_10
    new-instance v17, Lorg/eclipse/jetty/util/MultiPartOutputStream;

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Lorg/eclipse/jetty/util/MultiPartOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 981
    .local v17, "multi":Lorg/eclipse/jetty/util/MultiPartOutputStream;
    const/16 v4, 0xce

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    .line 987
    const-string v4, "Request-Range"

    move-object/from16 v0, p1

    invoke-interface {v0, v4}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_12

    .line 988
    const-string v24, "multipart/x-byteranges; boundary="

    .line 991
    .local v24, "ctp":Ljava/lang/String;
    :goto_8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/util/MultiPartOutputStream;->getBoundary()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 993
    invoke-virtual/range {p4 .. p4}, Lorg/eclipse/jetty/util/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v30

    .line 994
    .local v30, "in":Ljava/io/InputStream;
    const-wide/16 v33, 0x0

    .line 997
    .local v33, "pos":J
    const/16 v31, 0x0

    .line 998
    .local v31, "length":I
    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v4

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v27, v0

    .line 999
    .local v27, "header":[Ljava/lang/String;
    const/16 v28, 0x0

    .local v28, "i":I
    :goto_9
    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v28

    if-ge v0, v4, :cond_15

    .line 1001
    move-object/from16 v0, v35

    move/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lorg/eclipse/jetty/server/InclusiveByteRange;

    .line 1002
    .local v29, "ibr":Lorg/eclipse/jetty/server/InclusiveByteRange;
    move-object/from16 v0, v29

    invoke-virtual {v0, v8, v9}, Lorg/eclipse/jetty/server/InclusiveByteRange;->toHeaderRangeString(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v27, v28

    .line 1003
    move/from16 v0, v31

    int-to-long v6, v0

    if-lez v28, :cond_13

    const/4 v4, 0x2

    :goto_a
    add-int/lit8 v4, v4, 0x2

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/util/MultiPartOutputStream;->getBoundary()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v4, v10

    add-int/lit8 v10, v4, 0x2

    if-nez v32, :cond_14

    const/4 v4, 0x0

    :goto_b
    add-int/2addr v4, v10

    add-int/lit8 v4, v4, 0x2

    const-string v10, "Content-Range"

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v4, v10

    add-int/lit8 v4, v4, 0x2

    aget-object v10, v27, v28

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v4, v10

    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x2

    int-to-long v10, v4

    move-object/from16 v0, v29

    invoke-virtual {v0, v8, v9}, Lorg/eclipse/jetty/server/InclusiveByteRange;->getLast(J)J

    move-result-wide v12

    move-object/from16 v0, v29

    invoke-virtual {v0, v8, v9}, Lorg/eclipse/jetty/server/InclusiveByteRange;->getFirst(J)J

    move-result-wide v38

    sub-long v12, v12, v38

    add-long/2addr v10, v12

    const-wide/16 v12, 0x1

    add-long/2addr v10, v12

    add-long/2addr v6, v10

    long-to-int v0, v6

    move/from16 v31, v0

    .line 999
    add-int/lit8 v28, v28, 0x1

    goto :goto_9

    .line 977
    .end local v17    # "multi":Lorg/eclipse/jetty/util/MultiPartOutputStream;
    .end local v24    # "ctp":Ljava/lang/String;
    .end local v27    # "header":[Ljava/lang/String;
    .end local v28    # "i":I
    .end local v29    # "ibr":Lorg/eclipse/jetty/server/InclusiveByteRange;
    .end local v30    # "in":Ljava/io/InputStream;
    .end local v31    # "length":I
    .end local v32    # "mimetype":Ljava/lang/String;
    .end local v33    # "pos":J
    :cond_11
    invoke-interface/range {p5 .. p5}, Lorg/eclipse/jetty/http/HttpContent;->getContentType()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v32

    goto/16 :goto_7

    .line 990
    .restart local v17    # "multi":Lorg/eclipse/jetty/util/MultiPartOutputStream;
    .restart local v32    # "mimetype":Ljava/lang/String;
    :cond_12
    const-string v24, "multipart/byteranges; boundary="

    .restart local v24    # "ctp":Ljava/lang/String;
    goto/16 :goto_8

    .line 1003
    .restart local v27    # "header":[Ljava/lang/String;
    .restart local v28    # "i":I
    .restart local v29    # "ibr":Lorg/eclipse/jetty/server/InclusiveByteRange;
    .restart local v30    # "in":Ljava/io/InputStream;
    .restart local v31    # "length":I
    .restart local v33    # "pos":J
    :cond_13
    const/4 v4, 0x0

    goto :goto_a

    :cond_14
    const-string v4, "Content-Type"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    invoke-virtual/range {v32 .. v32}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v4, v11

    goto :goto_b

    .line 1011
    .end local v29    # "ibr":Lorg/eclipse/jetty/server/InclusiveByteRange;
    :cond_15
    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/util/MultiPartOutputStream;->getBoundary()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x4

    add-int/lit8 v4, v4, 0x2

    add-int/lit8 v4, v4, 0x2

    add-int v31, v31, v4

    .line 1012
    move-object/from16 v0, p2

    move/from16 v1, v31

    invoke-interface {v0, v1}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    .line 1014
    const/16 v28, 0x0

    :goto_c
    invoke-interface/range {v35 .. v35}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v28

    if-ge v0, v4, :cond_19

    .line 1016
    move-object/from16 v0, v35

    move/from16 v1, v28

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lorg/eclipse/jetty/server/InclusiveByteRange;

    .line 1017
    .restart local v29    # "ibr":Lorg/eclipse/jetty/server/InclusiveByteRange;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Content-Range: "

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v10, v27, v28

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    move-object/from16 v0, v17

    move-object/from16 v1, v32

    invoke-virtual {v0, v1, v4}, Lorg/eclipse/jetty/util/MultiPartOutputStream;->startPart(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1019
    move-object/from16 v0, v29

    invoke-virtual {v0, v8, v9}, Lorg/eclipse/jetty/server/InclusiveByteRange;->getFirst(J)J

    move-result-wide v18

    .line 1020
    .local v18, "start":J
    move-object/from16 v0, v29

    invoke-virtual {v0, v8, v9}, Lorg/eclipse/jetty/server/InclusiveByteRange;->getSize(J)J

    move-result-wide v20

    .line 1021
    .local v20, "size":J
    if-eqz v30, :cond_18

    .line 1024
    cmp-long v4, v18, v33

    if-gez v4, :cond_16

    .line 1026
    invoke-virtual/range {v30 .. v30}, Ljava/io/InputStream;->close()V

    .line 1027
    invoke-virtual/range {p4 .. p4}, Lorg/eclipse/jetty/util/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v30

    .line 1028
    const-wide/16 v33, 0x0

    .line 1030
    :cond_16
    cmp-long v4, v33, v18

    if-gez v4, :cond_17

    .line 1032
    sub-long v6, v18, v33

    move-object/from16 v0, v30

    invoke-virtual {v0, v6, v7}, Ljava/io/InputStream;->skip(J)J

    .line 1033
    move-wide/from16 v33, v18

    .line 1035
    :cond_17
    move-object/from16 v0, v30

    move-object/from16 v1, v17

    move-wide/from16 v2, v20

    invoke-static {v0, v1, v2, v3}, Lorg/eclipse/jetty/util/IO;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;J)V

    .line 1036
    add-long v33, v33, v20

    .line 1014
    :goto_d
    add-int/lit8 v28, v28, 0x1

    goto :goto_c

    :cond_18
    move-object/from16 v16, p4

    .line 1040
    invoke-virtual/range {v16 .. v21}, Lorg/eclipse/jetty/util/resource/Resource;->writeTo(Ljava/io/OutputStream;JJ)V

    goto :goto_d

    .line 1043
    .end local v18    # "start":J
    .end local v20    # "size":J
    .end local v29    # "ibr":Lorg/eclipse/jetty/server/InclusiveByteRange;
    :cond_19
    if-eqz v30, :cond_1a

    .line 1044
    invoke-virtual/range {v30 .. v30}, Ljava/io/InputStream;->close()V

    .line 1045
    :cond_1a
    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/util/MultiPartOutputStream;->close()V

    goto/16 :goto_2
.end method

.method protected sendDirectory(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;Lorg/eclipse/jetty/util/resource/Resource;Ljava/lang/String;)V
    .locals 7
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .param p3, "resource"    # Lorg/eclipse/jetty/util/resource/Resource;
    .param p4, "pathInContext"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x193

    const/4 v3, 0x1

    .line 819
    iget-boolean v4, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_dirAllowed:Z

    if-nez v4, :cond_0

    .line 821
    invoke-interface {p2, v6}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    .line 851
    :goto_0
    return-void

    .line 825
    :cond_0
    const/4 v1, 0x0

    .line 826
    .local v1, "data":[B
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v4

    const-string v5, "/"

    invoke-static {v4, v5}, Lorg/eclipse/jetty/util/URIUtil;->addPaths(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 829
    .local v0, "base":Ljava/lang/String;
    iget-object v4, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_resourceBase:Lorg/eclipse/jetty/util/resource/Resource;

    if-eqz v4, :cond_2

    .line 832
    iget-object v4, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_resourceBase:Lorg/eclipse/jetty/util/resource/Resource;

    instance-of v4, v4, Lorg/eclipse/jetty/util/resource/ResourceCollection;

    if-eqz v4, :cond_1

    .line 833
    iget-object v4, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_resourceBase:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v4, p4}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object p3

    .line 839
    :cond_1
    :goto_1
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v3, :cond_3

    :goto_2
    invoke-virtual {p3, v0, v3}, Lorg/eclipse/jetty/util/resource/Resource;->getListHTML(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    .line 840
    .local v2, "dir":Ljava/lang/String;
    if-nez v2, :cond_4

    .line 842
    const-string v3, "No directory"

    invoke-interface {p2, v6, v3}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V

    goto :goto_0

    .line 836
    .end local v2    # "dir":Ljava/lang/String;
    :cond_2
    iget-object v4, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getBaseResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v4

    instance-of v4, v4, Lorg/eclipse/jetty/util/resource/ResourceCollection;

    if-eqz v4, :cond_1

    .line 837
    iget-object v4, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_contextHandler:Lorg/eclipse/jetty/server/handler/ContextHandler;

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getBaseResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v4

    invoke-virtual {v4, p4}, Lorg/eclipse/jetty/util/resource/Resource;->addPath(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object p3

    goto :goto_1

    .line 839
    :cond_3
    const/4 v3, 0x0

    goto :goto_2

    .line 847
    .restart local v2    # "dir":Ljava/lang/String;
    :cond_4
    const-string v3, "UTF-8"

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 848
    const-string v3, "text/html; charset=UTF-8"

    invoke-interface {p2, v3}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 849
    array-length v3, v1

    invoke-interface {p2, v3}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    .line 850
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljavax/servlet/ServletOutputStream;->write([B)V

    goto :goto_0
.end method

.method protected writeHeaders(Ljavax/servlet/http/HttpServletResponse;Lorg/eclipse/jetty/http/HttpContent;J)V
    .locals 8
    .param p1, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .param p2, "content"    # Lorg/eclipse/jetty/http/HttpContent;
    .param p3, "count"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, -0x1

    .line 1054
    invoke-interface {p2}, Lorg/eclipse/jetty/http/HttpContent;->getContentType()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletResponse;->getContentType()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 1055
    invoke-interface {p2}, Lorg/eclipse/jetty/http/HttpContent;->getContentType()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 1057
    :cond_0
    instance-of v4, p1, Lorg/eclipse/jetty/server/Response;

    if-eqz v4, :cond_5

    move-object v3, p1

    .line 1059
    check-cast v3, Lorg/eclipse/jetty/server/Response;

    .line 1060
    .local v3, "r":Lorg/eclipse/jetty/server/Response;
    invoke-virtual {v3}, Lorg/eclipse/jetty/server/Response;->getHttpFields()Lorg/eclipse/jetty/http/HttpFields;

    move-result-object v0

    .line 1062
    .local v0, "fields":Lorg/eclipse/jetty/http/HttpFields;
    invoke-interface {p2}, Lorg/eclipse/jetty/http/HttpContent;->getLastModified()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 1063
    sget-object v4, Lorg/eclipse/jetty/http/HttpHeaders;->LAST_MODIFIED_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {p2}, Lorg/eclipse/jetty/http/HttpContent;->getLastModified()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 1071
    :cond_1
    :goto_0
    cmp-long v4, p3, v6

    if-eqz v4, :cond_2

    .line 1072
    invoke-virtual {v3, p3, p4}, Lorg/eclipse/jetty/server/Response;->setLongContentLength(J)V

    .line 1074
    :cond_2
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/DefaultServlet;->writeOptionHeaders(Lorg/eclipse/jetty/http/HttpFields;)V

    .line 1076
    iget-boolean v4, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_etags:Z

    if-eqz v4, :cond_3

    .line 1077
    sget-object v4, Lorg/eclipse/jetty/http/HttpHeaders;->ETAG_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {p2}, Lorg/eclipse/jetty/http/HttpContent;->getETag()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 1098
    .end local v0    # "fields":Lorg/eclipse/jetty/http/HttpFields;
    .end local v3    # "r":Lorg/eclipse/jetty/server/Response;
    :cond_3
    :goto_1
    return-void

    .line 1064
    .restart local v0    # "fields":Lorg/eclipse/jetty/http/HttpFields;
    .restart local v3    # "r":Lorg/eclipse/jetty/server/Response;
    :cond_4
    invoke-interface {p2}, Lorg/eclipse/jetty/http/HttpContent;->getResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1066
    invoke-interface {p2}, Lorg/eclipse/jetty/http/HttpContent;->getResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/jetty/util/resource/Resource;->lastModified()J

    move-result-wide v1

    .line 1067
    .local v1, "lml":J
    cmp-long v4, v1, v6

    if-eqz v4, :cond_1

    .line 1068
    sget-object v4, Lorg/eclipse/jetty/http/HttpHeaders;->LAST_MODIFIED_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, v4, v1, v2}, Lorg/eclipse/jetty/http/HttpFields;->putDateField(Lorg/eclipse/jetty/io/Buffer;J)V

    goto :goto_0

    .line 1081
    .end local v0    # "fields":Lorg/eclipse/jetty/http/HttpFields;
    .end local v1    # "lml":J
    .end local v3    # "r":Lorg/eclipse/jetty/server/Response;
    :cond_5
    invoke-interface {p2}, Lorg/eclipse/jetty/http/HttpContent;->getResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/jetty/util/resource/Resource;->lastModified()J

    move-result-wide v1

    .line 1082
    .restart local v1    # "lml":J
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-ltz v4, :cond_6

    .line 1083
    const-string v4, "Last-Modified"

    invoke-interface {p1, v4, v1, v2}, Ljavax/servlet/http/HttpServletResponse;->setDateHeader(Ljava/lang/String;J)V

    .line 1085
    :cond_6
    cmp-long v4, p3, v6

    if-eqz v4, :cond_7

    .line 1087
    const-wide/32 v4, 0x7fffffff

    cmp-long v4, p3, v4

    if-gez v4, :cond_8

    .line 1088
    long-to-int v4, p3

    invoke-interface {p1, v4}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    .line 1093
    :cond_7
    :goto_2
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/servlet/DefaultServlet;->writeOptionHeaders(Ljavax/servlet/http/HttpServletResponse;)V

    .line 1095
    iget-boolean v4, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_etags:Z

    if-eqz v4, :cond_3

    .line 1096
    const-string v4, "ETag"

    invoke-interface {p2}, Lorg/eclipse/jetty/http/HttpContent;->getETag()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v4, v5}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1090
    :cond_8
    const-string v4, "Content-Length"

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v4, v5}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method protected writeOptionHeaders(Ljavax/servlet/http/HttpServletResponse;)V
    .locals 2
    .param p1, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1113
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_acceptRanges:Z

    if-eqz v0, :cond_0

    .line 1114
    const-string v0, "Accept-Ranges"

    const-string v1, "bytes"

    invoke-interface {p1, v0, v1}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1116
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_cacheControl:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    if-eqz v0, :cond_1

    .line 1117
    const-string v0, "Cache-Control"

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_cacheControl:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 1118
    :cond_1
    return-void
.end method

.method protected writeOptionHeaders(Lorg/eclipse/jetty/http/HttpFields;)V
    .locals 2
    .param p1, "fields"    # Lorg/eclipse/jetty/http/HttpFields;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1103
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_acceptRanges:Z

    if-eqz v0, :cond_0

    .line 1104
    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaders;->ACCEPT_RANGES_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaderValues;->BYTES_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 1106
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_cacheControl:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    if-eqz v0, :cond_1

    .line 1107
    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE_CONTROL_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/DefaultServlet;->_cacheControl:Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-virtual {p1, v0, v1}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 1108
    :cond_1
    return-void
.end method
