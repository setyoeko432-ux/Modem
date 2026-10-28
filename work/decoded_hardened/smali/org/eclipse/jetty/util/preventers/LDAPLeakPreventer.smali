.class public Lorg/eclipse/jetty/util/preventers/LDAPLeakPreventer;
.super Lorg/eclipse/jetty/util/preventers/AbstractLeakPreventer;
.source "LDAPLeakPreventer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lorg/eclipse/jetty/util/preventers/AbstractLeakPreventer;-><init>()V

    return-void
.end method


# virtual methods
.method public prevent(Ljava/lang/ClassLoader;)V
    .locals 3
    .param p1, "loader"    # Ljava/lang/ClassLoader;

    .prologue
    .line 43
    :try_start_0
    const-string v1, "com.sun.jndi.LdapPoolManager"

    const/4 v2, 0x1

    invoke-static {v1, v2, p1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    sget-object v1, Lorg/eclipse/jetty/util/preventers/LDAPLeakPreventer;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
