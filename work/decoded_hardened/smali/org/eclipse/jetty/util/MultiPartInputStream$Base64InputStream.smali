.class Lorg/eclipse/jetty/util/MultiPartInputStream$Base64InputStream;
.super Ljava/io/InputStream;
.source "MultiPartInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/util/MultiPartInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Base64InputStream"
.end annotation


# instance fields
.field _buffer:[B

.field _in:Lorg/eclipse/jetty/util/ReadLineInputStream;

.field _line:Ljava/lang/String;

.field _pos:I


# direct methods
.method public constructor <init>(Lorg/eclipse/jetty/util/ReadLineInputStream;)V
    .locals 0
    .param p1, "rlis"    # Lorg/eclipse/jetty/util/ReadLineInputStream;

    .prologue
    .line 816
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 817
    iput-object p1, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$Base64InputStream;->_in:Lorg/eclipse/jetty/util/ReadLineInputStream;

    .line 818
    return-void
.end method


# virtual methods
.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 823
    iget-object v1, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$Base64InputStream;->_buffer:[B

    if-eqz v1, :cond_0

    iget v1, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$Base64InputStream;->_pos:I

    iget-object v2, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$Base64InputStream;->_buffer:[B

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 829
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$Base64InputStream;->_in:Lorg/eclipse/jetty/util/ReadLineInputStream;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/ReadLineInputStream;->readLine()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$Base64InputStream;->_line:Ljava/lang/String;

    .line 830
    iget-object v1, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$Base64InputStream;->_line:Ljava/lang/String;

    if-nez v1, :cond_1

    .line 831
    const/4 v1, -0x1

    .line 848
    :goto_0
    return v1

    .line 832
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$Base64InputStream;->_line:Ljava/lang/String;

    const-string v2, "--"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 833
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$Base64InputStream;->_line:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\r\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$Base64InputStream;->_buffer:[B

    .line 845
    :goto_1
    const/4 v1, 0x0

    iput v1, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$Base64InputStream;->_pos:I

    .line 848
    :cond_2
    iget-object v1, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$Base64InputStream;->_buffer:[B

    iget v2, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$Base64InputStream;->_pos:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$Base64InputStream;->_pos:I

    aget-byte v1, v1, v2

    goto :goto_0

    .line 834
    :cond_3
    iget-object v1, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$Base64InputStream;->_line:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_4

    .line 835
    const-string v1, "\r\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$Base64InputStream;->_buffer:[B

    goto :goto_1

    .line 838
    :cond_4
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    iget-object v1, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$Base64InputStream;->_line:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x3

    add-int/lit8 v1, v1, 0x2

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 839
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    iget-object v1, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$Base64InputStream;->_line:Ljava/lang/String;

    invoke-static {v1, v0}, Lorg/eclipse/jetty/util/B64Code;->decode(Ljava/lang/String;Ljava/io/ByteArrayOutputStream;)V

    .line 840
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 841
    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 842
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/util/MultiPartInputStream$Base64InputStream;->_buffer:[B

    goto :goto_1
.end method
