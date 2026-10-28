.class final Lcom/google/protobuf/TextFormatEscaper;
.super Ljava/lang/Object;
.source "TextFormatEscaper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/TextFormatEscaper$ByteSequence;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static escapeBytes(Lcom/google/protobuf/ByteString;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/ByteString;

    .prologue
    .line 94
    new-instance v0, Lcom/google/protobuf/TextFormatEscaper$1;

    invoke-direct {v0, p0}, Lcom/google/protobuf/TextFormatEscaper$1;-><init>(Lcom/google/protobuf/ByteString;)V

    invoke-static {v0}, Lcom/google/protobuf/TextFormatEscaper;->escapeBytes(Lcom/google/protobuf/TextFormatEscaper$ByteSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static escapeBytes(Lcom/google/protobuf/TextFormatEscaper$ByteSequence;)Ljava/lang/String;
    .locals 4
    .param p0, "input"    # Lcom/google/protobuf/TextFormatEscaper$ByteSequence;

    .prologue
    .line 53
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-interface {p0}, Lcom/google/protobuf/TextFormatEscaper$ByteSequence;->size()I

    move-result v3

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 54
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {p0}, Lcom/google/protobuf/TextFormatEscaper$ByteSequence;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 55
    invoke-interface {p0, v2}, Lcom/google/protobuf/TextFormatEscaper$ByteSequence;->byteAt(I)B

    move-result v0

    .line 56
    .local v0, "b":B
    sparse-switch v0, :sswitch_data_0

    .line 71
    const/16 v3, 0x20

    if-lt v0, v3, :cond_0

    const/16 v3, 0x7e

    if-gt v0, v3, :cond_0

    .line 72
    int-to-char v3, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 54
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 58
    :sswitch_0
    const-string v3, "\\a"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 59
    :sswitch_1
    const-string v3, "\\b"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 60
    :sswitch_2
    const-string v3, "\\f"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 61
    :sswitch_3
    const-string v3, "\\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 62
    :sswitch_4
    const-string v3, "\\r"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 63
    :sswitch_5
    const-string v3, "\\t"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 64
    :sswitch_6
    const-string v3, "\\v"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 65
    :sswitch_7
    const-string v3, "\\\\"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 66
    :sswitch_8
    const-string v3, "\\\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 67
    :sswitch_9
    const-string v3, "\\\""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 74
    :cond_0
    const/16 v3, 0x5c

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 75
    ushr-int/lit8 v3, v0, 0x6

    and-int/lit8 v3, v3, 0x3

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 76
    ushr-int/lit8 v3, v0, 0x3

    and-int/lit8 v3, v3, 0x7

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 77
    and-int/lit8 v3, v0, 0x7

    add-int/lit8 v3, v3, 0x30

    int-to-char v3, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 82
    .end local v0    # "b":B
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 56
    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x8 -> :sswitch_1
        0x9 -> :sswitch_5
        0xa -> :sswitch_3
        0xb -> :sswitch_6
        0xc -> :sswitch_2
        0xd -> :sswitch_4
        0x22 -> :sswitch_9
        0x27 -> :sswitch_8
        0x5c -> :sswitch_7
    .end sparse-switch
.end method

.method static escapeBytes([B)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # [B

    .prologue
    .line 110
    new-instance v0, Lcom/google/protobuf/TextFormatEscaper$2;

    invoke-direct {v0, p0}, Lcom/google/protobuf/TextFormatEscaper$2;-><init>([B)V

    invoke-static {v0}, Lcom/google/protobuf/TextFormatEscaper;->escapeBytes(Lcom/google/protobuf/TextFormatEscaper$ByteSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static escapeDoubleQuotesAndBackslashes(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 135
    const-string v0, "\\"

    const-string v1, "\\\\"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, "\\\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static escapeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    .prologue
    .line 128
    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/TextFormatEscaper;->escapeBytes(Lcom/google/protobuf/ByteString;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
