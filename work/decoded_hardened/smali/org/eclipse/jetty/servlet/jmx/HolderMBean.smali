.class public Lorg/eclipse/jetty/servlet/jmx/HolderMBean;
.super Lorg/eclipse/jetty/jmx/ObjectMBean;
.source "HolderMBean.java"


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .param p1, "managedObject"    # Ljava/lang/Object;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/jmx/ObjectMBean;-><init>(Ljava/lang/Object;)V

    .line 29
    return-void
.end method


# virtual methods
.method public getObjectNameBasis()Ljava/lang/String;
    .locals 3

    .prologue
    .line 34
    iget-object v2, p0, Lorg/eclipse/jetty/servlet/jmx/HolderMBean;->_managed:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lorg/eclipse/jetty/servlet/jmx/HolderMBean;->_managed:Ljava/lang/Object;

    instance-of v2, v2, Lorg/eclipse/jetty/servlet/Holder;

    if-eqz v2, :cond_0

    .line 36
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/jmx/HolderMBean;->_managed:Ljava/lang/Object;

    check-cast v0, Lorg/eclipse/jetty/servlet/Holder;

    .line 37
    .local v0, "holder":Lorg/eclipse/jetty/servlet/Holder;
    invoke-virtual {v0}, Lorg/eclipse/jetty/servlet/Holder;->getName()Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, "name":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 41
    .end local v0    # "holder":Lorg/eclipse/jetty/servlet/Holder;
    .end local v1    # "name":Ljava/lang/String;
    :goto_0
    return-object v1

    :cond_0
    invoke-super {p0}, Lorg/eclipse/jetty/jmx/ObjectMBean;->getObjectNameBasis()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
