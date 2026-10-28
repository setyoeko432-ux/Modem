.class public Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;
.super Lorg/eclipse/jetty/server/nio/SelectChannelConnector;
.source "SslSelectChannelConnector.java"

# interfaces
.implements Lorg/eclipse/jetty/server/ssl/SslConnector;


# instance fields
.field private _sslBuffers:Lorg/eclipse/jetty/io/Buffers;

.field private final _sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 58
    new-instance v0, Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    sget-object v1, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->DEFAULT_KEYSTORE_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;-><init>(Lorg/eclipse/jetty/util/ssl/SslContextFactory;)V

    .line 59
    const/16 v0, 0x7530

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->setSoLingerTime(I)V

    .line 60
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/util/ssl/SslContextFactory;)V
    .locals 1
    .param p1, "sslContextFactory"    # Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    .prologue
    .line 69
    invoke-direct {p0}, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;-><init>()V

    .line 70
    iput-object p1, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    .line 71
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->addBean(Ljava/lang/Object;)Z

    .line 72
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->setUseDirectBuffers(Z)V

    .line 73
    const/16 v0, 0x7530

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->setSoLingerTime(I)V

    .line 74
    return-void
.end method


# virtual methods
.method protected createSSLEngine(Ljava/nio/channels/SocketChannel;)Ljavax/net/ssl/SSLEngine;
    .locals 4
    .param p1, "channel"    # Ljava/nio/channels/SocketChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 589
    if-eqz p1, :cond_0

    .line 591
    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v1

    .line 592
    .local v1, "peerHost":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->getPort()I

    move-result v2

    .line 593
    .local v2, "peerPort":I
    iget-object v3, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v3, v1, v2}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->newSslEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    .line 600
    .end local v1    # "peerHost":Ljava/lang/String;
    .end local v2    # "peerPort":I
    .local v0, "engine":Ljavax/net/ssl/SSLEngine;
    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljavax/net/ssl/SSLEngine;->setUseClientMode(Z)V

    .line 601
    return-object v0

    .line 597
    .end local v0    # "engine":Ljavax/net/ssl/SSLEngine;
    :cond_0
    iget-object v3, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v3}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->newSslEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v0

    .restart local v0    # "engine":Ljavax/net/ssl/SSLEngine;
    goto :goto_0
.end method

.method public customize(Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/server/Request;)V
    .locals 4
    .param p1, "endpoint"    # Lorg/eclipse/jetty/io/EndPoint;
    .param p2, "request"    # Lorg/eclipse/jetty/server/Request;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 105
    const-string v3, "https"

    invoke-virtual {p2, v3}, Lorg/eclipse/jetty/server/Request;->setScheme(Ljava/lang/String;)V

    .line 106
    invoke-super {p0, p1, p2}, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->customize(Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/server/Request;)V

    move-object v0, p1

    .line 108
    check-cast v0, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;

    .line 109
    .local v0, "sslEndpoint":Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;
    invoke-virtual {v0}, Lorg/eclipse/jetty/io/nio/SslConnection$SslEndPoint;->getSslEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v1

    .line 110
    .local v1, "sslEngine":Ljavax/net/ssl/SSLEngine;
    invoke-virtual {v1}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v2

    .line 112
    .local v2, "sslSession":Ljavax/net/ssl/SSLSession;
    invoke-static {v2, p1, p2}, Lorg/eclipse/jetty/server/ssl/SslCertificates;->customize(Ljavax/net/ssl/SSLSession;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/server/Request;)V

    .line 113
    return-void
.end method

