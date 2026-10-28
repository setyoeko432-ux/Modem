.class public Lorg/eclipse/jetty/webapp/CloneConfiguration;
.super Lorg/eclipse/jetty/webapp/AbstractConfiguration;
.source "CloneConfiguration.java"


# instance fields
.field final _template:Lorg/eclipse/jetty/webapp/WebAppContext;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/webapp/WebAppContext;)V
    .locals 0
    .param p1, "template"    # Lorg/eclipse/jetty/webapp/WebAppContext;

    .prologue
    .line 26
    invoke-direct {p0}, Lorg/eclipse/jetty/webapp/AbstractConfiguration;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/eclipse/jetty/webapp/CloneConfiguration;->_template:Lorg/eclipse/jetty/webapp/WebAppContext;

    .line 28
    return-void
.end method


# virtual methods
.method public configure(Lorg/eclipse/jetty/webapp/WebAppContext;)V
    .locals 5
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 33
    iget-object v4, p0, Lorg/eclipse/jetty/webapp/CloneConfiguration;->_template:Lorg/eclipse/jetty/webapp/WebAppContext;

    invoke-virtual {v4}, Lorg/eclipse/jetty/webapp/WebAppContext;->getConfigurations()[Lorg/eclipse/jetty/webapp/Configuration;

    move-result-object v0

    .local v0, "arr$":[Lorg/eclipse/jetty/webapp/Configuration;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 34
    .local v1, "configuration":Lorg/eclipse/jetty/webapp/Configuration;
    iget-object v4, p0, Lorg/eclipse/jetty/webapp/CloneConfiguration;->_template:Lorg/eclipse/jetty/webapp/WebAppContext;

    invoke-interface {v1, v4, p1}, Lorg/eclipse/jetty/webapp/Configuration;->cloneConfigure(Lorg/eclipse/jetty/webapp/WebAppContext;Lorg/eclipse/jetty/webapp/WebAppContext;)V

    .line 33
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 35
    .end local v1    # "configuration":Lorg/eclipse/jetty/webapp/Configuration;
    :cond_0
    return-void
.end method

.method public deconfigure(Lorg/eclipse/jetty/webapp/WebAppContext;)V
    .locals 5
    .param p1, "context"    # Lorg/eclipse/jetty/webapp/WebAppContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 41
    iget-object v4, p0, Lorg/eclipse/jetty/webapp/CloneConfiguration;->_template:Lorg/eclipse/jetty/webapp/WebAppContext;

    invoke-virtual {v4}, Lorg/eclipse/jetty/webapp/WebAppContext;->getConfigurations()[Lorg/eclipse/jetty/webapp/Configuration;

    move-result-object v0

    .local v0, "arr$":[Lorg/eclipse/jetty/webapp/Configuration;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 42
    .local v1, "configuration":Lorg/eclipse/jetty/webapp/Configuration;
    invoke-interface {v1, p1}, Lorg/eclipse/jetty/webapp/Configuration;->deconfigure(Lorg/eclipse/jetty/webapp/WebAppContext;)V

    .line 41
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 43
    .end local v1    # "configuration":Lorg/eclipse/jetty/webapp/Configuration;
    :cond_0
    return-void
.end method
