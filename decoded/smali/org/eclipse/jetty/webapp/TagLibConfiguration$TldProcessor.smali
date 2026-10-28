.class public Lorg/eclipse/jetty/webapp/TagLibConfiguration$TldProcessor;
.super Lorg/eclipse/jetty/webapp/IterativeDescriptorProcessor;
.source "TagLibConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/webapp/TagLibConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TldProcessor"
.end annotation


# static fields
.field public static final TAGLIB_PROCESSOR:Ljava/lang/String; = "org.eclipse.jetty.tagLibProcessor"


# instance fields
.field _listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/EventListener;",
            ">;"
        }
    .end annotation
.end field

.field _parser:Lorg/eclipse/jetty/xml/XmlParser;

.field _roots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/xml/XmlParser$Node;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/eclipse/jetty/webapp/TagLibConfiguration;


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/webapp/TagLibConfiguration;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 444
    iput-object p1, p0, Lorg/eclipse/jetty/webapp/TagLibConfiguration$TldProcessor;->this$0:Lorg/eclipse/jetty/webapp/TagLibConfiguration;

    invoke-direct {p0}, Lorg/eclipse/jetty/webapp/IterativeDescriptorProcessor;-><init>()V

    .line 438
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/TagLibConfiguration$TldProcessor;->_roots:Ljava/util/List;

    .line 445
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/TagLibConfiguration$TldProcessor;->_listeners:Ljava/util/List;

    .line 446
    const-string v0, "listener"

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "visitListener"

    sget-object v3, Lorg/eclipse/jetty/webapp/TagLibConfiguration$TldProcessor;->__signature:[Ljava/lang/Class;

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/webapp/TagLibConfiguration$TldProcessor;->registerVisitor(Ljava/lang/String;Ljava/lang/reflect/Method;)V

    .line 447
    return-void
.end method


# virtual methods
.method public end(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/webapp/Descriptor;)V
    .locals 0
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .param p2, "descriptor"    # Lorg/eclipse/jetty/webapp/Descriptor;

    .prologue
    .line 478
    return-void
.end method

.method public getListeners()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/util/EventListener;",
            ">;"
        }
    .end annotation

    .prologue
    .line 486
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/TagLibConfiguration$TldProcessor;->_listeners:Ljava/util/List;

    return-object v0
.end method

.method public start(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/webapp/Descriptor;)V
    .locals 0
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .param p2, "descriptor"    # Lorg/eclipse/jetty/webapp/Descriptor;

    .prologue
    .line 483
    return-void
.end method

.method public visitListener(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/webapp/Descriptor;Lorg/eclipse/jetty/xml/XmlParser$Node;)V
    .locals 8
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .param p2, "descriptor"    # Lorg/eclipse/jetty/webapp/Descriptor;
    .param p3, "node"    # Lorg/eclipse/jetty/xml/XmlParser$Node;

    .prologue
    const/4 v7, 0x0

    .line 452
    const-string v4, "listener-class"

    const/4 v5, 0x1

    invoke-virtual {p3, v4, v7, v5}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getString(Ljava/lang/String;ZZ)Ljava/lang/String;

    move-result-object v0

    .line 453
    .local v0, "className":Ljava/lang/String;
    invoke-static {}, Lorg/eclipse/jetty/webapp/TagLibConfiguration;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v4

    invoke-interface {v4}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 454
    invoke-static {}, Lorg/eclipse/jetty/webapp/TagLibConfiguration;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "listener="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 458
    :cond_0
    :try_start_0
    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/webapp/WebAppContext;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 459
    .local v3, "listenerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/EventListener;

    .line 460
    .local v2, "l":Ljava/util/EventListener;
    iget-object v4, p0, Lorg/eclipse/jetty/webapp/TagLibConfiguration$TldProcessor;->_listeners:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_1

    .line 473
    .end local v2    # "l":Ljava/util/EventListener;
    .end local v3    # "listenerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return-void

    .line 462
    :catch_0
    move-exception v1

    .line 464
    .local v1, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/eclipse/jetty/webapp/TagLibConfiguration;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not instantiate listener "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 465
    invoke-static {}, Lorg/eclipse/jetty/webapp/TagLibConfiguration;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v4

    invoke-interface {v4, v1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 467
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 469
    .local v1, "e":Ljava/lang/Error;
    invoke-static {}, Lorg/eclipse/jetty/webapp/TagLibConfiguration;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not instantiate listener "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 470
    invoke-static {}, Lorg/eclipse/jetty/webapp/TagLibConfiguration;->access$000()Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v4

    invoke-interface {v4, v1}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
