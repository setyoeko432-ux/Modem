.class public abstract Lorg/eclipse/jetty/server/AbstractHttpConnection;
.super Lorg/eclipse/jetty/io/AbstractConnection;
.source "AbstractHttpConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/server/AbstractHttpConnection$OutputWriter;,
        Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;,
        Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field private static final UNKNOWN:I = -0x2

.field private static final __currentConnection:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lorg/eclipse/jetty/server/AbstractHttpConnection;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private _associatedObject:Ljava/lang/Object;

.field private _charset:Ljava/lang/String;

.field protected final _connector:Lorg/eclipse/jetty/server/Connector;

.field private _delayedHandling:Z

.field private _earlyEOF:Z

.field private _expect:Z

.field private _expect100Continue:Z

.field private _expect102Processing:Z

.field protected final _generator:Lorg/eclipse/jetty/http/Generator;

.field private _head:Z

.field private _host:Z

.field protected volatile _in:Ljavax/servlet/ServletInputStream;

.field _include:I

.field protected volatile _out:Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;

.field protected final _parser:Lorg/eclipse/jetty/http/Parser;

.field protected volatile _printWriter:Ljava/io/PrintWriter;

.field protected final _request:Lorg/eclipse/jetty/server/Request;

.field protected final _requestFields:Lorg/eclipse/jetty/http/HttpFields;

.field private _requests:I

.field protected final _response:Lorg/eclipse/jetty/server/Response;

.field protected final _responseFields:Lorg/eclipse/jetty/http/HttpFields;

.field protected final _server:Lorg/eclipse/jetty/server/Server;

.field protected final _uri:Lorg/eclipse/jetty/http/HttpURI;

.field private _version:I

.field protected volatile _writer:Lorg/eclipse/jetty/server/AbstractHttpConnection$OutputWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 102
    const-class v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 105
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->__currentConnection:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/server/Connector;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/server/Server;)V
    .locals 4
    .param p1, "connector"    # Lorg/eclipse/jetty/server/Connector;
    .param p2, "endpoint"    # Lorg/eclipse/jetty/io/EndPoint;
    .param p3, "server"    # Lorg/eclipse/jetty/server/Server;

    .prologue
    const/4 v2, 0x0

    .line 155
    invoke-direct {p0, p2}, Lorg/eclipse/jetty/io/AbstractConnection;-><init>(Lorg/eclipse/jetty/io/EndPoint;)V

    .line 129
    const/4 v1, -0x2

    iput v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_version:I

    .line 132
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect:Z

    .line 133
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect100Continue:Z

    .line 134
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect102Processing:Z

    .line 135
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_head:Z

    .line 136
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_host:Z

    .line 137
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_delayedHandling:Z

    .line 138
    iput-boolean v2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_earlyEOF:Z

    .line 156
    const-string v1, "UTF-8"

    sget-object v2, Lorg/eclipse/jetty/util/URIUtil;->__CHARSET:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lorg/eclipse/jetty/http/HttpURI;

    invoke-direct {v1}, Lorg/eclipse/jetty/http/HttpURI;-><init>()V

    :goto_0
    iput-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    .line 157
    iput-object p1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_connector:Lorg/eclipse/jetty/server/Connector;

    .line 158
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_connector:Lorg/eclipse/jetty/server/Connector;

    check-cast v0, Lorg/eclipse/jetty/http/HttpBuffers;

    .line 159
    .local v0, "ab":Lorg/eclipse/jetty/http/HttpBuffers;
    invoke-interface {v0}, Lorg/eclipse/jetty/http/HttpBuffers;->getRequestBuffers()Lorg/eclipse/jetty/io/Buffers;

    move-result-object v1

    new-instance v2, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lorg/eclipse/jetty/server/AbstractHttpConnection$RequestHandler;-><init>(Lorg/eclipse/jetty/server/AbstractHttpConnection;Lorg/eclipse/jetty/server/AbstractHttpConnection$1;)V

    invoke-virtual {p0, v1, p2, v2}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->newHttpParser(Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/http/HttpParser$EventHandler;)Lorg/eclipse/jetty/http/HttpParser;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    .line 160
    new-instance v1, Lorg/eclipse/jetty/http/HttpFields;

    invoke-direct {v1}, Lorg/eclipse/jetty/http/HttpFields;-><init>()V

    iput-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_requestFields:Lorg/eclipse/jetty/http/HttpFields;

    .line 161
    new-instance v1, Lorg/eclipse/jetty/http/HttpFields;

    invoke-direct {v1}, Lorg/eclipse/jetty/http/HttpFields;-><init>()V

    iput-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    .line 162
    new-instance v1, Lorg/eclipse/jetty/server/Request;

    invoke-direct {v1, p0}, Lorg/eclipse/jetty/server/Request;-><init>(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V

    iput-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    .line 163
    new-instance v1, Lorg/eclipse/jetty/server/Response;

    invoke-direct {v1, p0}, Lorg/eclipse/jetty/server/Response;-><init>(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V

    iput-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    .line 164
    invoke-interface {v0}, Lorg/eclipse/jetty/http/HttpBuffers;->getResponseBuffers()Lorg/eclipse/jetty/io/Buffers;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->newHttpGenerator(Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/EndPoint;)Lorg/eclipse/jetty/http/HttpGenerator;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    .line 165
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-virtual {p3}, Lorg/eclipse/jetty/server/Server;->getSendServerVersion()Z

    move-result v2

    invoke-interface {v1, v2}, Lorg/eclipse/jetty/http/Generator;->setSendServerVersion(Z)V

    .line 166
    iput-object p3, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_server:Lorg/eclipse/jetty/server/Server;

    .line 167
    return-void

    .line 156
    .end local v0    # "ab":Lorg/eclipse/jetty/http/HttpBuffers;
    :cond_0
    new-instance v1, Lorg/eclipse/jetty/http/EncodedHttpURI;

    sget-object v2, Lorg/eclipse/jetty/util/URIUtil;->__CHARSET:Ljava/lang/String;

    invoke-direct {v1, v2}, Lorg/eclipse/jetty/http/EncodedHttpURI;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected constructor <init>(Lorg/eclipse/jetty/server/Connector;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/server/Server;Lorg/eclipse/jetty/http/Parser;Lorg/eclipse/jetty/http/Generator;Lorg/eclipse/jetty/server/Request;)V
    .locals 2
    .param p1, "connector"    # Lorg/eclipse/jetty/server/Connector;
    .param p2, "endpoint"    # Lorg/eclipse/jetty/io/EndPoint;
    .param p3, "server"    # Lorg/eclipse/jetty/server/Server;
    .param p4, "parser"    # Lorg/eclipse/jetty/http/Parser;
    .param p5, "generator"    # Lorg/eclipse/jetty/http/Generator;
    .param p6, "request"    # Lorg/eclipse/jetty/server/Request;

    .prologue
    const/4 v1, 0x0

    .line 173
    invoke-direct {p0, p2}, Lorg/eclipse/jetty/io/AbstractConnection;-><init>(Lorg/eclipse/jetty/io/EndPoint;)V

    .line 129
    const/4 v0, -0x2

    iput v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_version:I

    .line 132
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect:Z

    .line 133
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect100Continue:Z

    .line 134
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect102Processing:Z

    .line 135
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_head:Z

    .line 136
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_host:Z

    .line 137
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_delayedHandling:Z

    .line 138
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_earlyEOF:Z

    .line 175
    sget-object v0, Lorg/eclipse/jetty/util/URIUtil;->__CHARSET:Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lorg/eclipse/jetty/http/HttpURI;

    invoke-direct {v0}, Lorg/eclipse/jetty/http/HttpURI;-><init>()V

    :goto_0
    iput-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    .line 176
    iput-object p1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_connector:Lorg/eclipse/jetty/server/Connector;

    .line 177
    iput-object p4, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    .line 178
    new-instance v0, Lorg/eclipse/jetty/http/HttpFields;

    invoke-direct {v0}, Lorg/eclipse/jetty/http/HttpFields;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_requestFields:Lorg/eclipse/jetty/http/HttpFields;

    .line 179
    new-instance v0, Lorg/eclipse/jetty/http/HttpFields;

    invoke-direct {v0}, Lorg/eclipse/jetty/http/HttpFields;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    .line 180
    iput-object p6, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    .line 181
    new-instance v0, Lorg/eclipse/jetty/server/Response;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/server/Response;-><init>(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    .line 182
    iput-object p5, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    .line 183
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-virtual {p3}, Lorg/eclipse/jetty/server/Server;->getSendServerVersion()Z

    move-result v1

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/http/Generator;->setSendServerVersion(Z)V

    .line 184
    iput-object p3, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_server:Lorg/eclipse/jetty/server/Server;

    .line 185
    return-void

    .line 175
    :cond_0
    new-instance v0, Lorg/eclipse/jetty/http/EncodedHttpURI;

    sget-object v1, Lorg/eclipse/jetty/util/URIUtil;->__CHARSET:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/http/EncodedHttpURI;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static synthetic access$100()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method public static getCurrentConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;
    .locals 1

    .prologue
    .line 143
    sget-object v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->__currentConnection:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;

    return-object v0
.end method

.method protected static setCurrentConnection(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V
    .locals 1
    .param p0, "connection"    # Lorg/eclipse/jetty/server/AbstractHttpConnection;

    .prologue
    .line 149
    sget-object v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->__currentConnection:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 150
    return-void
.end method


# virtual methods
.method public commitResponse(Z)V
    .locals 6
    .param p1, "last"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x1f4

    const/4 v4, 0x0

    .line 625
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v1}, Lorg/eclipse/jetty/http/Generator;->isCommitted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 627
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    iget-object v2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/Response;->getStatus()I

    move-result v2

    iget-object v3, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/Response;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/http/Generator;->setResponse(ILjava/lang/String;)V

    .line 632
    :try_start_0
    iget-boolean v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect100Continue:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/Response;->getStatus()I

    move-result v1

    const/16 v2, 0x64

    if-eq v1, v2, :cond_0

    .line 633
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/eclipse/jetty/http/Generator;->setPersistent(Z)V

    .line 634
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    iget-object v2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    invoke-interface {v1, v2, p1}, Lorg/eclipse/jetty/http/Generator;->completeHeader(Lorg/eclipse/jetty/http/HttpFields;Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 649
    :cond_1
    if-eqz p1, :cond_2

    .line 650
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v1}, Lorg/eclipse/jetty/http/Generator;->complete()V

    .line 651
    :cond_2
    return-void

    .line 636
    :catch_0
    move-exception v0

    .line 638
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "header full: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 640
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/Response;->reset()V

    .line 641
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v1}, Lorg/eclipse/jetty/http/Generator;->reset()V

    .line 642
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    const/4 v2, 0x0

    invoke-interface {v1, v5, v2}, Lorg/eclipse/jetty/http/Generator;->setResponse(ILjava/lang/String;)V

    .line 643
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    iget-object v2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/http/Generator;->completeHeader(Lorg/eclipse/jetty/http/HttpFields;Z)V

    .line 644
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v1}, Lorg/eclipse/jetty/http/Generator;->complete()V

    .line 645
    new-instance v1, Lorg/eclipse/jetty/http/HttpException;

    invoke-direct {v1, v5}, Lorg/eclipse/jetty/http/HttpException;-><init>(I)V

    throw v1
.end method

.method public completeResponse()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v5, 0x1f4

    const/4 v4, 0x1

    .line 656
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v1}, Lorg/eclipse/jetty/http/Generator;->isCommitted()Z

    move-result v1

    if-nez v1, :cond_0

    .line 658
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    iget-object v2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v2}, Lorg/eclipse/jetty/server/Response;->getStatus()I

    move-result v2

    iget-object v3, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v3}, Lorg/eclipse/jetty/server/Response;->getReason()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/http/Generator;->setResponse(ILjava/lang/String;)V

    .line 661
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    iget-object v2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    const/4 v3, 0x1

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/http/Generator;->completeHeader(Lorg/eclipse/jetty/http/HttpFields;Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 677
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v1}, Lorg/eclipse/jetty/http/Generator;->complete()V

    .line 678
    return-void

    .line 663
    :catch_0
    move-exception v0

    .line 665
    .local v0, "e":Ljava/lang/RuntimeException;
    sget-object v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "header full: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 666
    sget-object v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 668
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/Response;->reset()V

    .line 669
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v1}, Lorg/eclipse/jetty/http/Generator;->reset()V

    .line 670
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    const/4 v2, 0x0

    invoke-interface {v1, v5, v2}, Lorg/eclipse/jetty/http/Generator;->setResponse(ILjava/lang/String;)V

    .line 671
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    iget-object v2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    invoke-interface {v1, v2, v4}, Lorg/eclipse/jetty/http/Generator;->completeHeader(Lorg/eclipse/jetty/http/HttpFields;Z)V

    .line 672
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v1}, Lorg/eclipse/jetty/http/Generator;->complete()V

    .line 673
    new-instance v1, Lorg/eclipse/jetty/http/HttpException;

    invoke-direct {v1, v5}, Lorg/eclipse/jetty/http/HttpException;-><init>(I)V

    throw v1
