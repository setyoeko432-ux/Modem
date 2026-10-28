.class public Lorg/eclipse/jetty/servlet/jmx/ServletMappingMBean;
.super Lorg/eclipse/jetty/jmx/ObjectMBean;
.source "ServletMappingMBean.java"


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "managedObject"    # Ljava/lang/Object;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/jmx/ObjectMBean;-><init>(Ljava/lang/Object;)V

    .line 30
    return-void
.end method


# virtual methods
.method public getObjectNameBasis()Ljava/lang/String;
    .locals 3

    .prologue
    .line 34
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/jmx/ServletMappingMBean;->_managed:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/jmx/ServletMappingMBean;->_managed:Ljava/lang/Object;

    instance-of v2, v2, Lorg/eclipse/jetty/servlet/ServletMapping;

    if-eqz v2, :cond_0

    .line 36
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/jmx/ServletMappingMBean;->_managed:Ljava/lang/Object;

    check-cast v0, Lorg/eclipse/jetty/servlet/ServletMapping;

    .line 37
    .local v0, "mapping":Lorg/eclipse/jetty/servlet/ServletMapping;
    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/ServletMapping;->getServletName()Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 42
    .end local v0    # "mapping":Lorg/eclipse/jetty/servlet/ServletMapping;
    .end local v1    # "name":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0}, Lorg/eclipse/jetty/jmx/ObjectMBean;->getObjectNameBasis()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
