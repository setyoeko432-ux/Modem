.class public Lorg/eclipse/jetty/continuation/ContinuationFilter;
.super Ljava/lang/Object;
.source "ContinuationFilter.java"

# interfaces
.implements Ljavax/servlet/Filter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/continuation/ContinuationFilter$FilteredContinuation;
    }
.end annotation


# static fields
.field static __debug:Z

.field static _initialized:Z


# instance fields
.field _context:Ljavax/servlet/ServletContext;

.field private _debug:Z

.field private _faux:Z

.field private _filtered:Z

.field private _jetty6:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    return-void
.end method

.method private debug(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 148
    iget-boolean v0, p0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_debug:Z

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_context:Ljavax/servlet/ServletContext;

    invoke-interface {v0, p1}, Ljavax/servlet/ServletContext;->log(Ljava/lang/String;)V

    .line 152
    :cond_0
    return-void
.end method

.method private debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "string"    # Ljava/lang/String;
    .param p2, "th"    # Ljava/lang/Throwable;

    .prologue
    .line 156
    iget-boolean v0, p0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_debug:Z

    if-eqz v0, :cond_0

    .line 158
    instance-of v0, p2, Lorg/eclipse/jetty/continuation/ContinuationThrowable;

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_context:Ljavax/servlet/ServletContext;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/servlet/ServletContext;->log(Ljava/lang/String;)V

    .line 163
    :cond_0
    :goto_0
    return-void

    .line 161
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_context:Ljavax/servlet/ServletContext;

    invoke-interface {v0, p1, p2}, Ljavax/servlet/ServletContext;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 167
    return-void
.end method

.method public doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljavax/servlet/FilterChain;)V
    .locals 8
    .param p1, "request"    # Ljavax/servlet/ServletRequest;
    .param p2, "response"    # Ljavax/servlet/ServletResponse;
    .param p3, "chain"    # Ljavax/servlet/FilterChain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 100
    iget-boolean v6, p0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_filtered:Z

    if-eqz v6, :cond_d

    .line 102
    const-string v6, "org.eclipse.jetty.continuation"

    invoke-interface {p1, v6}, Ljavax/servlet/ServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/continuation/Continuation;

    .line 104
    .local v0, "c":Lorg/eclipse/jetty/continuation/Continuation;
    iget-boolean v6, p0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_faux:Z

    if-eqz v6, :cond_5

    if-eqz v0, :cond_0

    instance-of v6, v0, Lorg/eclipse/jetty/continuation/FauxContinuation;

    if-nez v6, :cond_5

    .line 106
    :cond_0
    new-instance v3, Lorg/eclipse/jetty/continuation/FauxContinuation;

    invoke-direct {v3, p1}, Lorg/eclipse/jetty/continuation/FauxContinuation;-><init>(Ljavax/servlet/ServletRequest;)V

    .line 107
    .local v3, "fc":Lorg/eclipse/jetty/continuation/ContinuationFilter$FilteredContinuation;
    const-string v6, "org.eclipse.jetty.continuation"

    invoke-interface {p1, v6, v3}, Ljavax/servlet/ServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 112
    :goto_0
    const/4 v1, 0x0

    .line 113
    .local v1, "complete":Z
    :goto_1
    if-nez v1, :cond_e

    .line 117
    if-eqz v3, :cond_1

    :try_start_0
    invoke-interface {v3, p2}, Lorg/eclipse/jetty/continuation/ContinuationFilter$FilteredContinuation;->enter(Ljavax/servlet/ServletResponse;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 118
    :cond_1
    invoke-interface {p3, p1, p2}, Ljavax/servlet/FilterChain;->doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    :try_end_0
    .catch Lorg/eclipse/jetty/continuation/ContinuationThrowable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    :cond_2
    if-nez v3, :cond_3

    .line 127
    const-string v6, "org.eclipse.jetty.continuation"

    invoke-interface {p1, v6}, Ljavax/servlet/ServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "fc":Lorg/eclipse/jetty/continuation/ContinuationFilter$FilteredContinuation;
    check-cast v3, Lorg/eclipse/jetty/continuation/ContinuationFilter$FilteredContinuation;

    .line 129
    .restart local v3    # "fc":Lorg/eclipse/jetty/continuation/ContinuationFilter$FilteredContinuation;
    :cond_3
    if-eqz v3, :cond_4

    invoke-interface {v3}, Lorg/eclipse/jetty/continuation/ContinuationFilter$FilteredContinuation;->exit()Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_4
    move v1, v5

    .line 130
    :goto_2
    goto :goto_1

    .end local v1    # "complete":Z
    .end local v3    # "fc":Lorg/eclipse/jetty/continuation/ContinuationFilter$FilteredContinuation;
    :cond_5
    move-object v3, v0

    .line 110
    check-cast v3, Lorg/eclipse/jetty/continuation/ContinuationFilter$FilteredContinuation;

    .restart local v3    # "fc":Lorg/eclipse/jetty/continuation/ContinuationFilter$FilteredContinuation;
    goto :goto_0

    .restart local v1    # "complete":Z
    :cond_6
    move v1, v4

    .line 129
    goto :goto_2

    .line 120
    :catch_0
    move-exception v2

    .line 122
    .local v2, "e":Lorg/eclipse/jetty/continuation/ContinuationThrowable;
    :try_start_1
    const-string v6, "faux"

    invoke-direct {p0, v6, v2}, Lorg/eclipse/jetty/continuation/ContinuationFilter;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    if-nez v3, :cond_7

    .line 127
    const-string v6, "org.eclipse.jetty.continuation"

    invoke-interface {p1, v6}, Ljavax/servlet/ServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "fc":Lorg/eclipse/jetty/continuation/ContinuationFilter$FilteredContinuation;
    check-cast v3, Lorg/eclipse/jetty/continuation/ContinuationFilter$FilteredContinuation;

    .line 129
    .restart local v3    # "fc":Lorg/eclipse/jetty/continuation/ContinuationFilter$FilteredContinuation;
    :cond_7
    if-eqz v3, :cond_8

    invoke-interface {v3}, Lorg/eclipse/jetty/continuation/ContinuationFilter$FilteredContinuation;->exit()Z

    move-result v6

    if-eqz v6, :cond_9

    :cond_8
    move v1, v5

    .line 130
    :goto_3
    goto :goto_1

    :cond_9
    move v1, v4

    .line 129
    goto :goto_3

    .line 126
    .end local v2    # "e":Lorg/eclipse/jetty/continuation/ContinuationThrowable;
    :catchall_0
    move-exception v6

    if-nez v3, :cond_a

    .line 127
    const-string v7, "org.eclipse.jetty.continuation"

    invoke-interface {p1, v7}, Ljavax/servlet/ServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "fc":Lorg/eclipse/jetty/continuation/ContinuationFilter$FilteredContinuation;
    check-cast v3, Lorg/eclipse/jetty/continuation/ContinuationFilter$FilteredContinuation;

    .line 129
    .restart local v3    # "fc":Lorg/eclipse/jetty/continuation/ContinuationFilter$FilteredContinuation;
    :cond_a
    if-eqz v3, :cond_b

    invoke-interface {v3}, Lorg/eclipse/jetty/continuation/ContinuationFilter$FilteredContinuation;->exit()Z

    move-result v7

    if-eqz v7, :cond_c

    :cond_b
    move v1, v5

    :goto_4
    throw v6

    :cond_c
    move v1, v4

    goto :goto_4

    .line 137
    .end local v0    # "c":Lorg/eclipse/jetty/continuation/Continuation;
    .end local v1    # "complete":Z
    .end local v3    # "fc":Lorg/eclipse/jetty/continuation/ContinuationFilter$FilteredContinuation;
    :cond_d
    :try_start_2
    invoke-interface {p3, p1, p2}, Ljavax/servlet/FilterChain;->doFilter(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    :try_end_2
    .catch Lorg/eclipse/jetty/continuation/ContinuationThrowable; {:try_start_2 .. :try_end_2} :catch_1

    .line 144
    :cond_e
    :goto_5
    return-void

    .line 139
    :catch_1
    move-exception v2

    .line 141
    .restart local v2    # "e":Lorg/eclipse/jetty/continuation/ContinuationThrowable;
    const-string v4, "caught"

    invoke-direct {p0, v4, v2}, Lorg/eclipse/jetty/continuation/ContinuationFilter;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_5
.end method

.method public init(Ljavax/servlet/FilterConfig;)V
    .locals 6
    .param p1, "filterConfig"    # Ljavax/servlet/FilterConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 65
    const-string v2, "org.eclipse.jetty.servlet"

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 66
    .local v0, "jetty_7_or_greater":Z
    invoke-interface {p1}, Ljavax/servlet/FilterConfig;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_context:Ljavax/servlet/ServletContext;

    .line 68
    const-string v2, "debug"

    invoke-interface {p1, v2}, Ljavax/servlet/FilterConfig;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 69
    .local v1, "param":Ljava/lang/String;
    if-eqz v1, :cond_5

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_debug:Z

    .line 70
    iget-boolean v2, p0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_debug:Z

    if-eqz v2, :cond_0

    .line 71
    sput-boolean v3, Lorg/eclipse/jetty/continuation/ContinuationFilter;->__debug:Z

    .line 73
    :cond_0
    const-string v2, "jetty6"

    invoke-interface {p1, v2}, Ljavax/servlet/FilterConfig;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 74
    if-nez v1, :cond_1

    .line 75
    const-string v2, "partial"

    invoke-interface {p1, v2}, Ljavax/servlet/FilterConfig;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    :cond_1
    if-eqz v1, :cond_6

    .line 77
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_jetty6:Z

    .line 81
    :goto_1
    const-string v2, "faux"

    invoke-interface {p1, v2}, Ljavax/servlet/FilterConfig;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 82
    if-eqz v1, :cond_8

    .line 83
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_faux:Z

    .line 87
    :goto_2
    iget-boolean v2, p0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_faux:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_jetty6:Z

    if-eqz v2, :cond_3

    :cond_2
    move v4, v3

    :cond_3
    iput-boolean v4, p0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_filtered:Z

    .line 88
    iget-boolean v2, p0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_debug:Z

    if-eqz v2, :cond_4

    .line 89
    iget-object v2, p0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_context:Ljavax/servlet/ServletContext;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ContinuationFilter  jetty="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " jetty6="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_jetty6:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " faux="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_faux:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " filtered="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_filtered:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " servlet3="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-boolean v5, Lorg/eclipse/jetty/continuation/ContinuationSupport;->__servlet3:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljavax/servlet/ServletContext;->log(Ljava/lang/String;)V

    .line 95
    :cond_4
    sput-boolean v3, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_initialized:Z

    .line 96
    return-void

    :cond_5
    move v2, v4

    .line 69
    goto/16 :goto_0

    .line 79
    :cond_6
    sget-boolean v2, Lorg/eclipse/jetty/continuation/ContinuationSupport;->__jetty6:Z

    if-eqz v2, :cond_7

    if-nez v0, :cond_7

    move v2, v3

    :goto_3
    iput-boolean v2, p0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_jetty6:Z

    goto :goto_1

    :cond_7
    move v2, v4

    goto :goto_3

    .line 85
    :cond_8
    if-nez v0, :cond_9

    iget-boolean v2, p0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_jetty6:Z

    if-nez v2, :cond_9

    iget-object v2, p0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_context:Ljavax/servlet/ServletContext;

    invoke-interface {v2}, Ljavax/servlet/ServletContext;->getMajorVersion()I

    move-result v2

    const/4 v5, 0x3

    if-ge v2, v5, :cond_9

    move v2, v3

    :goto_4
    iput-boolean v2, p0, Lorg/eclipse/jetty/continuation/ContinuationFilter;->_faux:Z

    goto :goto_2

    :cond_9
    move v2, v4

    goto :goto_4
.end method
