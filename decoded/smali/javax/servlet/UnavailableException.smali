.class public Ljavax/servlet/UnavailableException;
.super Ljavax/servlet/ServletException;
.source "UnavailableException.java"


# instance fields
.field private permanent:Z

.field private seconds:I

.field private servlet:Ljavax/servlet/Servlet;


# direct methods
.method public constructor <init>(ILjavax/servlet/Servlet;Ljava/lang/String;)V
    .locals 1
    .param p1, "seconds"    # I
    .param p2, "servlet"    # Ljavax/servlet/Servlet;
    .param p3, "msg"    # Ljava/lang/String;

    .prologue
    .line 135
    invoke-direct {p0, p3}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/String;)V

    .line 136
    iput-object p2, p0, Ljavax/servlet/UnavailableException;->servlet:Ljavax/servlet/Servlet;

    .line 137
    if-gtz p1, :cond_0

    .line 138
    const/4 v0, -0x1

    iput v0, p0, Ljavax/servlet/UnavailableException;->seconds:I

    .line 141
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/servlet/UnavailableException;->permanent:Z

    .line 142
    return-void

    .line 140
    :cond_0
    iput p1, p0, Ljavax/servlet/UnavailableException;->seconds:I

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 156
    invoke-direct {p0, p1}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/String;)V

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/servlet/UnavailableException;->permanent:Z

    .line 159
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "seconds"    # I

    .prologue
    .line 184
    invoke-direct {p0, p1}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/String;)V

    .line 186
    if-gtz p2, :cond_0

    .line 187
    const/4 v0, -0x1

    iput v0, p0, Ljavax/servlet/UnavailableException;->seconds:I

    .line 191
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/servlet/UnavailableException;->permanent:Z

    .line 192
    return-void

    .line 189
    :cond_0
    iput p2, p0, Ljavax/servlet/UnavailableException;->seconds:I

    goto :goto_0
.end method

.method public constructor <init>(Ljavax/servlet/Servlet;Ljava/lang/String;)V
    .locals 1
    .param p1, "servlet"    # Ljavax/servlet/Servlet;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-direct {p0, p2}, Ljavax/servlet/ServletException;-><init>(Ljava/lang/String;)V

    .line 113
    iput-object p1, p0, Ljavax/servlet/UnavailableException;->servlet:Ljavax/servlet/Servlet;

    .line 114
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/servlet/UnavailableException;->permanent:Z

    .line 115
    return-void
.end method


# virtual methods
.method public getServlet()Ljavax/servlet/Servlet;
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Ljavax/servlet/UnavailableException;->servlet:Ljavax/servlet/Servlet;

    return-object v0
.end method

.method public getUnavailableSeconds()I
    .locals 1

    .prologue
    .line 244
    iget-boolean v0, p0, Ljavax/servlet/UnavailableException;->permanent:Z

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Ljavax/servlet/UnavailableException;->seconds:I

    goto :goto_0
.end method

.method public isPermanent()Z
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Ljavax/servlet/UnavailableException;->permanent:Z

    return v0
.end method
