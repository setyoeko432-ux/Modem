.class Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$WSFrameConnection;
.super Ljava/lang/Object;
.source "WebSocketConnectionD08.java"

# interfaces
.implements Lorg/eclipse/jetty/websocket/WebSocket$FrameConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WSFrameConnection"
.end annotation


# instance fields
.field private volatile _disconnecting:Z

.field final synthetic this$0:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;


# direct methods
.method private constructor <init>(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)V
    .locals 0

    .prologue
    .line 387
    iput-object p1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$WSFrameConnection;->this$0:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;
    .param p2, "x1"    # Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$1;

    .prologue
    .line 387
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$WSFrameConnection;-><init>(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)V

    return-void
.end method


# virtual methods
.method public binaryOpcode()B
    .locals 1

    .prologue
    .line 501
    const/4 v0, 0x2

    return v0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 573
    const/16 v0, 0x3e8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$WSFrameConnection;->close(ILjava/lang/String;)V

    .line 574
    return-void
.end method

.method public close(ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 443
    iget-boolean v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$WSFrameConnection;->_disconnecting:Z

    if-eqz v0, :cond_0

    .line 447
    :goto_0
    return-void

    .line 445
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$WSFrameConnection;->_disconnecting:Z

    .line 446
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$WSFrameConnection;->this$0:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-virtual {v0, p1, p2}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->closeOut(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public continuationOpcode()B
    .locals 1

    .prologue
    .line 513
    const/4 v0, 0x0

    return v0
.end method

.method public disconnect()V
    .locals 2

    .prologue
    .line 567
    const/16 v0, 0x3e8

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$WSFrameConnection;->close(ILjava/lang/String;)V

    .line 568
    return-void
.end method

.method public finMask()B
    .locals 1

    .prologue
    .line 519
    const/16 v0, 0x8

    return v0
.end method

.method public getMaxBinaryMessageSize()I
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$WSFrameConnection;->this$0:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->access$1200(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)I

    move-result v0

    return v0
.end method

.method public getMaxIdleTime()I
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$WSFrameConnection;->this$0:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->access$1300(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->getMaxIdleTime()I

    move-result v0

    return v0
.end method

.method public getMaxTextMessageSize()I
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$WSFrameConnection;->this$0:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->access$1100(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)I

    move-result v0

    return v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$WSFrameConnection;->this$0:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->access$1400(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAllowFrameFragmentation()Z
    .locals 1

    .prologue
    .line 585
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$WSFrameConnection;->this$0:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->access$1500(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/websocket/WebSocketParserD08;

    move-result-object v0

    invoke-virtual {v0}, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->isFakeFragments()Z

    move-result v0

    return v0
.end method

.method public isBinary(B)Z
    .locals 1
    .param p1, "opcode"    # B

    .prologue
    .line 537
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isClose(B)Z
    .locals 1
    .param p1, "opcode"    # B

    .prologue
    .line 549
    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isContinuation(B)Z
    .locals 1
    .param p1, "opcode"    # B

    .prologue
    .line 543
    if-nez p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isControl(B)Z
    .locals 1
    .param p1, "opcode"    # B

    .prologue
    .line 525
    invoke-static {p1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->isControlFrame(B)Z

    move-result v0

    return v0
.end method

.method public isMessageComplete(B)Z
    .locals 1
    .param p1, "flags"    # B

    .prologue
    .line 431
    invoke-static {p1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->isLastFrame(B)Z

    move-result v0

    return v0
.end method

.method public isOpen()Z
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$WSFrameConnection;->this$0:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->access$700(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$WSFrameConnection;->this$0:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->access$800(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v0

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPing(B)Z
    .locals 1
    .param p1, "opcode"    # B

    .prologue
    .line 555
    const/16 v0, 0x9

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPong(B)Z
    .locals 1
    .param p1, "opcode"    # B

    .prologue
    .line 561
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isText(B)Z
    .locals 1
    .param p1, "opcode"    # B

    .prologue
    const/4 v0, 0x1

    .line 531
    if-ne p1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public sendControl(B[BII)V
    .locals 6
    .param p1, "ctrl"    # B
    .param p2, "data"    # [B
    .param p3, "offset"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 422
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$WSFrameConnection;->this$0:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->access$200(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closedOut "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$WSFrameConnection;->this$0:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v2}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->access$300(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$WSFrameConnection;->this$0:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v2}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->access$400(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$WSFrameConnection;->this$0:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->access$500(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    move-result-object v0

    const/16 v1, 0x8

    move v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v5}, Lorg/eclipse/jetty/websocket/WebSocketGenerator;->addFrame(BB[BII)V

    .line 425
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$WSFrameConnection;->this$0:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->access$600(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)V

    .line 426
    return-void
.end method

.method public sendFrame(BB[BII)V
    .locals 6
    .param p1, "flags"    # B
    .param p2, "opcode"    # B
    .param p3, "content"    # [B
    .param p4, "offset"    # I
    .param p5, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 413
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$WSFrameConnection;->this$0:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->access$200(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closedOut "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$WSFrameConnection;->this$0:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v2}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->access$300(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$WSFrameConnection;->this$0:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v2}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->access$400(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 415
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$WSFrameConnection;->this$0:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->access$500(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    move-result-object v0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lorg/eclipse/jetty/websocket/WebSocketGenerator;->addFrame(BB[BII)V

    .line 416
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$WSFrameConnection;->this$0:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->access$600(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)V

    .line 417
    return-void
.end method

.method public sendMessage(Ljava/lang/String;)V
    .locals 6
    .param p1, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 394
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$WSFrameConnection;->this$0:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->access$200(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 395
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closedOut "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$WSFrameConnection;->this$0:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v2}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->access$300(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$WSFrameConnection;->this$0:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v2}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->access$400(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 396
    :cond_0
    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 397
    .local v3, "data":[B
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$WSFrameConnection;->this$0:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->access$500(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    const/4 v4, 0x0

    array-length v5, v3

    invoke-interface/range {v0 .. v5}, Lorg/eclipse/jetty/websocket/WebSocketGenerator;->addFrame(BB[BII)V

    .line 398
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$WSFrameConnection;->this$0:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->access$600(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)V

    .line 399
    return-void
.end method

.method public sendMessage([BII)V
    .locals 6
    .param p1, "content"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 404
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$WSFrameConnection;->this$0:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->access$200(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 405
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "closedOut "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$WSFrameConnection;->this$0:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v2}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->access$300(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$WSFrameConnection;->this$0:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v2}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->access$400(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 406
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$WSFrameConnection;->this$0:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->access$500(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/websocket/WebSocketGenerator;

    move-result-object v0

    const/16 v1, 0x8

    const/4 v2, 0x2

    move-object v3, p1

    move v4, p2

    move v5, p3

    invoke-interface/range {v0 .. v5}, Lorg/eclipse/jetty/websocket/WebSocketGenerator;->addFrame(BB[BII)V

    .line 407
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$WSFrameConnection;->this$0:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->access$600(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)V

    .line 408
    return-void
.end method

.method public setAllowFrameFragmentation(Z)V
    .locals 1
    .param p1, "allowFragmentation"    # Z

    .prologue
    .line 579
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$WSFrameConnection;->this$0:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v0}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->access$1500(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/websocket/WebSocketParserD08;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/websocket/WebSocketParserD08;->setFakeFragments(Z)V

    .line 580
    return-void
.end method

.method public setMaxBinaryMessageSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 471
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$WSFrameConnection;->this$0:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v0, p1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->access$1202(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;I)I

    .line 472
    return-void
.end method

.method public setMaxIdleTime(I)V
    .locals 2
    .param p1, "ms"    # I

    .prologue
    .line 454
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$WSFrameConnection;->this$0:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->access$900(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v1

    invoke-interface {v1, p1}, Lorg/eclipse/jetty/io/EndPoint;->setMaxIdleTime(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 460
    :goto_0
    return-void

    .line 456
    :catch_0
    move-exception v0

    .line 458
    .local v0, "e":Ljava/io/IOException;
    invoke-static {}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->access$1000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    invoke-interface {v1, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public setMaxTextMessageSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 465
    iget-object v0, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$WSFrameConnection;->this$0:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v0, p1}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->access$1102(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;I)I

    .line 466
    return-void
.end method

.method public textOpcode()B
    .locals 1

    .prologue
    .line 507
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 592
    const-string v0, "%s[D08]@%x l(%s:%d)<->r(%s:%d)"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$WSFrameConnection;->this$0:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v3}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->access$1600(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/jetty/io/EndPoint;->getLocalAddr()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$WSFrameConnection;->this$0:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v3}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->access$1700(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/jetty/io/EndPoint;->getLocalPort()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$WSFrameConnection;->this$0:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v3}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->access$1800(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/jetty/io/EndPoint;->getRemoteAddr()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x5

    iget-object v3, p0, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08$WSFrameConnection;->this$0:Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;

    invoke-static {v3}, Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;->access$1900(Lorg/eclipse/jetty/websocket/WebSocketConnectionD08;)Lorg/eclipse/jetty/io/EndPoint;

    move-result-object v3

    invoke-interface {v3}, Lorg/eclipse/jetty/io/EndPoint;->getRemotePort()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
