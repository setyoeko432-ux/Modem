.class public Lorg/eclipse/jetty/util/MultiPartInputStream;
.super Ljava/lang/Object;
.source "MultiPartInputStream.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/util/MultiPartInputStream$Base64InputStream;,
        Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field public static final __DEFAULT_MULTIPART_CONFIG:Ljavax/servlet/MultipartConfigElement;


# instance fields
.field protected _config:Ljavax/servlet/MultipartConfigElement;

.field protected _contentType:Ljava/lang/String;

.field protected _contextTmpDir:Ljava/io/File;

.field protected _deleteOnExit:Z

.field protected _in:Ljava/io/InputStream;

.field protected _parts:Lorg/eclipse/jetty/util/MultiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/eclipse/jetty/util/MultiMap",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected _tmpDir:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 61
    const-class v0, Lorg/eclipse/jetty/util/MultiPartInputStream;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 63
    new-instance v0, Ljavax/servlet/MultipartConfigElement;

    const-string v1, "java.io.tmpdir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/servlet/MultipartConfigElement;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->__DEFAULT_MULTIPART_CONFIG:Ljavax/servlet/MultipartConfigElement;

    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;Ljavax/servlet/MultipartConfigElement;Ljava/io/File;)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "config"    # Ljavax/servlet/MultipartConfigElement;
    .param p4, "contextTmpDir"    # Ljava/io/File;

    .prologue
    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 341
    new-instance v0, Lorg/eclipse/jetty/util/ReadLineInputStream;

    invoke-direct {v0, p1}, Lorg/eclipse/jetty/util/ReadLineInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_in:Ljava/io/InputStream;

    .line 342
    iput-object p2, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_contentType:Ljava/lang/String;

    .line 343
    iput-object p3, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Ljavax/servlet/MultipartConfigElement;

    .line 344
    iput-object p4, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_contextTmpDir:Ljava/io/File;

    .line 345
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_contextTmpDir:Ljava/io/File;

    if-nez v0, :cond_0

    .line 346
    new-instance v0, Ljava/io/File;

    const-string v1, "java.io.tmpdir"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_contextTmpDir:Ljava/io/File;

    .line 348
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Ljavax/servlet/MultipartConfigElement;

    if-nez v0, :cond_1

    .line 349
    new-instance v0, Ljavax/servlet/MultipartConfigElement;

    iget-object v1, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_contextTmpDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/servlet/MultipartConfigElement;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Ljavax/servlet/MultipartConfigElement;

    .line 350
    :cond_1
    return-void
.end method

