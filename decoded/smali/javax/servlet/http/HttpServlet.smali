.class public abstract Ljavax/servlet/http/HttpServlet;
.super Ljavax/servlet/GenericServlet;
.source "HttpServlet.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final HEADER_IFMODSINCE:Ljava/lang/String; = "If-Modified-Since"

.field private static final HEADER_LASTMOD:Ljava/lang/String; = "Last-Modified"

.field private static final LSTRING_FILE:Ljava/lang/String; = "javax.servlet.http.LocalStrings"

.field private static final METHOD_DELETE:Ljava/lang/String; = "DELETE"

.field private static final METHOD_GET:Ljava/lang/String; = "GET"

.field private static final METHOD_HEAD:Ljava/lang/String; = "HEAD"

.field private static final METHOD_OPTIONS:Ljava/lang/String; = "OPTIONS"

.field private static final METHOD_POST:Ljava/lang/String; = "POST"

.field private static final METHOD_PUT:Ljava/lang/String; = "PUT"

.field private static final METHOD_TRACE:Ljava/lang/String; = "TRACE"

.field private static lStrings:Ljava/util/ResourceBundle;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 138
    const-string v0, "javax.servlet.http.LocalStrings"

    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    sput-object v0, Ljavax/servlet/http/HttpServlet;->lStrings:Ljava/util/ResourceBundle;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 149
    invoke-direct {p0}, Ljavax/servlet/GenericServlet;-><init>()V

    return-void
.end method