.method protected doStart()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 611
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->checkKeyStore()V

    .line 612
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->start()V

    .line 614
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->newSslEngine()Ljavax/net/ssl/SSLEngine;

    move-result-object v6

    .line 616
    .local v6, "sslEngine":Ljavax/net/ssl/SSLEngine;
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Ljavax/net/ssl/SSLEngine;->setUseClientMode(Z)V

    .line 618
    invoke-virtual {v6}, Ljavax/net/ssl/SSLEngine;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v7

    .line 620
    .local v7, "sslSession":Ljavax/net/ssl/SSLSession;
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->getUseDirectBuffers()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lorg/eclipse/jetty/io/Buffers$Type;->DIRECT:Lorg/eclipse/jetty/io/Buffers$Type;

    :goto_0
    invoke-interface {v7}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v1

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->getUseDirectBuffers()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lorg/eclipse/jetty/io/Buffers$Type;->DIRECT:Lorg/eclipse/jetty/io/Buffers$Type;

    :goto_1
    invoke-interface {v7}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v3

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->getUseDirectBuffers()Z

    move-result v4

    if-eqz v4, :cond_4

    sget-object v4, Lorg/eclipse/jetty/io/Buffers$Type;->DIRECT:Lorg/eclipse/jetty/io/Buffers$Type;

    :goto_2
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->getMaxBuffers()I

    move-result v5

    invoke-static/range {v0 .. v5}, Lorg/eclipse/jetty/io/BuffersFactory;->newBuffers(Lorg/eclipse/jetty/io/Buffers$Type;ILorg/eclipse/jetty/io/Buffers$Type;ILorg/eclipse/jetty/io/Buffers$Type;I)Lorg/eclipse/jetty/io/Buffers;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslBuffers:Lorg/eclipse/jetty/io/Buffers;

    .line 626
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->getRequestHeaderSize()I

    move-result v0

    invoke-interface {v7}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 627
    invoke-interface {v7}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->setRequestHeaderSize(I)V

    .line 628
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->getRequestBufferSize()I

    move-result v0

    invoke-interface {v7}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 629
    invoke-interface {v7}, Ljavax/net/ssl/SSLSession;->getApplicationBufferSize()I

    move-result v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->setRequestBufferSize(I)V

    .line 631
    :cond_1
    invoke-super {p0}, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->doStart()V

    .line 632
    return-void

    .line 620
    :cond_2
    sget-object v0, Lorg/eclipse/jetty/io/Buffers$Type;->INDIRECT:Lorg/eclipse/jetty/io/Buffers$Type;

    goto :goto_0

    :cond_3
    sget-object v2, Lorg/eclipse/jetty/io/Buffers$Type;->INDIRECT:Lorg/eclipse/jetty/io/Buffers$Type;

    goto :goto_1

    :cond_4
    sget-object v4, Lorg/eclipse/jetty/io/Buffers$Type;->INDIRECT:Lorg/eclipse/jetty/io/Buffers$Type;

    goto :goto_2
.end method

.method protected doStop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 641
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslBuffers:Lorg/eclipse/jetty/io/Buffers;

    .line 642
    invoke-super {p0}, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->doStop()V

    .line 643
    return-void
.end method

