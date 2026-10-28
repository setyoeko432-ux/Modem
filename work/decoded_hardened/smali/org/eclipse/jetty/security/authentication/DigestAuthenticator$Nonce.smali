.class Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Nonce;
.super Ljava/lang/Object;
.source "DigestAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/security/authentication/DigestAuthenticator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Nonce"
.end annotation


# instance fields
.field final _nonce:Ljava/lang/String;

.field final _seen:Ljava/util/BitSet;

.field final _ts:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 1
    .param p1, "nonce"    # Ljava/lang/String;
    .param p2, "ts"    # J
    .param p4, "size"    # I

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Nonce;->_nonce:Ljava/lang/String;

    .line 76
    iput-wide p2, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Nonce;->_ts:J

    .line 77
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, p4}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Nonce;->_seen:Ljava/util/BitSet;

    .line 78
    return-void
.end method


# virtual methods
.method public seen(I)Z
    .locals 2
    .param p1, "count"    # I

    .prologue
    .line 82
    monitor-enter p0

    .line 84
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Nonce;->_seen:Ljava/util/BitSet;

    invoke-virtual {v1}, Ljava/util/BitSet;->size()I

    move-result v1

    if-lt p1, v1, :cond_0

    .line 85
    const/4 v0, 0x1

    monitor-exit p0

    .line 88
    :goto_0
    return v0

    .line 86
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Nonce;->_seen:Ljava/util/BitSet;

    invoke-virtual {v1, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    .line 87
    .local v0, "s":Z
    iget-object v1, p0, Lorg/eclipse/jetty/security/authentication/DigestAuthenticator$Nonce;->_seen:Ljava/util/BitSet;

    invoke-virtual {v1, p1}, Ljava/util/BitSet;->set(I)V

    .line 88
    monitor-exit p0

    goto :goto_0

    .line 89
    .end local v0    # "s":Z
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
