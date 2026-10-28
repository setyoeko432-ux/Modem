.class Lorg/eclipse/jetty/webapp/WebInfConfiguration$2;
.super Lorg/eclipse/jetty/util/PatternMatcher;
.source "WebInfConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jetty/webapp/WebInfConfiguration;->preConfigure(Lorg/eclipse/jetty/webapp/WebAppContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/webapp/WebInfConfiguration;

.field final synthetic val$context:Lorg/eclipse/jetty/webapp/WebAppContext;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/webapp/WebInfConfiguration;Lorg/eclipse/jetty/webapp/WebAppContext;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lorg/eclipse/jetty/webapp/WebInfConfiguration$2;->this$0:Lorg/eclipse/jetty/webapp/WebInfConfiguration;

    iput-object p2, p0, Lorg/eclipse/jetty/webapp/WebInfConfiguration$2;->val$context:Lorg/eclipse/jetty/webapp/WebAppContext;

    invoke-direct {p0}, Lorg/eclipse/jetty/util/PatternMatcher;-><init>()V

    return-void
.end method


# virtual methods
.method public matched(Ljava/net/URI;)V
    .locals 2
    .param p1, "uri"    # Ljava/net/URI;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/WebInfConfiguration$2;->val$context:Lorg/eclipse/jetty/webapp/WebAppContext;

    invoke-virtual {v0}, Lorg/eclipse/jetty/webapp/WebAppContext;->getMetaData()Lorg/eclipse/jetty/webapp/MetaData;

    move-result-object v0

    invoke-static {p1}, Lorg/eclipse/jetty/util/resource/Resource;->newResource(Ljava/net/URI;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/webapp/MetaData;->addWebInfJar(Lorg/eclipse/jetty/util/resource/Resource;)V

    .line 125
    return-void
.end method
