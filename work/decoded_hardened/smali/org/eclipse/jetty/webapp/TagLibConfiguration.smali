.class public Lorg/eclipse/jetty/webapp/TagLibConfiguration;
.super Lorg/eclipse/jetty/webapp/AbstractConfiguration;
.source "TagLibConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/webapp/TagLibConfiguration$TldProcessor;,
        Lorg/eclipse/jetty/webapp/TagLibConfiguration$TldDescriptor;,
        Lorg/eclipse/jetty/webapp/TagLibConfiguration$TagLibListener;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field public static final TLD_RESOURCES:Ljava/lang/String; = "org.eclipse.jetty.tlds"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    const-class v0, Lorg/eclipse/jetty/webapp/TagLibConfiguration;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/webapp/TagLibConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0}, Lorg/eclipse/jetty/webapp/AbstractConfiguration;-><init>()V

    .line 434
    return-void
.end method

.method static synthetic access$000()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lorg/eclipse/jetty/webapp/TagLibConfiguration;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method


# virtual methods
.method public cloneConfigure(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/webapp/WebAppContext;)V
    .locals 0
    .param p1, "template"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .param p2, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 523
    return-void
.end method

.method public configure(Lorg/eclipse/jetty/webapp/WebAppContext;)V
    .locals 0
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 512
    return-void
.end method

.method public deconfigure(Lorg/eclipse/jetty/webapp/WebAppContext;)V
    .locals 0
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 529
    return-void
.end method

.method public postConfigure(Lorg/eclipse/jetty/webapp/WebAppContext;)V
    .locals 0
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 517
    return-void
.end method

.method public preConfigure(Lorg/eclipse/jetty/webapp/WebAppContext;)V
    .locals 4
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 496
    :try_start_0
    const-class v2, Lorg/eclipse/jetty/webapp/WebXmlConfiguration;

    const-string v3, "javax.servlet.jsp.JspPage"

    invoke-static {v2, v3}, Lorg/eclipse/jetty/util/Loader;->loadClass(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 504
    new-instance v1, Lorg/eclipse/jetty/webapp/TagLibConfiguration$TagLibListener;

    invoke-direct {v1, p0, p1}, Lorg/eclipse/jetty/webapp/TagLibConfiguration$TagLibListener;-><init>(Lorg/eclipse/jetty/webapp/TagLibConfiguration;Lorg/eclipse/jetty/webapp/WebAppContext;)V

    .line 505
    .local v1, "tagLibListener":Lorg/eclipse/jetty/webapp/TagLibConfiguration$TagLibListener;
    invoke-virtual {p1, v1}, Lorg/eclipse/jetty/webapp/WebAppContext;->addEventListener(Ljava/util/EventListener;)V

    .line 506
    .end local v1    # "tagLibListener":Lorg/eclipse/jetty/webapp/TagLibConfiguration$TagLibListener;
    :goto_0
    return-void

    .line 498
    :catch_0
    move-exception v0

    .line 501
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method
