.class public interface abstract Lorg/eclipse/jetty/webapp/Ordering;
.super Ljava/lang/Object;
.source "Ordering.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/webapp/Ordering$1;,
        Lorg/eclipse/jetty/webapp/Ordering$RelativeOrdering;,
        Lorg/eclipse/jetty/webapp/Ordering$AbsoluteOrdering;
    }
.end annotation


# virtual methods
.method public abstract hasOther()Z
.end method

.method public abstract isAbsolute()Z
.end method

.method public abstract order(Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/util/resource/Resource;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/util/resource/Resource;",
            ">;"
        }
    .end annotation
.end method
