.class public Lorg/eclipse/jetty/servlet/FilterHolder;
.super Lorg/eclipse/jetty/servlet/Holder;
.source "FilterHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/servlet/FilterHolder$Config;,
        Lorg/eclipse/jetty/servlet/FilterHolder$Registration;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/eclipse/jetty/servlet/Holder",
        "<",
        "Ljavax/servlet/Filter;",
        ">;"
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private transient _config:Lorg/eclipse/jetty/servlet/FilterHolder$Config;

.field private transient _filter:Ljavax/servlet/Filter;

.field private transient _registration:Ljavax/servlet/FilterRegistration$Dynamic;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lorg/eclipse/jetty/servlet/FilterHolder;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/servlet/FilterHolder;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lorg/eclipse/jetty/servlet/Holder$Source;->EMBEDDED:Lorg/eclipse/jetty/servlet/Holder$Source;

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/servlet/FilterHolder;-><init>(Lorg/eclipse/jetty/servlet/Holder$Source;)V

    .line 57
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljavax/servlet/Filter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, "filter":Ljava/lang/Class;, "Ljava/lang/Class<+Ljavax/servlet/Filter;>;"
    sget-object v0, Lorg/eclipse/jetty/servlet/Holder$Source;->EMBEDDED:Lorg/eclipse/jetty/servlet/Holder$Source;

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/servlet/FilterHolder;-><init>(Lorg/eclipse/jetty/servlet/Holder$Source;)V

    .line 73
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/servlet/FilterHolder;->setHeldClass(Ljava/lang/Class;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Ljavax/servlet/Filter;)V
    .locals 1
    .param p1, "filter"    # Ljavax/servlet/Filter;

    .prologue
    .line 81
    sget-object v0, Lorg/eclipse/jetty/servlet/Holder$Source;->EMBEDDED:Lorg/eclipse/jetty/servlet/Holder$Source;

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/servlet/FilterHolder;-><init>(Lorg/eclipse/jetty/servlet/Holder$Source;)V

    .line 82
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/servlet/FilterHolder;->setFilter(Ljavax/servlet/Filter;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/servlet/Holder$Source;)V
    .locals 0
    .param p1, "source"    # Lorg/eclipse/jetty/servlet/Holder$Source;

    .prologue
    .line 64
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/servlet/Holder;-><init>(Lorg/eclipse/jetty/servlet/Holder$Source;)V

    .line 65
    return-void
.end method


# virtual methods
.method public destroyInstance(Ljava/lang/Object;)V
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 149
    if-nez p1, :cond_0

    .line 154
    :goto_0
    return-void

    :cond_0
    move-object v0, p1

    .line 151
    check-cast v0, Ljavax/servlet/Filter;

    .line 152
    .local v0, "f":Ljavax/servlet/Filter;
    invoke-interface {v0}, Ljavax/servlet/Filter;->destroy()V

    .line 153
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/FilterHolder;->getServletHandler()Lorg/eclipse/jetty/servlet/ServletHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/servlet/ServletHandler;->destroyFilter(Ljavax/servlet/Filter;)V

    goto :goto_0
.end method