.method public getAlgorithm()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 229
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getExcludeCipherSuites()[Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 150
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getExcludeCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIncludeCipherSuites()[Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 172
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getIncludeCipherSuites()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeystore()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 286
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getKeyStorePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeystoreType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 297
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getKeyStoreType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNeedClientAuth()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 308
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getNeedClientAuth()Z

    move-result v0

    return v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 253
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getProtocol()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 363
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getProvider()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSecureRandomAlgorithm()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 374
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getSecureRandomAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSslBuffers()Lorg/eclipse/jetty/io/Buffers;
    .locals 1

    .prologue
    .line 651
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslBuffers:Lorg/eclipse/jetty/io/Buffers;

    return-object v0
.end method

.method public getSslContext()Ljavax/net/ssl/SSLContext;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 506
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getSslContext()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    return-object v0
.end method

.method public getSslContextFactory()Lorg/eclipse/jetty/util/ssl/SslContextFactory;
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    return-object v0
.end method

.method public getSslKeyManagerFactoryAlgorithm()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 385
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getSslKeyManagerFactoryAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSslTrustManagerFactoryAlgorithm()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 396
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getTrustManagerFactoryAlgorithm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTruststore()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 407
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getTrustStore()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTruststoreType()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 418
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getTrustStoreType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getWantClientAuth()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 319
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->getWantClientAuth()Z

    move-result v0

    return v0
.end method

.method public isAllowRenegotiate()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->isAllowRenegotiate()Z

    move-result v0

    return v0
.end method

.method public isConfidential(Lorg/eclipse/jetty/server/Request;)Z
    .locals 2
    .param p1, "request"    # Lorg/eclipse/jetty/server/Request;

    .prologue
    .line 530
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->getConfidentialPort()I

    move-result v0

    .line 531
    .local v0, "confidentialPort":I
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Request;->getServerPort()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isIntegral(Lorg/eclipse/jetty/server/Request;)Z
    .locals 2
    .param p1, "request"    # Lorg/eclipse/jetty/server/Request;

    .prologue
    .line 546
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->getIntegralPort()I

    move-result v0

    .line 547
    .local v0, "integralPort":I
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jetty/server/Request;->getServerPort()I

    move-result v1

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected newConnection(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/AsyncEndPoint;)Lorg/eclipse/jetty/io/nio/AsyncConnection;
    .locals 5
    .param p1, "channel"    # Ljava/nio/channels/SocketChannel;
    .param p2, "endpoint"    # Lorg/eclipse/jetty/io/AsyncEndPoint;

    .prologue
    .line 556
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->createSSLEngine(Ljava/nio/channels/SocketChannel;)Ljavax/net/ssl/SSLEngine;

    move-result-object v3

    .line 557
    .local v3, "engine":Ljavax/net/ssl/SSLEngine;
    invoke-virtual {p0, p2, v3}, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->newSslConnection(Lorg/eclipse/jetty/io/AsyncEndPoint;Ljavax/net/ssl/SSLEngine;)Lorg/eclipse/jetty/io/nio/SslConnection;

    move-result-object v0

    .line 558
    .local v0, "connection":Lorg/eclipse/jetty/io/nio/SslConnection;
    invoke-virtual {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->getSslEndPoint()Lorg/eclipse/jetty/io/AsyncEndPoint;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->newPlainConnection(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/AsyncEndPoint;)Lorg/eclipse/jetty/io/nio/AsyncConnection;

    move-result-object v1

    .line 559
    .local v1, "delegate":Lorg/eclipse/jetty/io/nio/AsyncConnection;
    invoke-virtual {v0}, Lorg/eclipse/jetty/io/nio/SslConnection;->getSslEndPoint()Lorg/eclipse/jetty/io/AsyncEndPoint;

    move-result-object v4

    invoke-interface {v4, v1}, Lorg/eclipse/jetty/io/AsyncEndPoint;->setConnection(Lorg/eclipse/jetty/io/Connection;)V

    .line 560
    iget-object v4, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v4}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->isAllowRenegotiate()Z

    move-result v4

    invoke-virtual {v0, v4}, Lorg/eclipse/jetty/io/nio/SslConnection;->setAllowRenegotiate(Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 561
    return-object v0

    .line 563
    .end local v0    # "connection":Lorg/eclipse/jetty/io/nio/SslConnection;
    .end local v1    # "delegate":Lorg/eclipse/jetty/io/nio/AsyncConnection;
    .end local v3    # "engine":Ljavax/net/ssl/SSLEngine;
    :catch_0
    move-exception v2

    .line 565
    .local v2, "e":Ljava/io/IOException;
    new-instance v4, Lorg/eclipse/jetty/io/RuntimeIOException;

    invoke-direct {v4, v2}, Lorg/eclipse/jetty/io/RuntimeIOException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method protected newPlainConnection(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/AsyncEndPoint;)Lorg/eclipse/jetty/io/nio/AsyncConnection;
    .locals 1
    .param p1, "channel"    # Ljava/nio/channels/SocketChannel;
    .param p2, "endPoint"    # Lorg/eclipse/jetty/io/AsyncEndPoint;

    .prologue
    .line 571
    invoke-super {p0, p1, p2}, Lorg/eclipse/jetty/server/nio/SelectChannelConnector;->newConnection(Ljava/nio/channels/SocketChannel;Lorg/eclipse/jetty/io/AsyncEndPoint;)Lorg/eclipse/jetty/io/nio/AsyncConnection;

    move-result-object v0

    return-object v0
.end method

.method protected newSslConnection(Lorg/eclipse/jetty/io/AsyncEndPoint;Ljavax/net/ssl/SSLEngine;)Lorg/eclipse/jetty/io/nio/SslConnection;
    .locals 1
    .param p1, "endpoint"    # Lorg/eclipse/jetty/io/AsyncEndPoint;
    .param p2, "engine"    # Ljavax/net/ssl/SSLEngine;

    .prologue
    .line 576
    new-instance v0, Lorg/eclipse/jetty/io/nio/SslConnection;

    invoke-direct {v0, p2, p1}, Lorg/eclipse/jetty/io/nio/SslConnection;-><init>(Ljavax/net/ssl/SSLEngine;Lorg/eclipse/jetty/io/EndPoint;)V

    return-object v0
.end method

.method public setAlgorithm(Ljava/lang/String;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 242
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setAllowRenegotiate(Z)V
    .locals 1
    .param p1, "allowRenegotiate"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 139
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setAllowRenegotiate(Z)V

    .line 140
    return-void
.end method

.method public setExcludeCipherSuites([Ljava/lang/String;)V
    .locals 1
    .param p1, "cipherSuites"    # [Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 161
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setExcludeCipherSuites([Ljava/lang/String;)V

    .line 162
    return-void
.end method

.method public setIncludeCipherSuites([Ljava/lang/String;)V
    .locals 1
    .param p1, "cipherSuites"    # [Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 183
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setIncludeCipherSuites([Ljava/lang/String;)V

    .line 184
    return-void
.end method

.method public setKeyPassword(Ljava/lang/String;)V
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 216
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setKeyManagerPassword(Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method public setKeystore(Ljava/lang/String;)V
    .locals 1
    .param p1, "keystore"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 275
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setKeyStorePath(Ljava/lang/String;)V

    .line 276
    return-void
.end method

.method public setKeystoreType(Ljava/lang/String;)V
    .locals 1
    .param p1, "keystoreType"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 352
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setKeyStoreType(Ljava/lang/String;)V

    .line 353
    return-void
.end method

.method public setNeedClientAuth(Z)V
    .locals 1
    .param p1, "needClientAuth"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 330
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setNeedClientAuth(Z)V

    .line 331
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 194
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setKeyStorePassword(Ljava/lang/String;)V

    .line 195
    return-void
.end method

.method public setProtocol(Ljava/lang/String;)V
    .locals 1
    .param p1, "protocol"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 264
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setProtocol(Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method public setProvider(Ljava/lang/String;)V
    .locals 1
    .param p1, "provider"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 429
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setProvider(Ljava/lang/String;)V

    .line 430
    return-void
.end method

.method public setSecureRandomAlgorithm(Ljava/lang/String;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 440
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setSecureRandomAlgorithm(Ljava/lang/String;)V

    .line 441
    return-void
.end method

.method public setSslContext(Ljavax/net/ssl/SSLContext;)V
    .locals 1
    .param p1, "sslContext"    # Ljavax/net/ssl/SSLContext;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 495
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setSslContext(Ljavax/net/ssl/SSLContext;)V

    .line 496
    return-void
.end method

.method public setSslKeyManagerFactoryAlgorithm(Ljava/lang/String;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 451
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setSslKeyManagerFactoryAlgorithm(Ljava/lang/String;)V

    .line 452
    return-void
.end method

.method public setSslTrustManagerFactoryAlgorithm(Ljava/lang/String;)V
    .locals 1
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 462
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setTrustManagerFactoryAlgorithm(Ljava/lang/String;)V

    .line 463
    return-void
.end method

.method public setTrustPassword(Ljava/lang/String;)V
    .locals 1
    .param p1, "password"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 205
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setTrustStorePassword(Ljava/lang/String;)V

    .line 206
    return-void
.end method

.method public setTruststore(Ljava/lang/String;)V
    .locals 1
    .param p1, "truststore"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 473
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setTrustStore(Ljava/lang/String;)V

    .line 474
    return-void
.end method

.method public setTruststoreType(Ljava/lang/String;)V
    .locals 1
    .param p1, "truststoreType"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 484
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setTrustStoreType(Ljava/lang/String;)V

    .line 485
    return-void
.end method

.method public setWantClientAuth(Z)V
    .locals 1
    .param p1, "wantClientAuth"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 341
    iget-object v0, p0, Lorg/eclipse/jetty/server/ssl/SslSelectChannelConnector;->_sslContextFactory:Lorg/eclipse/jetty/util/ssl/SslContextFactory;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/ssl/SslContextFactory;->setWantClientAuth(Z)V

    .line 342
    return-void
.end method
