.class public Lorg/eclipse/jetty/server/ssl/SslCertificates;
.super Ljava/lang/Object;
.source "SslCertificates.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/server/ssl/SslCertificates$CachedInfo;
    }
.end annotation


# static fields
.field static final CACHED_INFO_ATTR:Ljava/lang/String;

.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lorg/eclipse/jetty/server/ssl/SslCertificates;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/ssl/SslCertificates;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 44
    const-class v0, Lorg/eclipse/jetty/server/ssl/SslCertificates$CachedInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/ssl/SslCertificates;->CACHED_INFO_ATTR:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    return-void
.end method

.method public static customize(Ljavax/net/ssl/SSLSession;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/server/Request;)V
    .locals 9
    .param p0, "sslSession"    # Ljavax/net/ssl/SSLSession;
    .param p1, "endpoint"    # Lorg/eclipse/jetty/io/EndPoint;
    .param p2, "request"    # Lorg/eclipse/jetty/server/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    const-string v7, "https"

    invoke-virtual {p2, v7}, Lorg/eclipse/jetty/server/Request;->setScheme(Ljava/lang/String;)V

    .line 111
    :try_start_0
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getCipherSuite()Ljava/lang/String;

    move-result-object v3

    .line 116
    .local v3, "cipherSuite":Ljava/lang/String;
    sget-object v7, Lorg/eclipse/jetty/server/ssl/SslCertificates;->CACHED_INFO_ATTR:Ljava/lang/String;

    invoke-interface {p0, v7}, Ljavax/net/ssl/SSLSession;->getValue(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/server/ssl/SslCertificates$CachedInfo;

    .line 117
    .local v1, "cachedInfo":Lorg/eclipse/jetty/server/ssl/SslCertificates$CachedInfo;
    if-eqz v1, :cond_1

    .line 119
    invoke-virtual {v1}, Lorg/eclipse/jetty/server/ssl/SslCertificates$CachedInfo;->getKeySize()Ljava/lang/Integer;

    move-result-object v6

    .line 120
    .local v6, "keySize":Ljava/lang/Integer;
    invoke-virtual {v1}, Lorg/eclipse/jetty/server/ssl/SslCertificates$CachedInfo;->getCerts()[Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 121
    .local v2, "certs":[Ljava/security/cert/X509Certificate;
    invoke-virtual {v1}, Lorg/eclipse/jetty/server/ssl/SslCertificates$CachedInfo;->getIdStr()Ljava/lang/String;

    move-result-object v5

    .line 133
    .local v5, "idStr":Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_0

    .line 134
    const-string v7, "javax.servlet.request.X509Certificate"

    invoke-virtual {p2, v7, v2}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 136
    :cond_0
    const-string v7, "javax.servlet.request.cipher_suite"

    invoke-virtual {p2, v7, v3}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    const-string v7, "javax.servlet.request.key_size"

    invoke-virtual {p2, v7, v6}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 138
    const-string v7, "javax.servlet.request.ssl_session_id"

    invoke-virtual {p2, v7, v5}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 144
    .end local v1    # "cachedInfo":Lorg/eclipse/jetty/server/ssl/SslCertificates$CachedInfo;
    .end local v2    # "certs":[Ljava/security/cert/X509Certificate;
    .end local v3    # "cipherSuite":Ljava/lang/String;
    .end local v5    # "idStr":Ljava/lang/String;
    .end local v6    # "keySize":Ljava/lang/Integer;
    :goto_1
    return-void

    .line 125
    .restart local v1    # "cachedInfo":Lorg/eclipse/jetty/server/ssl/SslCertificates$CachedInfo;
    .restart local v3    # "cipherSuite":Ljava/lang/String;
    :cond_1
    new-instance v6, Ljava/lang/Integer;

    invoke-static {v3}, Lorg/eclipse/jetty/server/ssl/ServletSSL;->deduceKeyLength(Ljava/lang/String;)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/lang/Integer;-><init>(I)V

    .line 126
    .restart local v6    # "keySize":Ljava/lang/Integer;
    invoke-static {p0}, Lorg/eclipse/jetty/server/ssl/SslCertificates;->getCertChain(Ljavax/net/ssl/SSLSession;)[Ljava/security/cert/X509Certificate;

    move-result-object v2

    .line 127
    .restart local v2    # "certs":[Ljava/security/cert/X509Certificate;
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getId()[B

    move-result-object v0

    .line 128
    .local v0, "bytes":[B
    invoke-static {v0}, Lorg/eclipse/jetty/util/TypeUtil;->toHexString([B)Ljava/lang/String;

    move-result-object v5

    .line 129
    .restart local v5    # "idStr":Ljava/lang/String;
    new-instance v1, Lorg/eclipse/jetty/server/ssl/SslCertificates$CachedInfo;

    .end local v1    # "cachedInfo":Lorg/eclipse/jetty/server/ssl/SslCertificates$CachedInfo;
    invoke-direct {v1, v6, v2, v5}, Lorg/eclipse/jetty/server/ssl/SslCertificates$CachedInfo;-><init>(Ljava/lang/Integer;[Ljava/security/cert/X509Certificate;Ljava/lang/String;)V

    .line 130
    .restart local v1    # "cachedInfo":Lorg/eclipse/jetty/server/ssl/SslCertificates$CachedInfo;
    sget-object v7, Lorg/eclipse/jetty/server/ssl/SslCertificates;->CACHED_INFO_ATTR:Ljava/lang/String;

    invoke-interface {p0, v7, v1}, Ljavax/net/ssl/SSLSession;->putValue(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 140
    .end local v0    # "bytes":[B
    .end local v1    # "cachedInfo":Lorg/eclipse/jetty/server/ssl/SslCertificates$CachedInfo;
    .end local v2    # "certs":[Ljava/security/cert/X509Certificate;
    .end local v3    # "cipherSuite":Ljava/lang/String;
    .end local v5    # "idStr":Ljava/lang/String;
    .end local v6    # "keySize":Ljava/lang/Integer;
    :catch_0
    move-exception v4

    .line 142
    .local v4, "e":Ljava/lang/Exception;
    sget-object v7, Lorg/eclipse/jetty/server/ssl/SslCertificates;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v8, "EXCEPTION "

    invoke-interface {v7, v8, v4}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static getCertChain(Ljavax/net/ssl/SSLSession;)[Ljava/security/cert/X509Certificate;
    .locals 12
    .param p0, "sslSession"    # Ljavax/net/ssl/SSLSession;

    .prologue
    const/4 v10, 0x0

    .line 50
    :try_start_0
    invoke-interface {p0}, Ljavax/net/ssl/SSLSession;->getPeerCertificateChain()[Ljavax/security/cert/X509Certificate;

    move-result-object v5

    .line 51
    .local v5, "javaxCerts":[Ljavax/security/cert/X509Certificate;
    if-eqz v5, :cond_0

    array-length v9, v5

    if-nez v9, :cond_2

    :cond_0
    move-object v4, v10

    .line 74
    .end local v5    # "javaxCerts":[Ljavax/security/cert/X509Certificate;
    :cond_1
    :goto_0
    return-object v4

    .line 54
    .restart local v5    # "javaxCerts":[Ljavax/security/cert/X509Certificate;
    :cond_2
    array-length v6, v5

    .line 55
    .local v6, "length":I
    new-array v4, v6, [Ljava/security/cert/X509Certificate;

    .line 57
    .local v4, "javaCerts":[Ljava/security/cert/X509Certificate;
    const-string v9, "X.509"

    invoke-static {v9}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v1

    .line 58
    .local v1, "cf":Ljava/security/cert/CertificateFactory;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v6, :cond_1

    .line 60
    aget-object v9, v5, v3

    invoke-virtual {v9}, Ljavax/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v0

    .line 61
    .local v0, "bytes":[B
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-direct {v8, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 62
    .local v8, "stream":Ljava/io/ByteArrayInputStream;
    invoke-virtual {v1, v8}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v9

    check-cast v9, Ljava/security/cert/X509Certificate;

    aput-object v9, v4, v3
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 58
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 67
    .end local v0    # "bytes":[B
    .end local v1    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v3    # "i":I
    .end local v4    # "javaCerts":[Ljava/security/cert/X509Certificate;
    .end local v5    # "javaxCerts":[Ljavax/security/cert/X509Certificate;
    .end local v6    # "length":I
    .end local v8    # "stream":Ljava/io/ByteArrayInputStream;
    :catch_0
    move-exception v7

    .local v7, "pue":Ljavax/net/ssl/SSLPeerUnverifiedException;
    move-object v4, v10

    .line 69
    goto :goto_0

    .line 71
    .end local v7    # "pue":Ljavax/net/ssl/SSLPeerUnverifiedException;
    :catch_1
    move-exception v2

    .line 73
    .local v2, "e":Ljava/lang/Exception;
    sget-object v9, Lorg/eclipse/jetty/server/ssl/SslCertificates;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v11, "EXCEPTION "

    invoke-interface {v9, v11, v2}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v4, v10

    .line 74
    goto :goto_0
.end method
