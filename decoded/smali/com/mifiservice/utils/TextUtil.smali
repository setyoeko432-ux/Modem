.class public Lcom/mifiservice/utils/TextUtil;
.super Ljava/lang/Object;
.source "TextUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static CRC8([B)B
    .locals 4
    .param p0, "buffer"    # [B

    .prologue
    .line 165
    const/16 v0, 0xff

    .line 166
    .local v0, "crci":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_2

    .line 168
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    xor-int/2addr v0, v3

    .line 169
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    const/16 v3, 0x8

    if-ge v1, v3, :cond_1

    .line 171
    and-int/lit8 v3, v0, 0x1

    if-eqz v3, :cond_0

    .line 173
    shr-int/lit8 v0, v0, 0x1

    .line 174
    xor-int/lit16 v0, v0, 0xb8

    .line 169
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 178
    :cond_0
    shr-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 166
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 182
    .end local v1    # "i":I
    :cond_2
    int-to-byte v3, v0

    return v3
.end method

.method public static calcMd5(Ljava/io/File;)Ljava/lang/String;
    .locals 10
    .param p0, "file"    # Ljava/io/File;

    .prologue
    const/4 v7, 0x0

    const/16 v9, 0x400

    .line 134
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v8

    if-nez v8, :cond_0

    .line 158
    :goto_0
    return-object v7

    .line 137
    :cond_0
    const/4 v2, 0x0

    .line 138
    .local v2, "digest":Ljava/security/MessageDigest;
    const/4 v4, 0x0

    .line 139
    .local v4, "in":Ljava/io/FileInputStream;
    new-array v1, v9, [B

    .line 141
    .local v1, "buffer":[B
    :try_start_0
    const-string v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v2

    .line 142
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    .end local v4    # "in":Ljava/io/FileInputStream;
    .local v5, "in":Ljava/io/FileInputStream;
    :goto_1
    const/4 v8, 0x0

    const/16 v9, 0x400

    :try_start_1
    invoke-virtual {v5, v1, v8, v9}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6

    .local v6, "len":I
    const/4 v8, -0x1

    if-eq v6, v8, :cond_1

    .line 145
    const/4 v8, 0x0

    invoke-virtual {v2, v1, v8, v6}, Ljava/security/MessageDigest;->update([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    .line 147
    .end local v6    # "len":I
    :catch_0
    move-exception v3

    move-object v4, v5

    .line 148
    .end local v5    # "in":Ljava/io/FileInputStream;
    .local v3, "e":Ljava/lang/Exception;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    :goto_2
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 152
    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 153
    :catch_1
    move-exception v3

    .line 154
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 151
    .end local v3    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 152
    :goto_3
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 151
    :goto_4
    throw v7

    .line 152
    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    .restart local v6    # "len":I
    :cond_1
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 157
    :goto_5
    new-instance v0, Ljava/math/BigInteger;

    const/4 v7, 0x1

    invoke-virtual {v2}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8

    invoke-direct {v0, v7, v8}, Ljava/math/BigInteger;-><init>(I[B)V

    .line 158
    .local v0, "bigInt":Ljava/math/BigInteger;
    const/16 v7, 0x10

    invoke-virtual {v0, v7}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    .line 153
    .end local v0    # "bigInt":Ljava/math/BigInteger;
    .end local v5    # "in":Ljava/io/FileInputStream;
    .end local v6    # "len":I
    .restart local v4    # "in":Ljava/io/FileInputStream;
    :catch_2
    move-exception v3

    .line 154
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 153
    .end local v3    # "e":Ljava/io/IOException;
    .end local v4    # "in":Ljava/io/FileInputStream;
    .restart local v5    # "in":Ljava/io/FileInputStream;
    .restart local v6    # "len":I
    :catch_3
    move-exception v3

    .line 154
    .restart local v3    # "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 151
    .end local v3    # "e":Ljava/io/IOException;
    .end local v6    # "len":I
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5    # "in":Ljava/io/FileInputStream;
    .restart local v4    # "in":Ljava/io/FileInputStream;
    goto :goto_3

    .line 147
    :catch_4
    move-exception v3

    goto :goto_2
.end method

.method public static formatTime(J)Ljava/lang/String;
    .locals 4
    .param p0, "time"    # J

    .prologue
    .line 117
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0, p0, p1}, Ljava/util/Date;-><init>(J)V

    .line 118
    .local v0, "date":Ljava/util/Date;
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd  HH:mm:ss"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 119
    .local v1, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getCurrentTime()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    const-string v0, "yyyy-MM-dd  HH:mm:ss"

    invoke-static {v0}, Lcom/mifiservice/utils/TextUtil;->getCurrentTime(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getCurrentTime(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p0, "format"    # Ljava/lang/String;

    .prologue
    .line 123
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 124
    .local v1, "date":Ljava/util/Date;
    new-instance v2, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 125
    .local v2, "sdf":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "currentTime":Ljava/lang/String;
    return-object v0
.end method

.method public static isEmail(Ljava/lang/String;)Z
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 78
    invoke-static {p0}, Lcom/mifiservice/utils/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 87
    :cond_0
    :goto_0
    return v3

    .line 81
    :cond_1
    const-string v0, "^\\w+@(\\w+.)+[a-z]{2,3}$"

    .line 82
    .local v0, "format":Ljava/lang/String;
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    .line 83
    .local v2, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v2, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 84
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 85
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static isEmpty(Ljava/lang/String;)Z
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 17
    if-eqz p0, :cond_0

    const-string v0, ""

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isEmpty([B)Z
    .locals 1
    .param p0, "b"    # [B

    .prologue
    .line 21
    if-eqz p0, :cond_0

    array-length v0, p0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static varargs isEmpty([Ljava/lang/String;)Z
    .locals 6
    .param p0, "strs"    # [Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 25
    if-eqz p0, :cond_0

    array-length v5, p0

    if-nez v5, :cond_1

    .line 34
    :cond_0
    :goto_0
    return v4

    .line 29
    :cond_1
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_1
    if-ge v1, v2, :cond_2

    aget-object v3, v0, v1

    .line 30
    .local v3, "str":Ljava/lang/String;
    invoke-static {v3}, Lcom/mifiservice/utils/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 29
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 34
    .end local v3    # "str":Ljava/lang/String;
    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static isPasswordFormated(Ljava/lang/String;)Z
    .locals 5
    .param p0, "password"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 104
    invoke-static {p0}, Lcom/mifiservice/utils/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 113
    :cond_0
    :goto_0
    return v3

    .line 107
    :cond_1
    const-string v2, "^(?![0-9]+$)(?![a-zA-Z]+$)[0-9A-Za-z!@#$%^&*]{8,16}$"

    .line 108
    .local v2, "passwordFormat":Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 109
    .local v1, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 110
    .local v0, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 111
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static isPhoneNumber(Ljava/lang/String;)Z
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 65
    invoke-static {p0}, Lcom/mifiservice/utils/TextUtil;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 74
    :cond_0
    :goto_0
    return v3

    .line 68
    :cond_1
    const-string v2, "^[1][358]\\d{9}$"

    .line 69
    .local v2, "phoneNumberFormat":Ljava/lang/String;
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 70
    .local v1, "pattern":Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 71
    .local v0, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 72
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static final md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 38
    const/16 v11, 0x10

    new-array v3, v11, [C

    fill-array-data v3, :array_0

    .line 40
    .local v3, "hexDigits":[C
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 42
    .local v0, "btInput":[B
    const-string v11, "MD5"

    invoke-static {v11}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v9

    .line 44
    .local v9, "mdInst":Ljava/security/MessageDigest;
    invoke-virtual {v9, v0}, Ljava/security/MessageDigest;->update([B)V

    .line 46
    invoke-virtual {v9}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v8

    .line 48
    .local v8, "md":[B
    array-length v5, v8

    .line 49
    .local v5, "j":I
    mul-int/lit8 v11, v5, 0x2

    new-array v10, v11, [C

    .line 50
    .local v10, "str":[C
    const/4 v6, 0x0

    .line 51
    .local v6, "k":I
    const/4 v4, 0x0

    .local v4, "i":I
    move v7, v6

    .end local v6    # "k":I
    .local v7, "k":I
    :goto_0
    if-ge v4, v5, :cond_0

    .line 52
    aget-byte v1, v8, v4

    .line 53
    .local v1, "byte0":B
    add-int/lit8 v6, v7, 0x1

    .end local v7    # "k":I
    .restart local v6    # "k":I
    ushr-int/lit8 v11, v1, 0x4

    and-int/lit8 v11, v11, 0xf

    aget-char v11, v3, v11

    aput-char v11, v10, v7

    .line 54
    add-int/lit8 v7, v6, 0x1

    .end local v6    # "k":I
    .restart local v7    # "k":I
    and-int/lit8 v11, v1, 0xf

    aget-char v11, v3, v11

    aput-char v11, v10, v6

    .line 51
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 56
    .end local v1    # "byte0":B
    :cond_0
    new-instance v11, Ljava/lang/String;

    invoke-direct {v11, v10}, Ljava/lang/String;-><init>([C)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    .end local v0    # "btInput":[B
    .end local v4    # "i":I
    .end local v5    # "j":I
    .end local v7    # "k":I
    .end local v8    # "md":[B
    .end local v9    # "mdInst":Ljava/security/MessageDigest;
    .end local v10    # "str":[C
    :goto_1
    return-object v11

    .line 57
    :catch_0
    move-exception v2

    .line 58
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 59
    const/4 v11, 0x0

    goto :goto_1

    .line 38
    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
    .end array-data
.end method
