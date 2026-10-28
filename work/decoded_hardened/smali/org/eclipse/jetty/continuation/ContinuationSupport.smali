.class public Lorg/eclipse/jetty/continuation/ContinuationSupport;
.super Ljava/lang/Object;
.source "ContinuationSupport.java"


# static fields
.field static final __jetty6:Z

.field static final __newJetty6Continuation:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Lorg/eclipse/jetty/continuation/Continuation;",
            ">;"
        }
    .end annotation
.end field

.field static final __newServlet3Continuation:Ljava/lang/reflect/Constructor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Lorg/eclipse/jetty/continuation/Continuation;",
            ">;"
        }
    .end annotation
.end field

.field static final __servlet3:Z

.field static final __waitingContinuation:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .prologue
    const/4 v2, 0x1

    const/4 v10, 0x0

    .line 42
    const/4 v8, 0x0

    .line 43
    .local v8, "servlet3Support":Z
    const/4 v6, 0x0

    .line 46
    .local v6, "s3cc":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/eclipse/jetty/continuation/Continuation;>;"
    :try_start_0
    const-class v11, Ljavax/servlet/ServletRequest;

    const-string v12, "startAsync"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Class;

    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    if-eqz v11, :cond_2

    move v7, v2

    .line 47
    .local v7, "servlet3":Z
    :goto_0
    if-eqz v7, :cond_0

    .line 49
    const-class v11, Lorg/eclipse/jetty/continuation/ContinuationSupport;

    invoke-virtual {v11}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    const-string v12, "org.eclipse.jetty.continuation.Servlet3Continuation"

    invoke-virtual {v11, v12}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const-class v12, Lorg/eclipse/jetty/continuation/Continuation;

    invoke-virtual {v11, v12}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v5

    .line 50
    .local v5, "s3c":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/eclipse/jetty/continuation/Continuation;>;"
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Class;

    const/4 v12, 0x0

    const-class v13, Ljavax/servlet/ServletRequest;

    aput-object v13, v11, v12

    invoke-virtual {v5, v11}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    .line 51
    const/4 v8, 0x1

    .line 58
    .end local v5    # "s3c":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/eclipse/jetty/continuation/Continuation;>;"
    :cond_0
    sput-boolean v8, Lorg/eclipse/jetty/continuation/ContinuationSupport;->__servlet3:Z

    .line 59
    sput-object v6, Lorg/eclipse/jetty/continuation/ContinuationSupport;->__newServlet3Continuation:Ljava/lang/reflect/Constructor;

    .line 62
    .end local v7    # "servlet3":Z
    :goto_1
    const/4 v4, 0x0

    .line 63
    .local v4, "jetty6Support":Z
    const/4 v1, 0x0

    .line 66
    .local v1, "j6cc":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/eclipse/jetty/continuation/Continuation;>;"
    :try_start_1
    const-class v11, Lorg/eclipse/jetty/continuation/ContinuationSupport;

    invoke-virtual {v11}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v11

    const-string v12, "org.mortbay.util.ajax.Continuation"

    invoke-virtual {v11, v12}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 67
    .local v3, "jetty6ContinuationClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz v3, :cond_3

    .line 68
    .local v2, "jetty6":Z
    :goto_2
    if-eqz v2, :cond_1

    .line 70
    const-class v10, Lorg/eclipse/jetty/continuation/ContinuationSupport;

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    const-string v11, "org.eclipse.jetty.continuation.Jetty6Continuation"

    invoke-virtual {v10, v11}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const-class v11, Lorg/eclipse/jetty/continuation/Continuation;

    invoke-virtual {v10, v11}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    .line 71
    .local v0, "j6c":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/eclipse/jetty/continuation/Continuation;>;"
    const/4 v10, 0x2

    new-array v10, v10, [Ljava/lang/Class;

    const/4 v11, 0x0

    const-class v12, Ljavax/servlet/ServletRequest;

    aput-object v12, v10, v11

    const/4 v11, 0x1

    aput-object v3, v10, v11

    invoke-virtual {v0, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 72
    const/4 v4, 0x1

    .line 79
    .end local v0    # "j6c":Ljava/lang/Class;, "Ljava/lang/Class<+Lorg/eclipse/jetty/continuation/Continuation;>;"
    :cond_1
    sput-boolean v4, Lorg/eclipse/jetty/continuation/ContinuationSupport;->__jetty6:Z

    .line 80
    sput-object v1, Lorg/eclipse/jetty/continuation/ContinuationSupport;->__newJetty6Continuation:Ljava/lang/reflect/Constructor;

    .line 83
    .end local v2    # "jetty6":Z
    .end local v3    # "jetty6ContinuationClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_3
    const/4 v9, 0x0

    .line 86
    .local v9, "waiting":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_2
    const-class v10, Lorg/eclipse/jetty/continuation/ContinuationSupport;

    invoke-virtual {v10}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    const-string v11, "org.mortbay.util.ajax.WaitingContinuation"

    invoke-virtual {v10, v11}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v9

    .line 93
    sput-object v9, Lorg/eclipse/jetty/continuation/ContinuationSupport;->__waitingContinuation:Ljava/lang/Class;

    .line 95
    :goto_4
    return-void

    .end local v1    # "j6cc":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/eclipse/jetty/continuation/Continuation;>;"
    .end local v4    # "jetty6Support":Z
    .end local v9    # "waiting":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    move v7, v10

    .line 46
    goto :goto_0

    .line 54
    :catch_0
    move-exception v11

    .line 58
    sput-boolean v8, Lorg/eclipse/jetty/continuation/ContinuationSupport;->__servlet3:Z

    .line 59
    sput-object v6, Lorg/eclipse/jetty/continuation/ContinuationSupport;->__newServlet3Continuation:Ljava/lang/reflect/Constructor;

    goto :goto_1

    .line 58
    :catchall_0
    move-exception v10

    sput-boolean v8, Lorg/eclipse/jetty/continuation/ContinuationSupport;->__servlet3:Z

    .line 59
    sput-object v6, Lorg/eclipse/jetty/continuation/ContinuationSupport;->__newServlet3Continuation:Ljava/lang/reflect/Constructor;

    throw v10

    .restart local v1    # "j6cc":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+Lorg/eclipse/jetty/continuation/Continuation;>;"
    .restart local v3    # "jetty6ContinuationClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local v4    # "jetty6Support":Z
    :cond_3
    move v2, v10

    .line 67
    goto :goto_2

    .line 75
    .end local v3    # "jetty6ContinuationClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_1
    move-exception v10

    .line 79
    sput-boolean v4, Lorg/eclipse/jetty/continuation/ContinuationSupport;->__jetty6:Z

    .line 80
    sput-object v1, Lorg/eclipse/jetty/continuation/ContinuationSupport;->__newJetty6Continuation:Ljava/lang/reflect/Constructor;

    goto :goto_3

    .line 79
    :catchall_1
    move-exception v10

    sput-boolean v4, Lorg/eclipse/jetty/continuation/ContinuationSupport;->__jetty6:Z

    .line 80
    sput-object v1, Lorg/eclipse/jetty/continuation/ContinuationSupport;->__newJetty6Continuation:Ljava/lang/reflect/Constructor;

    throw v10

    .line 88
    .restart local v9    # "waiting":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_2
    move-exception v10

    .line 93
    sput-object v9, Lorg/eclipse/jetty/continuation/ContinuationSupport;->__waitingContinuation:Ljava/lang/Class;

    goto :goto_4

    :catchall_2
    move-exception v10

    sput-object v9, Lorg/eclipse/jetty/continuation/ContinuationSupport;->__waitingContinuation:Ljava/lang/Class;

    throw v10
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContinuation(Ljavax/servlet/ServletRequest;)Lorg/eclipse/jetty/continuation/Continuation;
    .locals 8
    .param p0, "request"    # Ljavax/servlet/ServletRequest;

    .prologue
    .line 110
    const-string v5, "org.eclipse.jetty.continuation"

    invoke-interface {p0, v5}, Ljavax/servlet/ServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jetty/continuation/Continuation;

    .line 111
    .local v2, "continuation":Lorg/eclipse/jetty/continuation/Continuation;
    if-eqz v2, :cond_0

    move-object v3, v2

    .line 141
    .end local v2    # "continuation":Lorg/eclipse/jetty/continuation/Continuation;
    .local v3, "continuation":Lorg/eclipse/jetty/continuation/Continuation;
    :goto_0
    return-object v3

    .line 114
    .end local v3    # "continuation":Lorg/eclipse/jetty/continuation/Continuation;
    .restart local v2    # "continuation":Lorg/eclipse/jetty/continuation/Continuation;
    :cond_0
    :goto_1
    instance-of v5, p0, Ljavax/servlet/ServletRequestWrapper;

    if-eqz v5, :cond_1

    .line 115
    check-cast p0, Ljavax/servlet/ServletRequestWrapper;

    .end local p0    # "request":Ljavax/servlet/ServletRequest;
    invoke-virtual {p0}, Ljavax/servlet/ServletRequestWrapper;->getRequest()Ljavax/servlet/ServletRequest;

    move-result-object p0

    .restart local p0    # "request":Ljavax/servlet/ServletRequest;
    goto :goto_1

    .line 117
    :cond_1
    sget-boolean v5, Lorg/eclipse/jetty/continuation/ContinuationSupport;->__servlet3:Z

    if-eqz v5, :cond_2

    .line 121
    :try_start_0
    sget-object v5, Lorg/eclipse/jetty/continuation/ContinuationSupport;->__newServlet3Continuation:Ljava/lang/reflect/Constructor;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lorg/eclipse/jetty/continuation/Continuation;

    move-object v2, v0

    .line 122
    const-string v5, "org.eclipse.jetty.continuation"

    invoke-interface {p0, v5, v2}, Ljavax/servlet/ServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v2

    .line 123
    .end local v2    # "continuation":Lorg/eclipse/jetty/continuation/Continuation;
    .restart local v3    # "continuation":Lorg/eclipse/jetty/continuation/Continuation;
    goto :goto_0

    .line 125
    .end local v3    # "continuation":Lorg/eclipse/jetty/continuation/Continuation;
    .restart local v2    # "continuation":Lorg/eclipse/jetty/continuation/Continuation;
    :catch_0
    move-exception v4

    .line 127
    .local v4, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 131
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_2
    sget-boolean v5, Lorg/eclipse/jetty/continuation/ContinuationSupport;->__jetty6:Z

    if-eqz v5, :cond_5

    .line 133
    const-string v5, "org.mortbay.jetty.ajax.Continuation"

    invoke-interface {p0, v5}, Ljavax/servlet/ServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 136
    .local v1, "c":Ljava/lang/Object;
    if-eqz v1, :cond_3

    :try_start_1
    sget-object v5, Lorg/eclipse/jetty/continuation/ContinuationSupport;->__waitingContinuation:Ljava/lang/Class;

    if-eqz v5, :cond_3

    sget-object v5, Lorg/eclipse/jetty/continuation/ContinuationSupport;->__waitingContinuation:Ljava/lang/Class;

    invoke-virtual {v5, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 137
    :cond_3
    new-instance v3, Lorg/eclipse/jetty/continuation/FauxContinuation;

    invoke-direct {v3, p0}, Lorg/eclipse/jetty/continuation/FauxContinuation;-><init>(Ljavax/servlet/ServletRequest;)V

    .end local v2    # "continuation":Lorg/eclipse/jetty/continuation/Continuation;
    .restart local v3    # "continuation":Lorg/eclipse/jetty/continuation/Continuation;
    move-object v2, v3

    .line 140
    .end local v3    # "continuation":Lorg/eclipse/jetty/continuation/Continuation;
    .restart local v2    # "continuation":Lorg/eclipse/jetty/continuation/Continuation;
    :goto_2
    const-string v5, "org.eclipse.jetty.continuation"

    invoke-interface {p0, v5, v2}, Ljavax/servlet/ServletRequest;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    move-object v3, v2

    .line 141
    .end local v2    # "continuation":Lorg/eclipse/jetty/continuation/Continuation;
    .restart local v3    # "continuation":Lorg/eclipse/jetty/continuation/Continuation;
    goto :goto_0

    .line 139
    .end local v3    # "continuation":Lorg/eclipse/jetty/continuation/Continuation;
    .restart local v2    # "continuation":Lorg/eclipse/jetty/continuation/Continuation;
    :cond_4
    sget-object v5, Lorg/eclipse/jetty/continuation/ContinuationSupport;->__newJetty6Continuation:Ljava/lang/reflect/Constructor;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object v1, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lorg/eclipse/jetty/continuation/Continuation;

    move-object v2, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 143
    :catch_1
    move-exception v4

    .line 145
    .restart local v4    # "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5

    .line 149
    .end local v1    # "c":Ljava/lang/Object;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_5
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "!(Jetty || Servlet 3.0 || ContinuationFilter)"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static getContinuation(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)Lorg/eclipse/jetty/continuation/Continuation;
    .locals 1
    .param p0, "request"    # Ljavax/servlet/ServletRequest;
    .param p1, "response"    # Ljavax/servlet/ServletResponse;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 162
    invoke-static {p0}, Lorg/eclipse/jetty/continuation/ContinuationSupport;->getContinuation(Ljavax/servlet/ServletRequest;)Lorg/eclipse/jetty/continuation/Continuation;

    move-result-object v0

    return-object v0
.end method
