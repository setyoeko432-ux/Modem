.class public Lorg/apache/commons/fileupload/MultipartStream$MalformedStreamException;
.super Ljava/io/IOException;
.source "MultipartStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/fileupload/MultipartStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MalformedStreamException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x59bf2359b13ab0c5L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 766
    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    .line 767
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 776
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 777
    return-void
.end method
