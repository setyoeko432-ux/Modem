.class public final Lorg/apache/commons/fileupload/util/mime/MimeUtility;
.super Ljava/lang/Object;
.source "MimeUtility.java"


# static fields
.field private static final BASE64_ENCODING_MARKER:Ljava/lang/String; = "B"

.field private static final ENCODED_TOKEN_FINISHER:Ljava/lang/String; = "?="

.field private static final ENCODED_TOKEN_MARKER:Ljava/lang/String; = "=?"

.field private static final LINEAR_WHITESPACE:Ljava/lang/String; = " \t\r\n"

.field private static final MIME2JAVA:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final QUOTEDPRINTABLE_ENCODING_MARKER:Ljava/lang/String; = "Q"

.field private static final US_ASCII_CHARSET:Ljava/lang/String; = "US-ASCII"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lorg/apache/commons/fileupload/util/mime/MimeUtility;->MIME2JAVA:Ljava/util/Map;

    .line 69
    sget-object v0, Lorg/apache/commons/fileupload/util/mime/MimeUtility;->MIME2JAVA:Ljava/util/Map;

    const-string v1, "iso-2022-cn"

    const-string v2, "ISO2022CN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lorg/apache/commons/fileupload/util/mime/MimeUtility;->MIME2JAVA:Ljava/util/Map;

    const-string v1, "iso-2022-kr"

    const-string v2, "ISO2022KR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lorg/apache/commons/fileupload/util/mime/MimeUtility;->MIME2JAVA:Ljava/util/Map;

    const-string v1, "utf-8"

    const-string v2, "UTF8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lorg/apache/commons/fileupload/util/mime/MimeUtility;->MIME2JAVA:Ljava/util/Map;

    const-string v1, "utf8"

    const-string v2, "UTF8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lorg/apache/commons/fileupload/util/mime/MimeUtility;->MIME2JAVA:Ljava/util/Map;

    const-string v1, "ja_jp.iso2022-7"

    const-string v2, "ISO2022JP"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lorg/apache/commons/fileupload/util/mime/MimeUtility;->MIME2JAVA:Ljava/util/Map;

    const-string v1, "ja_jp.eucjp"

    const-string v2, "EUCJIS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lorg/apache/commons/fileupload/util/mime/MimeUtility;->MIME2JAVA:Ljava/util/Map;

    const-string v1, "euc-kr"

    const-string v2, "KSC5601"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lorg/apache/commons/fileupload/util/mime/MimeUtility;->MIME2JAVA:Ljava/util/Map;

    const-string v1, "euckr"

    const-string v2, "KSC5601"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lorg/apache/commons/fileupload/util/mime/MimeUtility;->MIME2JAVA:Ljava/util/Map;

    const-string v1, "us-ascii"

    const-string v2, "ISO-8859-1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lorg/apache/commons/fileupload/util/mime/MimeUtility;->MIME2JAVA:Ljava/util/Map;

    const-string v1, "x-us-ascii"

    const-string v2, "ISO-8859-1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    return-void
.end method

