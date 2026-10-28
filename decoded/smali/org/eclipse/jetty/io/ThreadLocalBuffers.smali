.class public Lorg/eclipse/jetty/io/ThreadLocalBuffers;
.super Lorg/eclipse/jetty/io/AbstractBuffers;
.source "ThreadLocalBuffers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;
    }
.end annotation


# instance fields
.field private final _buffers:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/io/Buffers$Type;ILorg/eclipse/jetty/io/Buffers$Type;ILorg/eclipse/jetty/io/Buffers$Type;)V
    .locals 1
    .param p1, "headerType"    # Lorg/eclipse/jetty/io/Buffers$Type;
    .param p2, "headerSize"    # I
    .param p3, "bufferType"    # Lorg/eclipse/jetty/io/Buffers$Type;
    .param p4, "bufferSize"    # I
    .param p5, "otherType"    # Lorg/eclipse/jetty/io/Buffers$Type;

    .prologue
    .line 43
    invoke-direct/range {p0 .. p5}, Lorg/eclipse/jetty/io/AbstractBuffers;-><init>(Lorg/eclipse/jetty/io/Buffers$Type;ILorg/eclipse/jetty/io/Buffers$Type;ILorg/eclipse/jetty/io/Buffers$Type;)V

    .line 31
    new-instance v0, Lorg/eclipse/jetty/io/ThreadLocalBuffers$1;

    invoke-direct {v0, p0}, Lorg/eclipse/jetty/io/ThreadLocalBuffers$1;-><init>(Lorg/eclipse/jetty/io/ThreadLocalBuffers;)V

    iput-object v0, p0, Lorg/eclipse/jetty/io/ThreadLocalBuffers;->_buffers:Ljava/lang/ThreadLocal;

    .line 44
    return-void
.end method


# virtual methods
.method public getBuffer()Lorg/eclipse/jetty/io/Buffer;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 49
    iget-object v2, p0, Lorg/eclipse/jetty/io/ThreadLocalBuffers;->_buffers:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;

    .line 50
    .local v1, "buffers":Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;
    iget-object v2, v1, Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v2, :cond_0

    .line 52
    iget-object v0, v1, Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 53
    .local v0, "b":Lorg/eclipse/jetty/io/Buffer;
    iput-object v3, v1, Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 64
    .end local v0    # "b":Lorg/eclipse/jetty/io/Buffer;
    :goto_0
    return-object v0

    .line 57
    :cond_0
    iget-object v2, v1, Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;->_other:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;->_other:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/io/ThreadLocalBuffers;->isBuffer(Lorg/eclipse/jetty/io/Buffer;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 59
    iget-object v0, v1, Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;->_other:Lorg/eclipse/jetty/io/Buffer;

    .line 60
    .restart local v0    # "b":Lorg/eclipse/jetty/io/Buffer;
    iput-object v3, v1, Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;->_other:Lorg/eclipse/jetty/io/Buffer;

    goto :goto_0

    .line 64
    .end local v0    # "b":Lorg/eclipse/jetty/io/Buffer;
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ThreadLocalBuffers;->newBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    goto :goto_0
.end method

.method public getBuffer(I)Lorg/eclipse/jetty/io/Buffer;
    .locals 3
    .param p1, "size"    # I

    .prologue
    .line 91
    iget-object v2, p0, Lorg/eclipse/jetty/io/ThreadLocalBuffers;->_buffers:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;

    .line 92
    .local v1, "buffers":Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;
    iget-object v2, v1, Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;->_other:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;->_other:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 94
    iget-object v0, v1, Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;->_other:Lorg/eclipse/jetty/io/Buffer;

    .line 95
    .local v0, "b":Lorg/eclipse/jetty/io/Buffer;
    const/4 v2, 0x0

    iput-object v2, v1, Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;->_other:Lorg/eclipse/jetty/io/Buffer;

    .line 99
    .end local v0    # "b":Lorg/eclipse/jetty/io/Buffer;
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/ThreadLocalBuffers;->newBuffer(I)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    goto :goto_0
.end method

.method public getHeader()Lorg/eclipse/jetty/io/Buffer;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 70
    iget-object v2, p0, Lorg/eclipse/jetty/io/ThreadLocalBuffers;->_buffers:Ljava/lang/ThreadLocal;

    invoke-virtual {v2}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;

    .line 71
    .local v1, "buffers":Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;
    iget-object v2, v1, Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v2, :cond_0

    .line 73
    iget-object v0, v1, Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;->_header:Lorg/eclipse/jetty/io/Buffer;

    .line 74
    .local v0, "b":Lorg/eclipse/jetty/io/Buffer;
    iput-object v3, v1, Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;->_header:Lorg/eclipse/jetty/io/Buffer;

    .line 85
    .end local v0    # "b":Lorg/eclipse/jetty/io/Buffer;
    :goto_0
    return-object v0

    .line 78
    :cond_0
    iget-object v2, v1, Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;->_other:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;->_other:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/io/ThreadLocalBuffers;->isHeader(Lorg/eclipse/jetty/io/Buffer;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 80
    iget-object v0, v1, Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;->_other:Lorg/eclipse/jetty/io/Buffer;

    .line 81
    .restart local v0    # "b":Lorg/eclipse/jetty/io/Buffer;
    iput-object v3, v1, Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;->_other:Lorg/eclipse/jetty/io/Buffer;

    goto :goto_0

    .line 85
    .end local v0    # "b":Lorg/eclipse/jetty/io/Buffer;
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ThreadLocalBuffers;->newHeader()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    goto :goto_0
.end method

.method public returnBuffer(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 2
    .param p1, "buffer"    # Lorg/eclipse/jetty/io/Buffer;

    .prologue
    .line 105
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    .line 106
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->isVolatile()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->isImmutable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    :cond_0
    :goto_0
    return-void

    .line 109
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/io/ThreadLocalBuffers;->_buffers:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;

    .line 111
    .local v0, "buffers":Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;
    iget-object v1, v0, Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-nez v1, :cond_2

    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/ThreadLocalBuffers;->isHeader(Lorg/eclipse/jetty/io/Buffer;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 112
    iput-object p1, v0, Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;->_header:Lorg/eclipse/jetty/io/Buffer;

    goto :goto_0

    .line 113
    :cond_2
    iget-object v1, v0, Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-nez v1, :cond_3

    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/io/ThreadLocalBuffers;->isBuffer(Lorg/eclipse/jetty/io/Buffer;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 114
    iput-object p1, v0, Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    goto :goto_0

    .line 116
    :cond_3
    iput-object p1, v0, Lorg/eclipse/jetty/io/ThreadLocalBuffers$ThreadBuffers;->_other:Lorg/eclipse/jetty/io/Buffer;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ThreadLocalBuffers;->getHeaderSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/eclipse/jetty/io/ThreadLocalBuffers;->getBufferSize()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