.end method

.method protected content(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 1
    .param p1, "buffer"    # Lorg/eclipse/jetty/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 979
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_delayedHandling:Z

    if-eqz v0, :cond_0

    .line 981
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_delayedHandling:Z

    .line 982
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->handleRequest()V

    .line 984
    :cond_0
    return-void
.end method

.method public earlyEOF()V
    .locals 1

    .prologue
    .line 999
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_earlyEOF:Z

    .line 1000
    return-void
.end method

.method public flushResponse()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 685
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->commitResponse(Z)V

    .line 686
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v1}, Lorg/eclipse/jetty/http/Generator;->flushBuffer()I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 692
    return-void

    .line 688
    :catch_0
    move-exception v0

    .line 690
    .local v0, "e":Ljava/io/IOException;
    instance-of v1, v0, Lorg/eclipse/jetty/io/EofException;

    if-eqz v1, :cond_0

    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    throw v0

    .restart local v0    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v1, Lorg/eclipse/jetty/io/EofException;

    invoke-direct {v1, v0}, Lorg/eclipse/jetty/io/EofException;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method public getAssociatedObject()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 227
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_associatedObject:Ljava/lang/Object;

    return-object v0
.end method

.method public getConnector()Lorg/eclipse/jetty/server/Connector;
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_connector:Lorg/eclipse/jetty/server/Connector;

    return-object v0
.end method

.method public getGenerator()Lorg/eclipse/jetty/http/Generator;
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    return-object v0
.end method

