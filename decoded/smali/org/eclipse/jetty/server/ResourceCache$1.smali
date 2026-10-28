.class Lorg/eclipse/jetty/server/ResourceCache$1;
.super Ljava/lang/Object;
.source "ResourceCache.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jetty/server/ResourceCache;->shrinkCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lorg/eclipse/jetty/server/ResourceCache$Content;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/server/ResourceCache;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/server/ResourceCache;)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lorg/eclipse/jetty/server/ResourceCache$1;->this$0:Lorg/eclipse/jetty/server/ResourceCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 261
    check-cast p1, Lorg/eclipse/jetty/server/ResourceCache$Content;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Lorg/eclipse/jetty/server/ResourceCache$Content;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/eclipse/jetty/server/ResourceCache$1;->compare(Lorg/eclipse/jetty/server/ResourceCache$Content;Lorg/eclipse/jetty/server/ResourceCache$Content;)I

    move-result v0

    return v0
.end method

.method public compare(Lorg/eclipse/jetty/server/ResourceCache$Content;Lorg/eclipse/jetty/server/ResourceCache$Content;)I
    .locals 5
    .param p1, "c1"    # Lorg/eclipse/jetty/server/ResourceCache$Content;
    .param p2, "c2"    # Lorg/eclipse/jetty/server/ResourceCache$Content;

    .prologue
    const/4 v0, -0x1

    .line 264
    iget-wide v1, p1, Lorg/eclipse/jetty/server/ResourceCache$Content;->_lastAccessed:J

    iget-wide v3, p2, Lorg/eclipse/jetty/server/ResourceCache$Content;->_lastAccessed:J

    cmp-long v1, v1, v3

    if-gez v1, :cond_1

    .line 273
    :cond_0
    :goto_0
    return v0

    .line 267
    :cond_1
    iget-wide v1, p1, Lorg/eclipse/jetty/server/ResourceCache$Content;->_lastAccessed:J

    iget-wide v3, p2, Lorg/eclipse/jetty/server/ResourceCache$Content;->_lastAccessed:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_2

    .line 268
    const/4 v0, 0x1

    goto :goto_0

    .line 270
    :cond_2
    iget v1, p1, Lorg/eclipse/jetty/server/ResourceCache$Content;->_length:I

    iget v2, p2, Lorg/eclipse/jetty/server/ResourceCache$Content;->_length:I

    if-lt v1, v2, :cond_0

    .line 273
    iget-object v0, p1, Lorg/eclipse/jetty/server/ResourceCache$Content;->_key:Ljava/lang/String;

    iget-object v1, p2, Lorg/eclipse/jetty/server/ResourceCache$Content;->_key:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method
