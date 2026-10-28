.class Lorg/eclipse/jetty/websocket/WebSocketClientFactory$WebSocketClientConnection;
.super Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;
.source "WebSocketClientFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/websocket/WebSocketClientFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WebSocketClientConnection"
.end annotation


# instance fields
.field private final factory:Lorg/eclipse/jetty/websocket/WebSocketClientFactory;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/websocket/WebSocketClientFactory;Lorg/eclipse/jetty/websocket/WebSocket;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/websocket/WebSocketBuffers;JILjava/lang/String;Ljava/util/List;ILorg/eclipse/jetty/websocket/MaskGen;)V
    .locals 11
    .param p1, "factory"    # Lorg/eclipse/jetty/websocket/WebSocketClientFactory;
    .param p2, "webSocket"    # Lorg/eclipse/jetty/websocket/WebSocket;
    .param p3, "endPoint"    # Lorg/eclipse/jetty/io/EndPoint;
    .param p4, "buffers"    # Lorg/eclipse/jetty/websocket/WebSocketBuffers;
    .param p5, "timeStamp"    # J
    .param p7, "maxIdleTime"    # I
    .param p8, "protocol"    # Ljava/lang/String;
    .param p10, "draftVersion"    # I
    .param p11, "maskGen"    # Lorg/eclipse/jetty/websocket/MaskGen;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jetty/websocket/WebSocketClientFactory;",
            "Lorg/eclipse/jetty/websocket/WebSocket;",
            "Lorg/eclipse/jetty/io/EndPoint;",
            "Lorg/eclipse/jetty/websocket/WebSocketBuffers;",
            "JI",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/websocket/Extension;",
            ">;I",
            "Lorg/eclipse/jetty/websocket/MaskGen;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 563
    .local p9, "extensions":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/websocket/Extension;>;"
    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move-wide/from16 v4, p5

    move/from16 v6, p7

    move-object/from16 v7, p8

    move-object/from16 v8, p9

    move/from16 v9, p10

    move-object/from16 v10, p11

    invoke-direct/range {v0 .. v10}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;-><init>(Lorg/eclipse/jetty/websocket/WebSocket;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/websocket/WebSocketBuffers;JILjava/lang/String;Ljava/util/List;ILorg/eclipse/jetty/websocket/MaskGen;)V

    .line 564
    iput-object p1, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$WebSocketClientConnection;->factory:Lorg/eclipse/jetty/websocket/WebSocketClientFactory;

    .line 565
    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 1

    .prologue
    .line 570
    invoke-super {p0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionRFC6455;->onClose()V

    .line 571
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketClientFactory$WebSocketClientConnection;->factory:Lorg/eclipse/jetty/websocket/WebSocketClientFactory;

    invoke-virtual {v0, p0}, Lorg/eclipse/jetty/websocket/WebSocketClientFactory;->removeConnection(Lorg/eclipse/jetty/websocket/WebSocketConnection;)Z

    .line 572
    return-void
.end method