.method public getInputStream()Ljavax/servlet/ServletInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 332
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect100Continue:Z

    if-eqz v0, :cond_3

    .line 335
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    check-cast v0, Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpParser;->getHeaderBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    check-cast v0, Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpParser;->getHeaderBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    .line 337
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Generator;->isCommitted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 338
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Committed before 100 Continues"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 340
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    check-cast v0, Lorg/eclipse/jetty/http/HttpGenerator;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/HttpGenerator;->send1xx(I)V

    .line 342
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect100Continue:Z

    .line 345
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_in:Ljavax/servlet/ServletInputStream;

    if-nez v0, :cond_4

    .line 346
    new-instance v0, Lorg/eclipse/jetty/server/HttpInput;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/server/HttpInput;-><init>(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_in:Ljavax/servlet/ServletInputStream;

    .line 347
    :cond_4
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_in:Ljavax/servlet/ServletInputStream;

    return-object v0
.end method

.method public getMaxIdleTime()I
    .locals 2

    .prologue
    .line 756
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_connector:Lorg/eclipse/jetty/server/Connector;

    invoke-interface {v0}, Lorg/eclipse/jetty/server/Connector;->isLowResources()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->getMaxIdleTime()I

    move-result v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_connector:Lorg/eclipse/jetty/server/Connector;

    invoke-interface {v1}, Lorg/eclipse/jetty/server/Connector;->getMaxIdleTime()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 757
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_connector:Lorg/eclipse/jetty/server/Connector;

    invoke-interface {v0}, Lorg/eclipse/jetty/server/Connector;->getLowResourceMaxIdleTime()I

    move-result v0

    .line 760
    :goto_0
    return v0

    .line 758
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->getMaxIdleTime()I

    move-result v0

    if-lez v0, :cond_1

    .line 759
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->getMaxIdleTime()I

    move-result v0

    goto :goto_0

    .line 760
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_connector:Lorg/eclipse/jetty/server/Connector;

    invoke-interface {v0}, Lorg/eclipse/jetty/server/Connector;->getMaxIdleTime()I

    move-result v0

    goto :goto_0
.end method

.method public getOutputStream()Ljavax/servlet/ServletOutputStream;
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_out:Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;

    if-nez v0, :cond_0

    .line 357
    new-instance v0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;-><init>(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_out:Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;

    .line 358
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_out:Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;

    return-object v0
.end method

.method public getParser()Lorg/eclipse/jetty/http/Parser;
    .locals 1

    .prologue
    .line 203
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    return-object v0
.end method

.method public getPrintWriter(Ljava/lang/String;)Ljava/io/PrintWriter;
    .locals 2
    .param p1, "encoding"    # Ljava/lang/String;

    .prologue
    .line 369
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    .line 370
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_writer:Lorg/eclipse/jetty/server/AbstractHttpConnection$OutputWriter;

    if-nez v0, :cond_0

    .line 372
    new-instance v0, Lorg/eclipse/jetty/server/AbstractHttpConnection$OutputWriter;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/server/AbstractHttpConnection$OutputWriter;-><init>(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_writer:Lorg/eclipse/jetty/server/AbstractHttpConnection$OutputWriter;

    .line 373
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_server:Lorg/eclipse/jetty/server/Server;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->isUncheckedPrintWriter()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 374
    new-instance v0, Lorg/eclipse/jetty/io/UncheckedPrintWriter;

    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_writer:Lorg/eclipse/jetty/server/AbstractHttpConnection$OutputWriter;

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/io/UncheckedPrintWriter;-><init>(Ljava/io/Writer;)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_printWriter:Ljava/io/PrintWriter;

    .line 394
    :cond_0
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_writer:Lorg/eclipse/jetty/server/AbstractHttpConnection$OutputWriter;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/server/AbstractHttpConnection$OutputWriter;->setCharacterEncoding(Ljava/lang/String;)V

    .line 395
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_printWriter:Ljava/io/PrintWriter;

    return-object v0

    .line 376
    :cond_1
    new-instance v0, Lorg/eclipse/jetty/server/AbstractHttpConnection$1;

    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_writer:Lorg/eclipse/jetty/server/AbstractHttpConnection$OutputWriter;

    invoke-direct {v0, p0, v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection$1;-><init>(Lorg/eclipse/jetty/server/AbstractHttpConnection;Ljava/io/Writer;)V

    iput-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_printWriter:Ljava/io/PrintWriter;

    goto :goto_0
.end method

.method public getRequest()Lorg/eclipse/jetty/server/Request;
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    return-object v0
.end method

.method public getRequestFields()Lorg/eclipse/jetty/http/HttpFields;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_requestFields:Lorg/eclipse/jetty/http/HttpFields;

    return-object v0
.end method

.method public getRequests()I
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_requests:I

    return v0
.end method

.method public getResolveNames()Z
    .locals 1

    .prologue
    .line 296
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_connector:Lorg/eclipse/jetty/server/Connector;

    invoke-interface {v0}, Lorg/eclipse/jetty/server/Connector;->getResolveNames()Z

    move-result v0

    return v0
.end method

.method public getResponse()Lorg/eclipse/jetty/server/Response;
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    return-object v0
.end method

.method public getResponseFields()Lorg/eclipse/jetty/http/HttpFields;
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    return-object v0
.end method

.method public getServer()Lorg/eclipse/jetty/server/Server;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_server:Lorg/eclipse/jetty/server/Server;

    return-object v0
.end method

.method public abstract handle()Lorg/eclipse/jetty/io/Connection;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method protected handleRequest()V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 429
    const/4 v8, 0x0

    .line 431
    .local v8, "error":Z
    const/4 v15, 0x0

    .line 432
    .local v15, "threadName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 435
    .local v5, "async_exception":Ljava/lang/Throwable;
    :try_start_0
    sget-object v17, Lorg/eclipse/jetty/server/AbstractHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface/range {v17 .. v17}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 437
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v15

    .line 438
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v17

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, " - "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 450
    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_server:Lorg/eclipse/jetty/server/Server;

    .line 451
    .local v13, "server":Lorg/eclipse/jetty/server/Server;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/server/AsyncContinuation;->isContinuation()Z

    move-result v16

    .line 452
    .local v16, "was_continuation":Z
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/server/AsyncContinuation;->handling()Z

    move-result v17

    if-eqz v17, :cond_4

    if-eqz v13, :cond_4

    invoke-virtual {v13}, Lorg/eclipse/jetty/server/Server;->isRunning()Z

    move-result v17

    if-eqz v17, :cond_4

    const/4 v10, 0x1

    .line 453
    .local v10, "handling":Z
    :goto_0
    if-eqz v10, :cond_1d

    .line 455
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 457
    const/4 v11, 0x0

    .line 460
    .local v11, "info":Ljava/lang/String;
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/http/HttpURI;->getPort()I
    :try_end_1
    .catch Lorg/eclipse/jetty/continuation/ContinuationThrowable; {:try_start_1 .. :try_end_1} :catch_1
    .catch Lorg/eclipse/jetty/io/EofException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Lorg/eclipse/jetty/io/RuntimeIOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 461
    const/4 v12, 0x0

    .line 465
    .local v12, "path":Ljava/lang/String;
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/http/HttpURI;->getDecodedPath()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/eclipse/jetty/continuation/ContinuationThrowable; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/eclipse/jetty/io/EofException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/eclipse/jetty/io/RuntimeIOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v12

    .line 474
    :goto_1
    :try_start_3
    invoke-static {v12}, Lorg/eclipse/jetty/util/URIUtil;->canonicalPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 475
    if-nez v11, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/server/Request;->getMethod()Ljava/lang/String;

    move-result-object v17

    const-string v18, "CONNECT"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 477
    if-nez v12, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/http/HttpURI;->getScheme()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/http/HttpURI;->getHost()Ljava/lang/String;

    move-result-object v17

    if-eqz v17, :cond_5

    .line 479
    const-string v11, "/"

    .line 480
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    move-object/from16 v17, v0

    const-string v18, ""

    invoke-virtual/range {v17 .. v18}, Lorg/eclipse/jetty/server/Request;->setRequestURI(Ljava/lang/String;)V

    .line 485
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Lorg/eclipse/jetty/server/Request;->setPathInfo(Ljava/lang/String;)V

    .line 487
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_out:Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 488
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_out:Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->reopen()V

    .line 490
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/server/AsyncContinuation;->isInitial()Z

    move-result v17

    if-eqz v17, :cond_7

    .line 492
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    move-object/from16 v17, v0

    sget-object v18, Ljavax/servlet/DispatcherType;->REQUEST:Ljavax/servlet/DispatcherType;

    invoke-virtual/range {v17 .. v18}, Lorg/eclipse/jetty/server/Request;->setDispatcherType(Ljavax/servlet/DispatcherType;)V

    .line 493
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_connector:Lorg/eclipse/jetty/server/Connector;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    move-object/from16 v19, v0

    invoke-interface/range {v17 .. v19}, Lorg/eclipse/jetty/server/Connector;->customize(Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/server/Request;)V

    .line 494
    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lorg/eclipse/jetty/server/Server;->handle(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V
    :try_end_3
    .catch Lorg/eclipse/jetty/continuation/ContinuationThrowable; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/eclipse/jetty/io/EofException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/eclipse/jetty/io/RuntimeIOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 561
    :goto_2
    if-eqz v8, :cond_3

    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/server/Request;->isAsyncStarted()Z

    move-result v17

    if-eqz v17, :cond_3

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/server/AsyncContinuation;->errorComplete()V

    .line 564
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/server/AsyncContinuation;->isContinuation()Z

    move-result v16

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/server/AsyncContinuation;->unhandle()Z

    move-result v17

    if-nez v17, :cond_e

    invoke-virtual {v13}, Lorg/eclipse/jetty/server/Server;->isRunning()Z

    move-result v17

    if-eqz v17, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_server:Lorg/eclipse/jetty/server/Server;

    move-object/from16 v17, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v17, :cond_e

    const/4 v10, 0x1

    .line 566
    :goto_3
    goto/16 :goto_0

    .line 452
    .end local v10    # "handling":Z
    .end local v11    # "info":Ljava/lang/String;
    .end local v12    # "path":Ljava/lang/String;
    :cond_4
    const/4 v10, 0x0

    goto/16 :goto_0

    .line 467
    .restart local v10    # "handling":Z
    .restart local v11    # "info":Ljava/lang/String;
    .restart local v12    # "path":Ljava/lang/String;
    :catch_0
    move-exception v6

    .line 469
    .local v6, "e":Ljava/lang/Exception;
    :try_start_5
    sget-object v17, Lorg/eclipse/jetty/server/AbstractHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v18, "Failed UTF-8 decode for request path, trying ISO-8859-1"

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-interface/range {v17 .. v19}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 470
    sget-object v17, Lorg/eclipse/jetty/server/AbstractHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 471
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    move-object/from16 v17, v0

    const-string v18, "ISO-8859-1"

    invoke-virtual/range {v17 .. v18}, Lorg/eclipse/jetty/http/HttpURI;->getDecodedPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_1

    .line 483
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_5
    new-instance v17, Lorg/eclipse/jetty/http/HttpException;

    const/16 v18, 0x190

    invoke-direct/range {v17 .. v18}, Lorg/eclipse/jetty/http/HttpException;-><init>(I)V

    throw v17
    :try_end_5
    .catch Lorg/eclipse/jetty/continuation/ContinuationThrowable; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/eclipse/jetty/io/EofException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Lorg/eclipse/jetty/io/RuntimeIOException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 522
    .end local v12    # "path":Ljava/lang/String;
    :catch_1
    move-exception v6

    .line 524
    .local v6, "e":Lorg/eclipse/jetty/continuation/ContinuationThrowable;
    :try_start_6
    sget-object v17, Lorg/eclipse/jetty/server/AbstractHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 561
    if-eqz v8, :cond_6

    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/server/Request;->isAsyncStarted()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/server/AsyncContinuation;->errorComplete()V

    .line 564
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/server/AsyncContinuation;->isContinuation()Z

    move-result v16

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/server/AsyncContinuation;->unhandle()Z

    move-result v17

    if-nez v17, :cond_f

    invoke-virtual {v13}, Lorg/eclipse/jetty/server/Server;->isRunning()Z

    move-result v17

    if-eqz v17, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_server:Lorg/eclipse/jetty/server/Server;

    move-object/from16 v17, v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v17, :cond_f

    const/4 v10, 0x1

    .line 566
    :goto_4
    goto/16 :goto_0

    .line 498
    .end local v6    # "e":Lorg/eclipse/jetty/continuation/ContinuationThrowable;
    .restart local v12    # "path":Ljava/lang/String;
    :cond_7
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/server/AsyncContinuation;->isExpired()Z

    move-result v17

    if-eqz v17, :cond_c

    if-nez v16, :cond_c

    .line 500
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    move-object/from16 v17, v0

    const-string v18, "javax.servlet.error.exception"

    invoke-virtual/range {v17 .. v18}, Lorg/eclipse/jetty/server/Request;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v0, v17

    check-cast v0, Ljava/lang/Throwable;

    move-object v5, v0

    .line 501
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    move-object/from16 v18, v0

    const/16 v19, 0x1f4

    if-nez v5, :cond_b

    const-string v17, "Async Timeout"

    :goto_5
    move-object/from16 v0, v18

    move/from16 v1, v19

    move-object/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/server/Response;->setStatus(ILjava/lang/String;)V

    .line 502
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    move-object/from16 v17, v0

    const-string v18, "javax.servlet.error.status_code"

    new-instance v19, Ljava/lang/Integer;

    const/16 v20, 0x1f4

    invoke-direct/range {v19 .. v20}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual/range {v17 .. v19}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 503
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    move-object/from16 v17, v0

    const-string v18, "javax.servlet.error.message"

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lorg/eclipse/jetty/server/Response;->getReason()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lorg/eclipse/jetty/server/Request;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 504
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    move-object/from16 v17, v0

    sget-object v18, Ljavax/servlet/DispatcherType;->ERROR:Ljavax/servlet/DispatcherType;

    invoke-virtual/range {v17 .. v18}, Lorg/eclipse/jetty/server/Request;->setDispatcherType(Ljavax/servlet/DispatcherType;)V

    .line 506
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/server/AsyncContinuation;->getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getErrorHandler()Lorg/eclipse/jetty/server/handler/ErrorHandler;

    move-result-object v7

    .line 507
    .local v7, "eh":Lorg/eclipse/jetty/server/handler/ErrorHandler;
    instance-of v0, v7, Lorg/eclipse/jetty/server/handler/ErrorHandler$ErrorPageMapper;

    move/from16 v17, v0

    if-eqz v17, :cond_8

    .line 509
    check-cast v7, Lorg/eclipse/jetty/server/handler/ErrorHandler$ErrorPageMapper;

    .end local v7    # "eh":Lorg/eclipse/jetty/server/handler/ErrorHandler;
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/server/AsyncContinuation;->getRequest()Ljavax/servlet/ServletRequest;

    move-result-object v17

    check-cast v17, Ljavax/servlet/http/HttpServletRequest;

    move-object/from16 v0, v17

    invoke-interface {v7, v0}, Lorg/eclipse/jetty/server/handler/ErrorHandler$ErrorPageMapper;->getErrorPage(Ljavax/servlet/http/HttpServletRequest;)Ljava/lang/String;

    move-result-object v9

    .line 510
    .local v9, "error_page":Ljava/lang/String;
    if-eqz v9, :cond_8

    .line 512
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/server/AsyncContinuation;->getAsyncEventState()Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;

    move-result-object v14

    .line 513
    .local v14, "state":Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;
    invoke-virtual {v14, v9}, Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;->setPath(Ljava/lang/String;)V

    .line 519
    .end local v9    # "error_page":Ljava/lang/String;
    .end local v14    # "state":Lorg/eclipse/jetty/server/AsyncContinuation$AsyncEventState;
    :cond_8
    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v13, v0}, Lorg/eclipse/jetty/server/Server;->handleAsync(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V
    :try_end_8
    .catch Lorg/eclipse/jetty/continuation/ContinuationThrowable; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lorg/eclipse/jetty/io/EofException; {:try_start_8 .. :try_end_8} :catch_2
    .catch Lorg/eclipse/jetty/io/RuntimeIOException; {:try_start_8 .. :try_end_8} :catch_3
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_8 .. :try_end_8} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_5
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_2

    .line 526
    .end local v12    # "path":Ljava/lang/String;
    :catch_2
    move-exception v6

    .line 528
    .local v6, "e":Lorg/eclipse/jetty/io/EofException;
    move-object v5, v6

    .line 529
    :try_start_9
    sget-object v17, Lorg/eclipse/jetty/server/AbstractHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 530
    const/4 v8, 0x1

    .line 531
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    .line 532
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/server/Response;->isCommitted()Z

    move-result v17

    if-nez v17, :cond_9

    .line 533
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    move-object/from16 v17, v0

    const/16 v18, 0x1f4

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    invoke-interface/range {v17 .. v21}, Lorg/eclipse/jetty/http/Generator;->sendError(ILjava/lang/String;Ljava/lang/String;Z)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 561
    :cond_9
    if-eqz v8, :cond_a

    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/server/Request;->isAsyncStarted()Z

    move-result v17

    if-eqz v17, :cond_a

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/server/AsyncContinuation;->errorComplete()V

    .line 564
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/server/AsyncContinuation;->isContinuation()Z

    move-result v16

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/server/AsyncContinuation;->unhandle()Z

    move-result v17

    if-nez v17, :cond_10

    invoke-virtual {v13}, Lorg/eclipse/jetty/server/Server;->isRunning()Z

    move-result v17

    if-eqz v17, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_server:Lorg/eclipse/jetty/server/Server;

    move-object/from16 v17, v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v17, :cond_10

    const/4 v10, 0x1

    .line 566
    :goto_7
    goto/16 :goto_0

    .line 501
    .end local v6    # "e":Lorg/eclipse/jetty/io/EofException;
    .restart local v12    # "path":Ljava/lang/String;
    :cond_b
    :try_start_b
    const-string v17, "Async Exception"

    goto/16 :goto_5

    .line 518
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    move-object/from16 v17, v0

    sget-object v18, Ljavax/servlet/DispatcherType;->ASYNC:Ljavax/servlet/DispatcherType;

    invoke-virtual/range {v17 .. v18}, Lorg/eclipse/jetty/server/Request;->setDispatcherType(Ljavax/servlet/DispatcherType;)V
    :try_end_b
    .catch Lorg/eclipse/jetty/continuation/ContinuationThrowable; {:try_start_b .. :try_end_b} :catch_1
    .catch Lorg/eclipse/jetty/io/EofException; {:try_start_b .. :try_end_b} :catch_2
    .catch Lorg/eclipse/jetty/io/RuntimeIOException; {:try_start_b .. :try_end_b} :catch_3
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_b .. :try_end_b} :catch_4
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_5
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto/16 :goto_6

    .line 535
    .end local v12    # "path":Ljava/lang/String;
    :catch_3
    move-exception v6

    .line 537
    .local v6, "e":Lorg/eclipse/jetty/io/RuntimeIOException;
    move-object v5, v6

    .line 538
    :try_start_c
    sget-object v17, Lorg/eclipse/jetty/server/AbstractHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 539
    const/4 v8, 0x1

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    .line 561
    if-eqz v8, :cond_d

    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/server/Request;->isAsyncStarted()Z

    move-result v17

    if-eqz v17, :cond_d

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/server/AsyncContinuation;->errorComplete()V

    .line 564
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/server/AsyncContinuation;->isContinuation()Z

    move-result v16

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/server/AsyncContinuation;->unhandle()Z

    move-result v17

    if-nez v17, :cond_11

    invoke-virtual {v13}, Lorg/eclipse/jetty/server/Server;->isRunning()Z

    move-result v17

    if-eqz v17, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_server:Lorg/eclipse/jetty/server/Server;

    move-object/from16 v17, v0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    if-eqz v17, :cond_11

    const/4 v10, 0x1

    .line 566
    :goto_8
    goto/16 :goto_0

    .line 565
    .end local v6    # "e":Lorg/eclipse/jetty/io/RuntimeIOException;
    .restart local v12    # "path":Ljava/lang/String;
    :cond_e
    const/4 v10, 0x0

    goto/16 :goto_3

    .end local v12    # "path":Ljava/lang/String;
    .local v6, "e":Lorg/eclipse/jetty/continuation/ContinuationThrowable;
    :cond_f
    const/4 v10, 0x0

    goto/16 :goto_4

    .local v6, "e":Lorg/eclipse/jetty/io/EofException;
    :cond_10
    const/4 v10, 0x0

    goto :goto_7

    .local v6, "e":Lorg/eclipse/jetty/io/RuntimeIOException;
    :cond_11
    const/4 v10, 0x0

    goto :goto_8

    .line 542
    .end local v6    # "e":Lorg/eclipse/jetty/io/RuntimeIOException;
    :catch_4
    move-exception v6

    .line 544
    .local v6, "e":Lorg/eclipse/jetty/http/HttpException;
    :try_start_e
    sget-object v17, Lorg/eclipse/jetty/server/AbstractHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    move-object/from16 v0, v17

    invoke-interface {v0, v6}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 545
    const/4 v8, 0x1

    .line 546
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    move-object/from16 v17, v0

    invoke-virtual {v6}, Lorg/eclipse/jetty/http/HttpException;->getStatus()I

    move-result v18

    invoke-virtual {v6}, Lorg/eclipse/jetty/http/HttpException;->getReason()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lorg/eclipse/jetty/server/Response;->sendError(ILjava/lang/String;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 561
    if-eqz v8, :cond_12

    :try_start_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/server/Request;->isAsyncStarted()Z

    move-result v17

    if-eqz v17, :cond_12

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/server/AsyncContinuation;->errorComplete()V

    .line 564
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/server/AsyncContinuation;->isContinuation()Z

    move-result v16

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/server/AsyncContinuation;->unhandle()Z

    move-result v17

    if-nez v17, :cond_13

    invoke-virtual {v13}, Lorg/eclipse/jetty/server/Server;->isRunning()Z

    move-result v17

    if-eqz v17, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_server:Lorg/eclipse/jetty/server/Server;

    move-object/from16 v17, v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    if-eqz v17, :cond_13

    const/4 v10, 0x1

    .line 566
    :goto_9
    goto/16 :goto_0

    .line 565
    :cond_13
    const/4 v10, 0x0

    goto :goto_9

    .line 549
    .end local v6    # "e":Lorg/eclipse/jetty/http/HttpException;
    :catch_5
    move-exception v6

    .line 551
    .local v6, "e":Ljava/lang/Throwable;
    move-object v5, v6

    .line 552
    :try_start_10
    sget-object v17, Lorg/eclipse/jetty/server/AbstractHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v6}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 553
    const/4 v8, 0x1

    .line 554
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    .line 555
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    move-object/from16 v18, v0

    if-nez v11, :cond_15

    const/16 v17, 0x190

    :goto_a
    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v17

    move-object/from16 v2, v19

    move-object/from16 v3, v20

    move/from16 v4, v21

    invoke-interface {v0, v1, v2, v3, v4}, Lorg/eclipse/jetty/http/Generator;->sendError(ILjava/lang/String;Ljava/lang/String;Z)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    .line 561
    if-eqz v8, :cond_14

    :try_start_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/server/Request;->isAsyncStarted()Z

    move-result v17

    if-eqz v17, :cond_14

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/server/AsyncContinuation;->errorComplete()V

    .line 564
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/server/AsyncContinuation;->isContinuation()Z

    move-result v16

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/server/AsyncContinuation;->unhandle()Z

    move-result v17

    if-nez v17, :cond_16

    invoke-virtual {v13}, Lorg/eclipse/jetty/server/Server;->isRunning()Z

    move-result v17

    if-eqz v17, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_server:Lorg/eclipse/jetty/server/Server;

    move-object/from16 v17, v0

    if-eqz v17, :cond_16

    const/4 v10, 0x1

    .line 566
    :goto_b
    goto/16 :goto_0

    .line 555
    :cond_15
    const/16 v17, 0x1f4

    goto :goto_a

    .line 565
    :cond_16
    const/4 v10, 0x0

    goto :goto_b

    .line 561
    .end local v6    # "e":Ljava/lang/Throwable;
    :catchall_0
    move-exception v17

    if-eqz v8, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/jetty/server/Request;->isAsyncStarted()Z

    move-result v18

    if-eqz v18, :cond_17

    .line 562
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/jetty/server/AsyncContinuation;->errorComplete()V

    .line 564
    :cond_17
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/jetty/server/AsyncContinuation;->isContinuation()Z

    move-result v16

    .line 565
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/jetty/server/AsyncContinuation;->unhandle()Z

    move-result v18

    if-nez v18, :cond_1c

    invoke-virtual {v13}, Lorg/eclipse/jetty/server/Server;->isRunning()Z

    move-result v18

    if-eqz v18, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_server:Lorg/eclipse/jetty/server/Server;

    move-object/from16 v18, v0

    if-eqz v18, :cond_1c

    const/4 v10, 0x1

    :goto_c
    throw v17
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 571
    .end local v10    # "handling":Z
    .end local v11    # "info":Ljava/lang/String;
    .end local v13    # "server":Lorg/eclipse/jetty/server/Server;
    .end local v16    # "was_continuation":Z
    :catchall_1
    move-exception v17

    if-eqz v15, :cond_18

    .line 572
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 574
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/jetty/server/AsyncContinuation;->isUncompleted()Z

    move-result v18

    if-eqz v18, :cond_1b

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Lorg/eclipse/jetty/server/AsyncContinuation;->doComplete(Ljava/lang/Throwable;)V

    .line 579
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect100Continue:Z

    move/from16 v18, v0

    if-eqz v18, :cond_19

    .line 581
    sget-object v18, Lorg/eclipse/jetty/server/AbstractHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v19, "100 continues not sent"

    const/16 v20, 0x0

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    invoke-interface/range {v18 .. v20}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 586
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect100Continue:Z

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/jetty/server/Response;->isCommitted()Z

    move-result v18

    if-nez v18, :cond_19

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Lorg/eclipse/jetty/http/Generator;->setPersistent(Z)V

    .line 591
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v18

    if-eqz v18, :cond_27

    .line 593
    if-eqz v8, :cond_25

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/eclipse/jetty/io/EndPoint;->shutdownOutput()V

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-interface/range {v18 .. v19}, Lorg/eclipse/jetty/http/Generator;->setPersistent(Z)V

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/eclipse/jetty/http/Generator;->isComplete()Z

    move-result v18

    if-nez v18, :cond_1a

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/jetty/server/Response;->complete()V

    .line 614
    :cond_1a
    :goto_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    :cond_1b
    throw v17

    .line 565
    .restart local v10    # "handling":Z
    .restart local v11    # "info":Ljava/lang/String;
    .restart local v13    # "server":Lorg/eclipse/jetty/server/Server;
    .restart local v16    # "was_continuation":Z
    :cond_1c
    const/4 v10, 0x0

    goto/16 :goto_c

    .line 571
    .end local v11    # "info":Ljava/lang/String;
    :cond_1d
    if-eqz v15, :cond_1e

    .line 572
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 574
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/server/AsyncContinuation;->isUncompleted()Z

    move-result v17

    if-eqz v17, :cond_21

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/eclipse/jetty/server/Request;->_async:Lorg/eclipse/jetty/server/AsyncContinuation;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Lorg/eclipse/jetty/server/AsyncContinuation;->doComplete(Ljava/lang/Throwable;)V

    .line 579
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect100Continue:Z

    move/from16 v17, v0

    if-eqz v17, :cond_1f

    .line 581
    sget-object v17, Lorg/eclipse/jetty/server/AbstractHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v18, "100 continues not sent"

    const/16 v19, 0x0

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    invoke-interface/range {v17 .. v19}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 586
    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect100Continue:Z

    .line 587
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/server/Response;->isCommitted()Z

    move-result v17

    if-nez v17, :cond_1f

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-interface/range {v17 .. v18}, Lorg/eclipse/jetty/http/Generator;->setPersistent(Z)V

    .line 591
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v17

    if-eqz v17, :cond_24

    .line 593
    if-eqz v8, :cond_22

    .line 595
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lorg/eclipse/jetty/io/EndPoint;->shutdownOutput()V

    .line 596
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-interface/range {v17 .. v18}, Lorg/eclipse/jetty/http/Generator;->setPersistent(Z)V

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lorg/eclipse/jetty/http/Generator;->isComplete()Z

    move-result v17

    if-nez v17, :cond_20

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/server/Response;->complete()V

    .line 614
    :cond_20
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    .line 617
    :cond_21
    return-void

    .line 602
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/server/Response;->isCommitted()Z

    move-result v17

    if-nez v17, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/server/Request;->isHandled()Z

    move-result v17

    if-nez v17, :cond_23

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    move-object/from16 v17, v0

    const/16 v18, 0x194

    invoke-virtual/range {v17 .. v18}, Lorg/eclipse/jetty/server/Response;->sendError(I)V

    .line 604
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/server/Response;->complete()V

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Lorg/eclipse/jetty/http/Generator;->isPersistent()Z

    move-result v17

    if-eqz v17, :cond_20

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_connector:Lorg/eclipse/jetty/server/Connector;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    move-object/from16 v18, v0

    invoke-interface/range {v17 .. v18}, Lorg/eclipse/jetty/server/Connector;->persist(Lorg/eclipse/jetty/io/EndPoint;)V

    goto :goto_e

    .line 611
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/server/Response;->complete()V

    goto :goto_e

    .line 602
    .end local v10    # "handling":Z
    .end local v13    # "server":Lorg/eclipse/jetty/server/Server;
    .end local v16    # "was_continuation":Z
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/jetty/server/Response;->isCommitted()Z

    move-result v18

    if-nez v18, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/jetty/server/Request;->isHandled()Z

    move-result v18

    if-nez v18, :cond_26

    .line 603
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    move-object/from16 v18, v0

    const/16 v19, 0x194

    invoke-virtual/range {v18 .. v19}, Lorg/eclipse/jetty/server/Response;->sendError(I)V

    .line 604
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/jetty/server/Response;->complete()V

    .line 605
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/eclipse/jetty/http/Generator;->isPersistent()Z

    move-result v18

    if-eqz v18, :cond_1a

    .line 606
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_connector:Lorg/eclipse/jetty/server/Connector;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    move-object/from16 v19, v0

    invoke-interface/range {v18 .. v19}, Lorg/eclipse/jetty/server/Connector;->persist(Lorg/eclipse/jetty/io/EndPoint;)V

    goto/16 :goto_d

    .line 611
    :cond_27
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lorg/eclipse/jetty/server/Response;->complete()V

    goto/16 :goto_d
.end method

.method protected headerComplete()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 902
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->isOutputShutdown()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 904
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    .line 974
    :goto_0
    return-void

    .line 908
    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_requests:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_requests:I

    .line 909
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    iget v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_version:I

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/http/Generator;->setVersion(I)V

    .line 910
    iget v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_version:I

    packed-switch v0, :pswitch_data_0

    .line 966
    :cond_1
    :goto_1
    :pswitch_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_charset:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 967
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_charset:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/Request;->setCharacterEncodingUnchecked(Ljava/lang/String;)V

    .line 970
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    check-cast v0, Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpParser;->getContentLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    check-cast v0, Lorg/eclipse/jetty/http/HttpParser;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpParser;->isChunking()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_3
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect100Continue:Z

    if-eqz v0, :cond_a

    .line 971
    :cond_4
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->handleRequest()V

    goto :goto_0

    .line 915
    :pswitch_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    iget-boolean v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_head:Z

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/http/Generator;->setHead(Z)V

    .line 916
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Parser;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 918
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->CONNECTION_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    sget-object v2, Lorg/eclipse/jetty/http/HttpHeaderValues;->KEEP_ALIVE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/http/HttpFields;->add(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 919
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v0, v4}, Lorg/eclipse/jetty/http/Generator;->setPersistent(Z)V

    .line 927
    :cond_5
    :goto_2
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_server:Lorg/eclipse/jetty/server/Server;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getSendDateHeader()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 928
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/Request;->getTimeStampBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/http/Generator;->setDate(Lorg/eclipse/jetty/io/Buffer;)V

    goto :goto_1

    .line 921
    :cond_6
    const-string v0, "CONNECT"

    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/Request;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 923
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v0, v4}, Lorg/eclipse/jetty/http/Generator;->setPersistent(Z)V

    .line 924
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v0, v4}, Lorg/eclipse/jetty/http/Parser;->setPersistent(Z)V

    goto :goto_2

    .line 932
    :pswitch_2
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    iget-boolean v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_head:Z

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/http/Generator;->setHead(Z)V

    .line 934
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Parser;->isPersistent()Z

    move-result v0

    if-nez v0, :cond_7

    .line 936
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->CONNECTION_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    sget-object v2, Lorg/eclipse/jetty/http/HttpHeaderValues;->CLOSE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/http/HttpFields;->add(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 937
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v0, v3}, Lorg/eclipse/jetty/http/Generator;->setPersistent(Z)V

    .line 939
    :cond_7
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_server:Lorg/eclipse/jetty/server/Server;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getSendDateHeader()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 940
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/Request;->getTimeStampBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/http/Generator;->setDate(Lorg/eclipse/jetty/io/Buffer;)V

    .line 942
    :cond_8
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_host:Z

    if-nez v0, :cond_9

    .line 944
    sget-object v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "!host {}"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 945
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    const/16 v1, 0x190

    invoke-interface {v0, v1, v5}, Lorg/eclipse/jetty/http/Generator;->setResponse(ILjava/lang/String;)V

    .line 946
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->CONNECTION_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    sget-object v2, Lorg/eclipse/jetty/http/HttpHeaderValues;->CLOSE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 947
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    invoke-interface {v0, v1, v4}, Lorg/eclipse/jetty/http/Generator;->completeHeader(Lorg/eclipse/jetty/http/HttpFields;Z)V

    .line 948
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Generator;->complete()V

    goto/16 :goto_0

    .line 952
    :cond_9
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect:Z

    if-eqz v0, :cond_1

    .line 954
    sget-object v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "!expectation {}"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p0, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 955
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    const/16 v1, 0x1a1

    invoke-interface {v0, v1, v5}, Lorg/eclipse/jetty/http/Generator;->setResponse(ILjava/lang/String;)V

    .line 956
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->CONNECTION_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    sget-object v2, Lorg/eclipse/jetty/http/HttpHeaderValues;->CLOSE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 957
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    invoke-interface {v0, v1, v4}, Lorg/eclipse/jetty/http/Generator;->completeHeader(Lorg/eclipse/jetty/http/HttpFields;Z)V

    .line 958
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Generator;->complete()V

    goto/16 :goto_0

    .line 973
    :cond_a
    iput-boolean v4, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_delayedHandling:Z

    goto/16 :goto_0

    .line 910
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public include()V
    .locals 1

    .prologue
    .line 709
    iget v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_include:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_include:I

    .line 710
    return-void
.end method

.method public included()V
    .locals 1

    .prologue
    .line 715
    iget v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_include:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_include:I

    .line 716
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_out:Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;

    if-eqz v0, :cond_0

    .line 717
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_out:Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->reopen()V

    .line 718
    :cond_0
    return-void
.end method

.method public isConfidential(Lorg/eclipse/jetty/server/Request;)Z
    .locals 1
    .param p1, "request"    # Lorg/eclipse/jetty/server/Request;

    .prologue
    .line 275
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_connector:Lorg/eclipse/jetty/server/Connector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_connector:Lorg/eclipse/jetty/server/Connector;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/server/Connector;->isConfidential(Lorg/eclipse/jetty/server/Request;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEarlyEOF()Z
    .locals 1

    .prologue
    .line 407
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_earlyEOF:Z

    return v0
.end method

.method public isExpecting100Continues()Z
    .locals 1

    .prologue
    .line 744
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect100Continue:Z

    return v0
.end method

.method public isExpecting102Processing()Z
    .locals 1

    .prologue
    .line 750
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect102Processing:Z

    return v0
.end method

.method public isIdle()Z
    .locals 1

    .prologue
    .line 723
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Generator;->isIdle()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Parser;->isIdle()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_delayedHandling:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIncluding()Z
    .locals 1

    .prologue
    .line 703
    iget v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_include:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIntegral(Lorg/eclipse/jetty/server/Request;)Z
    .locals 1
    .param p1, "request"    # Lorg/eclipse/jetty/server/Request;

    .prologue
    .line 287
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_connector:Lorg/eclipse/jetty/server/Connector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_connector:Lorg/eclipse/jetty/server/Connector;

    invoke-interface {v0, p1}, Lorg/eclipse/jetty/server/Connector;->isIntegral(Lorg/eclipse/jetty/server/Request;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isResponseCommitted()Z
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Generator;->isCommitted()Z

    move-result v0

    return v0
.end method

.method public isSuspended()Z
    .locals 1

    .prologue
    .line 732
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->getAsyncContinuation()Lorg/eclipse/jetty/server/AsyncContinuation;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AsyncContinuation;->isSuspended()Z

    move-result v0

    return v0
.end method

.method public messageComplete(J)V
    .locals 1
    .param p1, "contentLength"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 989
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_delayedHandling:Z

    if-eqz v0, :cond_0

    .line 991
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_delayedHandling:Z

    .line 992
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->handleRequest()V

    .line 994
    :cond_0
    return-void
.end method

.method protected newHttpGenerator(Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/EndPoint;)Lorg/eclipse/jetty/http/HttpGenerator;
    .locals 1
    .param p1, "responseBuffers"    # Lorg/eclipse/jetty/io/Buffers;
    .param p2, "endPoint"    # Lorg/eclipse/jetty/io/EndPoint;

    .prologue
    .line 194
    new-instance v0, Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-direct {v0, p1, p2}, Lorg/eclipse/jetty/http/HttpGenerator;-><init>(Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/EndPoint;)V

    return-object v0
.end method

.method protected newHttpParser(Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/http/HttpParser$EventHandler;)Lorg/eclipse/jetty/http/HttpParser;
    .locals 1
    .param p1, "requestBuffers"    # Lorg/eclipse/jetty/io/Buffers;
    .param p2, "endpoint"    # Lorg/eclipse/jetty/io/EndPoint;
    .param p3, "requestHandler"    # Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    .prologue
    .line 189
    new-instance v0, Lorg/eclipse/jetty/http/HttpParser;

    invoke-direct {v0, p1, p2, p3}, Lorg/eclipse/jetty/http/HttpParser;-><init>(Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/http/HttpParser$EventHandler;)V

    return-object v0
.end method

.method public onClose()V
    .locals 4

    .prologue
    .line 738
    sget-object v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v1, "closed {}"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 739
    return-void
.end method

.method protected parsedHeader(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V
    .locals 7
    .param p1, "name"    # Lorg/eclipse/jetty/io/Buffer;
    .param p2, "value"    # Lorg/eclipse/jetty/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 836
    sget-object v4, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    invoke-virtual {v4, p1}, Lorg/eclipse/jetty/http/HttpHeaders;->getOrdinal(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v1

    .line 837
    .local v1, "ho":I
    sparse-switch v1, :sswitch_data_0

    .line 895
    :cond_0
    :goto_0
    iget-object v4, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_requestFields:Lorg/eclipse/jetty/http/HttpFields;

    invoke-virtual {v4, p1, p2}, Lorg/eclipse/jetty/http/HttpFields;->add(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 896
    return-void

    .line 841
    :sswitch_0
    iput-boolean v6, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_host:Z

    goto :goto_0

    .line 845
    :sswitch_1
    iget v4, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_version:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_0

    .line 847
    sget-object v4, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    invoke-virtual {v4, p2}, Lorg/eclipse/jetty/http/HttpHeaderValues;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object p2

    .line 848
    sget-object v4, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    invoke-virtual {v4, p2}, Lorg/eclipse/jetty/http/HttpHeaderValues;->getOrdinal(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 859
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 860
    .local v3, "values":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-eqz v3, :cond_0

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 862
    sget-object v4, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    aget-object v5, v3, v2

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/eclipse/jetty/http/HttpHeaderValues;->get(Ljava/lang/String;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    .line 863
    .local v0, "cb":Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;
    if-nez v0, :cond_1

    .line 864
    iput-boolean v6, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect:Z

    .line 860
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 851
    .end local v0    # "cb":Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;
    .end local v2    # "i":I
    .end local v3    # "values":[Ljava/lang/String;
    :pswitch_0
    iget-object v4, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    instance-of v4, v4, Lorg/eclipse/jetty/http/HttpGenerator;

    iput-boolean v4, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect100Continue:Z

    goto :goto_0

    .line 855
    :pswitch_1
    iget-object v4, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    instance-of v4, v4, Lorg/eclipse/jetty/http/HttpGenerator;

    iput-boolean v4, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect102Processing:Z

    goto :goto_0

    .line 867
    .restart local v0    # "cb":Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;
    .restart local v2    # "i":I
    .restart local v3    # "values":[Ljava/lang/String;
    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->getOrdinal()I

    move-result v4

    packed-switch v4, :pswitch_data_1

    .line 876
    iput-boolean v6, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect:Z

    goto :goto_2

    .line 870
    :pswitch_2
    iget-object v4, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    instance-of v4, v4, Lorg/eclipse/jetty/http/HttpGenerator;

    iput-boolean v4, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect100Continue:Z

    goto :goto_2

    .line 873
    :pswitch_3
    iget-object v4, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    instance-of v4, v4, Lorg/eclipse/jetty/http/HttpGenerator;

    iput-boolean v4, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect102Processing:Z

    goto :goto_2

    .line 886
    .end local v0    # "cb":Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;
    .end local v2    # "i":I
    .end local v3    # "values":[Ljava/lang/String;
    :sswitch_2
    sget-object v4, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    invoke-virtual {v4, p2}, Lorg/eclipse/jetty/http/HttpHeaderValues;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object p2

    .line 887
    goto :goto_0

    .line 890
    :sswitch_3
    sget-object v4, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    invoke-virtual {v4, p2}, Lorg/eclipse/jetty/io/BufferCache;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object p2

    .line 891
    invoke-static {p2}, Lorg/eclipse/jetty/http/MimeTypes;->getCharsetFromContentType(Lorg/eclipse/jetty/io/Buffer;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_charset:Ljava/lang/String;

    goto :goto_0

    .line 837
    nop

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_3
        0x15 -> :sswitch_2
        0x18 -> :sswitch_1
        0x1b -> :sswitch_0
        0x28 -> :sswitch_2
    .end sparse-switch

    .line 848
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 867
    :pswitch_data_1
    .packed-switch 0x6
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 413
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Parser;->reset()V

    .line 414
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Parser;->returnBuffers()V

    .line 415
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_requestFields:Lorg/eclipse/jetty/http/HttpFields;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpFields;->clear()V

    .line 416
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Request;->recycle()V

    .line 417
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Generator;->reset()V

    .line 418
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    invoke-interface {v0}, Lorg/eclipse/jetty/http/Generator;->returnBuffers()V

    .line 419
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpFields;->clear()V

    .line 420
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Response;->recycle()V

    .line 421
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpURI;->clear()V

    .line 422
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_writer:Lorg/eclipse/jetty/server/AbstractHttpConnection$OutputWriter;

    .line 423
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_earlyEOF:Z

    .line 424
    return-void
.end method

.method public setAssociatedObject(Ljava/lang/Object;)V
    .locals 0
    .param p1, "associatedObject"    # Ljava/lang/Object;

    .prologue
    .line 236
    iput-object p1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_associatedObject:Ljava/lang/Object;

    .line 237
    return-void
.end method

.method protected startRequest(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V
    .locals 7
    .param p1, "method"    # Lorg/eclipse/jetty/io/Buffer;
    .param p2, "uri"    # Lorg/eclipse/jetty/io/Buffer;
    .param p3, "version"    # Lorg/eclipse/jetty/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v6, 0x190

    const/4 v5, 0x0

    const/4 v1, 0x0

    .line 776
    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->asImmutableBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object p2

    .line 778
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_host:Z

    .line 779
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect:Z

    .line 780
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect100Continue:Z

    .line 781
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_expect102Processing:Z

    .line 782
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_delayedHandling:Z

    .line 783
    iput-object v5, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_charset:Ljava/lang/String;

    .line 785
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {v1}, Lorg/eclipse/jetty/server/Request;->getTimeStamp()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    .line 786
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lorg/eclipse/jetty/server/Request;->setTimeStamp(J)V

    .line 787
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/server/Request;->setMethod(Ljava/lang/String;)V

    .line 791
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_head:Z

    .line 792
    sget-object v1, Lorg/eclipse/jetty/http/HttpMethods;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/io/BufferCache;->getOrdinal(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 804
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v2

    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v3

    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/eclipse/jetty/http/HttpURI;->parse([BII)V

    .line 807
    :goto_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    iget-object v2, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/server/Request;->setUri(Lorg/eclipse/jetty/http/HttpURI;)V

    .line 809
    if-nez p3, :cond_1

    .line 811
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    const-string v2, ""

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/server/Request;->setProtocol(Ljava/lang/String;)V

    .line 812
    const/16 v1, 0x9

    iput v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_version:I

    .line 831
    :goto_1
    return-void

    .line 795
    :sswitch_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v2

    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v3

    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/eclipse/jetty/http/HttpURI;->parseConnect([BII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 824
    :catch_0
    move-exception v0

    .line 826
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lorg/eclipse/jetty/server/AbstractHttpConnection;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 827
    instance-of v1, v0, Lorg/eclipse/jetty/http/HttpException;

    if-eqz v1, :cond_4

    .line 828
    check-cast v0, Lorg/eclipse/jetty/http/HttpException;

    .end local v0    # "e":Ljava/lang/Exception;
    throw v0

    .line 799
    :sswitch_1
    const/4 v1, 0x1

    :try_start_1
    iput-boolean v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_head:Z

    .line 800
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_uri:Lorg/eclipse/jetty/http/HttpURI;

    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v2

    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v3

    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4}, Lorg/eclipse/jetty/http/HttpURI;->parse([BII)V

    goto :goto_0

    .line 816
    :cond_1
    sget-object v1, Lorg/eclipse/jetty/http/HttpVersions;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    invoke-virtual {v1, p3}, Lorg/eclipse/jetty/io/BufferCache;->get(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object p3

    .line 817
    if-nez p3, :cond_2

    .line 818
    new-instance v1, Lorg/eclipse/jetty/http/HttpException;

    const/16 v2, 0x190

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lorg/eclipse/jetty/http/HttpException;-><init>(ILjava/lang/String;)V

    throw v1

    .line 819
    :cond_2
    sget-object v1, Lorg/eclipse/jetty/http/HttpVersions;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    invoke-virtual {v1, p3}, Lorg/eclipse/jetty/io/BufferCache;->getOrdinal(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v1

    iput v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_version:I

    .line 820
    iget v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_version:I

    if-gtz v1, :cond_3

    const/16 v1, 0xa

    iput v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_version:I

    .line 821
    :cond_3
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_request:Lorg/eclipse/jetty/server/Request;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/server/Request;->setProtocol(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 829
    .restart local v0    # "e":Ljava/lang/Exception;
    :cond_4
    new-instance v1, Lorg/eclipse/jetty/http/HttpException;

    invoke-direct {v1, v6, v5, v0}, Lorg/eclipse/jetty/http/HttpException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 792
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 766
    const-string v0, "%s,g=%s,p=%s,r=%d"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-super {p0}, Lorg/eclipse/jetty/io/AbstractConnection;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_generator:Lorg/eclipse/jetty/http/Generator;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_parser:Lorg/eclipse/jetty/http/Parser;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_requests:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
