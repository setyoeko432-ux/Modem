.class public Lorg/eclipse/jetty/util/security/CertificateValidator;
.super Ljava/lang/Object;
.source "CertificateValidator.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field private static __aliasCount:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private _crls:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<+",
            "Ljava/security/cert/CRL;",
            ">;"
        }
    .end annotation
.end field

.field private _enableCRLDP:Z

.field private _enableOCSP:Z

.field private _maxCertPathLength:I

.field private _ocspResponderURL:Ljava/lang/String;

.field private _trustStore:Ljava/security/KeyStore;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lorg/eclipse/jetty/util/security/CertificateValidator;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/security/CertificateValidator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 58
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/util/security/CertificateValidator;->__aliasCount:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Ljava/security/KeyStore;Ljava/util/Collection;)V
    .locals 2
    .param p1, "trustStore"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/KeyStore;",
            "Ljava/util/Collection",
            "<+",
            "Ljava/security/cert/CRL;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "crls":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/security/cert/CRL;>;"
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jetty/util/security/CertificateValidator;->_maxCertPathLength:I

    .line 66
    iput-boolean v1, p0, Lorg/eclipse/jetty/util/security/CertificateValidator;->_enableCRLDP:Z

    .line 68
    iput-boolean v1, p0, Lorg/eclipse/jetty/util/security/CertificateValidator;->_enableOCSP:Z

    .line 80
    if-nez p1, :cond_0

    .line 82
    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "TrustStore must be specified for CertificateValidator."

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 85
    :cond_0
    iput-object p1, p0, Lorg/eclipse/jetty/util/security/CertificateValidator;->_trustStore:Ljava/security/KeyStore;

    .line 86
    iput-object p2, p0, Lorg/eclipse/jetty/util/security/CertificateValidator;->_crls:Ljava/util/Collection;

    .line 87
    return-void
.end method


# virtual methods
.method public getCrls()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<+",
            "Ljava/security/cert/CRL;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    iget-object v0, p0, Lorg/eclipse/jetty/util/security/CertificateValidator;->_crls:Ljava/util/Collection;

    return-object v0
.end method

.method public getMaxCertPathLength()I
    .locals 1

    .prologue
    .line 276
    iget v0, p0, Lorg/eclipse/jetty/util/security/CertificateValidator;->_maxCertPathLength:I

    return v0
.end method

.method public getOcspResponderURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 332
    iget-object v0, p0, Lorg/eclipse/jetty/util/security/CertificateValidator;->_ocspResponderURL:Ljava/lang/String;

    return-object v0
.end method

.method public getTrustStore()Ljava/security/KeyStore;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lorg/eclipse/jetty/util/security/CertificateValidator;->_trustStore:Ljava/security/KeyStore;

    return-object v0
.end method

.method public isEnableCRLDP()Z
    .locals 1

    .prologue
    .line 296
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/security/CertificateValidator;->_enableCRLDP:Z

    return v0
.end method

.method public isEnableOCSP()Z
    .locals 1

    .prologue
    .line 314
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/security/CertificateValidator;->_enableOCSP:Z

    return v0
.end method

.method public setEnableCRLDP(Z)V
    .locals 0
    .param p1, "enableCRLDP"    # Z

    .prologue
    .line 305
    iput-boolean p1, p0, Lorg/eclipse/jetty/util/security/CertificateValidator;->_enableCRLDP:Z

    .line 306
    return-void
.end method

.method public setEnableOCSP(Z)V
    .locals 0
    .param p1, "enableOCSP"    # Z

    .prologue
    .line 323
    iput-boolean p1, p0, Lorg/eclipse/jetty/util/security/CertificateValidator;->_enableOCSP:Z

    .line 324
    return-void
.end method

.method public setMaxCertPathLength(I)V
    .locals 0
    .param p1, "maxCertPathLength"    # I

    .prologue
    .line 287
    iput p1, p0, Lorg/eclipse/jetty/util/security/CertificateValidator;->_maxCertPathLength:I

    .line 288
    return-void
