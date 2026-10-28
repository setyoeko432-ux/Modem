.class public Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;
.super Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;
.source "ClientCertAuthenticator.java"


# static fields
.field private static final PASSWORD_PROPERTY:Ljava/lang/String; = "org.eclipse.jetty.ssl.password"


# instance fields
.field private _crlPath:Ljava/lang/String;

.field private _enableCRLDP:Z

.field private _enableOCSP:Z

.field private _maxCertPathLength:I

.field private _ocspResponderURL:Ljava/lang/String;

.field private transient _trustStorePassword:Lorg/eclipse/jetty/util/security/Password;

.field private _trustStorePath:Ljava/lang/String;

.field private _trustStoreProvider:Ljava/lang/String;

.field private _trustStoreType:Ljava/lang/String;

.field private _validateCerts:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;-><init>()V

    .line 57
    const-string v0, "JKS"

    iput-object v0, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_trustStoreType:Ljava/lang/String;

    .line 66
    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_maxCertPathLength:I

    .line 68
    iput-boolean v1, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_enableCRLDP:Z

    .line 70
    iput-boolean v1, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_enableOCSP:Z

    .line 77
    return-void
.end method


# virtual methods
.method public getAuthMethod()Ljava/lang/String;
    .locals 1

    .prologue
    .line 81
    const-string v0, "CLIENT_CERT"

    return-object v0
.end method

.method public getCrlPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 283
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_crlPath:Ljava/lang/String;

    return-object v0
.end method

