.class Lorg/eclipse/jetty/util/IO$NullWrite;
.super Ljava/io/Writer;
.source "IO.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/util/IO;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NullWrite"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 528
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/jetty/util/IO$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/eclipse/jetty/util/IO$1;

    .prologue
    .line 528
    invoke-direct {p0}, Lorg/eclipse/jetty/util/IO$NullWrite;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 531
    return-void
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 533
    return-void
.end method

.method public write(I)V
    .locals 0
    .param p1, "b"    # I

    .prologue
    .line 539
    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 541
    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "o"    # I
    .param p3, "l"    # I

    .prologue
    .line 543
    return-void
.end method

.method public write([C)V
    .locals 0
    .param p1, "b"    # [C

    .prologue
    .line 535
    return-void
.end method

.method public write([CII)V
    .locals 0
    .param p1, "b"    # [C
    .param p2, "o"    # I
    .param p3, "l"    # I

    .prologue
    .line 537
    return-void
.end method