.end method

.method public setOcspResponderURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "ocspResponderURL"    # Ljava/lang/String;

    .prologue
    .line 341
    iput-object p1, p0, Lorg/eclipse/jetty/util/security/CertificateValidator;->_ocspResponderURL:Ljava/lang/String;

    .line 342
    return-void
.end method

.method public validate(Ljava/security/KeyStore;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "keyStore"    # Ljava/security/KeyStore;
    .param p2, "keyAlias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 126
    const/4 v1, 0x0

    .line 128
    .local v1, "result":Ljava/lang/String;
    if-eqz p2, :cond_0

    .line 132
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/eclipse/jetty/util/security/CertificateValidator;->validate(Ljava/security/KeyStore;Ljava/security/cert/Certificate;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    move-object v1, p2

    .line 143
    :cond_0
    return-object v1

    .line 134
    :catch_0
    move-exception v0

    .line 136
    .local v0, "kse":Ljava/security/KeyStoreException;
    sget-object v2, Lorg/eclipse/jetty/util/security/CertificateValidator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 137
    new-instance v2, Ljava/security/cert/CertificateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to validate certificate for alias ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/security/KeyStoreException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public validate(Ljava/security/KeyStore;)V
    .locals 5
    .param p1, "keyStore"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 99
    :try_start_0
    invoke-virtual {p1}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v1

    .line 101
    .local v1, "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 103
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 105
    .local v0, "alias":Ljava/lang/String;
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/util/security/CertificateValidator;->validate(Ljava/security/KeyStore;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 109
    .end local v0    # "alias":Ljava/lang/String;
    .end local v1    # "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :catch_0
    move-exception v2

    .line 111
    .local v2, "kse":Ljava/security/KeyStoreException;
    new-instance v3, Ljava/security/cert/CertificateException;

    const-string v4, "Unable to retrieve aliases from keystore"

    invoke-direct {v3, v4, v2}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 113
    .end local v2    # "kse":Ljava/security/KeyStoreException;
    .restart local v1    # "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    :cond_0
    return-void
.end method

.method public validate(Ljava/security/KeyStore;Ljava/security/cert/Certificate;)V
    .locals 10
    .param p1, "keyStore"    # Ljava/security/KeyStore;
    .param p2, "cert"    # Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 155
    const/4 v2, 0x0

    .line 157
    .local v2, "certChain":[Ljava/security/cert/Certificate;
    if-eqz p2, :cond_5

    instance-of v4, p2, Ljava/security/cert/X509Certificate;

    if-eqz v4, :cond_5

    move-object v4, p2

    .line 159
    check-cast v4, Ljava/security/cert/X509Certificate;

    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->checkValidity()V

    .line 161
    const/4 v1, 0x0

    .line 164
    .local v1, "certAlias":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 166
    :try_start_0
    new-instance v4, Ljava/security/InvalidParameterException;

    const-string v5, "Keystore cannot be null"

    invoke-direct {v4, v5}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_0

    .line 182
    :catch_0
    move-exception v3

    .line 184
    .local v3, "kse":Ljava/security/KeyStoreException;
    sget-object v4, Lorg/eclipse/jetty/util/security/CertificateValidator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v4, v3}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 185
    new-instance v5, Ljava/security/cert/CertificateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to validate certificate"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v1, :cond_3

    const-string v4, ""

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ": "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v3}, Ljava/security/KeyStoreException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4, v3}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 169
    .end local v3    # "kse":Ljava/security/KeyStoreException;
    :cond_0
    :try_start_1
    move-object v0, p2

    check-cast v0, Ljava/security/cert/X509Certificate;

    move-object v4, v0

    invoke-virtual {p1, v4}, Ljava/security/KeyStore;->getCertificateAlias(Ljava/security/cert/Certificate;)Ljava/lang/String;

    move-result-object v1

    .line 170
    if-nez v1, :cond_1

    .line 172
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "JETTY"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%016X"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget-object v8, Lorg/eclipse/jetty/util/security/CertificateValidator;->__aliasCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-virtual {p1, v1, p2}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 176
    :cond_1
    invoke-virtual {p1, v1}, Ljava/security/KeyStore;->getCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;

    move-result-object v2

    .line 177
    if-eqz v2, :cond_2

    array-length v4, v2

    if-nez v4, :cond_4

    .line 179
    :cond_2
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Unable to retrieve certificate chain"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0

    .line 185
    .restart local v3    # "kse":Ljava/security/KeyStoreException;
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " for alias ["

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "]"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 189
    .end local v3    # "kse":Ljava/security/KeyStoreException;
    :cond_4
    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/util/security/CertificateValidator;->validate([Ljava/security/cert/Certificate;)V

    .line 191
    .end local v1    # "certAlias":Ljava/lang/String;
    :cond_5
    return-void
.end method

.method public validate([Ljava/security/cert/Certificate;)V
    .locals 12
    .param p1, "certChain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 197
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 198
    .local v2, "certList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/X509Certificate;>;"
    move-object v0, p1

    .local v0, "arr$":[Ljava/security/cert/Certificate;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_0
    if-ge v5, v7, :cond_2

    aget-object v6, v0, v5

    .line 200
    .local v6, "item":Ljava/security/cert/Certificate;
    if-nez v6, :cond_0

    .line 198
    .end local v6    # "item":Ljava/security/cert/Certificate;
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 203
    .restart local v6    # "item":Ljava/security/cert/Certificate;
    :cond_0
    instance-of v9, v6, Ljava/security/cert/X509Certificate;

    if-nez v9, :cond_1

    .line 205
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "Invalid certificate type in chain"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    .end local v0    # "arr$":[Ljava/security/cert/Certificate;
    .end local v2    # "certList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/X509Certificate;>;"
    .end local v5    # "i$":I
    .end local v6    # "item":Ljava/security/cert/Certificate;
    .end local v7    # "len$":I
    :catch_0
    move-exception v4

    .line 255
    .local v4, "gse":Ljava/security/GeneralSecurityException;
    sget-object v9, Lorg/eclipse/jetty/util/security/CertificateValidator;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v9, v4}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 256
    new-instance v9, Ljava/security/cert/CertificateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to validate certificate: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v4}, Ljava/security/GeneralSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10, v4}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v9

    .line 208
    .end local v4    # "gse":Ljava/security/GeneralSecurityException;
    .restart local v0    # "arr$":[Ljava/security/cert/Certificate;
    .restart local v2    # "certList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/security/cert/X509Certificate;>;"
    .restart local v5    # "i$":I
    .restart local v6    # "item":Ljava/security/cert/Certificate;
    .restart local v7    # "len$":I
    :cond_1
    :try_start_1
    check-cast v6, Ljava/security/cert/X509Certificate;

    .end local v6    # "item":Ljava/security/cert/Certificate;
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 211
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 213
    new-instance v9, Ljava/lang/IllegalStateException;

    const-string v10, "Invalid certificate chain"

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 217
    :cond_3
    new-instance v3, Ljava/security/cert/X509CertSelector;

    invoke-direct {v3}, Ljava/security/cert/X509CertSelector;-><init>()V

    .line 218
    .local v3, "certSelect":Ljava/security/cert/X509CertSelector;
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/security/cert/X509Certificate;

    invoke-virtual {v3, v9}, Ljava/security/cert/X509CertSelector;->setCertificate(Ljava/security/cert/X509Certificate;)V

    .line 221
    new-instance v8, Ljava/security/cert/PKIXBuilderParameters;

    iget-object v9, p0, Lorg/eclipse/jetty/util/security/CertificateValidator;->_trustStore:Ljava/security/KeyStore;

    invoke-direct {v8, v9, v3}, Ljava/security/cert/PKIXBuilderParameters;-><init>(Ljava/security/KeyStore;Ljava/security/cert/CertSelector;)V

    .line 222
    .local v8, "pbParams":Ljava/security/cert/PKIXBuilderParameters;
    const-string v9, "Collection"

    new-instance v10, Ljava/security/cert/CollectionCertStoreParameters;

    invoke-direct {v10, v2}, Ljava/security/cert/CollectionCertStoreParameters;-><init>(Ljava/util/Collection;)V

    invoke-static {v9, v10}, Ljava/security/cert/CertStore;->getInstance(Ljava/lang/String;Ljava/security/cert/CertStoreParameters;)Ljava/security/cert/CertStore;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/security/cert/PKIXBuilderParameters;->addCertStore(Ljava/security/cert/CertStore;)V

    .line 225
    iget v9, p0, Lorg/eclipse/jetty/util/security/CertificateValidator;->_maxCertPathLength:I

    invoke-virtual {v8, v9}, Ljava/security/cert/PKIXBuilderParameters;->setMaxPathLength(I)V

    .line 228
    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljava/security/cert/PKIXBuilderParameters;->setRevocationEnabled(Z)V

    .line 231
    iget-object v9, p0, Lorg/eclipse/jetty/util/security/CertificateValidator;->_crls:Ljava/util/Collection;

    if-eqz v9, :cond_4

    iget-object v9, p0, Lorg/eclipse/jetty/util/security/CertificateValidator;->_crls:Ljava/util/Collection;

    invoke-interface {v9}, Ljava/util/Collection;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    .line 233
    const-string v9, "Collection"

    new-instance v10, Ljava/security/cert/CollectionCertStoreParameters;

    iget-object v11, p0, Lorg/eclipse/jetty/util/security/CertificateValidator;->_crls:Ljava/util/Collection;

    invoke-direct {v10, v11}, Ljava/security/cert/CollectionCertStoreParameters;-><init>(Ljava/util/Collection;)V

    invoke-static {v9, v10}, Ljava/security/cert/CertStore;->getInstance(Ljava/lang/String;Ljava/security/cert/CertStoreParameters;)Ljava/security/cert/CertStore;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/security/cert/PKIXBuilderParameters;->addCertStore(Ljava/security/cert/CertStore;)V

    .line 237
    :cond_4
    iget-boolean v9, p0, Lorg/eclipse/jetty/util/security/CertificateValidator;->_enableOCSP:Z

    if-eqz v9, :cond_5

    .line 239
    const-string v9, "ocsp.enable"

    const-string v10, "true"

    invoke-static {v9, v10}, Ljava/security/Security;->setProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    :cond_5
    iget-boolean v9, p0, Lorg/eclipse/jetty/util/security/CertificateValidator;->_enableCRLDP:Z

    if-eqz v9, :cond_6

    .line 244
    const-string v9, "com.sun.security.enableCRLDP"

    const-string v10, "true"

    invoke-static {v9, v10}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 248
    :cond_6
    const-string v9, "PKIX"

    invoke-static {v9}, Ljava/security/cert/CertPathBuilder;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/security/cert/CertPathBuilder;->build(Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathBuilderResult;

    move-result-object v1

    .line 251
    .local v1, "buildResult":Ljava/security/cert/CertPathBuilderResult;
    const-string v9, "PKIX"

    invoke-static {v9}, Ljava/security/cert/CertPathValidator;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertPathValidator;

    move-result-object v9

    invoke-interface {v1}, Ljava/security/cert/CertPathBuilderResult;->getCertPath()Ljava/security/cert/CertPath;

    move-result-object v10

    invoke-virtual {v9, v10, v8}, Ljava/security/cert/CertPathValidator;->validate(Ljava/security/cert/CertPath;Ljava/security/cert/CertPathParameters;)Ljava/security/cert/CertPathValidatorResult;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 258
    return-void
.end method