.method public doStart()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 90
    invoke-super {p0}, Lorg/eclipse/jetty/servlet/Holder;->doStart()V

    .line 92
    const-class v3, Ljavax/servlet/Filter;

    iget-object v4, p0, Lorg/eclipse/jetty/servlet/FilterHolder;->_class:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/eclipse/jetty/servlet/FilterHolder;->_class:Ljava/lang/Class;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not a javax.servlet.Filter"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 96
    .local v1, "msg":Ljava/lang/String;
    invoke-super {p0}, Lorg/eclipse/jetty/servlet/Holder;->stop()V

    .line 97
    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 100
    .end local v1    # "msg":Ljava/lang/String;
    :cond_0
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/FilterHolder;->_filter:Ljavax/servlet/Filter;

    if-nez v3, :cond_1

    .line 104
    :try_start_0
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/FilterHolder;->_servletHandler:Lorg/eclipse/jetty/servlet/ServletHandler;

    invoke-virtual {v3}, Lorg/eclipse/jetty/servlet/ServletHandler;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v3

    check-cast v3, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;

    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/FilterHolder;->getHeldClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/eclipse/jetty/servlet/ServletContextHandler$Context;->createFilter(Ljava/lang/Class;)Ljavax/servlet/Filter;

    move-result-object v3

    iput-object v3, p0, Lorg/eclipse/jetty/servlet/FilterHolder;->_filter:Ljavax/servlet/Filter;
    :try_end_0
    .catch Ljavax/servlet/ServletException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    :cond_1
    new-instance v3, Lorg/eclipse/jetty/servlet/FilterHolder$Config;

    invoke-direct {v3, p0}, Lorg/eclipse/jetty/servlet/FilterHolder$Config;-><init>(Lorg/eclipse/jetty/servlet/FilterHolder;)V

    iput-object v3, p0, Lorg/eclipse/jetty/servlet/FilterHolder;->_config:Lorg/eclipse/jetty/servlet/FilterHolder$Config;

    .line 118
    iget-object v3, p0, Lorg/eclipse/jetty/servlet/FilterHolder;->_filter:Ljavax/servlet/Filter;

    iget-object v4, p0, Lorg/eclipse/jetty/servlet/FilterHolder;->_config:Lorg/eclipse/jetty/servlet/FilterHolder$Config;

    invoke-interface {v3, v4}, Ljavax/servlet/Filter;->init(Ljavax/servlet/FilterConfig;)V

    .line 119
    return-void

    .line 106
    :catch_0
    move-exception v2

    .line 108
    .local v2, "se":Ljavax/servlet/ServletException;
    invoke-virtual {v2}, Ljavax/servlet/ServletException;->getRootCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 109
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v3, v0, Ljava/lang/InstantiationException;

    if-eqz v3, :cond_2

    .line 110
    check-cast v0, Ljava/lang/InstantiationException;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 111
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_2
    instance-of v3, v0, Ljava/lang/IllegalAccessException;

    if-eqz v3, :cond_3

    .line 112
    check-cast v0, Ljava/lang/IllegalAccessException;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 113
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_3
    throw v2
.end method

.method public doStop()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 126
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/FilterHolder;->_filter:Ljavax/servlet/Filter;

    if-eqz v1, :cond_0

    .line 130
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/FilterHolder;->_filter:Ljavax/servlet/Filter;

    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/servlet/FilterHolder;->destroyInstance(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    :cond_0
    :goto_0
    iget-boolean v1, p0, Lorg/eclipse/jetty/servlet/FilterHolder;->_extInstance:Z

    if-nez v1, :cond_1

    .line 138
    iput-object v2, p0, Lorg/eclipse/jetty/servlet/FilterHolder;->_filter:Ljavax/servlet/Filter;

    .line 140
    :cond_1
    iput-object v2, p0, Lorg/eclipse/jetty/servlet/FilterHolder;->_config:Lorg/eclipse/jetty/servlet/FilterHolder$Config;

    .line 141
    invoke-super {p0}, Lorg/eclipse/jetty/servlet/Holder;->doStop()V

    .line 142
    return-void

    .line 132
    :catch_0
    move-exception v0

    .line 134
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lorg/eclipse/jetty/servlet/FilterHolder;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public getFilter()Ljavax/servlet/Filter;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/FilterHolder;->_filter:Ljavax/servlet/Filter;

    return-object v0
.end method

.method public getRegistration()Ljavax/servlet/FilterRegistration$Dynamic;
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/FilterHolder;->_registration:Ljavax/servlet/FilterRegistration$Dynamic;

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Lorg/eclipse/jetty/servlet/FilterHolder$Registration;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/servlet/FilterHolder$Registration;-><init>(Lorg/eclipse/jetty/servlet/FilterHolder;)V

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/FilterHolder;->_registration:Ljavax/servlet/FilterRegistration$Dynamic;

    .line 184
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/FilterHolder;->_registration:Ljavax/servlet/FilterRegistration$Dynamic;

    return-object v0
.end method

.method public declared-synchronized setFilter(Ljavax/servlet/Filter;)V
    .locals 1
    .param p1, "filter"    # Ljavax/servlet/Filter;

    .prologue
    .line 159
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/FilterHolder;->_filter:Ljavax/servlet/Filter;

    .line 160
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/FilterHolder;->_extInstance:Z

    .line 161
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/FilterHolder;->setHeldClass(Ljava/lang/Class;)V

    .line 162
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/FilterHolder;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 163
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/servlet/FilterHolder;->setName(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :cond_0
    monitor-exit p0

    return-void

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 176
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/FilterHolder;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
