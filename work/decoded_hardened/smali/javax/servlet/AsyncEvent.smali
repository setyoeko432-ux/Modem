.class public Ljavax/servlet/AsyncEvent;
.super Ljava/lang/Object;
.source "AsyncEvent.java"


# instance fields
.field private context:Ljavax/servlet/AsyncContext;

.field private request:Ljavax/servlet/ServletRequest;

.field private response:Ljavax/servlet/ServletResponse;

.field private throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljavax/servlet/AsyncContext;)V
    .locals 1
    .param p1, "context"    # Ljavax/servlet/AsyncContext;

    .prologue
    const/4 v0, 0x0

    .line 65
    invoke-direct {p0, p1, v0, v0, v0}, Ljavax/servlet/AsyncEvent;-><init>(Ljavax/servlet/AsyncContext;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljava/lang/Throwable;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Ljavax/servlet/AsyncContext;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "context"    # Ljavax/servlet/AsyncContext;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    const/4 v0, 0x0

    .line 89
    invoke-direct {p0, p1, v0, v0, p2}, Ljavax/servlet/AsyncEvent;-><init>(Ljavax/servlet/AsyncContext;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljava/lang/Throwable;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Ljavax/servlet/AsyncContext;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    .locals 1
    .param p1, "context"    # Ljavax/servlet/AsyncContext;
    .param p2, "request"    # Ljavax/servlet/ServletRequest;
    .param p3, "response"    # Ljavax/servlet/ServletResponse;

    .prologue
    .line 79
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljavax/servlet/AsyncEvent;-><init>(Ljavax/servlet/AsyncContext;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljava/lang/Throwable;)V

    .line 80
    return-void
.end method

.method public constructor <init>(Ljavax/servlet/AsyncContext;Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "context"    # Ljavax/servlet/AsyncContext;
    .param p2, "request"    # Ljavax/servlet/ServletRequest;
    .param p3, "response"    # Ljavax/servlet/ServletResponse;
    .param p4, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Ljavax/servlet/AsyncEvent;->context:Ljavax/servlet/AsyncContext;

    .line 105
    iput-object p2, p0, Ljavax/servlet/AsyncEvent;->request:Ljavax/servlet/ServletRequest;

    .line 106
    iput-object p3, p0, Ljavax/servlet/AsyncEvent;->response:Ljavax/servlet/ServletResponse;

    .line 107
    iput-object p4, p0, Ljavax/servlet/AsyncEvent;->throwable:Ljava/lang/Throwable;

    .line 108
    return-void
.end method


# virtual methods
.method public getAsyncContext()Ljavax/servlet/AsyncContext;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Ljavax/servlet/AsyncEvent;->context:Ljavax/servlet/AsyncContext;

    return-object v0
.end method

.method public getSuppliedRequest()Ljavax/servlet/ServletRequest;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Ljavax/servlet/AsyncEvent;->request:Ljavax/servlet/ServletRequest;

    return-object v0
.end method

.method public getSuppliedResponse()Ljavax/servlet/ServletResponse;
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Ljavax/servlet/AsyncEvent;->response:Ljavax/servlet/ServletResponse;

    return-object v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Ljavax/servlet/AsyncEvent;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method
