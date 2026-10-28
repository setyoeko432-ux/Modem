.class Lorg/eclipse/jetty/util/Scanner$TimeNSize;
.super Ljava/lang/Object;
.source "Scanner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/util/Scanner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "TimeNSize"
.end annotation


# instance fields
.field final _lastModified:J

.field final _size:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 0
    .param p1, "lastModified"    # J
    .param p3, "size"    # J

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-wide p1, p0, Lorg/eclipse/jetty/util/Scanner$TimeNSize;->_lastModified:J

    .line 78
    iput-wide p3, p0, Lorg/eclipse/jetty/util/Scanner$TimeNSize;->_size:J

    .line 79
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 90
    instance-of v2, p1, Lorg/eclipse/jetty/util/Scanner$TimeNSize;

    if-eqz v2, :cond_0

    move-object v0, p1

    .line 92
    check-cast v0, Lorg/eclipse/jetty/util/Scanner$TimeNSize;

    .line 93
    .local v0, "tns":Lorg/eclipse/jetty/util/Scanner$TimeNSize;
    iget-wide v2, v0, Lorg/eclipse/jetty/util/Scanner$TimeNSize;->_lastModified:J

    iget-wide v4, p0, Lorg/eclipse/jetty/util/Scanner$TimeNSize;->_lastModified:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    iget-wide v2, v0, Lorg/eclipse/jetty/util/Scanner$TimeNSize;->_size:J

    iget-wide v4, p0, Lorg/eclipse/jetty/util/Scanner$TimeNSize;->_size:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    const/4 v1, 0x1

    .line 95
    .end local v0    # "tns":Lorg/eclipse/jetty/util/Scanner$TimeNSize;
    :cond_0
    return v1
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 84
    iget-wide v0, p0, Lorg/eclipse/jetty/util/Scanner$TimeNSize;->_lastModified:J

    long-to-int v0, v0

    iget-wide v1, p0, Lorg/eclipse/jetty/util/Scanner$TimeNSize;->_size:J

    long-to-int v1, v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[lm="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/eclipse/jetty/util/Scanner$TimeNSize;->_lastModified:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",s="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lorg/eclipse/jetty/util/Scanner$TimeNSize;->_size:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
