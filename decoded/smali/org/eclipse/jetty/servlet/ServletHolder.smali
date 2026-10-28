.class public Lorg/eclipse/jetty/servlet/ServletHolder;
.super Lorg/eclipse/jetty/servlet/Holder;
.source "ServletHolder.java"

# interfaces
.implements Lorg/eclipse/jetty/server/UserIdentity$Scope;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/servlet/ServletHolder$SingleThreadedWrapper;,
        Lorg/eclipse/jetty/servlet/ServletHolder$Registration;,
        Lorg/eclipse/jetty/servlet/ServletHolder$Config;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/eclipse/jetty/servlet/Holder",
        "<",
        "Ljavax/servlet/Servlet;",
        ">;",
        "Lorg/eclipse/jetty/server/UserIdentity$Scope;",
        "Ljava/lang/Comparable;"
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field public static final NO_MAPPED_ROLES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private transient _config:Lorg/eclipse/jetty/servlet/ServletHolder$Config;

.field private transient _enabled:Z

.field private _forcedPath:Ljava/lang/String;

.field private _identityService:Lorg/eclipse/jetty/security/IdentityService;

.field private _initOnStartup:Z

.field private _initOrder:I

.field private _registration:Ljavax/servlet/ServletRegistration$Dynamic;

.field private _roleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _runAsRole:Ljava/lang/String;

.field private _runAsToken:Lorg/eclipse/jetty/security/RunAsToken;

.field private transient _servlet:Ljavax/servlet/Servlet;

.field private transient _unavailable:J