.method public static decodeText(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/4 v11, -0x1

    .line 102
    const-string v10, "=?"

    invoke-virtual {p0, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    if-gez v10, :cond_0

    .line 186
    .end local p0    # "text":Ljava/lang/String;
    :goto_0
    return-object p0

    .line 106
    .restart local p0    # "text":Ljava/lang/String;
    :cond_0
    const/4 v5, 0x0

    .line 107
    .local v5, "offset":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 109
    .local v3, "endOffset":I
    const/4 v7, -0x1

    .line 110
    .local v7, "startWhiteSpace":I
    const/4 v4, -0x1

    .line 112
    .local v4, "endWhiteSpace":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v10

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 114
    .local v1, "decodedText":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .line 116
    .local v6, "previousTokenEncoded":Z
    :cond_1
    :goto_1
    if-ge v5, v3, :cond_8

    .line 117
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 120
    .local v0, "ch":C
    const-string v10, " \t\r\n"

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-eq v10, v11, :cond_3

    .line 121
    move v7, v5

    .line 122
    :goto_2
    if-ge v5, v3, :cond_1

    .line 124
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 125
    const-string v10, " \t\r\n"

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-eq v10, v11, :cond_2

    .line 126
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 130
    :cond_2
    move v4, v5

    .line 131
    goto :goto_1

    .line 136
    :cond_3
    move v9, v5

    .line 138
    .local v9, "wordStart":I
    :goto_3
    if-ge v5, v3, :cond_4

    .line 140
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 141
    const-string v10, " \t\r\n"

    invoke-virtual {v10, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v10

    if-ne v10, v11, :cond_4

    .line 142
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 150
    :cond_4
    invoke-virtual {p0, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 152
    .local v8, "word":Ljava/lang/String;
    const-string v10, "=?"

    invoke-virtual {v8, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 155
    :try_start_0
    invoke-static {v8}, Lorg/apache/commons/fileupload/util/mime/MimeUtility;->decodeWord(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 158
    .local v2, "decodedWord":Ljava/lang/String;
    if-nez v6, :cond_5

    if-eq v7, v11, :cond_5

    .line 159
    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    const/4 v7, -0x1

    .line 163
    :cond_5
    const/4 v6, 0x1

    .line 165
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lorg/apache/commons/fileupload/util/mime/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 170
    .end local v2    # "decodedWord":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 176
    :cond_6
    if-eq v7, v11, :cond_7

    .line 177
    invoke-virtual {p0, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    const/4 v7, -0x1

    .line 181
    :cond_7
    const/4 v6, 0x0

    .line 182
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 186
    .end local v0    # "ch":C
    .end local v8    # "word":Ljava/lang/String;
    .end local v9    # "wordStart":I
    :cond_8
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method

.method private static decodeWord(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p0, "word"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/fileupload/util/mime/ParseException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .prologue
    const/16 v13, 0x3f

    const/4 v11, 0x2

    const/4 v12, -0x1

    .line 205
    const-string v10, "=?"

    invoke-virtual {p0, v10}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_0

    .line 206
    new-instance v10, Lorg/apache/commons/fileupload/util/mime/ParseException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Invalid RFC 2047 encoded-word: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/apache/commons/fileupload/util/mime/ParseException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 209
    :cond_0
    invoke-virtual {p0, v13, v11}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 210
    .local v1, "charsetPos":I
    if-ne v1, v12, :cond_1

    .line 211
    new-instance v10, Lorg/apache/commons/fileupload/util/mime/ParseException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Missing charset in RFC 2047 encoded-word: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/apache/commons/fileupload/util/mime/ParseException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 215
    :cond_1
    invoke-virtual {p0, v11, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v10, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "charset":Ljava/lang/String;
    add-int/lit8 v10, v1, 0x1

    invoke-virtual {p0, v13, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    .line 219
    .local v8, "encodingPos":I
    if-ne v8, v12, :cond_2

    .line 220
    new-instance v10, Lorg/apache/commons/fileupload/util/mime/ParseException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Missing encoding in RFC 2047 encoded-word: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/apache/commons/fileupload/util/mime/ParseException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 223
    :cond_2
    add-int/lit8 v10, v1, 0x1

    invoke-virtual {p0, v10, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 226
    .local v7, "encoding":Ljava/lang/String;
    const-string v10, "?="

    add-int/lit8 v11, v8, 0x1

    invoke-virtual {p0, v10, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v6

    .line 227
    .local v6, "encodedTextPos":I
    if-ne v6, v12, :cond_3

    .line 228
    new-instance v10, Lorg/apache/commons/fileupload/util/mime/ParseException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Missing encoded text in RFC 2047 encoded-word: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/apache/commons/fileupload/util/mime/ParseException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 231
    :cond_3
    add-int/lit8 v10, v8, 0x1

    invoke-virtual {p0, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 234
    .local v5, "encodedText":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    if-nez v10, :cond_4

    .line 235
    const-string v10, ""

    .line 254
    :goto_0
    return-object v10

    .line 240
    :cond_4
    :try_start_0
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    invoke-direct {v9, v10}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 242
    .local v9, "out":Ljava/io/ByteArrayOutputStream;
    const-string v10, "US-ASCII"

    invoke-virtual {v5, v10}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    .line 245
    .local v4, "encodedData":[B
    const-string v10, "B"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 246
    invoke-static {v4, v9}, Lorg/apache/commons/fileupload/util/mime/Base64Decoder;->decode([BLjava/io/OutputStream;)I

    .line 253
    :goto_1
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 254
    .local v2, "decodedData":[B
    new-instance v10, Ljava/lang/String;

    invoke-static {v0}, Lorg/apache/commons/fileupload/util/mime/MimeUtility;->javaCharset(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v2, v11}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 255
    .end local v2    # "decodedData":[B
    .end local v4    # "encodedData":[B
    .end local v9    # "out":Ljava/io/ByteArrayOutputStream;
    :catch_0
    move-exception v3

    .line 256
    .local v3, "e":Ljava/io/IOException;
    new-instance v10, Ljava/io/UnsupportedEncodingException;

    const-string v11, "Invalid RFC 2047 encoding"

    invoke-direct {v10, v11}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 247
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v4    # "encodedData":[B
    .restart local v9    # "out":Ljava/io/ByteArrayOutputStream;
    :cond_5
    :try_start_1
    const-string v10, "Q"

    invoke-virtual {v7, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 248
    invoke-static {v4, v9}, Lorg/apache/commons/fileupload/util/mime/QuotedPrintableDecoder;->decode([BLjava/io/OutputStream;)I

    goto :goto_1

    .line 250
    :cond_6
    new-instance v10, Ljava/io/UnsupportedEncodingException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown RFC 2047 encoding: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method private static javaCharset(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "charset"    # Ljava/lang/String;

    .prologue
    .line 270
    if-nez p0, :cond_1

    .line 271
    const/4 p0, 0x0

    .line 280
    .end local p0    # "charset":Ljava/lang/String;
    .local v0, "mappedCharset":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 274
    .end local v0    # "mappedCharset":Ljava/lang/String;
    .restart local p0    # "charset":Ljava/lang/String;
    :cond_1
    sget-object v1, Lorg/apache/commons/fileupload/util/mime/MimeUtility;->MIME2JAVA:Ljava/util/Map;

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {p0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 277
    .restart local v0    # "mappedCharset":Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object p0, v0

    .line 280
    goto :goto_0
.end method
