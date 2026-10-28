.class public interface abstract Lorg/eclipse/jetty/webapp/WebAppClassLoader$Context;
.super Ljava/lang/Object;
.source "WebAppClassLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/webapp/WebAppClassLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Context"
.end annotation


# virtual methods
.method public abstract getExtraClasspath()Ljava/lang/String;
.end method

.method public abstract getPermissions()Ljava/security/PermissionCollection;
.end method

.method public abstract isParentLoaderPriority()Z
.end method

.method public abstract isServerClass(Ljava/lang/String;)Z
.end method

.method public abstract isSystemClass(Ljava/lang/String;)Z
.end method

.method public abstract newResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
