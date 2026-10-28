.class public Ljavax/servlet/http/Cookie;
.super Ljava/lang/Object;
.source "Cookie.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field private static final LSTRING_FILE:Ljava/lang/String; = "javax.servlet.http.LocalStrings"

.field private static final TSPECIALS:Ljava/lang/String;

.field private static lStrings:Ljava/util/ResourceBundle; = null

.field private static final serialVersionUID:J = -0x59934cae21b11858L


# instance fields
.field private comment:Ljava/lang/String;

.field private domain:Ljava/lang/String;

.field private isHttpOnly:Z

.field private maxAge:I

.field private name:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private secure:Z

.field private value:Ljava/lang/String;

.field private version:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 111
    const-string v0, "javax.servlet.http.LocalStrings"

    invoke-static {v0}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v0

    sput-object v0, Ljavax/servlet/http/Cookie;->lStrings:Ljava/util/ResourceBundle;

    .line 115
    const-string v0, "org.glassfish.web.rfc2109_cookie_names_enforced"

    const-string v1, "true"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    const-string v0, "/()<>@,;:\\\"[]?={} \t"

    sput-object v0, Ljavax/servlet/http/Cookie;->TSPECIALS:Ljava/lang/String;

    .line 122
    :goto_0
    return-void

    .line 120
    :cond_0
    const-string v0, ",; "

    sput-object v0, Ljavax/servlet/http/Cookie;->TSPECIALS:Ljava/lang/String;

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 138
    const/4 v2, -0x1

    iput v2, p0, Ljavax/servlet/http/Cookie;->maxAge:I

    .line 141
    iput v4, p0, Ljavax/servlet/http/Cookie;->version:I

    .line 142
    iput-boolean v4, p0, Ljavax/servlet/http/Cookie;->isHttpOnly:Z

    .line 176
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 177
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    sget-object v3, Ljavax/servlet/http/Cookie;->lStrings:Ljava/util/ResourceBundle;

    const-string v4, "err.cookie_name_blank"

    invoke-virtual {v3, v4}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 180
    :cond_1
    invoke-direct {p0, p1}, Ljavax/servlet/http/Cookie;->isToken(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "Comment"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "Discard"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "Domain"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "Expires"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "Max-Age"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "Path"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "Secure"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "Version"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "$"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 190
    :cond_2
    sget-object v2, Ljavax/servlet/http/Cookie;->lStrings:Ljava/util/ResourceBundle;

    const-string v3, "err.cookie_name_is_token"

    invoke-virtual {v2, v3}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 191
    .local v1, "errMsg":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v0, v2, [Ljava/lang/Object;

    .line 192
    .local v0, "errArgs":[Ljava/lang/Object;
    aput-object p1, v0, v4

    .line 193
    invoke-static {v1, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 194
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 197
    .end local v0    # "errArgs":[Ljava/lang/Object;
    .end local v1    # "errMsg":Ljava/lang/String;
    :cond_3
    iput-object p1, p0, Ljavax/servlet/http/Cookie;->name:Ljava/lang/String;

    .line 198
    iput-object p2, p0, Ljavax/servlet/http/Cookie;->value:Ljava/lang/String;

    .line 199
    return-void
.end method

.method private isToken(Ljava/lang/String;)Z
    .locals 5
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 453
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 454
    .local v2, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 455
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 456
    .local v0, "c":C
    const/16 v3, 0x20

    if-lt v0, v3, :cond_0

    const/16 v3, 0x7f

    if-ge v0, v3, :cond_0

    sget-object v3, Ljavax/servlet/http/Cookie;->TSPECIALS:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 457
    :cond_0
    const/4 v3, 0x0

    .line 461
    .end local v0    # "c":C
    :goto_1
    return v3

    .line 454
    .restart local v0    # "c":C
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 461
    .end local v0    # "c":C
    :cond_2
    const/4 v3, 0x1

    goto :goto_1
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 470
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 471
    :catch_0
    move-exception v0

    .line 472
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getComment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Ljavax/servlet/http/Cookie;->comment:Ljava/lang/String;

    return-object v0
.end method

.method public getDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Ljavax/servlet/http/Cookie;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxAge()I
    .locals 1

    .prologue
    .line 298
    iget v0, p0, Ljavax/servlet/http/Cookie;->maxAge:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Ljavax/servlet/http/Cookie;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Ljavax/servlet/http/Cookie;->path:Ljava/lang/String;

    return-object v0
.end method

.method public getSecure()Z
    .locals 1

    .prologue
    .line 364
    iget-boolean v0, p0, Ljavax/servlet/http/Cookie;->secure:Z

    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Ljavax/servlet/http/Cookie;->value:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .prologue
    .line 421
    iget v0, p0, Ljavax/servlet/http/Cookie;->version:I

    return v0
.end method

.method public isHttpOnly()Z
    .locals 1

    .prologue
    .line 505
    iget-boolean v0, p0, Ljavax/servlet/http/Cookie;->isHttpOnly:Z

    return v0
.end method

.method public setComment(Ljava/lang/String;)V
    .locals 0
    .param p1, "purpose"    # Ljava/lang/String;

    .prologue
    .line 213
    iput-object p1, p0, Ljavax/servlet/http/Cookie;->comment:Ljava/lang/String;

    .line 214
    return-void
.end method

.method public setDomain(Ljava/lang/String;)V
    .locals 1
    .param p1, "domain"    # Ljava/lang/String;

    .prologue
    .line 245
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/servlet/http/Cookie;->domain:Ljava/lang/String;

    .line 246
    return-void
.end method

.method public setHttpOnly(Z)V
    .locals 0
    .param p1, "isHttpOnly"    # Z

    .prologue
    .line 493
    iput-boolean p1, p0, Ljavax/servlet/http/Cookie;->isHttpOnly:Z

    .line 494
    return-void
.end method

.method public setMaxAge(I)V
    .locals 0
    .param p1, "expiry"    # I

    .prologue
    .line 282
    iput p1, p0, Ljavax/servlet/http/Cookie;->maxAge:I

    .line 283
    return-void
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "uri"    # Ljava/lang/String;

    .prologue
    .line 320
    iput-object p1, p0, Ljavax/servlet/http/Cookie;->path:Ljava/lang/String;

    .line 321
    return-void
.end method

.method public setSecure(Z)V
    .locals 0
    .param p1, "flag"    # Z

    .prologue
    .line 350
    iput-boolean p1, p0, Ljavax/servlet/http/Cookie;->secure:Z

    .line 351
    return-void
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "newValue"    # Ljava/lang/String;

    .prologue
    .line 393
    iput-object p1, p0, Ljavax/servlet/http/Cookie;->value:Ljava/lang/String;

    .line 394
    return-void
.end method

.method public setVersion(I)V
    .locals 0
    .param p1, "v"    # I

    .prologue
    .line 440
    iput p1, p0, Ljavax/servlet/http/Cookie;->version:I

    .line 441
    return-void
.end method
