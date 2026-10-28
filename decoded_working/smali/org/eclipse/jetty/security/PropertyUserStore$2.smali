.class Lorg/eclipse/jetty/security/PropertyUserStore$2;
.super Ljava/lang/Object;
.source "PropertyUserStore.java"

# interfaces
.implements Lorg/eclipse/jetty/util/Scanner$BulkListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jetty/security/PropertyUserStore;->doStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/security/PropertyUserStore;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/security/PropertyUserStore;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lorg/eclipse/jetty/security/PropertyUserStore$2;->this$0:Lorg/eclipse/jetty/security/PropertyUserStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filesChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 260
    .local p1, "filenames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_1

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 262
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 264
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 266
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v0

    .line 267
    .local v0, "r":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual {v0}, Lorg/eclipse/jetty/util/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v1

    iget-object v2, p0, Lorg/eclipse/jetty/security/PropertyUserStore$2;->this$0:Lorg/eclipse/jetty/security/PropertyUserStore;

    invoke-static {v2}, Lorg/eclipse/jetty/security/PropertyUserStore;->access$000(Lorg/eclipse/jetty/security/PropertyUserStore;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v2

    invoke-virtual {v2}, Lorg/eclipse/jetty/util/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 268
    iget-object v1, p0, Lorg/eclipse/jetty/security/PropertyUserStore$2;->this$0:Lorg/eclipse/jetty/security/PropertyUserStore;

    invoke-static {v1}, Lorg/eclipse/jetty/security/PropertyUserStore;->access$100(Lorg/eclipse/jetty/security/PropertyUserStore;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 274
    const-string v0, "PropertyUserStore$Scanner"

    return-object v0
.end method