.method private filenameValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "nameEqualsValue"    # Ljava/lang/String;

    .prologue
    const/16 v8, 0x27

    const/16 v7, 0x22

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 783
    const/16 v4, 0x3d

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 784
    .local v1, "idx":I
    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 786
    .local v3, "value":Ljava/lang/String;
    const-string v4, ".??[a-z,A-Z]\\:\\\\[^\\\\].*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 790
    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 791
    .local v0, "first":C
    if-eq v0, v7, :cond_0

    if-ne v0, v8, :cond_1

    .line 792
    :cond_0
    invoke-virtual {v3, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 793
    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 794
    .local v2, "last":C
    if-eq v2, v7, :cond_2

    if-ne v2, v8, :cond_3

    .line 795
    :cond_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    :cond_3
    move-object v4, v3

    .line 804
    .end local v0    # "first":C
    .end local v2    # "last":C
    :goto_0
    return-object v4

    :cond_4
    invoke-static {v3, v6}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->unquoteOnly(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method private value(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 3
    .param p1, "nameEqualsValue"    # Ljava/lang/String;
    .param p2, "splitAfterSpace"    # Z

    .prologue
    .line 774
    const/16 v2, 0x3d

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 775
    .local v0, "idx":I
    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 776
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->unquoteOnly(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public deleteParts()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jetty/util/MultiException;
        }
    .end annotation

    .prologue
    .line 380
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/MultiPartInputStream;->getParsedParts()Ljava/util/Collection;

    move-result-object v4

    .line 381
    .local v4, "parts":Ljava/util/Collection;, "Ljava/util/Collection<Ljavax/servlet/http/Part;>;"
    new-instance v1, Lorg/eclipse/jetty/util/MultiException;

    invoke-direct {v1}, Lorg/eclipse/jetty/util/MultiException;-><init>()V

    .line 382
    .local v1, "err":Lorg/eclipse/jetty/util/MultiException;
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/servlet/http/Part;

    .line 386
    .local v3, "p":Ljavax/servlet/http/Part;
    :try_start_0
    check-cast v3, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;

    .end local v3    # "p":Ljavax/servlet/http/Part;
    invoke-virtual {v3}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->cleanUp()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 388
    :catch_0
    move-exception v0

    .line 390
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/util/MultiException;->add(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 393
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    iget-object v5, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_parts:Lorg/eclipse/jetty/util/MultiMap;

    invoke-virtual {v5}, Lorg/eclipse/jetty/util/MultiMap;->clear()V

    .line 395
    invoke-virtual {v1}, Lorg/eclipse/jetty/util/MultiException;->ifExceptionThrowMulti()V

    .line 396
    return-void
.end method

.method public getParsedParts()Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljavax/servlet/http/Part;",
            ">;"
        }
    .end annotation

    .prologue
    .line 359
    iget-object v5, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_parts:Lorg/eclipse/jetty/util/MultiMap;

    if-nez v5, :cond_1

    .line 360
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v3

    .line 369
    :cond_0
    return-object v3

    .line 362
    :cond_1
    iget-object v5, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_parts:Lorg/eclipse/jetty/util/MultiMap;

    invoke-virtual {v5}, Lorg/eclipse/jetty/util/MultiMap;->values()Ljava/util/Collection;

    move-result-object v4

    .line 363
    .local v4, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 364
    .local v3, "parts":Ljava/util/List;, "Ljava/util/List<Ljavax/servlet/http/Part;>;"
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 366
    .local v2, "o":Ljava/lang/Object;
    const/4 v5, 0x0

    invoke-static {v2, v5}, Lorg/eclipse/jetty/util/LazyList;->getList(Ljava/lang/Object;Z)Ljava/util/List;

    move-result-object v0

    .line 367
    .local v0, "asList":Ljava/util/List;, "Ljava/util/List<Ljavax/servlet/http/Part;>;"
    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method

.method public getPart(Ljava/lang/String;)Ljavax/servlet/http/Part;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 432
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/MultiPartInputStream;->parse()V

    .line 433
    iget-object v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_parts:Lorg/eclipse/jetty/util/MultiMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/eclipse/jetty/util/MultiMap;->getValue(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/servlet/http/Part;

    return-object v0
.end method

.method public getParts()Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljavax/servlet/http/Part;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 409
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/MultiPartInputStream;->parse()V

    .line 410
    iget-object v5, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_parts:Lorg/eclipse/jetty/util/MultiMap;

    invoke-virtual {v5}, Lorg/eclipse/jetty/util/MultiMap;->values()Ljava/util/Collection;

    move-result-object v4

    .line 411
    .local v4, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/Object;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 412
    .local v3, "parts":Ljava/util/List;, "Ljava/util/List<Ljavax/servlet/http/Part;>;"
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 414
    .local v2, "o":Ljava/lang/Object;
    const/4 v5, 0x0

    invoke-static {v2, v5}, Lorg/eclipse/jetty/util/LazyList;->getList(Ljava/lang/Object;Z)Ljava/util/List;

    move-result-object v0

    .line 415
    .local v0, "asList":Ljava/util/List;, "Ljava/util/List<Ljavax/servlet/http/Part;>;"
    invoke-interface {v3, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 417
    .end local v0    # "asList":Ljava/util/List;, "Ljava/util/List<Ljavax/servlet/http/Part;>;"
    .end local v2    # "o":Ljava/lang/Object;
    :cond_0
    return-object v3
.end method

.method public isDeleteOnExit()Z
    .locals 1

    .prologue
    .line 750
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_deleteOnExit:Z

    return v0
.end method

.method protected parse()V
    .locals 40
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 447
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_parts:Lorg/eclipse/jetty/util/MultiMap;

    move-object/from16 v36, v0

    if-eqz v36, :cond_1

    .line 740
    :cond_0
    return-void

    .line 451
    :cond_1
    const-wide/16 v33, 0x0

    .line 452
    .local v33, "total":J
    new-instance v36, Lorg/eclipse/jetty/util/MultiMap;

    invoke-direct/range {v36 .. v36}, Lorg/eclipse/jetty/util/MultiMap;-><init>()V

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_parts:Lorg/eclipse/jetty/util/MultiMap;

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_contentType:Ljava/lang/String;

    move-object/from16 v36, v0

    if-eqz v36, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_contentType:Ljava/lang/String;

    move-object/from16 v36, v0

    const-string v37, "multipart/form-data"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_0

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Ljavax/servlet/MultipartConfigElement;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljavax/servlet/MultipartConfigElement;->getLocation()Ljava/lang/String;

    move-result-object v36

    if-nez v36, :cond_5

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_contextTmpDir:Ljava/io/File;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_tmpDir:Ljava/io/File;

    .line 473
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_tmpDir:Ljava/io/File;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljava/io/File;->exists()Z

    move-result v36

    if-nez v36, :cond_2

    .line 474
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_tmpDir:Ljava/io/File;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljava/io/File;->mkdirs()Z

    .line 476
    :cond_2
    const-string v14, ""

    .line 477
    .local v14, "contentTypeBoundary":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_contentType:Ljava/lang/String;

    move-object/from16 v36, v0

    const-string v37, "boundary="

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v8

    .line 478
    .local v8, "bstart":I
    if-ltz v8, :cond_4

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_contentType:Ljava/lang/String;

    move-object/from16 v36, v0

    const-string v37, ";"

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    invoke-virtual {v0, v1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .line 481
    .local v6, "bend":I
    if-gez v6, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_contentType:Ljava/lang/String;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->length()I

    move-result v6

    .line 482
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_contentType:Ljava/lang/String;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    invoke-virtual {v0, v8, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v36

    const/16 v37, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    move/from16 v2, v37

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jetty/util/MultiPartInputStream;->value(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v36

    invoke-static/range {v36 .. v36}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->unquote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 485
    .end local v6    # "bend":I
    :cond_4
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    const-string v37, "--"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    move-object/from16 v0, v36

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 486
    .local v7, "boundary":Ljava/lang/String;
    new-instance v36, Ljava/lang/StringBuilder;

    invoke-direct/range {v36 .. v36}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v36

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    const-string v37, "--"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v36

    const-string v37, "ISO-8859-1"

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v9

    .line 489
    .local v9, "byteBoundary":[B
    const/16 v24, 0x0

    .line 492
    .local v24, "line":Ljava/lang/String;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_in:Ljava/io/InputStream;

    move-object/from16 v36, v0

    check-cast v36, Lorg/eclipse/jetty/util/ReadLineInputStream;

    invoke-virtual/range {v36 .. v36}, Lorg/eclipse/jetty/util/ReadLineInputStream;->readLine()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v24

    .line 500
    if-nez v24, :cond_8

    .line 501
    new-instance v36, Ljava/io/IOException;

    const-string v37, "Missing content for multipart request"

    invoke-direct/range {v36 .. v37}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v36

    .line 462
    .end local v7    # "boundary":Ljava/lang/String;
    .end local v8    # "bstart":I
    .end local v9    # "byteBoundary":[B
    .end local v14    # "contentTypeBoundary":Ljava/lang/String;
    .end local v24    # "line":Ljava/lang/String;
    :cond_5
    const-string v36, ""

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Ljavax/servlet/MultipartConfigElement;

    move-object/from16 v37, v0

    invoke-virtual/range {v37 .. v37}, Ljavax/servlet/MultipartConfigElement;->getLocation()Ljava/lang/String;

    move-result-object v37

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_6

    .line 463
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_contextTmpDir:Ljava/io/File;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_tmpDir:Ljava/io/File;

    goto/16 :goto_0

    .line 466
    :cond_6
    new-instance v17, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Ljavax/servlet/MultipartConfigElement;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljavax/servlet/MultipartConfigElement;->getLocation()Ljava/lang/String;

    move-result-object v36

    move-object/from16 v0, v17

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 467
    .local v17, "f":Ljava/io/File;
    invoke-virtual/range {v17 .. v17}, Ljava/io/File;->isAbsolute()Z

    move-result v36

    if-eqz v36, :cond_7

    .line 468
    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_tmpDir:Ljava/io/File;

    goto/16 :goto_0

    .line 470
    :cond_7
    new-instance v36, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_contextTmpDir:Ljava/io/File;

    move-object/from16 v37, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Ljavax/servlet/MultipartConfigElement;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljavax/servlet/MultipartConfigElement;->getLocation()Ljava/lang/String;

    move-result-object v38

    invoke-direct/range {v36 .. v38}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object/from16 v0, v36

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/util/MultiPartInputStream;->_tmpDir:Ljava/io/File;

    goto/16 :goto_0

    .line 494
    .end local v17    # "f":Ljava/io/File;
    .restart local v7    # "boundary":Ljava/lang/String;
    .restart local v8    # "bstart":I
    .restart local v9    # "byteBoundary":[B
    .restart local v14    # "contentTypeBoundary":Ljava/lang/String;
    .restart local v24    # "line":Ljava/lang/String;
    :catch_0
    move-exception v16

    .line 496
    .local v16, "e":Ljava/io/IOException;
    sget-object v36, Lorg/eclipse/jetty/util/MultiPartInputStream;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v37, "Badly formatted multipart request"

    const/16 v38, 0x0

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    invoke-interface/range {v36 .. v38}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 497
    throw v16

    .line 503
    .end local v16    # "e":Ljava/io/IOException;
    :cond_8
    const/4 v5, 0x0

    .line 504
    .local v5, "badFormatLogged":Z
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v24

    .line 505
    :goto_1
    if-eqz v24, :cond_b

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-nez v36, :cond_b

    .line 507
    if-nez v5, :cond_9

    .line 509
    sget-object v36, Lorg/eclipse/jetty/util/MultiPartInputStream;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v37, "Badly formatted multipart request"

    const/16 v38, 0x0

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    invoke-interface/range {v36 .. v38}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 510
    const/4 v5, 0x1

    .line 512
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_in:Ljava/io/InputStream;

    move-object/from16 v36, v0

    check-cast v36, Lorg/eclipse/jetty/util/ReadLineInputStream;

    invoke-virtual/range {v36 .. v36}, Lorg/eclipse/jetty/util/ReadLineInputStream;->readLine()Ljava/lang/String;

    move-result-object v24

    .line 513
    if-nez v24, :cond_a

    :goto_2
    goto :goto_1

    :cond_a
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v24

    goto :goto_2

    .line 516
    :cond_b
    if-nez v24, :cond_c

    .line 517
    new-instance v36, Ljava/io/IOException;

    const-string v37, "Missing initial multi part boundary"

    invoke-direct/range {v36 .. v37}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v36

    .line 520
    :cond_c
    const/16 v22, 0x0

    .line 522
    .local v22, "lastPart":Z
    :cond_d
    :goto_3
    if-nez v22, :cond_f

    .line 524
    const/4 v11, 0x0

    .line 525
    .local v11, "contentDisposition":Ljava/lang/String;
    const/4 v13, 0x0

    .line 526
    .local v13, "contentType":Ljava/lang/String;
    const/4 v12, 0x0

    .line 528
    .local v12, "contentTransferEncoding":Ljava/lang/String;
    new-instance v20, Lorg/eclipse/jetty/util/MultiMap;

    invoke-direct/range {v20 .. v20}, Lorg/eclipse/jetty/util/MultiMap;-><init>()V

    .line 531
    .local v20, "headers":Lorg/eclipse/jetty/util/MultiMap;, "Lorg/eclipse/jetty/util/MultiMap<Ljava/lang/String;>;"
    :cond_e
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_in:Ljava/io/InputStream;

    move-object/from16 v36, v0

    check-cast v36, Lorg/eclipse/jetty/util/ReadLineInputStream;

    invoke-virtual/range {v36 .. v36}, Lorg/eclipse/jetty/util/ReadLineInputStream;->readLine()Ljava/lang/String;

    move-result-object v24

    .line 534
    if-nez v24, :cond_10

    .line 738
    .end local v11    # "contentDisposition":Ljava/lang/String;
    .end local v12    # "contentTransferEncoding":Ljava/lang/String;
    .end local v13    # "contentType":Ljava/lang/String;
    .end local v20    # "headers":Lorg/eclipse/jetty/util/MultiMap;, "Lorg/eclipse/jetty/util/MultiMap<Ljava/lang/String;>;"
    :cond_f
    if-nez v22, :cond_0

    .line 739
    new-instance v36, Ljava/io/IOException;

    const-string v37, "Incomplete parts"

    invoke-direct/range {v36 .. v37}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v36

    .line 538
    .restart local v11    # "contentDisposition":Ljava/lang/String;
    .restart local v12    # "contentTransferEncoding":Ljava/lang/String;
    .restart local v13    # "contentType":Ljava/lang/String;
    .restart local v20    # "headers":Lorg/eclipse/jetty/util/MultiMap;, "Lorg/eclipse/jetty/util/MultiMap<Ljava/lang/String;>;"
    :cond_10
    const-string v36, ""

    move-object/from16 v0, v36

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_11

    .line 563
    const/16 v19, 0x0

    .line 564
    .local v19, "form_data":Z
    if-nez v11, :cond_15

    .line 566
    new-instance v36, Ljava/io/IOException;

    const-string v37, "Missing content-disposition"

    invoke-direct/range {v36 .. v37}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v36

    .line 541
    .end local v19    # "form_data":Z
    :cond_11
    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v36

    move/from16 v0, v36

    int-to-long v0, v0

    move-wide/from16 v36, v0

    add-long v33, v33, v36

    .line 542
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Ljavax/servlet/MultipartConfigElement;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljavax/servlet/MultipartConfigElement;->getMaxRequestSize()J

    move-result-wide v36

    const-wide/16 v38, 0x0

    cmp-long v36, v36, v38

    if-lez v36, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Ljavax/servlet/MultipartConfigElement;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljavax/servlet/MultipartConfigElement;->getMaxRequestSize()J

    move-result-wide v36

    cmp-long v36, v33, v36

    if-lez v36, :cond_12

    .line 543
    new-instance v36, Ljava/lang/IllegalStateException;

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Request exceeds maxRequestSize ("

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Ljavax/servlet/MultipartConfigElement;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljavax/servlet/MultipartConfigElement;->getMaxRequestSize()J

    move-result-wide v38

    invoke-virtual/range {v37 .. v39}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ")"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v36

    .line 546
    :cond_12
    const/16 v36, 0x3a

    const/16 v37, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v10

    .line 547
    .local v10, "c":I
    if-lez v10, :cond_e

    .line 549
    const/16 v36, 0x0

    move-object/from16 v0, v24

    move/from16 v1, v36

    invoke-virtual {v0, v1, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v36

    sget-object v37, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual/range {v36 .. v37}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v21

    .line 550
    .local v21, "key":Ljava/lang/String;
    add-int/lit8 v36, v10, 0x1

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v37

    move-object/from16 v0, v24

    move/from16 v1, v36

    move/from16 v2, v37

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v35

    .line 551
    .local v35, "value":Ljava/lang/String;
    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v35

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/MultiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 552
    const-string v36, "content-disposition"

    move-object/from16 v0, v21

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_13

    .line 553
    move-object/from16 v11, v35

    .line 554
    :cond_13
    const-string v36, "content-type"

    move-object/from16 v0, v21

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_14

    .line 555
    move-object/from16 v13, v35

    .line 556
    :cond_14
    const-string v36, "content-transfer-encoding"

    move-object/from16 v0, v21

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v36

    if-eqz v36, :cond_e

    .line 557
    move-object/from16 v12, v35

    goto/16 :goto_4

    .line 569
    .end local v10    # "c":I
    .end local v21    # "key":Ljava/lang/String;
    .end local v35    # "value":Ljava/lang/String;
    .restart local v19    # "form_data":Z
    :cond_15
    new-instance v32, Lorg/eclipse/jetty/util/QuotedStringTokenizer;

    const-string v36, ";"

    const/16 v37, 0x0

    const/16 v38, 0x1

    move-object/from16 v0, v32

    move-object/from16 v1, v36

    move/from16 v2, v37

    move/from16 v3, v38

    invoke-direct {v0, v11, v1, v2, v3}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 570
    .local v32, "tok":Lorg/eclipse/jetty/util/QuotedStringTokenizer;
    const/16 v25, 0x0

    .line 571
    .local v25, "name":Ljava/lang/String;
    const/16 v18, 0x0

    .line 572
    .local v18, "filename":Ljava/lang/String;
    :cond_16
    :goto_5
    invoke-virtual/range {v32 .. v32}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->hasMoreTokens()Z

    move-result v36

    if-eqz v36, :cond_19

    .line 574
    invoke-virtual/range {v32 .. v32}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v36

    invoke-virtual/range {v36 .. v36}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v29

    .line 575
    .local v29, "t":Ljava/lang/String;
    sget-object v36, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v29

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v30

    .line 576
    .local v30, "tl":Ljava/lang/String;
    const-string v36, "form-data"

    move-object/from16 v0, v29

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_17

    .line 577
    const/16 v19, 0x1

    goto :goto_5

    .line 578
    :cond_17
    const-string v36, "name="

    move-object/from16 v0, v30

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_18

    .line 579
    const/16 v36, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    move/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jetty/util/MultiPartInputStream;->value(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v25

    goto :goto_5

    .line 580
    :cond_18
    const-string v36, "filename="

    move-object/from16 v0, v30

    move-object/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_16

    .line 581
    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/util/MultiPartInputStream;->filenameValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    goto :goto_5

    .line 585
    .end local v29    # "t":Ljava/lang/String;
    .end local v30    # "tl":Ljava/lang/String;
    :cond_19
    if-eqz v19, :cond_d

    .line 594
    if-eqz v25, :cond_d

    .line 600
    new-instance v26, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    move-object/from16 v3, v18

    invoke-direct {v0, v1, v2, v3}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;-><init>(Lorg/eclipse/jetty/util/MultiPartInputStream;Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    .local v26, "part":Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;
    move-object/from16 v0, v26

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->setHeaders(Lorg/eclipse/jetty/util/MultiMap;)V

    .line 602
    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->setContentType(Ljava/lang/String;)V

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_parts:Lorg/eclipse/jetty/util/MultiMap;

    move-object/from16 v36, v0

    move-object/from16 v0, v36

    move-object/from16 v1, v25

    move-object/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/MultiMap;->add(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 604
    invoke-virtual/range {v26 .. v26}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->open()V

    .line 606
    const/16 v27, 0x0

    .line 607
    .local v27, "partInput":Ljava/io/InputStream;
    const-string v36, "base64"

    move-object/from16 v0, v36

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_1b

    .line 609
    new-instance v27, Lorg/eclipse/jetty/util/MultiPartInputStream$Base64InputStream;

    .end local v27    # "partInput":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_in:Ljava/io/InputStream;

    move-object/from16 v36, v0

    check-cast v36, Lorg/eclipse/jetty/util/ReadLineInputStream;

    move-object/from16 v0, v27

    move-object/from16 v1, v36

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/util/MultiPartInputStream$Base64InputStream;-><init>(Lorg/eclipse/jetty/util/ReadLineInputStream;)V

    .line 639
    .restart local v27    # "partInput":Ljava/io/InputStream;
    :goto_6
    const/16 v28, -0x2

    .line 641
    .local v28, "state":I
    const/4 v15, 0x0

    .line 642
    .local v15, "cr":Z
    const/16 v23, 0x0

    .line 647
    .local v23, "lf":Z
    :cond_1a
    :goto_7
    const/4 v4, 0x0

    .line 648
    .end local v15    # "cr":Z
    .local v4, "b":I
    :goto_8
    const/16 v36, -0x2

    move/from16 v0, v28

    move/from16 v1, v36

    if-eq v0, v1, :cond_1d

    move/from16 v10, v28

    .restart local v10    # "c":I
    :goto_9
    const/16 v36, -0x1

    move/from16 v0, v36

    if-eq v10, v0, :cond_20

    .line 650
    const-wide/16 v36, 0x1

    add-long v33, v33, v36

    .line 651
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Ljavax/servlet/MultipartConfigElement;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljavax/servlet/MultipartConfigElement;->getMaxRequestSize()J

    move-result-wide v36

    const-wide/16 v38, 0x0

    cmp-long v36, v36, v38

    if-lez v36, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Ljavax/servlet/MultipartConfigElement;

    move-object/from16 v36, v0

    invoke-virtual/range {v36 .. v36}, Ljavax/servlet/MultipartConfigElement;->getMaxRequestSize()J

    move-result-wide v36

    cmp-long v36, v33, v36

    if-lez v36, :cond_1e

    .line 652
    new-instance v36, Ljava/lang/IllegalStateException;

    new-instance v37, Ljava/lang/StringBuilder;

    invoke-direct/range {v37 .. v37}, Ljava/lang/StringBuilder;-><init>()V

    const-string v38, "Request exceeds maxRequestSize ("

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_config:Ljavax/servlet/MultipartConfigElement;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Ljavax/servlet/MultipartConfigElement;->getMaxRequestSize()J

    move-result-wide v38

    invoke-virtual/range {v37 .. v39}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v37

    const-string v38, ")"

    invoke-virtual/range {v37 .. v38}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v37

    invoke-virtual/range {v37 .. v37}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v37

    invoke-direct/range {v36 .. v37}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v36
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 735
    .end local v10    # "c":I
    :catchall_0
    move-exception v36

    invoke-virtual/range {v26 .. v26}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->close()V

    throw v36

    .line 611
    .end local v4    # "b":I
    .end local v23    # "lf":Z
    .end local v28    # "state":I
    :cond_1b
    const-string v36, "quoted-printable"

    move-object/from16 v0, v36

    invoke-virtual {v0, v12}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v36

    if-eqz v36, :cond_1c

    .line 613
    new-instance v27, Lorg/eclipse/jetty/util/MultiPartInputStream$1;

    .end local v27    # "partInput":Ljava/io/InputStream;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_in:Ljava/io/InputStream;

    move-object/from16 v36, v0

    move-object/from16 v0, v27

    move-object/from16 v1, p0

    move-object/from16 v2, v36

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jetty/util/MultiPartInputStream$1;-><init>(Lorg/eclipse/jetty/util/MultiPartInputStream;Ljava/io/InputStream;)V

    .restart local v27    # "partInput":Ljava/io/InputStream;
    goto/16 :goto_6

    .line 635
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_in:Ljava/io/InputStream;

    move-object/from16 v27, v0

    goto/16 :goto_6

    .line 648
    .restart local v4    # "b":I
    .restart local v23    # "lf":Z
    .restart local v28    # "state":I
    :cond_1d
    :try_start_2
    invoke-virtual/range {v27 .. v27}, Ljava/io/InputStream;->read()I

    move-result v10

    goto :goto_9

    .line 654
    .restart local v10    # "c":I
    :cond_1e
    const/16 v28, -0x2

    .line 657
    const/16 v36, 0xd

    move/from16 v0, v36

    if-eq v10, v0, :cond_1f

    const/16 v36, 0xa

    move/from16 v0, v36

    if-ne v10, v0, :cond_2a

    .line 659
    :cond_1f
    const/16 v36, 0xd

    move/from16 v0, v36

    if-ne v10, v0, :cond_20

    .line 661
    const/16 v36, 0x1

    move-object/from16 v0, v27

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->mark(I)V

    .line 662
    invoke-virtual/range {v27 .. v27}, Ljava/io/InputStream;->read()I

    move-result v31

    .line 663
    .local v31, "tmp":I
    const/16 v36, 0xa

    move/from16 v0, v31

    move/from16 v1, v36

    if-eq v0, v1, :cond_29

    .line 664
    invoke-virtual/range {v27 .. v27}, Ljava/io/InputStream;->reset()V

    .line 696
    .end local v31    # "tmp":I
    :cond_20
    :goto_a
    if-lez v4, :cond_21

    array-length v0, v9

    move/from16 v36, v0

    add-int/lit8 v36, v36, -0x2

    move/from16 v0, v36

    if-lt v4, v0, :cond_22

    :cond_21
    array-length v0, v9

    move/from16 v36, v0

    add-int/lit8 v36, v36, -0x1

    move/from16 v0, v36

    if-ne v4, v0, :cond_25

    .line 698
    :cond_22
    if-eqz v15, :cond_23

    .line 699
    const/16 v36, 0xd

    move-object/from16 v0, v26

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->write(I)V

    .line 701
    :cond_23
    if-eqz v23, :cond_24

    .line 702
    const/16 v36, 0xa

    move-object/from16 v0, v26

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->write(I)V

    .line 704
    :cond_24
    const/16 v23, 0x0

    move/from16 v15, v23

    .line 705
    .local v15, "cr":I
    const/16 v36, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v36

    invoke-virtual {v0, v9, v1, v4}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->write([BII)V

    .line 706
    const/4 v4, -0x1

    .line 710
    .end local v15    # "cr":I
    :cond_25
    if-gtz v4, :cond_26

    const/16 v36, -0x1

    move/from16 v0, v36

    if-ne v10, v0, :cond_2f

    .line 713
    :cond_26
    array-length v0, v9

    move/from16 v36, v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move/from16 v0, v36

    if-ne v4, v0, :cond_27

    .line 714
    const/16 v22, 0x1

    .line 715
    :cond_27
    const/16 v36, 0xa

    move/from16 v0, v28

    move/from16 v1, v36

    if-ne v0, v1, :cond_28

    .line 716
    const/16 v28, -0x2

    .line 735
    :cond_28
    invoke-virtual/range {v26 .. v26}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->close()V

    goto/16 :goto_3

    .line 666
    .restart local v31    # "tmp":I
    :cond_29
    move/from16 v28, v31

    goto :goto_a

    .line 672
    .end local v31    # "tmp":I
    :cond_2a
    if-ltz v4, :cond_2b

    :try_start_3
    array-length v0, v9

    move/from16 v36, v0

    move/from16 v0, v36

    if-ge v4, v0, :cond_2b

    aget-byte v36, v9, v4

    move/from16 v0, v36

    if-ne v10, v0, :cond_2b

    .line 674
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_8

    .line 680
    :cond_2b
    if-eqz v15, :cond_2c

    .line 681
    const/16 v36, 0xd

    move-object/from16 v0, v26

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->write(I)V

    .line 683
    :cond_2c
    if-eqz v23, :cond_2d

    .line 684
    const/16 v36, 0xa

    move-object/from16 v0, v26

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->write(I)V

    .line 686
    :cond_2d
    const/16 v23, 0x0

    move/from16 v15, v23

    .line 687
    .restart local v15    # "cr":I
    if-lez v4, :cond_2e

    .line 688
    const/16 v36, 0x0

    move-object/from16 v0, v26

    move/from16 v1, v36

    invoke-virtual {v0, v9, v1, v4}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->write([BII)V

    .line 690
    :cond_2e
    const/4 v4, -0x1

    .line 691
    move-object/from16 v0, v26

    invoke-virtual {v0, v10}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->write(I)V

    goto/16 :goto_8

    .line 721
    .end local v15    # "cr":I
    :cond_2f
    if-eqz v15, :cond_30

    .line 722
    const/16 v36, 0xd

    move-object/from16 v0, v26

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->write(I)V

    .line 724
    :cond_30
    if-eqz v23, :cond_31

    .line 725
    const/16 v36, 0xa

    move-object/from16 v0, v26

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/util/MultiPartInputStream$MultiPart;->write(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 727
    :cond_31
    const/16 v36, 0xd

    move/from16 v0, v36

    if-ne v10, v0, :cond_33

    const/4 v15, 0x1

    .line 728
    .local v15, "cr":Z
    :goto_b
    const/16 v36, 0xa

    move/from16 v0, v36

    if-eq v10, v0, :cond_32

    const/16 v36, 0xa

    move/from16 v0, v28

    move/from16 v1, v36

    if-ne v0, v1, :cond_34

    :cond_32
    const/16 v23, 0x1

    .line 729
    :goto_c
    const/16 v36, 0xa

    move/from16 v0, v28

    move/from16 v1, v36

    if-ne v0, v1, :cond_1a

    .line 730
    const/16 v28, -0x2

    goto/16 :goto_7

    .line 727
    .end local v15    # "cr":Z
    :cond_33
    const/4 v15, 0x0

    goto :goto_b

    .line 728
    .restart local v15    # "cr":Z
    :cond_34
    const/16 v23, 0x0

    goto :goto_c
.end method

.method public setDeleteOnExit(Z)V
    .locals 0
    .param p1, "deleteOnExit"    # Z

    .prologue
    .line 744
    iput-boolean p1, p0, Lorg/eclipse/jetty/util/MultiPartInputStream;->_deleteOnExit:Z

    .line 745
    return-void
.end method
