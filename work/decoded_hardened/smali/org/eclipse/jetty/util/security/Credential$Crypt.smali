.class public Lorg/eclipse/jetty/util/security/Credential$Crypt;
.super Lorg/eclipse/jetty/util/security/Credential;
.source "Credential.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/util/security/Credential;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Crypt"
.end annotation


# static fields
.field public static final __TYPE:Ljava/lang/String; = "CRYPT:"

.field private static final serialVersionUID:J = -0x1c242afcd7d4e312L


# instance fields
.field private final _cooked:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "cooked"    # Ljava/lang/String;

    .prologue
    .line 92
    invoke-direct {p0}, Lorg/eclipse/jetty/util/security/Credential;-><init>()V

    .line 93
    const-string v0, "CRYPT:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "CRYPT:"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .end local p1    # "cooked":Ljava/lang/String;
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/util/security/Credential$Crypt;->_cooked:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public static crypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "user"    # Ljava/lang/String;
    .param p1, "pw"    # Ljava/lang/String;

    .prologue
    .line 110
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CRYPT:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1, p0}, Lorg/eclipse/jetty/util/security/UnixCrypt;->crypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public check(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "credentials"    # Ljava/lang/Object;

    .prologue
    .line 99
    instance-of v2, p1, [C

    if-eqz v2, :cond_0

    .line 100
    new-instance v0, Ljava/lang/String;

    check-cast p1, [C

    .end local p1    # "credentials":Ljava/lang/Object;
    check-cast p1, [C

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([C)V

    .local v0, "credentials":Ljava/lang/String;
    move-object p1, v0

    .line 101
    .end local v0    # "credentials":Ljava/lang/String;
    .restart local p1    # "credentials":Ljava/lang/Object;
    :cond_0
    instance-of v2, p1, Ljava/lang/String;

    if-nez v2, :cond_1

    instance-of v2, p1, Lorg/eclipse/jetty/util/security/Password;

    if-nez v2, :cond_1

    .line 102
    invoke-static {}, Lorg/eclipse/jetty/util/security/Credential;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t check "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " against CRYPT"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 105
    .local v1, "passwd":Ljava/lang/String;
    iget-object v2, p0, Lorg/eclipse/jetty/util/security/Credential$Crypt;->_cooked:Ljava/lang/String;

    iget-object v3, p0, Lorg/eclipse/jetty/util/security/Credential$Crypt;->_cooked:Ljava/lang/String;

    invoke-static {v1, v3}, Lorg/eclipse/jetty/util/security/UnixCrypt;->crypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method
