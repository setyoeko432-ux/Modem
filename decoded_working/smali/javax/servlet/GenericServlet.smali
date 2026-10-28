.class public abstract Ljavax/servlet/GenericServlet;
.super Ljava/lang/Object;
.source "GenericServlet.java"

# interfaces
.implements Ljavax/servlet/Servlet;
.implements Ljavax/servlet/ServletConfig;
.implements Ljava/io/Serializable;


# static fields
.field private static final LSTRING_FILE:Ljava/lang/String; = "javax.servlet.LocalStrings"

.field private static lStrings:Ljava/util/ResourceBundle;


# instance fields
.field private transient config:Ljavax/servlet/ServletConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    const-string v0, "javax.servlet.LocalStrings"

    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    sput-object v0, Ljavax/servlet/GenericServlet;->lStrings:Ljava/util/ResourceBundle;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method public getInitParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 137
    invoke-virtual {p0}, Ljavax/servlet/GenericServlet;->getServletConfig()Ljavax/servlet/ServletConfig;

    move-result-object v0

    .line 138
    .local v0, "sc":Ljavax/servlet/ServletConfig;
    if-nez v0, :cond_0

    .line 139
    new-instance v1, Ljava/lang/IllegalStateException;

    sget-object v2, Ljavax/servlet/GenericServlet;->lStrings:Ljava/util/ResourceBundle;

    const-string v3, "err.servlet_config_not_initialized"

    invoke-virtual {v2, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 143
    :cond_0
    invoke-interface {v0, p1}, Ljavax/servlet/ServletConfig;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getInitParameterNames()Ljava/util/Enumeration;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 163
    invoke-virtual {p0}, Ljavax/servlet/GenericServlet;->getServletConfig()Ljavax/servlet/ServletConfig;

    move-result-object v0

    .line 164
    .local v0, "sc":Ljavax/servlet/ServletConfig;
    if-nez v0, :cond_0

    .line 165
    new-instance v1, Ljava/lang/IllegalStateException;

    sget-object v2, Ljavax/servlet/GenericServlet;->lStrings:Ljava/util/ResourceBundle;

    const-string v3, "err.servlet_config_not_initialized"

    invoke-virtual {v2, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 169
    :cond_0
    invoke-interface {v0}, Ljavax/servlet/ServletConfig;->getInitParameterNames()Ljava/util/Enumeration;

    move-result-object v1

    return-object v1
.end method

.method public getServletConfig()Ljavax/servlet/ServletConfig;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Ljavax/servlet/GenericServlet;->config:Ljavax/servlet/ServletConfig;

    return-object v0
.end method

.method public getServletContext()Ljavax/servlet/ServletContext;
    .locals 4

    .prologue
    .line 197
    invoke-virtual {p0}, Ljavax/servlet/GenericServlet;->getServletConfig()Ljavax/servlet/ServletConfig;

    move-result-object v0

    .line 198
    .local v0, "sc":Ljavax/servlet/ServletConfig;
    if-nez v0, :cond_0

    .line 199
    new-instance v1, Ljava/lang/IllegalStateException;

    sget-object v2, Ljavax/servlet/GenericServlet;->lStrings:Ljava/util/ResourceBundle;

    const-string v3, "err.servlet_config_not_initialized"

    invoke-virtual {v2, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 203
    :cond_0
    invoke-interface {v0}, Ljavax/servlet/ServletConfig;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v1

    return-object v1
.end method

.method public getServletInfo()Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    const-string v0, ""

    return-object v0
.end method

.method public getServletName()Ljava/lang/String;
    .locals 4

    .prologue
    .line 329
    invoke-virtual {p0}, Ljavax/servlet/GenericServlet;->getServletConfig()Ljavax/servlet/ServletConfig;

    move-result-object v0

    .line 330
    .local v0, "sc":Ljavax/servlet/ServletConfig;
    if-nez v0, :cond_0

    .line 331
    new-instance v1, Ljava/lang/IllegalStateException;

    sget-object v2, Ljavax/servlet/GenericServlet;->lStrings:Ljava/util/ResourceBundle;

    const-string v3, "err.servlet_config_not_initialized"

    invoke-virtual {v2, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 335
    :cond_0
    invoke-interface {v0}, Ljavax/servlet/ServletConfig;->getServletName()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public init()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 264
    return-void
.end method

.method public init(Ljavax/servlet/ServletConfig;)V
    .locals 0
    .param p1, "config"    # Ljavax/servlet/ServletConfig;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 243
    iput-object p1, p0, Ljavax/servlet/GenericServlet;->config:Ljavax/servlet/ServletConfig;

    .line 244
    invoke-virtual {p0}, Ljavax/servlet/GenericServlet;->init()V

    .line 245
    return-void
.end method

.method public log(Ljava/lang/String;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 275
    invoke-virtual {p0}, Ljavax/servlet/GenericServlet;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/servlet/GenericServlet;->getServletName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/servlet/ServletContext;->log(Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 293
    invoke-virtual {p0}, Ljavax/servlet/GenericServlet;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljavax/servlet/GenericServlet;->getServletName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljavax/servlet/ServletContext;->log(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 294
    return-void
.end method

.method public abstract service(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method
