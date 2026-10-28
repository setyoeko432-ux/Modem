.class Lorg/eclipse/jetty/util/MultiPartInputStream$1;
.super Ljava/io/FilterInputStream;
.source "MultiPartInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/eclipse/jetty/util/MultiPartInputStream;->parse()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/util/MultiPartInputStream;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/util/MultiPartInputStream;Ljava/io/InputStream;)V
    .locals 0
    .param p2, "x0"    # Ljava/io/InputStream;

    .prologue
    .line 614
    iput-object p1, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$1;->this$0:Lorg/eclipse/jetty/util/MultiPartInputStream;

    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 618
    iget-object v4, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$1;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v0

    .line 619
    .local v0, "c":I
    if-ltz v0, :cond_2

    const/16 v4, 0x3d

    if-ne v0, v4, :cond_2

    .line 621
    iget-object v4, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$1;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v2

    .line 622
    .local v2, "hi":I
    iget-object v4, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$1;->in:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->read()I

    move-result v3

    .line 623
    .local v3, "lo":I
    if-ltz v2, :cond_0

    if-gez v3, :cond_1

    .line 625
    :cond_0
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Unexpected end to quoted-printable byte"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 627
    :cond_1
    const/4 v4, 0x2

    new-array v1, v4, [C

    const/4 v4, 0x0

    int-to-char v5, v2

    aput-char v5, v1, v4

    const/4 v4, 0x1

    int-to-char v5, v3

    aput-char v5, v1, v4

    .line 628
    .local v1, "chars":[C
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([C)V

    const/16 v5, 0x10

    invoke-static {v4, v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 630
    .end local v1    # "chars":[C
    .end local v2    # "hi":I
    .end local v3    # "lo":I
    :cond_2
    return v0
.end method
