.class public Lorg/eclipse/jetty/util/security/Password;
.super Lorg/eclipse/jetty/util/security/Credential;
.source "Password.java"


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field public static final __OBFUSCATE:Ljava/lang/String; = "OBF:"

.field private static final serialVersionUID:J = 0x46430ecd65ae3425L


# instance fields
.field private _pw:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lorg/eclipse/jetty/util/security/Password;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/util/security/Password;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "password"    # Ljava/lang/String;

    .prologue
    .line 72
    invoke-direct {p0}, Lorg/eclipse/jetty/util/security/Credential;-><init>()V

    .line 73
    iput-object p1, p0, Lorg/eclipse/jetty/util/security/Password;->_pw:Ljava/lang/String;

    .line 76
    :goto_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/security/Password;->_pw:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/util/security/Password;->_pw:Ljava/lang/String;

    const-string v1, "OBF:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    iget-object v0, p0, Lorg/eclipse/jetty/util/security/Password;->_pw:Ljava/lang/String;

    invoke-static {v0}, Lorg/eclipse/jetty/util/security/Password;->deobfuscate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/util/security/Password;->_pw:Ljava/lang/String;

    goto :goto_0

    .line 78
    :cond_0
    return-void
.end method

.method public static deobfuscate(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 185
    const-string v8, "OBF:"

    invoke-virtual {p0, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    const/4 v8, 0x4

    invoke-virtual {p0, v8}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    .line 187
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    new-array v0, v8, [B

    .line 188
    .local v0, "b":[B
    const/4 v5, 0x0

    .line 189
    .local v5, "l":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v1, v8, :cond_1

    .line 191
    add-int/lit8 v8, v1, 0x4

    invoke-virtual {p0, v1, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 192
    .local v7, "x":Ljava/lang/String;
    const/16 v8, 0x24

    invoke-static {v7, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v2

    .line 193
    .local v2, "i0":I
    div-int/lit16 v3, v2, 0x100

    .line 194
    .local v3, "i1":I
    rem-int/lit16 v4, v2, 0x100

    .line 195
    .local v4, "i2":I
    add-int/lit8 v6, v5, 0x1

    .end local v5    # "l":I
    .local v6, "l":I
    add-int v8, v3, v4

    add-int/lit16 v8, v8, -0xfe

    div-int/lit8 v8, v8, 0x2

    int-to-byte v8, v8

    aput-byte v8, v0, v5

    .line 189
    add-int/lit8 v1, v1, 0x4

    move v5, v6

    .end local v6    # "l":I
    .restart local v5    # "l":I
    goto :goto_0

    .line 198
    .end local v2    # "i0":I
    .end local v3    # "i1":I
    .end local v4    # "i2":I
    .end local v7    # "x":Ljava/lang/String;
    :cond_1
    new-instance v8, Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct {v8, v0, v9, v5}, Ljava/lang/String;-><init>([BII)V

    return-object v8
.end method

.method public static getPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/eclipse/jetty/util/security/Password;
    .locals 7
    .param p0, "realm"    # Ljava/lang/String;
    .param p1, "dft"    # Ljava/lang/String;
    .param p2, "promptDft"    # Ljava/lang/String;

    .prologue
    .line 218
    invoke-static {p0, p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 219
    .local v3, "passwd":Ljava/lang/String;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 223
    :cond_0
    :try_start_0
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_4

    const-string v4, " [dft]"

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    .line 224
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v4}, Ljava/io/PrintStream;->flush()V

    .line 225
    const/16 v4, 0x200

    new-array v0, v4, [B

    .line 226
    .local v0, "buf":[B
    sget-object v4, Ljava/lang/System;->in:Ljava/io/InputStream;

    invoke-virtual {v4, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 227
    .local v2, "len":I
    if-lez v2, :cond_1

    new-instance v4, Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v4, v0, v5, v2}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 233
    .end local v0    # "buf":[B
    .end local v2    # "len":I
    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    :cond_2
    move-object v3, p2

    .line 235
    :cond_3
    new-instance v4, Lorg/eclipse/jetty/util/security/Password;

    invoke-direct {v4, v3}, Lorg/eclipse/jetty/util/security/Password;-><init>(Ljava/lang/String;)V

    return-object v4

    .line 223
    :cond_4
    :try_start_1
    const-string v4, ""
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 229
    :catch_0
    move-exception v1

    .line 231
    .local v1, "e":Ljava/io/IOException;
    sget-object v4, Lorg/eclipse/jetty/util/security/Password;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v5, "EXCEPTION "

    invoke-interface {v4, v5, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7
    .param p0, "arg"    # [Ljava/lang/String;

    .prologue
    const/4 v6, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 244
    array-length v4, p0

    if-eq v4, v2, :cond_0

    array-length v4, p0

    if-eq v4, v6, :cond_0

    .line 246
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "Usage - java org.eclipse.jetty.security.Password [<user>] <password>"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 247
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "If the password is ?, the user will be prompted for the password"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 248
    invoke-static {v2}, Ljava/lang/System;->exit(I)V

    .line 250
    :cond_0
    array-length v4, p0

    if-ne v4, v2, :cond_1

    move v2, v3

    :cond_1
    aget-object v0, p0, v2

    .line 251
    .local v0, "p":Ljava/lang/String;
    new-instance v1, Lorg/eclipse/jetty/util/security/Password;

    invoke-direct {v1, v0}, Lorg/eclipse/jetty/util/security/Password;-><init>(Ljava/lang/String;)V

    .line 252
    .local v1, "pw":Lorg/eclipse/jetty/util/security/Password;
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/security/Password;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 253
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/security/Password;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/eclipse/jetty/util/security/Password;->obfuscate(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 254
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-static {v0}, Lorg/eclipse/jetty/util/security/Credential$MD5;->digest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 255
    array-length v2, p0

    if-ne v2, v6, :cond_2

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    aget-object v3, p0, v3

    invoke-virtual {v1}, Lorg/eclipse/jetty/util/security/Password;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/eclipse/jetty/util/security/Credential$Crypt;->crypt(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 256
    :cond_2
    return-void
.end method

.method public static obfuscate(Ljava/lang/String;)Ljava/lang/String;
    .locals 12
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    const/16 v11, 0x30

    .line 143
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .local v3, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 146
    .local v0, "b":[B
    const-string v9, "OBF:"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v9, v0

    if-ge v4, v9, :cond_0

    .line 149
    aget-byte v1, v0, v4

    .line 150
    .local v1, "b1":B
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v10, v4, 0x1

    sub-int/2addr v9, v10

    aget-byte v2, v0, v9

    .line 151
    .local v2, "b2":B
    add-int/lit8 v9, v1, 0x7f

    add-int v6, v9, v2

    .line 152
    .local v6, "i1":I
    add-int/lit8 v9, v1, 0x7f

    sub-int v7, v9, v2

    .line 153
    .local v7, "i2":I
    mul-int/lit16 v9, v6, 0x100

    add-int v5, v9, v7

    .line 154
    .local v5, "i0":I
    const/16 v9, 0x24

    invoke-static {v5, v9}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v8

    .line 156
    .local v8, "x":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 174
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 159
    :pswitch_0
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 160
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 161
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 165
    :pswitch_1
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 167
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 170
    :pswitch_2
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 178
    .end local v1    # "b1":B
    .end local v2    # "b2":B
    .end local v5    # "i0":I
    .end local v6    # "i1":I
    .end local v7    # "i2":I
    .end local v8    # "x":Ljava/lang/String;
    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    return-object v9

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public check(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "credentials"    # Ljava/lang/Object;

    .prologue
    .line 97
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    .line 107
    .end local p1    # "credentials":Ljava/lang/Object;
    :goto_0
    return v0

    .line 99
    .restart local p1    # "credentials":Ljava/lang/Object;
    :cond_0
    instance-of v0, p1, Lorg/eclipse/jetty/util/security/Password;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/util/security/Password;->_pw:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 101
    :cond_1
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/util/security/Password;->_pw:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 103
    :cond_2
    instance-of v0, p1, [C

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/eclipse/jetty/util/security/Password;->_pw:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    check-cast p1, [C

    .end local p1    # "credentials":Ljava/lang/Object;
    check-cast p1, [C

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([C[C)Z

    move-result v0

    goto :goto_0

    .line 105
    .restart local p1    # "credentials":Ljava/lang/Object;
    :cond_3
    instance-of v0, p1, Lorg/eclipse/jetty/util/security/Credential;

    if-eqz v0, :cond_4

    check-cast p1, Lorg/eclipse/jetty/util/security/Credential;

    .end local p1    # "credentials":Ljava/lang/Object;
    iget-object v0, p0, Lorg/eclipse/jetty/util/security/Password;->_pw:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lorg/eclipse/jetty/util/security/Credential;->check(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 107
    .restart local p1    # "credentials":Ljava/lang/Object;
    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 114
    if-ne p0, p1, :cond_1

    move v1, v2

    .line 130
    :cond_0
    :goto_0
    return v1

    .line 117
    :cond_1
    if-eqz p1, :cond_0

    .line 120
    instance-of v3, p1, Lorg/eclipse/jetty/util/security/Password;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 122
    check-cast v0, Lorg/eclipse/jetty/util/security/Password;

    .line 124
    .local v0, "p":Lorg/eclipse/jetty/util/security/Password;
    iget-object v3, v0, Lorg/eclipse/jetty/util/security/Password;->_pw:Ljava/lang/String;

    iget-object v4, p0, Lorg/eclipse/jetty/util/security/Password;->_pw:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lorg/eclipse/jetty/util/security/Password;->_pw:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lorg/eclipse/jetty/util/security/Password;->_pw:Ljava/lang/String;

    iget-object v4, v0, Lorg/eclipse/jetty/util/security/Password;->_pw:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .line 127
    .end local v0    # "p":Lorg/eclipse/jetty/util/security/Password;
    :cond_3
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 128
    iget-object v1, p0, Lorg/eclipse/jetty/util/security/Password;->_pw:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lorg/eclipse/jetty/util/security/Password;->_pw:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/security/Password;->_pw:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public toStarString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 90
    const-string v0, "*****************************************************"

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/eclipse/jetty/util/security/Password;->_pw:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lorg/eclipse/jetty/util/security/Password;->_pw:Ljava/lang/String;

    return-object v0
.end method
