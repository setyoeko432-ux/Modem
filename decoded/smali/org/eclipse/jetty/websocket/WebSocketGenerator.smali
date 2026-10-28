.class public interface abstract Lorg/eclipse/jetty/websocket/WebSocketGenerator;
.super Ljava/lang/Object;
.source "WebSocketGenerator.java"


# virtual methods
.method public abstract addFrame(BB[BII)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract flush()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract isBufferEmpty()Z
.end method
