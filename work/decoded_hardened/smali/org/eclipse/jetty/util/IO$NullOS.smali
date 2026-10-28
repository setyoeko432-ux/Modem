.class Lorg/eclipse/jetty/util/IO$NullOS;
.super Ljava/io/OutputStream;
.source "IO.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/util/IO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NullOS"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 480
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/jetty/util/IO$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/eclipse/jetty/util/IO$1;

    .prologue
    .line 480
    invoke-direct {p0}, Lorg/eclipse/jetty/util/IO$NullOS;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 483
    return-void
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 485
    return-void
.end method

.method public write(I)V
    .locals 0
    .param p1, "b"    # I

    .prologue
    .line 491
    return-void
.end method

.method public write([B)V
    .locals 0
    .param p1, "b"    # [B

    .prologue
    .line 487
    return-void
.end method

.method public write([BII)V
    .locals 0
    .param p1, "b"    # [B
    .param p2, "i"    # I
    .param p3, "l"    # I

    .prologue
    .line 489
    return-void
.end method
