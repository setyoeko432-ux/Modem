.class Lorg/eclipse/jetty/util/log/JettyAwareLogger;
.super Ljava/lang/Object;
.source "JettyAwareLogger.java"

# interfaces
.implements Lorg/slf4j/Logger;


# static fields
.field private static final DEBUG:I = 0xa

.field private static final ERROR:I = 0x28

.field private static final FQCN:Ljava/lang/String;

.field private static final INFO:I = 0x14

.field private static final TRACE:I = 0x0

.field private static final WARN:I = 0x1e


# instance fields
.field private final _logger:Lorg/slf4j/spi/LocationAwareLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-class v0, Lorg/eclipse/jetty/util/log/Slf4jLog;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->FQCN:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/slf4j/spi/LocationAwareLogger;)V
    .locals 0
    .param p1, "logger"    # Lorg/slf4j/spi/LocationAwareLogger;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->_logger:Lorg/slf4j/spi/LocationAwareLogger;

    .line 45
    return-void
.end method

.method private log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V
    .locals 9
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "level"    # I
    .param p3, "msg"    # Ljava/lang/String;
    .param p4, "argArray"    # [Ljava/lang/Object;
    .param p5, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v5, 0x0

    .line 604
    if-nez p4, :cond_1

    .line 607
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->_logger:Lorg/slf4j/spi/LocationAwareLogger;

    sget-object v2, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->FQCN:Ljava/lang/String;

    move-object v1, p1

    move v3, p2

    move-object v4, p3

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lorg/slf4j/spi/LocationAwareLogger;->log(Lorg/slf4j/Marker;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 623
    :cond_0
    :goto_0
    return-void

    .line 611
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->_logger:Lorg/slf4j/spi/LocationAwareLogger;

    invoke-interface {v0}, Lorg/slf4j/spi/LocationAwareLogger;->isTraceEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v8, 0x0

    .line 615
    .local v8, "loggerLevel":I
    :goto_1
    if-gt v8, p2, :cond_0

    .line 619
    invoke-static {p3, p4}, Lorg/slf4j/helpers/MessageFormatter;->arrayFormat(Ljava/lang/String;[Ljava/lang/Object;)Lorg/slf4j/helpers/FormattingTuple;

    move-result-object v7

    .line 620
    .local v7, "ft":Lorg/slf4j/helpers/FormattingTuple;
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->_logger:Lorg/slf4j/spi/LocationAwareLogger;

    sget-object v2, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->FQCN:Ljava/lang/String;

    invoke-virtual {v7}, Lorg/slf4j/helpers/FormattingTuple;->getMessage()Ljava/lang/String;

    move-result-object v4

    move-object v1, p1

    move v3, p2

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lorg/slf4j/spi/LocationAwareLogger;->log(Lorg/slf4j/Marker;Ljava/lang/String;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 611
    .end local v7    # "ft":Lorg/slf4j/helpers/FormattingTuple;
    .end local v8    # "loggerLevel":I
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->_logger:Lorg/slf4j/spi/LocationAwareLogger;

    invoke-interface {v0}, Lorg/slf4j/spi/LocationAwareLogger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v8, 0xa

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->_logger:Lorg/slf4j/spi/LocationAwareLogger;

    invoke-interface {v0}, Lorg/slf4j/spi/LocationAwareLogger;->isInfoEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v8, 0x14

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->_logger:Lorg/slf4j/spi/LocationAwareLogger;

    invoke-interface {v0}, Lorg/slf4j/spi/LocationAwareLogger;->isWarnEnabled()Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v8, 0x1e

    goto :goto_1

    :cond_5
    const/16 v8, 0x28

    goto :goto_1
.end method


# virtual methods
.method public debug(Ljava/lang/String;)V
    .locals 6
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 179
    const/16 v2, 0xa

    move-object v0, p0

    move-object v3, p1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 180
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 188
    const/16 v2, 0xa

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    move-object v0, p0

    move-object v3, p1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 189
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 197
    const/16 v2, 0xa

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    const/4 v0, 0x1

    aput-object p3, v4, v0

    move-object v0, p0

    move-object v3, p1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 198
    return-void
.end method

.method public debug(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 215
    const/16 v2, 0xa

    move-object v0, p0

    move-object v3, p1

    move-object v4, v1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 216
    return-void
.end method

.method public debug(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "argArray"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 206
    const/16 v2, 0xa

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 207
    return-void
.end method

.method public debug(Lorg/slf4j/Marker;Ljava/lang/String;)V
    .locals 6
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 233
    const/16 v2, 0xa

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 234
    return-void
.end method

.method public debug(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/Object;

    .prologue
    .line 242
    const/16 v2, 0xa

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 243
    return-void
.end method

.method public debug(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 251
    const/16 v2, 0xa

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, v4, v0

    const/4 v0, 0x1

    aput-object p4, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 252
    return-void
.end method

.method public debug(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 269
    const/16 v2, 0xa

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 270
    return-void
.end method

.method public debug(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "argArray"    # [Ljava/lang/Object;

    .prologue
    .line 260
    const/16 v2, 0xa

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 261
    return-void
.end method

.method public error(Ljava/lang/String;)V
    .locals 6
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 503
    const/16 v2, 0x28

    move-object v0, p0

    move-object v3, p1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 504
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 512
    const/16 v2, 0x28

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    move-object v0, p0

    move-object v3, p1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 513
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 521
    const/16 v2, 0x28

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    const/4 v0, 0x1

    aput-object p3, v4, v0

    move-object v0, p0

    move-object v3, p1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 522
    return-void
.end method

.method public error(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 539
    const/16 v2, 0x28

    move-object v0, p0

    move-object v3, p1

    move-object v4, v1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 540
    return-void
.end method

.method public error(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "argArray"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 530
    const/16 v2, 0x28

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 531
    return-void
.end method

.method public error(Lorg/slf4j/Marker;Ljava/lang/String;)V
    .locals 6
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 557
    const/16 v2, 0x28

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 558
    return-void
.end method

.method public error(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/Object;

    .prologue
    .line 566
    const/16 v2, 0x28

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 567
    return-void
.end method

.method public error(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 575
    const/16 v2, 0x28

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, v4, v0

    const/4 v0, 0x1

    aput-object p4, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 576
    return-void
.end method

.method public error(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 593
    const/16 v2, 0x28

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 594
    return-void
.end method

.method public error(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "argArray"    # [Ljava/lang/Object;

    .prologue
    .line 584
    const/16 v2, 0x28

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 585
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->_logger:Lorg/slf4j/spi/LocationAwareLogger;

    invoke-interface {v0}, Lorg/slf4j/spi/LocationAwareLogger;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public info(Ljava/lang/String;)V
    .locals 6
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 287
    const/16 v2, 0x14

    move-object v0, p0

    move-object v3, p1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 288
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 296
    const/16 v2, 0x14

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    move-object v0, p0

    move-object v3, p1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 297
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 305
    const/16 v2, 0x14

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    const/4 v0, 0x1

    aput-object p3, v4, v0

    move-object v0, p0

    move-object v3, p1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 306
    return-void
.end method

.method public info(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 323
    const/16 v2, 0x14

    move-object v0, p0

    move-object v3, p1

    move-object v4, v1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 324
    return-void
.end method

.method public info(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "argArray"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 314
    const/16 v2, 0x14

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 315
    return-void
.end method

.method public info(Lorg/slf4j/Marker;Ljava/lang/String;)V
    .locals 6
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 341
    const/16 v2, 0x14

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 342
    return-void
.end method

.method public info(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/Object;

    .prologue
    .line 350
    const/16 v2, 0x14

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 351
    return-void
.end method

.method public info(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 359
    const/16 v2, 0x14

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, v4, v0

    const/4 v0, 0x1

    aput-object p4, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 360
    return-void
.end method

.method public info(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 377
    const/16 v2, 0x14

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 378
    return-void
.end method

.method public info(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "argArray"    # [Ljava/lang/Object;

    .prologue
    .line 368
    const/16 v2, 0x14

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 369
    return-void
.end method

.method public isDebugEnabled()Z
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->_logger:Lorg/slf4j/spi/LocationAwareLogger;

    invoke-interface {v0}, Lorg/slf4j/spi/LocationAwareLogger;->isDebugEnabled()Z

    move-result v0

    return v0
.end method

.method public isDebugEnabled(Lorg/slf4j/Marker;)Z
    .locals 1
    .param p1, "marker"    # Lorg/slf4j/Marker;

    .prologue
    .line 224
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->_logger:Lorg/slf4j/spi/LocationAwareLogger;

    invoke-interface {v0, p1}, Lorg/slf4j/spi/LocationAwareLogger;->isDebugEnabled(Lorg/slf4j/Marker;)Z

    move-result v0

    return v0
.end method

.method public isErrorEnabled()Z
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->_logger:Lorg/slf4j/spi/LocationAwareLogger;

    invoke-interface {v0}, Lorg/slf4j/spi/LocationAwareLogger;->isErrorEnabled()Z

    move-result v0

    return v0
.end method

.method public isErrorEnabled(Lorg/slf4j/Marker;)Z
    .locals 1
    .param p1, "marker"    # Lorg/slf4j/Marker;

    .prologue
    .line 548
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->_logger:Lorg/slf4j/spi/LocationAwareLogger;

    invoke-interface {v0, p1}, Lorg/slf4j/spi/LocationAwareLogger;->isErrorEnabled(Lorg/slf4j/Marker;)Z

    move-result v0

    return v0
.end method

.method public isInfoEnabled()Z
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->_logger:Lorg/slf4j/spi/LocationAwareLogger;

    invoke-interface {v0}, Lorg/slf4j/spi/LocationAwareLogger;->isInfoEnabled()Z

    move-result v0

    return v0
.end method

.method public isInfoEnabled(Lorg/slf4j/Marker;)Z
    .locals 1
    .param p1, "marker"    # Lorg/slf4j/Marker;

    .prologue
    .line 332
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->_logger:Lorg/slf4j/spi/LocationAwareLogger;

    invoke-interface {v0, p1}, Lorg/slf4j/spi/LocationAwareLogger;->isInfoEnabled(Lorg/slf4j/Marker;)Z

    move-result v0

    return v0
.end method

.method public isTraceEnabled()Z
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->_logger:Lorg/slf4j/spi/LocationAwareLogger;

    invoke-interface {v0}, Lorg/slf4j/spi/LocationAwareLogger;->isTraceEnabled()Z

    move-result v0

    return v0
.end method

.method public isTraceEnabled(Lorg/slf4j/Marker;)Z
    .locals 1
    .param p1, "marker"    # Lorg/slf4j/Marker;

    .prologue
    .line 116
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->_logger:Lorg/slf4j/spi/LocationAwareLogger;

    invoke-interface {v0, p1}, Lorg/slf4j/spi/LocationAwareLogger;->isTraceEnabled(Lorg/slf4j/Marker;)Z

    move-result v0

    return v0
.end method

.method public isWarnEnabled()Z
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->_logger:Lorg/slf4j/spi/LocationAwareLogger;

    invoke-interface {v0}, Lorg/slf4j/spi/LocationAwareLogger;->isWarnEnabled()Z

    move-result v0

    return v0
.end method

.method public isWarnEnabled(Lorg/slf4j/Marker;)Z
    .locals 1
    .param p1, "marker"    # Lorg/slf4j/Marker;

    .prologue
    .line 440
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->_logger:Lorg/slf4j/spi/LocationAwareLogger;

    invoke-interface {v0, p1}, Lorg/slf4j/spi/LocationAwareLogger;->isWarnEnabled(Lorg/slf4j/Marker;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->_logger:Lorg/slf4j/spi/LocationAwareLogger;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public trace(Ljava/lang/String;)V
    .locals 6
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 71
    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 72
    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 80
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p2, v4, v2

    move-object v0, p0

    move-object v3, p1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 81
    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 89
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p2, v4, v2

    const/4 v0, 0x1

    aput-object p3, v4, v0

    move-object v0, p0

    move-object v3, p1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 90
    return-void
.end method

.method public trace(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 107
    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, v1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 108
    return-void
.end method

.method public trace(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "argArray"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 98
    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 99
    return-void
.end method

.method public trace(Lorg/slf4j/Marker;Ljava/lang/String;)V
    .locals 6
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 125
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 126
    return-void
.end method

.method public trace(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 134
    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p3, v4, v2

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 135
    return-void
.end method

.method public trace(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 143
    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    aput-object p3, v4, v2

    const/4 v0, 0x1

    aput-object p4, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 144
    return-void
.end method

.method public trace(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 161
    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 162
    return-void
.end method

.method public trace(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "argArray"    # [Ljava/lang/Object;

    .prologue
    .line 152
    const/4 v2, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 153
    return-void
.end method

.method public warn(Ljava/lang/String;)V
    .locals 6
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 395
    const/16 v2, 0x1e

    move-object v0, p0

    move-object v3, p1

    move-object v4, v1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 396
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 404
    const/16 v2, 0x1e

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    move-object v0, p0

    move-object v3, p1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 405
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "arg1"    # Ljava/lang/Object;
    .param p3, "arg2"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 422
    const/16 v2, 0x1e

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p2, v4, v0

    const/4 v0, 0x1

    aput-object p3, v4, v0

    move-object v0, p0

    move-object v3, p1

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 423
    return-void
.end method

.method public warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;

    .prologue
    const/4 v1, 0x0

    .line 431
    const/16 v2, 0x1e

    move-object v0, p0

    move-object v3, p1

    move-object v4, v1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 432
    return-void
.end method

.method public warn(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "format"    # Ljava/lang/String;
    .param p2, "argArray"    # [Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 413
    const/16 v2, 0x1e

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, v1

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 414
    return-void
.end method

.method public warn(Lorg/slf4j/Marker;Ljava/lang/String;)V
    .locals 6
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 449
    const/16 v2, 0x1e

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, v4

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 450
    return-void
.end method

.method public warn(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 6
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg"    # Ljava/lang/Object;

    .prologue
    .line 458
    const/16 v2, 0x1e

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 459
    return-void
.end method

.method public warn(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "arg1"    # Ljava/lang/Object;
    .param p4, "arg2"    # Ljava/lang/Object;

    .prologue
    .line 467
    const/16 v2, 0x1e

    const/4 v0, 0x2

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, v4, v0

    const/4 v0, 0x1

    aput-object p4, v4, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 468
    return-void
.end method

.method public warn(Lorg/slf4j/Marker;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 485
    const/16 v2, 0x1e

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 486
    return-void
.end method

.method public warn(Lorg/slf4j/Marker;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 6
    .param p1, "marker"    # Lorg/slf4j/Marker;
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "argArray"    # [Ljava/lang/Object;

    .prologue
    .line 476
    const/16 v2, 0x1e

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/eclipse/jetty/util/log/JettyAwareLogger;->log(Lorg/slf4j/Marker;ILjava/lang/String;[Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 477
    return-void
.end method
