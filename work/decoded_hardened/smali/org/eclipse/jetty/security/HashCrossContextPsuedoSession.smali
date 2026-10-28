.class public Lorg/eclipse/jetty/security/HashCrossContextPsuedoSession;
.super Ljava/lang/Object;
.source "HashCrossContextPsuedoSession.java"

# interfaces
.implements Lorg/eclipse/jetty/security/CrossContextPsuedoSession;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/eclipse/jetty/security/CrossContextPsuedoSession",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final _cookieName:Ljava/lang/String;

.field private final _cookiePath:Ljava/lang/String;

.field private final _data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final _random:Ljava/util/Random;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "cookieName"    # Ljava/lang/String;
    .param p2, "cookiePath"    # Ljava/lang/String;

    .prologue
    .line 44
    .local p0, "this":Lorg/eclipse/jetty/security/HashCrossContextPsuedoSession;, "Lorg/eclipse/jetty/security/HashCrossContextPsuedoSession<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/security/HashCrossContextPsuedoSession;->_random:Ljava/util/Random;

    .line 41
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/security/HashCrossContextPsuedoSession;->_data:Ljava/util/Map;

    .line 45
    iput-object p1, p0, Lorg/eclipse/jetty/security/HashCrossContextPsuedoSession;->_cookieName:Ljava/lang/String;

    .line 46
    if-nez p2, :cond_0

    const-string p2, "/"

    .end local p2    # "cookiePath":Ljava/lang/String;
    :cond_0
    iput-object p2, p0, Lorg/eclipse/jetty/security/HashCrossContextPsuedoSession;->_cookiePath:Ljava/lang/String;

    .line 47
    return-void
.end method


# virtual methods
.method public clear(Ljavax/servlet/http/HttpServletRequest;)V
    .locals 7
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;

    .prologue
    .line 85
    .local p0, "this":Lorg/eclipse/jetty/security/HashCrossContextPsuedoSession;, "Lorg/eclipse/jetty/security/HashCrossContextPsuedoSession<TT;>;"
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getCookies()[Ljavax/servlet/http/Cookie;

    move-result-object v0

    .local v0, "arr$":[Ljavax/servlet/http/Cookie;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v1, v0, v2

    .line 87
    .local v1, "cookie":Ljavax/servlet/http/Cookie;
    iget-object v5, p0, Lorg/eclipse/jetty/security/HashCrossContextPsuedoSession;->_cookieName:Ljava/lang/String;

    invoke-virtual {v1}, Ljavax/servlet/http/Cookie;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 89
    invoke-virtual {v1}, Ljavax/servlet/http/Cookie;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 90
    .local v3, "key":Ljava/lang/String;
    iget-object v5, p0, Lorg/eclipse/jetty/security/HashCrossContextPsuedoSession;->_data:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .end local v1    # "cookie":Ljavax/servlet/http/Cookie;
    .end local v3    # "key":Ljava/lang/String;
    :cond_0
    return-void

    .line 85
    .restart local v1    # "cookie":Ljavax/servlet/http/Cookie;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public fetch(Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/Object;
    .locals 7
    .param p1, "request"    # Ljavax/servlet/http/HttpServletRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/servlet/http/HttpServletRequest;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lorg/eclipse/jetty/security/HashCrossContextPsuedoSession;, "Lorg/eclipse/jetty/security/HashCrossContextPsuedoSession<TT;>;"
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getCookies()[Ljavax/servlet/http/Cookie;

    move-result-object v0

    .local v0, "arr$":[Ljavax/servlet/http/Cookie;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v1, v0, v2

    .line 53
    .local v1, "cookie":Ljavax/servlet/http/Cookie;
    iget-object v5, p0, Lorg/eclipse/jetty/security/HashCrossContextPsuedoSession;->_cookieName:Ljava/lang/String;

    invoke-virtual {v1}, Ljavax/servlet/http/Cookie;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 55
    invoke-virtual {v1}, Ljavax/servlet/http/Cookie;->getValue()Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, "key":Ljava/lang/String;
    iget-object v5, p0, Lorg/eclipse/jetty/security/HashCrossContextPsuedoSession;->_data:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 59
    .end local v1    # "cookie":Ljavax/servlet/http/Cookie;
    .end local v3    # "key":Ljava/lang/String;
    :goto_1
    return-object v5

    .line 51
    .restart local v1    # "cookie":Ljavax/servlet/http/Cookie;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 59
    .end local v1    # "cookie":Ljavax/servlet/http/Cookie;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method public store(Ljava/lang/Object;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 10
    .param p2, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljavax/servlet/http/HttpServletResponse;",
            ")V"
        }
    .end annotation

    .prologue
    .line 66
    .local p0, "this":Lorg/eclipse/jetty/security/HashCrossContextPsuedoSession;, "Lorg/eclipse/jetty/security/HashCrossContextPsuedoSession<TT;>;"
    .local p1, "datum":Ljava/lang/Object;, "TT;"
    iget-object v3, p0, Lorg/eclipse/jetty/security/HashCrossContextPsuedoSession;->_data:Ljava/util/Map;

    monitor-enter v3

    .line 71
    :cond_0
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jetty/security/HashCrossContextPsuedoSession;->_random:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    const-wide/16 v8, 0x7

    rem-long/2addr v6, v8

    long-to-int v2, v6

    add-int/lit8 v2, v2, 0x1e

    invoke-static {v4, v5, v2}, Ljava/lang/Long;->toString(JI)Ljava/lang/String;

    move-result-object v1

    .line 72
    .local v1, "key":Ljava/lang/String;
    iget-object v2, p0, Lorg/eclipse/jetty/security/HashCrossContextPsuedoSession;->_data:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 75
    iget-object v2, p0, Lorg/eclipse/jetty/security/HashCrossContextPsuedoSession;->_data:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    new-instance v0, Ljavax/servlet/http/Cookie;

    iget-object v2, p0, Lorg/eclipse/jetty/security/HashCrossContextPsuedoSession;->_cookieName:Ljava/lang/String;

    invoke-direct {v0, v2, v1}, Ljavax/servlet/http/Cookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .local v0, "cookie":Ljavax/servlet/http/Cookie;
    iget-object v2, p0, Lorg/eclipse/jetty/security/HashCrossContextPsuedoSession;->_cookiePath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljavax/servlet/http/Cookie;->setPath(Ljava/lang/String;)V

    .line 80
    invoke-interface {p2, v0}, Ljavax/servlet/http/HttpServletResponse;->addCookie(Ljavax/servlet/http/Cookie;)V

    .line 81
    return-void

    .line 76
    .end local v0    # "cookie":Ljavax/servlet/http/Cookie;
    .end local v1    # "key":Ljava/lang/String;
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