.method private getAllDeclaredMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)[",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .prologue
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    .line 514
    const-class v3, Ljavax/servlet/http/HttpServlet;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 515
    const/4 v2, 0x0

    .line 532
    :cond_0
    :goto_0
    return-object v2

    .line 518
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v3

    invoke-direct {p0, v3}, Ljavax/servlet/http/HttpServlet;->getAllDeclaredMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v1

    .line 519
    .local v1, "parentMethods":[Ljava/lang/reflect/Method;
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;

    move-result-object v2

    .line 521
    .local v2, "thisMethods":[Ljava/lang/reflect/Method;
    if-eqz v1, :cond_0

    array-length v3, v1

    if-lez v3, :cond_0

    .line 522
    array-length v3, v1

    array-length v4, v2

    add-int/2addr v3, v4

    new-array v0, v3, [Ljava/lang/reflect/Method;

    .line 524
    .local v0, "allMethods":[Ljava/lang/reflect/Method;
    array-length v3, v1

    invoke-static {v1, v5, v0, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 526
    array-length v3, v1

    array-length v4, v2

    invoke-static {v2, v5, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 529
    move-object v2, v0

    goto :goto_0
.end method

.method private maybeSetLastModified(Ljavax/servlet/http/HttpServletResponse;J)V
    .locals 2
    .param p1, "resp"    # Ljavax/servlet/http/HttpServletResponse;
    .param p2, "lastModified"    # J

    .prologue
    .line 798
    const-string v0, "Last-Modified"

    invoke-interface {p1, v0}, Ljavax/servlet/http/HttpServletResponse;->containsHeader(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 802
    :cond_0
    :goto_0
    return-void

    .line 800
    :cond_1
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-ltz v0, :cond_0

    .line 801
    const-string v0, "Last-Modified"

    invoke-interface {p1, v0, p2, p3}, Ljavax/servlet/http/HttpServletResponse;->setDateHeader(Ljava/lang/String;J)V

    goto :goto_0
.end method


# virtual methods
.method protected doDelete(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 4
    .param p1, "req"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "resp"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 499
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getProtocol()Ljava/lang/String;

    move-result-object v1

    .line 500
    .local v1, "protocol":Ljava/lang/String;
    sget-object v2, Ljavax/servlet/http/HttpServlet;->lStrings:Ljava/util/ResourceBundle;

    const-string v3, "http.method_delete_not_supported"

    invoke-virtual {v2, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 501
    .local v0, "msg":Ljava/lang/String;
    const-string v2, "1.1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 502
    const/16 v2, 0x195

    invoke-interface {p2, v2, v0}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V

    .line 506
    :goto_0
    return-void

    .line 504
    :cond_0
    const/16 v2, 0x190

    invoke-interface {p2, v2, v0}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected doGet(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 4
    .param p1, "req"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "resp"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 225
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getProtocol()Ljava/lang/String;

    move-result-object v1

    .line 226
    .local v1, "protocol":Ljava/lang/String;
    sget-object v2, Ljavax/servlet/http/HttpServlet;->lStrings:Ljava/util/ResourceBundle;

    const-string v3, "http.method_get_not_supported"

    invoke-virtual {v2, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 227
    .local v0, "msg":Ljava/lang/String;
    const-string v2, "1.1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    const/16 v2, 0x195

    invoke-interface {p2, v2, v0}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V

    .line 232
    :goto_0
    return-void

    .line 230
    :cond_0
    const/16 v2, 0x190

    invoke-interface {p2, v2, v0}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected doHead(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
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
    .line 309
    new-instance v0, Ljavax/servlet/http/NoBodyResponse;

    invoke-direct {v0, p2}, Ljavax/servlet/http/NoBodyResponse;-><init>(Ljavax/servlet/http/HttpServletResponse;)V

    .line 311
    .local v0, "response":Ljavax/servlet/http/NoBodyResponse;
    invoke-virtual {p0, p1, v0}, Ljavax/servlet/http/HttpServlet;->doGet(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 312
    invoke-virtual {v0}, Ljavax/servlet/http/NoBodyResponse;->setContentLength()V

    .line 313
    return-void
.end method

.method protected doOptions(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 13
    .param p1, "req"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "resp"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 578
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-direct {p0, v11}, Ljavax/servlet/http/HttpServlet;->getAllDeclaredMethods(Ljava/lang/Class;)[Ljava/lang/reflect/Method;

    move-result-object v10

    .line 580
    .local v10, "methods":[Ljava/lang/reflect/Method;
    const/4 v1, 0x0

    .line 581
    .local v1, "ALLOW_GET":Z
    const/4 v2, 0x0

    .line 582
    .local v2, "ALLOW_HEAD":Z
    const/4 v4, 0x0

    .line 583
    .local v4, "ALLOW_POST":Z
    const/4 v5, 0x0

    .line 584
    .local v5, "ALLOW_PUT":Z
    const/4 v0, 0x0

    .line 585
    .local v0, "ALLOW_DELETE":Z
    const/4 v6, 0x1

    .line 586
    .local v6, "ALLOW_TRACE":Z
    const/4 v3, 0x1

    .line 588
    .local v3, "ALLOW_OPTIONS":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    array-length v11, v10

    if-ge v8, v11, :cond_4

    .line 589
    aget-object v9, v10, v8

    .line 591
    .local v9, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "doGet"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 592
    const/4 v1, 0x1

    .line 593
    const/4 v2, 0x1

    .line 595
    :cond_0
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "doPost"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 596
    const/4 v4, 0x1

    .line 597
    :cond_1
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "doPut"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    .line 598
    const/4 v5, 0x1

    .line 599
    :cond_2
    invoke-virtual {v9}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "doDelete"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 600
    const/4 v0, 0x1

    .line 588
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 604
    .end local v9    # "m":Ljava/lang/reflect/Method;
    :cond_4
    const/4 v7, 0x0

    .line 605
    .local v7, "allow":Ljava/lang/String;
    if-eqz v1, :cond_5

    .line 606
    const-string v7, "GET"

    .line 607
    :cond_5
    if-eqz v2, :cond_6

    .line 608
    if-nez v7, :cond_c

    const-string v7, "HEAD"

    .line 610
    :cond_6
    :goto_1
    if-eqz v4, :cond_7

    .line 611
    if-nez v7, :cond_d

    const-string v7, "POST"

    .line 613
    :cond_7
    :goto_2
    if-eqz v5, :cond_8

    .line 614
    if-nez v7, :cond_e

    const-string v7, "PUT"

    .line 616
    :cond_8
    :goto_3
    if-eqz v0, :cond_9

    .line 617
    if-nez v7, :cond_f

    const-string v7, "DELETE"

    .line 619
    :cond_9
    :goto_4
    if-eqz v6, :cond_a

    .line 620
    if-nez v7, :cond_10

    const-string v7, "TRACE"

    .line 622
    :cond_a
    :goto_5
    if-eqz v3, :cond_b

    .line 623
    if-nez v7, :cond_11

    const-string v7, "OPTIONS"

    .line 626
    :cond_b
    :goto_6
    const-string v11, "Allow"

    invoke-interface {p2, v11, v7}, Ljavax/servlet/http/HttpServletResponse;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 627
    return-void

    .line 609
    :cond_c
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", HEAD"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_1

    .line 612
    :cond_d
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", POST"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    .line 615
    :cond_e
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", PUT"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_3

    .line 618
    :cond_f
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", DELETE"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_4

    .line 621
    :cond_10
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", TRACE"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    .line 624
    :cond_11
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", OPTIONS"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_6
.end method

.method protected doPost(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 4
    .param p1, "req"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "resp"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 384
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getProtocol()Ljava/lang/String;

    move-result-object v1

    .line 385
    .local v1, "protocol":Ljava/lang/String;
    sget-object v2, Ljavax/servlet/http/HttpServlet;->lStrings:Ljava/util/ResourceBundle;

    const-string v3, "http.method_post_not_supported"

    invoke-virtual {v2, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 386
    .local v0, "msg":Ljava/lang/String;
    const-string v2, "1.1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 387
    const/16 v2, 0x195

    invoke-interface {p2, v2, v0}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V

    .line 391
    :goto_0
    return-void

    .line 389
    :cond_0
    const/16 v2, 0x190

    invoke-interface {p2, v2, v0}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected doPut(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 4
    .param p1, "req"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "resp"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 444
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getProtocol()Ljava/lang/String;

    move-result-object v1

    .line 445
    .local v1, "protocol":Ljava/lang/String;
    sget-object v2, Ljavax/servlet/http/HttpServlet;->lStrings:Ljava/util/ResourceBundle;

    const-string v3, "http.method_put_not_supported"

    invoke-virtual {v2, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 446
    .local v0, "msg":Ljava/lang/String;
    const-string v2, "1.1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 447
    const/16 v2, 0x195

    invoke-interface {p2, v2, v0}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V

    .line 451
    :goto_0
    return-void

    .line 449
    :cond_0
    const/16 v2, 0x190

    invoke-interface {p2, v2, v0}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V

    goto :goto_0
.end method

.method protected doTrace(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 8
    .param p1, "req"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "resp"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 667
    const-string v0, "\r\n"

    .line 668
    .local v0, "CRLF":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "TRACE "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRequestURI()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getProtocol()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 671
    .local v1, "buffer":Ljava/lang/StringBuilder;
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getHeaderNames()Ljava/util/Enumeration;

    move-result-object v4

    .line 673
    .local v4, "reqHeaderEnum":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 674
    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 675
    .local v2, "headerName":Ljava/lang/String;
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1, v2}, Ljavax/servlet/http/HttpServletRequest;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 679
    .end local v2    # "headerName":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    .line 683
    .local v5, "responseLength":I
    const-string v6, "message/http"

    invoke-interface {p2, v6}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 684
    invoke-interface {p2, v5}, Ljavax/servlet/http/HttpServletResponse;->setContentLength(I)V

    .line 685
    invoke-interface {p2}, Ljavax/servlet/http/HttpServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v3

    .line 686
    .local v3, "out":Ljavax/servlet/ServletOutputStream;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljavax/servlet/ServletOutputStream;->print(Ljava/lang/String;)V

    .line 687
    return-void
.end method

.method protected getLastModified(Ljavax/servlet/http/HttpServletRequest;)J
    .locals 2
    .param p1, "req"    # Ljavax/servlet/http/HttpServletRequest;

    .prologue
    .line 264
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public service(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    .locals 6
    .param p1, "req"    # Ljavax/servlet/ServletRequest;
    .param p2, "res"    # Ljavax/servlet/ServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 843
    :try_start_0
    move-object v0, p1

    check-cast v0, Ljavax/servlet/http/HttpServletRequest;

    move-object v2, v0

    .line 844
    .local v2, "request":Ljavax/servlet/http/HttpServletRequest;
    move-object v0, p2

    check-cast v0, Ljavax/servlet/http/HttpServletResponse;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 848
    .local v3, "response":Ljavax/servlet/http/HttpServletResponse;
    invoke-virtual {p0, v2, v3}, Ljavax/servlet/http/HttpServlet;->service(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 849
    return-void

    .line 845
    .end local v2    # "request":Ljavax/servlet/http/HttpServletRequest;
    .end local v3    # "response":Ljavax/servlet/http/HttpServletResponse;
    :catch_0
    move-exception v1

    .line 846
    .local v1, "e":Ljava/lang/ClassCastException;
    new-instance v4, Ljavax/servlet/ServletException;

    const-string v5, "non-HTTP request or response"

    invoke-direct {v4, v5}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method protected service(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 9
    .param p1, "req"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "resp"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 728
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getMethod()Ljava/lang/String;

    move-result-object v6

    .line 730
    .local v6, "method":Ljava/lang/String;
    const-string v7, "GET"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 731
    invoke-virtual {p0, p1}, Ljavax/servlet/http/HttpServlet;->getLastModified(Ljavax/servlet/http/HttpServletRequest;)J

    move-result-wide v4

    .line 732
    .local v4, "lastModified":J
    const-wide/16 v7, -0x1

    cmp-long v7, v4, v7

    if-nez v7, :cond_0

    .line 735
    invoke-virtual {p0, p1, p2}, Ljavax/servlet/http/HttpServlet;->doGet(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 782
    .end local v4    # "lastModified":J
    :goto_0
    return-void

    .line 737
    .restart local v4    # "lastModified":J
    :cond_0
    const-string v7, "If-Modified-Since"

    invoke-interface {p1, v7}, Ljavax/servlet/http/HttpServletRequest;->getDateHeader(Ljava/lang/String;)J

    move-result-wide v2

    .line 738
    .local v2, "ifModifiedSince":J
    cmp-long v7, v2, v4

    if-gez v7, :cond_1

    .line 742
    invoke-direct {p0, p2, v4, v5}, Ljavax/servlet/http/HttpServlet;->maybeSetLastModified(Ljavax/servlet/http/HttpServletResponse;J)V

    .line 743
    invoke-virtual {p0, p1, p2}, Ljavax/servlet/http/HttpServlet;->doGet(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_0

    .line 745
    :cond_1
    const/16 v7, 0x130

    invoke-interface {p2, v7}, Ljavax/servlet/http/HttpServletResponse;->setStatus(I)V

    goto :goto_0

    .line 749
    .end local v2    # "ifModifiedSince":J
    .end local v4    # "lastModified":J
    :cond_2
    const-string v7, "HEAD"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 750
    invoke-virtual {p0, p1}, Ljavax/servlet/http/HttpServlet;->getLastModified(Ljavax/servlet/http/HttpServletRequest;)J

    move-result-wide v4

    .line 751
    .restart local v4    # "lastModified":J
    invoke-direct {p0, p2, v4, v5}, Ljavax/servlet/http/HttpServlet;->maybeSetLastModified(Ljavax/servlet/http/HttpServletResponse;J)V

    .line 752
    invoke-virtual {p0, p1, p2}, Ljavax/servlet/http/HttpServlet;->doHead(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_0

    .line 754
    .end local v4    # "lastModified":J
    :cond_3
    const-string v7, "POST"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 755
    invoke-virtual {p0, p1, p2}, Ljavax/servlet/http/HttpServlet;->doPost(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_0

    .line 757
    :cond_4
    const-string v7, "PUT"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 758
    invoke-virtual {p0, p1, p2}, Ljavax/servlet/http/HttpServlet;->doPut(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_0

    .line 760
    :cond_5
    const-string v7, "DELETE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 761
    invoke-virtual {p0, p1, p2}, Ljavax/servlet/http/HttpServlet;->doDelete(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_0

    .line 763
    :cond_6
    const-string v7, "OPTIONS"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 764
    invoke-virtual {p0, p1, p2}, Ljavax/servlet/http/HttpServlet;->doOptions(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_0

    .line 766
    :cond_7
    const-string v7, "TRACE"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 767
    invoke-virtual {p0, p1, p2}, Ljavax/servlet/http/HttpServlet;->doTrace(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_0

    .line 775
    :cond_8
    sget-object v7, Ljavax/servlet/http/HttpServlet;->lStrings:Ljava/util/ResourceBundle;

    const-string v8, "http.method_not_implemented"

    invoke-virtual {v7, v8}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 776
    .local v1, "errMsg":Ljava/lang/String;
    const/4 v7, 0x1

    new-array v0, v7, [Ljava/lang/Object;

    .line 777
    .local v0, "errArgs":[Ljava/lang/Object;
    const/4 v7, 0x0

    aput-object v6, v0, v7

    .line 778
    invoke-static {v1, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 780
    const/16 v7, 0x1f5

    invoke-interface {p2, v7, v1}, Ljavax/servlet/http/HttpServletResponse;->sendError(ILjava/lang/String;)V

    goto :goto_0
.end method
