.class Lorg/eclipse/jetty/webapp/MetaInfConfiguration$1;
.super Lorg/eclipse/jetty/webapp/JarScanner;
.source "MetaInfConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jetty/webapp/MetaInfConfiguration;->preConfigure(Lorg/eclipse/jetty/webapp/WebAppContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/webapp/MetaInfConfiguration;

.field final synthetic val$context:Lorg/eclipse/jetty/webapp/WebAppContext;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/webapp/MetaInfConfiguration;Lorg/eclipse/jetty/webapp/WebAppContext;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lorg/eclipse/jetty/webapp/MetaInfConfiguration$1;->this$0:Lorg/eclipse/jetty/webapp/MetaInfConfiguration;

    iput-object p2, p0, Lorg/eclipse/jetty/webapp/MetaInfConfiguration$1;->val$context:Lorg/eclipse/jetty/webapp/WebAppContext;

    invoke-direct {p0}, Lorg/eclipse/jetty/webapp/JarScanner;-><init>()V

    return-void
.end method


# virtual methods
.method public processEntry(Ljava/net/URI;Ljava/util/jar/JarEntry;)V
    .locals 4
    .param p1, "jarUri"    # Ljava/net/URI;
    .param p2, "entry"    # Ljava/util/jar/JarEntry;

    .prologue
    .line 65
    :try_start_0
    iget-object v1, p0, Lorg/eclipse/jetty/webapp/MetaInfConfiguration$1;->this$0:Lorg/eclipse/jetty/webapp/MetaInfConfiguration;

    iget-object v2, p0, Lorg/eclipse/jetty/webapp/MetaInfConfiguration$1;->val$context:Lorg/eclipse/jetty/webapp/WebAppContext;

    invoke-virtual {v1, v2, p1, p2}, Lorg/eclipse/jetty/webapp/MetaInfConfiguration;->processEntry(Lorg/eclipse/jetty/webapp/WebAppContext;Ljava/net/URI;Ljava/util/jar/JarEntry;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    :goto_0
    return-void

    .line 67
    :catch_0
    move-exception v0

    .line 69
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/eclipse/jetty/webapp/MetaInfConfiguration;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Problem processing jar entry "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
