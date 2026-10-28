.class public Lorg/eclipse/jetty/servlet/StatisticsServlet;
.super Ljavax/servlet/http/HttpServlet;
.source "StatisticsServlet.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _connectors:[Lorg/eclipse/jetty/server/Connector;

.field private _memoryBean:Ljava/lang/management/MemoryMXBean;

.field _restrictToLocalhost:Z

.field private _statsHandler:Lorg/eclipse/jetty/server/handler/StatisticsHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-class v0, Lorg/eclipse/jetty/servlet/StatisticsServlet;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/servlet/StatisticsServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljavax/servlet/http/HttpServlet;-><init>()V

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/servlet/StatisticsServlet;->_restrictToLocalhost:Z

    return-void
.end method

.method private isLoopbackAddress(Ljava/lang/String;)Z
    .locals 5
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 120
    :try_start_0
    invoke-static {p1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v0

    .line 121
    .local v0, "addr":Ljava/net/InetAddress;
    invoke-virtual {v0}, Ljava/net/InetAddress;->isLoopbackAddress()Z
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 126
    .end local v0    # "addr":Ljava/net/InetAddress;
    :goto_0
    return v2

    .line 123
    :catch_0
    move-exception v1

    .line 125
    .local v1, "e":Ljava/net/UnknownHostException;
    sget-object v2, Lorg/eclipse/jetty/servlet/StatisticsServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Warning: attempt to access statistics servlet from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 126
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private sendTextResponse(Ljavax/servlet/http/HttpServletResponse;)V
    .locals 9
    .param p1, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 209
    .local v5, "sb":Ljava/lang/StringBuilder;
    iget-object v6, p0, Lorg/eclipse/jetty/servlet/StatisticsServlet;->_statsHandler:Lorg/eclipse/jetty/server/handler/StatisticsHandler;

    invoke-virtual {v6}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->toStatsHTML()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 211
    const-string v6, "<h2>Connections:</h2>\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/StatisticsServlet;->_connectors:[Lorg/eclipse/jetty/server/Connector;

    .local v0, "arr$":[Lorg/eclipse/jetty/server/Connector;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 214
    .local v1, "connector":Lorg/eclipse/jetty/server/Connector;
    const-string v6, "<h3>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Lorg/eclipse/jetty/server/Connector;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</h3>"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    invoke-interface {v1}, Lorg/eclipse/jetty/server/Connector;->getStatsOn()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 218
    const-string v6, "Statistics gathering started "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Lorg/eclipse/jetty/server/Connector;->getStatsOnMs()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "ms ago"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "<br />\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    const-string v6, "Total connections: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Lorg/eclipse/jetty/server/Connector;->getConnections()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "<br />\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    const-string v6, "Current connections open: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Lorg/eclipse/jetty/server/Connector;->getConnectionsOpen()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "<br />\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    const-string v6, "Max concurrent connections open: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Lorg/eclipse/jetty/server/Connector;->getConnectionsOpenMax()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "<br />\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    const-string v6, "Total connections duration: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Lorg/eclipse/jetty/server/Connector;->getConnectionsDurationTotal()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "<br />\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    const-string v6, "Mean connection duration: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Lorg/eclipse/jetty/server/Connector;->getConnectionsDurationMean()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "<br />\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    const-string v6, "Max connection duration: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Lorg/eclipse/jetty/server/Connector;->getConnectionsDurationMax()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "<br />\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    const-string v6, "Connection duration standard deviation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Lorg/eclipse/jetty/server/Connector;->getConnectionsDurationStdDev()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "<br />\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    const-string v6, "Total requests: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Lorg/eclipse/jetty/server/Connector;->getRequests()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "<br />\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    const-string v6, "Mean requests per connection: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Lorg/eclipse/jetty/server/Connector;->getConnectionsRequestsMean()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "<br />\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 228
    const-string v6, "Max requests per connection: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Lorg/eclipse/jetty/server/Connector;->getConnectionsRequestsMax()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "<br />\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 229
    const-string v6, "Requests per connection standard deviation: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Lorg/eclipse/jetty/server/Connector;->getConnectionsRequestsStdDev()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "<br />\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 233
    :cond_0
    const-string v6, "Statistics gathering off.\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 238
    .end local v1    # "connector":Lorg/eclipse/jetty/server/Connector;
    :cond_1
    const-string v6, "<h2>Memory:</h2>\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 239
    const-string v6, "Heap memory usage: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/eclipse/jetty/servlet/StatisticsServlet;->_memoryBean:Ljava/lang/management/MemoryMXBean;

    invoke-interface {v7}, Ljava/lang/management/MemoryMXBean;->getHeapMemoryUsage()Ljava/lang/management/MemoryUsage;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/management/MemoryUsage;->getUsed()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "<br />\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    const-string v6, "Non-heap memory usage: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/eclipse/jetty/servlet/StatisticsServlet;->_memoryBean:Ljava/lang/management/MemoryMXBean;

    invoke-interface {v7}, Ljava/lang/management/MemoryMXBean;->getNonHeapMemoryUsage()Ljava/lang/management/MemoryUsage;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/management/MemoryUsage;->getUsed()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " bytes"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "<br />\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    const-string v6, "text/html"

    invoke-interface {p1, v6}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 243
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletResponse;->getWriter()Ljava/io/PrintWriter;

    move-result-object v4

    .line 244
    .local v4, "pout":Ljava/io/PrintWriter;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method private sendXmlResponse(Ljavax/servlet/http/HttpServletResponse;)V
    .locals 9
    .param p1, "response"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 132
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .local v5, "sb":Ljava/lang/StringBuilder;
    const-string v6, "<statistics>\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    const-string v6, "  <requests>\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    const-string v6, "    <statsOnMs>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/eclipse/jetty/servlet/StatisticsServlet;->_statsHandler:Lorg/eclipse/jetty/server/handler/StatisticsHandler;

    invoke-virtual {v7}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getStatsOnMs()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</statsOnMs>\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    const-string v6, "    <requests>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/eclipse/jetty/servlet/StatisticsServlet;->_statsHandler:Lorg/eclipse/jetty/server/handler/StatisticsHandler;

    invoke-virtual {v7}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getRequests()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</requests>\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    const-string v6, "    <requestsActive>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/eclipse/jetty/servlet/StatisticsServlet;->_statsHandler:Lorg/eclipse/jetty/server/handler/StatisticsHandler;

    invoke-virtual {v7}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getRequestsActive()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</requestsActive>\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    const-string v6, "    <requestsActiveMax>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/eclipse/jetty/servlet/StatisticsServlet;->_statsHandler:Lorg/eclipse/jetty/server/handler/StatisticsHandler;

    invoke-virtual {v7}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getRequestsActiveMax()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</requestsActiveMax>\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    const-string v6, "    <requestsTimeTotal>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/eclipse/jetty/servlet/StatisticsServlet;->_statsHandler:Lorg/eclipse/jetty/server/handler/StatisticsHandler;

    invoke-virtual {v7}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getRequestTimeTotal()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</requestsTimeTotal>\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    const-string v6, "    <requestsTimeMean>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/eclipse/jetty/servlet/StatisticsServlet;->_statsHandler:Lorg/eclipse/jetty/server/handler/StatisticsHandler;

    invoke-virtual {v7}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getRequestTimeMean()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</requestsTimeMean>\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    const-string v6, "    <requestsTimeMax>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/eclipse/jetty/servlet/StatisticsServlet;->_statsHandler:Lorg/eclipse/jetty/server/handler/StatisticsHandler;

    invoke-virtual {v7}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getRequestTimeMax()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</requestsTimeMax>\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    const-string v6, "    <requestsTimeStdDev>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/eclipse/jetty/servlet/StatisticsServlet;->_statsHandler:Lorg/eclipse/jetty/server/handler/StatisticsHandler;

    invoke-virtual {v7}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getRequestTimeStdDev()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</requestsTimeStdDev>\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    const-string v6, "    <dispatched>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/eclipse/jetty/servlet/StatisticsServlet;->_statsHandler:Lorg/eclipse/jetty/server/handler/StatisticsHandler;

    invoke-virtual {v7}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getDispatched()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</dispatched>\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    const-string v6, "    <dispatchedActive>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/eclipse/jetty/servlet/StatisticsServlet;->_statsHandler:Lorg/eclipse/jetty/server/handler/StatisticsHandler;

    invoke-virtual {v7}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getDispatchedActive()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</dispatchedActive>\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    const-string v6, "    <dispatchedActiveMax>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/eclipse/jetty/servlet/StatisticsServlet;->_statsHandler:Lorg/eclipse/jetty/server/handler/StatisticsHandler;

    invoke-virtual {v7}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getDispatchedActiveMax()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</dispatchedActiveMax>\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    const-string v6, "    <dispatchedTimeTotal>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/eclipse/jetty/servlet/StatisticsServlet;->_statsHandler:Lorg/eclipse/jetty/server/handler/StatisticsHandler;

    invoke-virtual {v7}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getDispatchedTimeTotal()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</dispatchedTimeTotal>\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    const-string v6, "    <dispatchedTimeMean>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/eclipse/jetty/servlet/StatisticsServlet;->_statsHandler:Lorg/eclipse/jetty/server/handler/StatisticsHandler;

    invoke-virtual {v7}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getDispatchedTimeMean()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</dispatchedTimeMean>\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    const-string v6, "    <dispatchedTimeMax>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/eclipse/jetty/servlet/StatisticsServlet;->_statsHandler:Lorg/eclipse/jetty/server/handler/StatisticsHandler;

    invoke-virtual {v7}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getDispatchedTimeMax()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</dispatchedTimeMax>\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    const-string v6, "    <dispatchedTimeStdDev"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/eclipse/jetty/servlet/StatisticsServlet;->_statsHandler:Lorg/eclipse/jetty/server/handler/StatisticsHandler;

    invoke-virtual {v7}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getDispatchedTimeStdDev()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</dispatchedTimeStdDev>\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    const-string v6, "    <requestsSuspended>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/eclipse/jetty/servlet/StatisticsServlet;->_statsHandler:Lorg/eclipse/jetty/server/handler/StatisticsHandler;

    invoke-virtual {v7}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getSuspends()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</requestsSuspended>\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    const-string v6, "    <requestsExpired>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/eclipse/jetty/servlet/StatisticsServlet;->_statsHandler:Lorg/eclipse/jetty/server/handler/StatisticsHandler;

    invoke-virtual {v7}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getExpires()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</requestsExpired>\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    const-string v6, "    <requestsResumed>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/eclipse/jetty/servlet/StatisticsServlet;->_statsHandler:Lorg/eclipse/jetty/server/handler/StatisticsHandler;

    invoke-virtual {v7}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getResumes()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</requestsResumed>\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    const-string v6, "  </requests>\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    const-string v6, "  <responses>\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    const-string v6, "    <responses1xx>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/eclipse/jetty/servlet/StatisticsServlet;->_statsHandler:Lorg/eclipse/jetty/server/handler/StatisticsHandler;

    invoke-virtual {v7}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getResponses1xx()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</responses1xx>\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    const-string v6, "    <responses2xx>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/eclipse/jetty/servlet/StatisticsServlet;->_statsHandler:Lorg/eclipse/jetty/server/handler/StatisticsHandler;

    invoke-virtual {v7}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getResponses2xx()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</responses2xx>\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    const-string v6, "    <responses3xx>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/eclipse/jetty/servlet/StatisticsServlet;->_statsHandler:Lorg/eclipse/jetty/server/handler/StatisticsHandler;

    invoke-virtual {v7}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getResponses3xx()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</responses3xx>\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    const-string v6, "    <responses4xx>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/eclipse/jetty/servlet/StatisticsServlet;->_statsHandler:Lorg/eclipse/jetty/server/handler/StatisticsHandler;

    invoke-virtual {v7}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getResponses4xx()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</responses4xx>\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    const-string v6, "    <responses5xx>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/eclipse/jetty/servlet/StatisticsServlet;->_statsHandler:Lorg/eclipse/jetty/server/handler/StatisticsHandler;

    invoke-virtual {v7}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getResponses5xx()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</responses5xx>\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    const-string v6, "    <responsesBytesTotal>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/eclipse/jetty/servlet/StatisticsServlet;->_statsHandler:Lorg/eclipse/jetty/server/handler/StatisticsHandler;

    invoke-virtual {v7}, Lorg/eclipse/jetty/server/handler/StatisticsHandler;->getResponsesBytesTotal()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</responsesBytesTotal>\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    const-string v6, "  </responses>\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    const-string v6, "  <connections>\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/StatisticsServlet;->_connectors:[Lorg/eclipse/jetty/server/Connector;

    .local v0, "arr$":[Lorg/eclipse/jetty/server/Connector;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v1, v0, v2

    .line 172
    .local v1, "connector":Lorg/eclipse/jetty/server/Connector;
    const-string v6, "    <connector>\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    const-string v6, "      <name>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Lorg/eclipse/jetty/server/Connector;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</name>\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    const-string v6, "      <statsOn>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Lorg/eclipse/jetty/server/Connector;->getStatsOn()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</statsOn>\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-interface {v1}, Lorg/eclipse/jetty/server/Connector;->getStatsOn()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 177
    const-string v6, "    <statsOnMs>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Lorg/eclipse/jetty/server/Connector;->getStatsOnMs()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</statsOnMs>\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    const-string v6, "    <connections>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Lorg/eclipse/jetty/server/Connector;->getConnections()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</connections>\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    const-string v6, "    <connectionsOpen>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Lorg/eclipse/jetty/server/Connector;->getConnectionsOpen()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</connectionsOpen>\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    const-string v6, "    <connectionsOpenMax>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Lorg/eclipse/jetty/server/Connector;->getConnectionsOpenMax()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</connectionsOpenMax>\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    const-string v6, "    <connectionsDurationTotal>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Lorg/eclipse/jetty/server/Connector;->getConnectionsDurationTotal()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</connectionsDurationTotal>\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    const-string v6, "    <connectionsDurationMean>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Lorg/eclipse/jetty/server/Connector;->getConnectionsDurationMean()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</connectionsDurationMean>\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    const-string v6, "    <connectionsDurationMax>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Lorg/eclipse/jetty/server/Connector;->getConnectionsDurationMax()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</connectionsDurationMax>\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    const-string v6, "    <connectionsDurationStdDev>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Lorg/eclipse/jetty/server/Connector;->getConnectionsDurationStdDev()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</connectionsDurationStdDev>\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    const-string v6, "    <requests>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Lorg/eclipse/jetty/server/Connector;->getRequests()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</requests>\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    const-string v6, "    <connectionsRequestsMean>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Lorg/eclipse/jetty/server/Connector;->getConnectionsRequestsMean()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</connectionsRequestsMean>\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    const-string v6, "    <connectionsRequestsMax>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Lorg/eclipse/jetty/server/Connector;->getConnectionsRequestsMax()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</connectionsRequestsMax>\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    const-string v6, "    <connectionsRequestsStdDev>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v1}, Lorg/eclipse/jetty/server/Connector;->getConnectionsRequestsStdDev()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</connectionsRequestsStdDev>\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    :cond_0
    const-string v6, "    </connector>\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 192
    .end local v1    # "connector":Lorg/eclipse/jetty/server/Connector;
    :cond_1
    const-string v6, "  </connections>\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    const-string v6, "  <memory>\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 195
    const-string v6, "    <heapMemoryUsage>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/eclipse/jetty/servlet/StatisticsServlet;->_memoryBean:Ljava/lang/management/MemoryMXBean;

    invoke-interface {v7}, Ljava/lang/management/MemoryMXBean;->getHeapMemoryUsage()Ljava/lang/management/MemoryUsage;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/management/MemoryUsage;->getUsed()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</heapMemoryUsage>\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    const-string v6, "    <nonHeapMemoryUsage>"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/eclipse/jetty/servlet/StatisticsServlet;->_memoryBean:Ljava/lang/management/MemoryMXBean;

    invoke-interface {v7}, Ljava/lang/management/MemoryMXBean;->getNonHeapMemoryUsage()Ljava/lang/management/MemoryUsage;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/management/MemoryUsage;->getUsed()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "</nonHeapMemoryUsage>\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    const-string v6, "  </memory>\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 199
    const-string v6, "</statistics>\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    const-string v6, "text/xml"

    invoke-interface {p1, v6}, Ljavax/servlet/http/HttpServletResponse;->setContentType(Ljava/lang/String;)V

    .line 202
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletResponse;->getWriter()Ljava/io/PrintWriter;

    move-result-object v4

    .line 203
    .local v4, "pout":Ljava/io/PrintWriter;
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/io/PrintWriter;->write(Ljava/lang/String;)V

    .line 204
    return-void
.end method


# virtual methods
.method protected doGet(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 5
    .param p1, "req"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "resp"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v4, 0x1f7

    .line 86
    iget-object v1, p0, Lorg/eclipse/jetty/servlet/StatisticsServlet;->_statsHandler:Lorg/eclipse/jetty/server/handler/StatisticsHandler;

    if-nez v1, :cond_0

    .line 88
    sget-object v1, Lorg/eclipse/jetty/servlet/StatisticsServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v2, "Statistics Handler not installed!"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    invoke-interface {p2, v4}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    .line 114
    :goto_0
    return-void

    .line 92
    :cond_0
    iget-boolean v1, p0, Lorg/eclipse/jetty/servlet/StatisticsServlet;->_restrictToLocalhost:Z

    if-eqz v1, :cond_1

    .line 94
    invoke-interface {p1}, Ljavax/servlet/http/HttpServletRequest;->getRemoteAddr()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lorg/eclipse/jetty/servlet/StatisticsServlet;->isLoopbackAddress(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 96
    invoke-interface {p2, v4}, Ljavax/servlet/http/HttpServletResponse;->sendError(I)V

    goto :goto_0

    .line 101
    :cond_1
    const-string v1, "xml"

    invoke-interface {p1, v1}, Ljavax/servlet/http/HttpServletRequest;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "wantXml":Ljava/lang/String;
    if-nez v0, :cond_2

    .line 103
    const-string v1, "XML"

    invoke-interface {p1, v1}, Ljavax/servlet/http/HttpServletRequest;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    :cond_2
    if-eqz v0, :cond_3

    const-string v1, "true"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 107
    invoke-direct {p0, p2}, Lorg/eclipse/jetty/servlet/StatisticsServlet;->sendXmlResponse(Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_0

    .line 111
    :cond_3
    invoke-direct {p0, p2}, Lorg/eclipse/jetty/servlet/StatisticsServlet;->sendTextResponse(Ljavax/servlet/http/HttpServletResponse;)V

    goto :goto_0
.end method

.method public doPost(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V
    .locals 0
    .param p1, "sreq"    # Ljavax/servlet/http/HttpServletRequest;
    .param p2, "sres"    # Ljavax/servlet/http/HttpServletResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/servlet/StatisticsServlet;->doGet(Ljavax/servlet/http/HttpServletRequest;Ljavax/servlet/http/HttpServletResponse;)V

    .line 82
    return-void
.end method

.method public init()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/servlet/ServletException;
        }
    .end annotation

    .prologue
    .line 53
    invoke-virtual {p0}, Lorg/eclipse/jetty/servlet/StatisticsServlet;->getServletContext()Ljavax/servlet/ServletContext;

    move-result-object v1

    .local v1, "context":Ljavax/servlet/ServletContext;
    move-object v3, v1

    .line 54
    check-cast v3, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;

    .line 55
    .local v3, "scontext":Lorg/eclipse/jetty/server/handler/ContextHandler$Context;
    invoke-virtual {v3}, Lorg/eclipse/jetty/server/handler/ContextHandler$Context;->getContextHandler()Lorg/eclipse/jetty/server/handler/ContextHandler;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/jetty/server/handler/ContextHandler;->getServer()Lorg/eclipse/jetty/server/Server;

    move-result-object v0

    .line 57
    .local v0, "_server":Lorg/eclipse/jetty/server/Server;
    const-class v4, Lorg/eclipse/jetty/server/handler/StatisticsHandler;

    invoke-virtual {v0, v4}, Lorg/eclipse/jetty/server/Server;->getChildHandlerByClass(Ljava/lang/Class;)Lorg/eclipse/jetty/server/Handler;

    move-result-object v2

    .line 59
    .local v2, "handler":Lorg/eclipse/jetty/server/Handler;
    if-eqz v2, :cond_1

    .line 61
    check-cast v2, Lorg/eclipse/jetty/server/handler/StatisticsHandler;

    .end local v2    # "handler":Lorg/eclipse/jetty/server/Handler;
    iput-object v2, p0, Lorg/eclipse/jetty/servlet/StatisticsServlet;->_statsHandler:Lorg/eclipse/jetty/server/handler/StatisticsHandler;

    .line 69
    invoke-static {}, Ljava/lang/management/ManagementFactory;->getMemoryMXBean()Ljava/lang/management/MemoryMXBean;

    move-result-object v4

    iput-object v4, p0, Lorg/eclipse/jetty/servlet/StatisticsServlet;->_memoryBean:Ljava/lang/management/MemoryMXBean;

    .line 70
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/Server;->getConnectors()[Lorg/eclipse/jetty/server/Connector;

    move-result-object v4

    iput-object v4, p0, Lorg/eclipse/jetty/servlet/StatisticsServlet;->_connectors:[Lorg/eclipse/jetty/server/Connector;

    .line 72
    const-string v4, "restrictToLocalhost"

    invoke-virtual {p0, v4}, Lorg/eclipse/jetty/servlet/StatisticsServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 74
    const-string v4, "true"

    const-string v5, "restrictToLocalhost"

    invoke-virtual {p0, v5}, Lorg/eclipse/jetty/servlet/StatisticsServlet;->getInitParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    iput-boolean v4, p0, Lorg/eclipse/jetty/servlet/StatisticsServlet;->_restrictToLocalhost:Z

    .line 77
    :cond_0
    :goto_0
    return-void

    .line 65
    .restart local v2    # "handler":Lorg/eclipse/jetty/server/Handler;
    :cond_1
    sget-object v4, Lorg/eclipse/jetty/servlet/StatisticsServlet;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v5, "Statistics Handler not installed!"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