.field private transient _unavailableEx:Ljavax/servlet/UnavailableException;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-class v0, Lorg/eclipse/jetty/servlet/ServletHolder;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/servlet/ServletHolder;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 86
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/servlet/ServletHolder;->NO_MAPPED_ROLES:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lorg/eclipse/jetty/servlet/Holder$Source;->EMBEDDED:Lorg/eclipse/jetty/servlet/Holder$Source;

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHolder;-><init>(Lorg/eclipse/jetty/servlet/Holder$Source;)V

    .line 94
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljavax/servlet/Servlet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 138
    .local p1, "servlet":Ljava/lang/Class;, "Ljava/lang/Class<+Ljavax/servlet/Servlet;>;"
    sget-object v0, Lorg/eclipse/jetty/servlet/Holder$Source;->EMBEDDED:Lorg/eclipse/jetty/servlet/Holder$Source;

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHolder;-><init>(Lorg/eclipse/jetty/servlet/Holder$Source;)V

    .line 139
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/servlet/ServletHolder;->setHeldClass(Ljava/lang/Class;)V

    .line 140
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Ljavax/servlet/Servlet;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 118
    .local p2, "servlet":Ljava/lang/Class;, "Ljava/lang/Class<+Ljavax/servlet/Servlet;>;"
    sget-object v0, Lorg/eclipse/jetty/servlet/Holder$Source;->EMBEDDED:Lorg/eclipse/jetty/servlet/Holder$Source;

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHolder;-><init>(Lorg/eclipse/jetty/servlet/Holder$Source;)V

    .line 119
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/servlet/ServletHolder;->setName(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/servlet/ServletHolder;->setHeldClass(Ljava/lang/Class;)V

    .line 121
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/servlet/Servlet;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "servlet"    # Ljavax/servlet/Servlet;

    .prologue
    .line 128
    sget-object v0, Lorg/eclipse/jetty/servlet/Holder$Source;->EMBEDDED:Lorg/eclipse/jetty/servlet/Holder$Source;

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHolder;-><init>(Lorg/eclipse/jetty/servlet/Holder$Source;)V

    .line 129
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/servlet/ServletHolder;->setName(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/servlet/ServletHolder;->setServlet(Ljavax/servlet/Servlet;)V

    .line 131
    return-void
.end method

.method public constructor <init>(Ljavax/servlet/Servlet;)V
    .locals 1
    .param p1, "servlet"    # Ljavax/servlet/Servlet;

    .prologue
    .line 109
    sget-object v0, Lorg/eclipse/jetty/servlet/Holder$Source;->EMBEDDED:Lorg/eclipse/jetty/servlet/Holder$Source;

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHolder;-><init>(Lorg/eclipse/jetty/servlet/Holder$Source;)V

    .line 110
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/servlet/ServletHolder;->setServlet(Ljavax/servlet/Servlet;)V

    .line 111
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/servlet/Holder$Source;)V
    .locals 1
    .param p1, "creator"    # Lorg/eclipse/jetty/servlet/Holder$Source;

    .prologue
    .line 101
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/servlet/Holder;-><init>(Lorg/eclipse/jetty/servlet/Holder$Source;)V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_initOnStartup:Z

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_enabled:Z

    .line 102
    return-void
.end method

.method static synthetic access$100(Lorg/eclipse/jetty/servlet/ServletHolder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/servlet/ServletHolder;

    .prologue
    .line 66
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_runAsRole:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lorg/eclipse/jetty/servlet/ServletHolder;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/eclipse/jetty/servlet/ServletHolder;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_runAsRole:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lorg/eclipse/jetty/servlet/ServletHolder;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method static synthetic access$300(Lorg/eclipse/jetty/servlet/ServletHolder;)Lorg/eclipse/jetty/servlet/ServletHolder$Config;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/servlet/ServletHolder;

    .prologue
    .line 66
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_config:Lorg/eclipse/jetty/servlet/ServletHolder$Config;

    return-object v0
.end method

.method private initServlet()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 510
    const/4 v1, 0x0

    .line 513
    .local v1, "old_run_as":Ljava/lang/Object;
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    if-nez v2, :cond_0

    .line 514
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->newInstance()Ljavax/servlet/Servlet;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    .line 515
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_config:Lorg/eclipse/jetty/servlet/ServletHolder$Config;

    if-nez v2, :cond_1

    .line 516
    new-instance v2, Lorg/eclipse/jetty/servlet/ServletHolder$Config;

    invoke-direct {v2, p0}, Lorg/eclipse/jetty/servlet/ServletHolder$Config;-><init>(Lorg/eclipse/jetty/servlet/ServletHolder;)V

    iput-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_config:Lorg/eclipse/jetty/servlet/ServletHolder$Config;

    .line 519
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-eqz v2, :cond_2

    .line 521
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    invoke-interface {v3}, Lorg/eclipse/jetty/security/IdentityService;->getSystemUserIdentity()Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object v3

    iget-object v4, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_runAsToken:Lorg/eclipse/jetty/security/RunAsToken;

    invoke-interface {v2, v3, v4}, Lorg/eclipse/jetty/security/IdentityService;->setRunAs(Lorg/eclipse/jetty/server/UserIdentity;Lorg/eclipse/jetty/security/RunAsToken;)Ljava/lang/Object;

    move-result-object v1

    .line 525
    .end local v1    # "old_run_as":Ljava/lang/Object;
    :cond_2
    invoke-direct {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->isJspServlet()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 527
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->initJspServlet()V

    .line 530
    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->initMultiPart()V

    .line 532
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_config:Lorg/eclipse/jetty/servlet/ServletHolder$Config;

    invoke-interface {v2, v3}, Ljavax/servlet/Servlet;->init(Ljavax/servlet/ServletConfig;)V
    :try_end_0
    .catch Ljavax/servlet/UnavailableException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/servlet/ServletException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 558
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-eqz v2, :cond_4

    .line 559
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    invoke-interface {v2, v1}, Lorg/eclipse/jetty/security/IdentityService;->unsetRunAs(Ljava/lang/Object;)V

    .line 561
    :cond_4
    return-void

    .line 534
    :catch_0
    move-exception v0

    .line 536
    .local v0, "e":Ljavax/servlet/UnavailableException;
    :try_start_1
    invoke-direct {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->makeUnavailable(Ljavax/servlet/UnavailableException;)V

    .line 537
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    .line 538
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_config:Lorg/eclipse/jetty/servlet/ServletHolder$Config;

    .line 539
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 558
    .end local v0    # "e":Ljavax/servlet/UnavailableException;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-eqz v3, :cond_5

    .line 559
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    invoke-interface {v3, v1}, Lorg/eclipse/jetty/security/IdentityService;->unsetRunAs(Ljava/lang/Object;)V

    :cond_5
    throw v2

    .line 541
    :catch_1
    move-exception v0

    .line 543
    .local v0, "e":Ljavax/servlet/ServletException;
    :try_start_2
    invoke-virtual {v0}, Ljavax/servlet/ServletException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    if-nez v2, :cond_6

    move-object v2, v0

    :goto_0
    invoke-direct {p0, v2}, Lorg/eclipse/jetty/servlet/ServletHolder;->makeUnavailable(Ljava/lang/Throwable;)V

    .line 544
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    .line 545
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_config:Lorg/eclipse/jetty/servlet/ServletHolder$Config;

    .line 546
    throw v0

    .line 543
    :cond_6
    invoke-virtual {v0}, Ljavax/servlet/ServletException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    goto :goto_0

    .line 548
    .end local v0    # "e":Ljavax/servlet/ServletException;
    :catch_2
    move-exception v0

    .line 550
    .local v0, "e":Ljava/lang/Exception;
    invoke-direct {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->makeUnavailable(Ljava/lang/Throwable;)V

    .line 551
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    .line 552
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_config:Lorg/eclipse/jetty/servlet/ServletHolder$Config;

    .line 553
    new-instance v2, Ljavax/servlet/ServletException;

    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method private isJspServlet()Z
    .locals 3

    .prologue
    .line 710
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    if-nez v2, :cond_1

    .line 711
    const/4 v1, 0x0

    .line 722
    :cond_0
    return v1

    .line 713
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 715
    .local v0, "c":Ljava/lang/Class;
    const/4 v1, 0x0

    .line 716
    .local v1, "result":Z
    :goto_0
    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    .line 718
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lorg/eclipse/jetty/servlet/ServletHolder;->isJspServlet(Ljava/lang/String;)Z

    move-result v1

    .line 719
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method private isJspServlet(Ljava/lang/String;)Z
    .locals 1
    .param p1, "classname"    # Ljava/lang/String;

    .prologue
    .line 729
    if-nez p1, :cond_0

    .line 730
    const/4 v0, 0x0

    .line 731
    :goto_0
    return v0

    :cond_0
    const-string v0, "org.apache.jasper.servlet.JspServlet"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method private makeUnavailable(Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 487
    instance-of v1, p1, Ljavax/servlet/UnavailableException;

    if-eqz v1, :cond_0

    .line 488
    check-cast p1, Ljavax/servlet/UnavailableException;

    .end local p1    # "e":Ljava/lang/Throwable;
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/servlet/ServletHolder;->makeUnavailable(Ljavax/servlet/UnavailableException;)V

    .line 504
    :goto_0
    return-void

    .line 491
    .restart local p1    # "e":Ljava/lang/Throwable;
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    .line 492
    .local v0, "ctx":Ljavax/servlet/ServletContext;
    if-nez v0, :cond_1

    .line 493
    sget-object v1, Lorg/eclipse/jetty/servlet/ServletHolder;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "unavailable"

    invoke-interface {v1, v2, p1}, Lorg/eclipse/jetty/util/log/Logger;->info(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 496
    :goto_1
    new-instance v1, Lorg/eclipse/jetty/servlet/ServletHolder$1;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-direct {v1, p0, v2, v3, p1}, Lorg/eclipse/jetty/servlet/ServletHolder$1;-><init>(Lorg/eclipse/jetty/servlet/ServletHolder;Ljava/lang/String;ILjava/lang/Throwable;)V

    iput-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailableEx:Ljavax/servlet/UnavailableException;

    .line 502
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailable:J

    goto :goto_0

    .line 495
    :cond_1
    const-string v1, "unavailable"

    invoke-interface {v0, v1, p1}, Ljavax/servlet/ServletContext;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method private makeUnavailable(Ljavax/servlet/UnavailableException;)V
    .locals 6
    .param p1, "e"    # Ljavax/servlet/UnavailableException;

    .prologue
    const-wide/16 v4, -0x1

    .line 465
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailableEx:Ljavax/servlet/UnavailableException;

    if-ne v0, p1, :cond_0

    iget-wide v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailable:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 481
    :goto_0
    return-void

    .line 468
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    const-string v1, "unavailable"

    invoke-interface {v0, v1, p1}, Ljavax/servlet/ServletContext;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 470
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailableEx:Ljavax/servlet/UnavailableException;

    .line 471
    iput-wide v4, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailable:J

    .line 472
    invoke-virtual {p1}, Ljavax/servlet/UnavailableException;->isPermanent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 473
    iput-wide v4, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailable:J

    goto :goto_0

    .line 476
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailableEx:Ljavax/servlet/UnavailableException;

    invoke-virtual {v0}, Ljavax/servlet/UnavailableException;->getUnavailableSeconds()I

    move-result v0

    if-lez v0, :cond_2

    .line 477
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailableEx:Ljavax/servlet/UnavailableException;

    invoke-virtual {v2}, Ljavax/servlet/UnavailableException;->getUnavailableSeconds()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailable:J

    goto :goto_0

    .line 479
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x1388

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailable:J

    goto :goto_0
.end method


# virtual methods
.method public checkServletType()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/UnavailableException;
        }
    .end annotation

    .prologue
    .line 436
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_class:Ljava/lang/Class;

    if-eqz v0, :cond_0

    const-class v0, Ljavax/servlet/Servlet;

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_class:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 438
    :cond_0
    new-instance v0, Ljavax/servlet/UnavailableException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Servlet "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_class:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a javax.servlet.Servlet"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/servlet/UnavailableException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 440
    :cond_1
    return-void
.end method

.method public compareTo(Ljava/lang/Object;)I
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 192
    instance-of v3, p1, Lorg/eclipse/jetty/servlet/ServletHolder;

    if-eqz v3, :cond_5

    move-object v1, p1

    .line 194
    check-cast v1, Lorg/eclipse/jetty/servlet/ServletHolder;

    .line 195
    .local v1, "sh":Lorg/eclipse/jetty/servlet/ServletHolder;
    if-ne v1, p0, :cond_1

    .line 207
    .end local v1    # "sh":Lorg/eclipse/jetty/servlet/ServletHolder;
    :cond_0
    :goto_0
    return v0

    .line 197
    .restart local v1    # "sh":Lorg/eclipse/jetty/servlet/ServletHolder;
    :cond_1
    iget v3, v1, Lorg/eclipse/jetty/servlet/ServletHolder;->_initOrder:I

    iget v4, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_initOrder:I

    if-ge v3, v4, :cond_2

    move v0, v2

    .line 198
    goto :goto_0

    .line 199
    :cond_2
    iget v2, v1, Lorg/eclipse/jetty/servlet/ServletHolder;->_initOrder:I

    iget v3, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_initOrder:I

    if-le v2, v3, :cond_3

    .line 200
    const/4 v0, -0x1

    goto :goto_0

    .line 202
    :cond_3
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_className:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, v1, Lorg/eclipse/jetty/servlet/ServletHolder;->_className:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_className:Ljava/lang/String;

    iget-object v3, v1, Lorg/eclipse/jetty/servlet/ServletHolder;->_className:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 203
    .local v0, "c":I
    :cond_4
    if-nez v0, :cond_0

    .line 204
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_name:Ljava/lang/String;

    iget-object v3, v1, Lorg/eclipse/jetty/servlet/ServletHolder;->_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .end local v0    # "c":I
    .end local v1    # "sh":Lorg/eclipse/jetty/servlet/ServletHolder;
    :cond_5
    move v0, v2

    .line 207
    goto :goto_0
.end method

.method public destroyInstance(Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 391
    if-nez p1, :cond_0

    .line 396
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 393
    check-cast v0, Ljavax/servlet/Servlet;

    .line 394
    .local v0, "servlet":Ljavax/servlet/Servlet;
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->destroyServlet(Ljavax/servlet/Servlet;)V

    .line 395
    invoke-interface {v0}, Ljavax/servlet/Servlet;->destroy()V

    goto :goto_0
.end method

.method public doStart()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 290
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailable:J

    .line 291
    iget-boolean v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_enabled:Z

    if-nez v2, :cond_1

    .line 354
    :cond_0
    :goto_0
    return-void

    .line 298
    :cond_1
    :try_start_0
    invoke-super {p0}, Lorg/eclipse/jetty/servlet/Holder;->doStart()V
    :try_end_0
    .catch Ljavax/servlet/UnavailableException; {:try_start_0 .. :try_end_0} :catch_1

    .line 316
    :try_start_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->checkServletType()V
    :try_end_1
    .catch Ljavax/servlet/UnavailableException; {:try_start_1 .. :try_end_1} :catch_2

    .line 331
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v2}, Lorg/eclipse/jetty/servlet/ServletHandler;->getIdentityService()Lorg/eclipse/jetty/security/IdentityService;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    .line 332
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_runAsRole:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 333
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_runAsRole:Ljava/lang/String;

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/security/IdentityService;->newRunAsToken(Ljava/lang/String;)Lorg/eclipse/jetty/security/RunAsToken;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_runAsToken:Lorg/eclipse/jetty/security/RunAsToken;

    .line 335
    :cond_2
    new-instance v2, Lorg/eclipse/jetty/servlet/ServletHolder$Config;

    invoke-direct {v2, p0}, Lorg/eclipse/jetty/servlet/ServletHolder$Config;-><init>(Lorg/eclipse/jetty/servlet/ServletHolder;)V

    iput-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_config:Lorg/eclipse/jetty/servlet/ServletHolder$Config;

    .line 337
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_class:Ljava/lang/Class;

    if-eqz v2, :cond_3

    const-class v2, Ljavax/servlet/SingleThreadModel;

    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_class:Ljava/lang/Class;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 338
    new-instance v2, Lorg/eclipse/jetty/servlet/ServletHolder$SingleThreadedWrapper;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/eclipse/jetty/servlet/ServletHolder$SingleThreadedWrapper;-><init>(Lorg/eclipse/jetty/servlet/ServletHolder;Lorg/eclipse/jetty/servlet/ServletHolder$1;)V

    iput-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    .line 340
    :cond_3
    iget-boolean v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_extInstance:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_initOnStartup:Z

    if-eqz v2, :cond_0

    .line 344
    :cond_4
    :try_start_2
    invoke-direct {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->initServlet()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 346
    :catch_0
    move-exception v0

    .line 348
    .local v0, "e":Ljava/lang/Exception;
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v2}, Lorg/eclipse/jetty/servlet/ServletHandler;->isStartWithUnavailable()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 349
    sget-object v2, Lorg/eclipse/jetty/servlet/ServletHolder;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 300
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 302
    .local v1, "ue":Ljavax/servlet/UnavailableException;
    invoke-direct {p0, v1}, Lorg/eclipse/jetty/servlet/ServletHolder;->makeUnavailable(Ljavax/servlet/UnavailableException;)V

    .line 303
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v2}, Lorg/eclipse/jetty/servlet/ServletHandler;->isStartWithUnavailable()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 305
    sget-object v2, Lorg/eclipse/jetty/servlet/ServletHolder;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 309
    :cond_5
    throw v1

    .line 318
    .end local v1    # "ue":Ljavax/servlet/UnavailableException;
    :catch_2
    move-exception v1

    .line 320
    .restart local v1    # "ue":Ljavax/servlet/UnavailableException;
    invoke-direct {p0, v1}, Lorg/eclipse/jetty/servlet/ServletHolder;->makeUnavailable(Ljavax/servlet/UnavailableException;)V

    .line 321
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v2}, Lorg/eclipse/jetty/servlet/ServletHandler;->isStartWithUnavailable()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 323
    sget-object v2, Lorg/eclipse/jetty/servlet/ServletHolder;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v1}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 327
    :cond_6
    throw v1

    .line 351
    .end local v1    # "ue":Ljavax/servlet/UnavailableException;
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_7
    throw v0
.end method

.method public doStop()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 360
    const/4 v1, 0x0

    .line 361
    .local v1, "old_run_as":Ljava/lang/Object;
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    if-eqz v2, :cond_1

    .line 365
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-eqz v2, :cond_0

    .line 366
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    invoke-interface {v3}, Lorg/eclipse/jetty/security/IdentityService;->getSystemUserIdentity()Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object v3

    iget-object v4, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_runAsToken:Lorg/eclipse/jetty/security/RunAsToken;

    invoke-interface {v2, v3, v4}, Lorg/eclipse/jetty/security/IdentityService;->setRunAs(Lorg/eclipse/jetty/server/UserIdentity;Lorg/eclipse/jetty/security/RunAsToken;)Ljava/lang/Object;

    move-result-object v1

    .line 368
    .end local v1    # "old_run_as":Ljava/lang/Object;
    :cond_0
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/servlet/ServletHolder;->destroyInstance(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-eqz v2, :cond_1

    .line 377
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    invoke-interface {v2, v1}, Lorg/eclipse/jetty/security/IdentityService;->unsetRunAs(Ljava/lang/Object;)V

    .line 381
    :cond_1
    :goto_0
    iget-boolean v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_extInstance:Z

    if-nez v2, :cond_2

    .line 382
    iput-object v5, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    .line 384
    :cond_2
    iput-object v5, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_config:Lorg/eclipse/jetty/servlet/ServletHolder$Config;

    .line 385
    return-void

    .line 370
    :catch_0
    move-exception v0

    .line 372
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v2, Lorg/eclipse/jetty/servlet/ServletHolder;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 376
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-eqz v2, :cond_1

    .line 377
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    invoke-interface {v2, v1}, Lorg/eclipse/jetty/security/IdentityService;->unsetRunAs(Ljava/lang/Object;)V

    goto :goto_0

    .line 376
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-eqz v3, :cond_3

    .line 377
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    invoke-interface {v3, v1}, Lorg/eclipse/jetty/security/IdentityService;->unsetRunAs(Ljava/lang/Object;)V

    :cond_3
    throw v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 213
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/servlet/ServletHolder;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getContextPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 614
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_config:Lorg/eclipse/jetty/servlet/ServletHolder$Config;

    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletHolder$Config;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    invoke-interface {v0}, Ljavax/servlet/ServletContext;->getContextPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getForcedPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_forcedPath:Ljava/lang/String;

    return-object v0
.end method

.method public getInitOrder()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_initOrder:I

    return v0
.end method

.method public getRegistration()Ljavax/servlet/ServletRegistration$Dynamic;
    .locals 1

    .prologue
    .line 849
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_registration:Ljavax/servlet/ServletRegistration$Dynamic;

    if-nez v0, :cond_0

    .line 850
    new-instance v0, Lorg/eclipse/jetty/servlet/ServletHolder$Registration;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/servlet/ServletHolder$Registration;-><init>(Lorg/eclipse/jetty/servlet/ServletHolder;)V

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_registration:Ljavax/servlet/ServletRegistration$Dynamic;

    .line 851
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_registration:Ljavax/servlet/ServletRegistration$Dynamic;

    return-object v0
.end method

.method public getRoleMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 253
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_roleMap:Ljava/util/Map;

    if-nez v0, :cond_0

    sget-object v0, Lorg/eclipse/jetty/servlet/ServletHolder;->NO_MAPPED_ROLES:Ljava/util/Map;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_roleMap:Ljava/util/Map;

    goto :goto_0
.end method

.method public getRoleRefMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 623
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_roleMap:Ljava/util/Map;

    return-object v0
.end method

.method public getRunAsRole()Ljava/lang/String;
    .locals 1

    .prologue
    .line 629
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_runAsRole:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized getServlet()Ljavax/servlet/Servlet;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    const-wide/16 v2, 0x0

    .line 406
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailable:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 408
    iget-wide v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailable:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailable:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailable:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 409
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailableEx:Ljavax/servlet/UnavailableException;

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 406
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 410
    :cond_1
    const-wide/16 v0, 0x0

    :try_start_1
    iput-wide v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailable:J

    .line 411
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailableEx:Ljavax/servlet/UnavailableException;

    .line 414
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    if-nez v0, :cond_3

    .line 415
    invoke-direct {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->initServlet()V

    .line 416
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0
.end method

.method public getServletInstance()Ljavax/servlet/Servlet;
    .locals 1

    .prologue
    .line 425
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    return-object v0
.end method

.method public getUnavailableException()Ljavax/servlet/UnavailableException;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailableEx:Ljavax/servlet/UnavailableException;

    return-object v0
.end method

.method public getUserRoleLink(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 244
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_roleMap:Ljava/util/Map;

    if-nez v1, :cond_1

    .line 247
    .end local p1    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p1

    .line 246
    .restart local p1    # "name":Ljava/lang/String;
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_roleMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 247
    .local v0, "link":Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object p1, v0

    goto :goto_0
.end method

.method public handle(Lorg/eclipse/jetty/server/Request;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    .locals 10
    .param p1, "baseRequest"    # Lorg/eclipse/jetty/server/Request;
    .param p2, "request"    # Ljavax/servlet/ServletRequest;
    .param p3, "response"    # Ljavax/servlet/ServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljavax/servlet/UnavailableException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 648
    iget-object v6, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_class:Ljava/lang/Class;

    if-nez v6, :cond_0

    .line 649
    new-instance v6, Ljavax/servlet/UnavailableException;

    const-string v7, "Servlet Not Initialized"

    invoke-direct {v6, v7}, Ljavax/servlet/UnavailableException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 651
    :cond_0
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    .line 652
    .local v3, "servlet":Ljavax/servlet/Servlet;
    monitor-enter p0

    .line 654
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->isStarted()Z

    move-result v6

    if-nez v6, :cond_1

    .line 655
    new-instance v6, Ljavax/servlet/UnavailableException;

    const-string v7, "Servlet not initialized"

    const/4 v8, -0x1

    invoke-direct {v6, v7, v8}, Ljavax/servlet/UnavailableException;-><init>(Ljava/lang/String;I)V

    throw v6

    .line 660
    :catchall_0
    move-exception v6

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6

    .line 656
    :cond_1
    :try_start_1
    iget-wide v6, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailable:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_2

    iget-boolean v6, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_initOnStartup:Z

    if-nez v6, :cond_3

    .line 657
    :cond_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->getServlet()Ljavax/servlet/Servlet;

    move-result-object v3

    .line 658
    :cond_3
    if-nez v3, :cond_4

    .line 659
    new-instance v6, Ljavax/servlet/UnavailableException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Could not instantiate "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_class:Ljava/lang/Class;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljavax/servlet/UnavailableException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 660
    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 663
    const/4 v4, 0x1

    .line 664
    .local v4, "servlet_error":Z
    const/4 v2, 0x0

    .line 665
    .local v2, "old_run_as":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Request;->isAsyncSupported()Z

    move-result v5

    .line 669
    .local v5, "suspendable":Z
    :try_start_2
    iget-object v6, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_forcedPath:Ljava/lang/String;

    if-eqz v6, :cond_5

    .line 671
    const-string v6, "org.apache.catalina.jsp_file"

    iget-object v7, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_forcedPath:Ljava/lang/String;

    invoke-interface {p2, v6, v7}, Ljavax/servlet/ServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 674
    :cond_5
    iget-object v6, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-eqz v6, :cond_6

    .line 675
    iget-object v6, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Request;->getResolvedUserIdentity()Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object v7

    iget-object v8, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_runAsToken:Lorg/eclipse/jetty/security/RunAsToken;

    invoke-interface {v6, v7, v8}, Lorg/eclipse/jetty/security/IdentityService;->setRunAs(Lorg/eclipse/jetty/server/UserIdentity;Lorg/eclipse/jetty/security/RunAsToken;)Ljava/lang/Object;

    move-result-object v2

    .line 677
    .end local v2    # "old_run_as":Ljava/lang/Object;
    :cond_6
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->isAsyncSupported()Z

    move-result v6

    if-nez v6, :cond_7

    .line 678
    const/4 v6, 0x0

    invoke-virtual {p1, v6}, Lorg/eclipse/jetty/server/Request;->setAsyncSupported(Z)V

    .line 680
    :cond_7
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->getRegistration()Ljavax/servlet/ServletRegistration$Dynamic;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jetty/servlet/ServletHolder$Registration;

    invoke-virtual {v6}, Lorg/eclipse/jetty/servlet/ServletHolder$Registration;->getMultipartConfig()Ljavax/servlet/MultipartConfigElement;

    move-result-object v1

    .line 681
    .local v1, "mpce":Ljavax/servlet/MultipartConfigElement;
    if-eqz v1, :cond_8

    .line 682
    const-string v6, "org.eclipse.multipartConfig"

    invoke-interface {p2, v6, v1}, Ljavax/servlet/ServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 684
    :cond_8
    invoke-interface {v3, p2, p3}, Ljavax/servlet/Servlet;->service(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    :try_end_2
    .catch Ljavax/servlet/UnavailableException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 685
    const/4 v4, 0x0

    .line 694
    invoke-virtual {p1, v5}, Lorg/eclipse/jetty/server/Request;->setAsyncSupported(Z)V

    .line 697
    iget-object v6, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-eqz v6, :cond_9

    .line 698
    iget-object v6, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    invoke-interface {v6, v2}, Lorg/eclipse/jetty/security/IdentityService;->unsetRunAs(Ljava/lang/Object;)V

    .line 701
    :cond_9
    if-eqz v4, :cond_a

    .line 702
    const-string v6, "javax.servlet.error.servlet_name"

    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p2, v6, v7}, Ljavax/servlet/ServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 704
    :cond_a
    return-void

    .line 687
    .end local v1    # "mpce":Ljavax/servlet/MultipartConfigElement;
    :catch_0
    move-exception v0

    .line 689
    .local v0, "e":Ljavax/servlet/UnavailableException;
    :try_start_3
    invoke-direct {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->makeUnavailable(Ljavax/servlet/UnavailableException;)V

    .line 690
    iget-object v6, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailableEx:Ljavax/servlet/UnavailableException;

    throw v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 694
    .end local v0    # "e":Ljavax/servlet/UnavailableException;
    :catchall_1
    move-exception v6

    invoke-virtual {p1, v5}, Lorg/eclipse/jetty/server/Request;->setAsyncSupported(Z)V

    .line 697
    iget-object v7, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    if-eqz v7, :cond_b

    .line 698
    iget-object v7, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_identityService:Lorg/eclipse/jetty/security/IdentityService;

    invoke-interface {v7, v2}, Lorg/eclipse/jetty/security/IdentityService;->unsetRunAs(Ljava/lang/Object;)V

    .line 701
    :cond_b
    if-eqz v4, :cond_c

    .line 702
    const-string v7, "javax.servlet.error.servlet_name"

    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p2, v7, v8}, Ljavax/servlet/ServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_c
    throw v6
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_name:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method protected initJspServlet()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 570
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object v0

    .line 573
    .local v0, "ch":Lorg/eclipse/jetty/server/handler/ContextHandler;
    const-string v2, "org.apache.catalina.jsp_classpath"

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getClassPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/eclipse/jetty/server/handler/ContextHandler;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 576
    const-string v2, "com.sun.appserv.jsp.classpath"

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-static {v3}, Lorg/eclipse/jetty/util/Loader;->getClassPath(Ljava/lang/ClassLoader;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Lorg/eclipse/jetty/servlet/ServletHolder;->setInitParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 579
    const-string v2, "?"

    const-string v3, "classpath"

    invoke-virtual {p0, v3}, Lorg/eclipse/jetty/servlet/ServletHolder;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 581
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getClassPath()Ljava/lang/String;

    move-result-object v1

    .line 582
    .local v1, "classpath":Ljava/lang/String;
    sget-object v2, Lorg/eclipse/jetty/servlet/ServletHolder;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "classpath="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 583
    if-eqz v1, :cond_0

    .line 584
    const-string v2, "classpath"

    invoke-virtual {p0, v2, v1}, Lorg/eclipse/jetty/servlet/ServletHolder;->setInitParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 586
    .end local v1    # "classpath":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected initMultiPart()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 599
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->getRegistration()Ljavax/servlet/ServletRegistration$Dynamic;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/servlet/ServletHolder$Registration;

    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletHolder$Registration;->getMultipartConfig()Ljavax/servlet/MultipartConfigElement;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 603
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v1

    invoke-virtual {v1}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object v0

    .line 604
    .local v0, "ch":Lorg/eclipse/jetty/server/handler/ContextHandler;
    new-instance v1, Lorg/eclipse/jetty/server/Request$MultiPartCleanerListener;

    invoke-direct {v1}, Lorg/eclipse/jetty/server/Request$MultiPartCleanerListener;-><init>()V

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/handler/ContextHandler;->addEventListener(Ljava/util/EventListener;)V

    .line 606
    .end local v0    # "ch":Lorg/eclipse/jetty/server/handler/ContextHandler;
    :cond_0
    return-void
.end method

.method public isAvailable()Z
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x1

    .line 448
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-wide v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailable:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 459
    :cond_0
    :goto_0
    return v1

    .line 452
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->getServlet()Ljavax/servlet/Servlet;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 459
    :goto_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->isStarted()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_unavailable:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    .line 454
    :catch_0
    move-exception v0

    .line 456
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lorg/eclipse/jetty/servlet/ServletHolder;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 276
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_enabled:Z

    return v0
.end method

.method public isSetInitOrder()Z
    .locals 1

    .prologue
    .line 184
    iget-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_initOnStartup:Z

    return v0
.end method

.method protected newInstance()Ljavax/servlet/Servlet;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    .prologue
    .line 954
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v3

    invoke-virtual {v3}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v1

    .line 955
    .local v1, "ctx":Ljavax/servlet/ServletContext;
    if-nez v1, :cond_0

    .line 956
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->getHeldClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavax/servlet/Servlet;

    .line 957
    .end local v1    # "ctx":Ljavax/servlet/ServletContext;
    :goto_0
    return-object v3

    .restart local v1    # "ctx":Ljavax/servlet/ServletContext;
    :cond_0
    check-cast v1, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;

    .end local v1    # "ctx":Ljavax/servlet/ServletContext;
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->getHeldClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->createServlet(Ljava/lang/Class;)Ljavax/servlet/Servlet;
    :try_end_0
    .catch Ljavax/servlet/ServletException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    goto :goto_0

    .line 959
    :catch_0
    move-exception v2

    .line 961
    .local v2, "se":Ljavax/servlet/ServletException;
    invoke-virtual {v2}, Ljavax/servlet/ServletException;->getRootCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 962
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v3, v0, Ljava/lang/InstantiationException;

    if-eqz v3, :cond_1

    .line 963
    check-cast v0, Ljava/lang/InstantiationException;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 964
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_1
    instance-of v3, v0, Ljava/lang/IllegalAccessException;

    if-eqz v3, :cond_2

    .line 965
    check-cast v0, Ljava/lang/IllegalAccessException;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 966
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_2
    throw v2
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 282
    iput-boolean p1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_enabled:Z

    .line 283
    return-void
.end method

.method public setForcedPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "forcedPath"    # Ljava/lang/String;

    .prologue
    .line 271
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_forcedPath:Ljava/lang/String;

    .line 272
    return-void
.end method

.method public setInitOrder(I)V
    .locals 1
    .param p1, "order"    # I

    .prologue
    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_initOnStartup:Z

    .line 179
    iput p1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_initOrder:I

    .line 180
    return-void
.end method

.method public setRunAsRole(Ljava/lang/String;)V
    .locals 0
    .param p1, "role"    # Ljava/lang/String;

    .prologue
    .line 635
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_runAsRole:Ljava/lang/String;

    .line 636
    return-void
.end method

.method public declared-synchronized setServlet(Ljavax/servlet/Servlet;)V
    .locals 2
    .param p1, "servlet"    # Ljavax/servlet/Servlet;

    .prologue
    .line 154
    monitor-enter p0

    if-eqz p1, :cond_0

    :try_start_0
    instance-of v0, p1, Ljavax/servlet/SingleThreadModel;

    if-eqz v0, :cond_1

    .line 155
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 154
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 157
    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_extInstance:Z

    .line 158
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_servlet:Ljavax/servlet/Servlet;

    .line 159
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->setHeldClass(Ljava/lang/Class;)V

    .line 160
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/ServletHolder;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/ServletHolder;->setName(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 162
    :cond_2
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setUserRoleLink(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "link"    # Ljava/lang/String;

    .prologue
    .line 231
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_roleMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 232
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_roleMap:Ljava/util/Map;

    .line 233
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletHolder;->_roleMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    monitor-exit p0

    return-void

    .line 231
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
