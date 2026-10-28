.class public Lorg/eclipse/jetty/webapp/OverrideDescriptor;
.super Lorg/eclipse/jetty/webapp/WebDescriptor;
.source "OverrideDescriptor.java"


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/util/resource/Resource;)V
    .locals 0
    .param p1, "xml"    # Lorg/eclipse/jetty/util/resource/Resource;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/webapp/WebDescriptor;-><init>(Lorg/eclipse/jetty/util/resource/Resource;)V

    .line 33
    return-void
.end method