.method protected getKeyStore(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;
    .locals 1
    .param p1, "storeStream"    # Ljava/io/InputStream;
    .param p2, "storePath"    # Ljava/lang/String;
    .param p3, "storeType"    # Ljava/lang/String;
    .param p4, "storeProvider"    # Ljava/lang/String;
    .param p5, "storePassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 166
    invoke-static {p1, p2, p3, p4, p5}, Lorg/eclipse/jetty/util/security/CertificateUtils;->getKeyStore(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    return-object v0
.end method

.method public getMaxCertPathLength()I
    .locals 1

    .prologue
    .line 301
    iget v0, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_maxCertPathLength:I

    return v0
.end method

.method public getOcspResponderURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 357
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_ocspResponderURL:Ljava/lang/String;

    return-object v0
.end method

.method public getTrustStore()Ljava/lang/String;
    .locals 1

    .prologue
    .line 216
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_trustStorePath:Ljava/lang/String;

    return-object v0
.end method

.method public getTrustStoreProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 235
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_trustStoreProvider:Ljava/lang/String;

    return-object v0
.end method

.method public getTrustStoreType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_trustStoreType:Ljava/lang/String;

    return-object v0
.end method

.method public isEnableCRLDP()Z
    .locals 1

    .prologue
    .line 321
    iget-boolean v0, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_enableCRLDP:Z

    return v0
.end method

.method public isEnableOCSP()Z
    .locals 1

    .prologue
    .line 339
    iget-boolean v0, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_enableOCSP:Z

    return v0
.end method

.method public isValidateCerts()Z
    .locals 1

    .prologue
    .line 197
    iget-boolean v0, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_validateCerts:Z

    return v0
.end method

.method protected loadCRL(Ljava/lang/String;)Ljava/util/Collection;
    .locals 1
    .param p1, "crlPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<+",
            "Ljava/security/cert/CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 183
    invoke-static {p1}, Lorg/eclipse/jetty/util/security/CertificateUtils;->loadCRL(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public secureResponse(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;ZLorg/eclipse/jetty/server/Authentication$User;)Z
    .locals 1
    .param p1, "req"    # Ljavax/servlet/ServletRequest;
    .param p2, "res"    # Ljavax/servlet/ServletResponse;
    .param p3, "mandatory"    # Z
    .param p4, "validatedUser"    # Lorg/eclipse/jetty/server/Authentication$User;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jetty/security/ServerAuthException;
        }
    .end annotation

    .prologue
    .line 188
    const/4 v0, 0x1

    return v0
.end method

.method public setCrlPath(Ljava/lang/String;)V
    .locals 0
    .param p1, "crlPath"    # Ljava/lang/String;

    .prologue
    .line 292
    iput-object p1, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_crlPath:Ljava/lang/String;

    .line 293
    return-void
.end method

.method public setEnableCRLDP(Z)V
    .locals 0
    .param p1, "enableCRLDP"    # Z

    .prologue
    .line 330
    iput-boolean p1, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_enableCRLDP:Z

    .line 331
    return-void
.end method

.method public setEnableOCSP(Z)V
    .locals 0
    .param p1, "enableOCSP"    # Z

    .prologue
    .line 348
    iput-boolean p1, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_enableOCSP:Z

    .line 349
    return-void
.end method

.method public setMaxCertPathLength(I)V
    .locals 0
    .param p1, "maxCertPathLength"    # I

    .prologue
    .line 312
    iput p1, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_maxCertPathLength:I

    .line 313
    return-void
.end method

.method public setOcspResponderURL(Ljava/lang/String;)V
    .locals 0
    .param p1, "ocspResponderURL"    # Ljava/lang/String;

    .prologue
    .line 366
    iput-object p1, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_ocspResponderURL:Ljava/lang/String;

    .line 367
    return-void
.end method

.method public setTrustStore(Ljava/lang/String;)V
    .locals 0
    .param p1, "trustStorePath"    # Ljava/lang/String;

    .prologue
    .line 226
    iput-object p1, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_trustStorePath:Ljava/lang/String;

    .line 227
    return-void
.end method

.method public setTrustStorePassword(Ljava/lang/String;)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 274
    const-string v0, "org.eclipse.jetty.ssl.password"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lorg/eclipse/jetty/util/security/Password;->getPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jetty/util/security/Password;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_trustStorePassword:Lorg/eclipse/jetty/util/security/Password;

    .line 275
    return-void
.end method

.method public setTrustStoreProvider(Ljava/lang/String;)V
    .locals 0
    .param p1, "trustStoreProvider"    # Ljava/lang/String;

    .prologue
    .line 245
    iput-object p1, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_trustStoreProvider:Ljava/lang/String;

    .line 246
    return-void
.end method

.method public setTrustStoreType(Ljava/lang/String;)V
    .locals 0
    .param p1, "trustStoreType"    # Ljava/lang/String;

    .prologue
    .line 264
    iput-object p1, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_trustStoreType:Ljava/lang/String;

    .line 265
    return-void
.end method

.method public setValidateCerts(Z)V
    .locals 0
    .param p1, "validateCerts"    # Z

    .prologue
    .line 207
    iput-boolean p1, p0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_validateCerts:Z

    .line 208
    return-void
.end method

.method public validateRequest(Ljavax/servlet/ServletRequest;Ljavax/servlet/ServletResponse;Z)Lorg/eclipse/jetty/server/Authentication;
    .locals 24
    .param p1, "req"    # Ljavax/servlet/ServletRequest;
    .param p2, "res"    # Ljavax/servlet/ServletResponse;
    .param p3, "mandatory"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/eclipse/jetty/security/ServerAuthException;
        }
    .end annotation

    .prologue
    .line 92
    if-nez p3, :cond_0

    .line 93
    new-instance v3, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;

    move-object/from16 v0, p0

    invoke-direct {v3, v0}, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;-><init>(Lorg/eclipse/jetty/security/authentication/LoginAuthenticator;)V

    .line 140
    :goto_0
    return-object v3

    :cond_0
    move-object/from16 v18, p1

    .line 95
    check-cast v18, Ljavax/servlet/http/HttpServletRequest;

    .local v18, "request":Ljavax/servlet/http/HttpServletRequest;
    move-object/from16 v19, p2

    .line 96
    check-cast v19, Ljavax/servlet/http/HttpServletResponse;

    .line 97
    .local v19, "response":Ljavax/servlet/http/HttpServletResponse;
    const-string v3, "javax.servlet.request.X509Certificate"

    move-object/from16 v0, v18

    invoke-interface {v0, v3}, Ljavax/servlet/http/HttpServletRequest;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/security/cert/X509Certificate;

    move-object v11, v3

    check-cast v11, [Ljava/security/cert/X509Certificate;

    .line 102
    .local v11, "certs":[Ljava/security/cert/X509Certificate;
    if-eqz v11, :cond_7

    :try_start_0
    array-length v3, v11

    if-lez v3, :cond_7

    .line 105
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_validateCerts:Z

    if-eqz v3, :cond_1

    .line 107
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_trustStorePath:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_trustStoreType:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_trustStoreProvider:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_trustStorePassword:Lorg/eclipse/jetty/util/security/Password;

    if-nez v3, :cond_3

    const/4 v8, 0x0

    :goto_1
    move-object/from16 v3, p0

    invoke-virtual/range {v3 .. v8}, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->getKeyStore(Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v20

    .line 110
    .local v20, "trustStore":Ljava/security/KeyStore;
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_crlPath:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->loadCRL(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v13

    .line 111
    .local v13, "crls":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/security/cert/CRL;>;"
    new-instance v23, Lorg/eclipse/jetty/util/security/CertificateValidator;

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-direct {v0, v1, v13}, Lorg/eclipse/jetty/util/security/CertificateValidator;-><init>(Ljava/security/KeyStore;Ljava/util/Collection;)V

    .line 112
    .local v23, "validator":Lorg/eclipse/jetty/util/security/CertificateValidator;
    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Lorg/eclipse/jetty/util/security/CertificateValidator;->validate([Ljava/security/cert/Certificate;)V

    .line 115
    .end local v13    # "crls":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/security/cert/CRL;>;"
    .end local v20    # "trustStore":Ljava/security/KeyStore;
    .end local v23    # "validator":Lorg/eclipse/jetty/util/security/CertificateValidator;
    :cond_1
    move-object v9, v11

    .local v9, "arr$":[Ljava/security/cert/X509Certificate;
    array-length v0, v9

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v15, 0x0

    .local v15, "i$":I
    :goto_2
    move/from16 v0, v16

    if-ge v15, v0, :cond_7

    aget-object v10, v9, v15

    .line 117
    .local v10, "cert":Ljava/security/cert/X509Certificate;
    if-nez v10, :cond_4

    .line 115
    :cond_2
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 107
    .end local v9    # "arr$":[Ljava/security/cert/X509Certificate;
    .end local v10    # "cert":Ljava/security/cert/X509Certificate;
    .end local v15    # "i$":I
    .end local v16    # "len$":I
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->_trustStorePassword:Lorg/eclipse/jetty/util/security/Password;

    invoke-virtual {v3}, Lorg/eclipse/jetty/util/security/Password;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 120
    .restart local v9    # "arr$":[Ljava/security/cert/X509Certificate;
    .restart local v10    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v15    # "i$":I
    .restart local v16    # "len$":I
    :cond_4
    invoke-virtual {v10}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v17

    .line 121
    .local v17, "principal":Ljava/security/Principal;
    if-nez v17, :cond_5

    invoke-virtual {v10}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v17

    .line 122
    :cond_5
    if-nez v17, :cond_6

    const-string v22, "clientcert"

    .line 124
    .local v22, "username":Ljava/lang/String;
    :goto_3
    invoke-virtual {v10}, Ljava/security/cert/X509Certificate;->getSignature()[B

    move-result-object v3

    invoke-static {v3}, Lorg/eclipse/jetty/util/B64Code;->encode([B)[C

    move-result-object v12

    .line 126
    .local v12, "credential":[C
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    move-object/from16 v2, p1

    invoke-virtual {v0, v1, v12, v2}, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->login(Ljava/lang/String;Ljava/lang/Object;Ljavax/servlet/ServletRequest;)Lorg/eclipse/jetty/server/UserIdentity;

    move-result-object v21

    .line 127
    .local v21, "user":Lorg/eclipse/jetty/server/UserIdentity;
    if-eqz v21, :cond_2

    .line 129
    new-instance v3, Lorg/eclipse/jetty/security/UserAuthentication;

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/security/authentication/ClientCertAuthenticator;->getAuthMethod()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, v21

    invoke-direct {v3, v4, v0}, Lorg/eclipse/jetty/security/UserAuthentication;-><init>(Ljava/lang/String;Lorg/eclipse/jetty/server/UserIdentity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 142
    .end local v9    # "arr$":[Ljava/security/cert/X509Certificate;
    .end local v10    # "cert":Ljava/security/cert/X509Certificate;
    .end local v12    # "credential":[C
    .end local v15    # "i$":I
    .end local v16    # "len$":I
    .end local v17    # "principal":Ljava/security/Principal;
    .end local v21    # "user":Lorg/eclipse/jetty/server/UserIdentity;
    .end local v22    # "username":Ljava/lang/String;
    :catch_0
    move-exception v14

    .line 144
    .local v14, "e":Ljava/lang/Exception;
    new-instance v3, Lorg/eclipse/jetty/security/ServerAuthException;

    invoke-virtual {v14}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/eclipse/jetty/security/ServerAuthException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 122
    .end local v14    # "e":Ljava/lang/Exception;
    .restart local v9    # "arr$":[Ljava/security/cert/X509Certificate;
    .restart local v10    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v15    # "i$":I
    .restart local v16    # "len$":I
    .restart local v17    # "principal":Ljava/security/Principal;
    :cond_6
    :try_start_1
    invoke-interface/range {v17 .. v17}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v22

    goto :goto_3

    .line 134
    .end local v9    # "arr$":[Ljava/security/cert/X509Certificate;
    .end local v10    # "cert":Ljava/security/cert/X509Certificate;
    .end local v15    # "i$":I
    .end local v16    # "len$":I
    .end local v17    # "principal":Ljava/security/Principal;
    :cond_7
    invoke-static/range {v19 .. v19}, Lorg/eclipse/jetty/security/authentication/DeferredAuthentication;->isDeferred(Ljavax/servlet/http/HttpServletResponse;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 136
    const/16 v3, 0x193

    move-object/from16 v0, v19

    invoke-interface {v0, v3}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    .line 137
    sget-object v3, Lorg/eclipse/jetty/server/Authentication;->SEND_FAILURE:Lorg/eclipse/jetty/server/Authentication;

    goto/16 :goto_0

    .line 140
    :cond_8
    sget-object v3, Lorg/eclipse/jetty/server/Authentication;->UNAUTHENTICATED:Lorg/eclipse/jetty/server/Authentication;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
