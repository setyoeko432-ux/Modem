.class public final Lcom/mifiservice/security/PasswordPolicy;
.super Ljava/lang/Object;
.source "PasswordPolicy.java"


# static fields
.field private static final SYMBOLS:Ljava/lang/String; = "_-.!@#%^*+=?~"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
.end method

.method public static check(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 12
    if-nez p0, :cond_0

    .line 13
    const-string p0, "newpwd"

    return-object p0

    .line 15
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc

    if-ge v0, v1, :cond_1

    .line 16
    const-string p0, "newpwd_short"

    return-object p0

    .line 18
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-le v0, v1, :cond_2

    .line 19
    const-string p0, "newpwd_long"

    return-object p0

    .line 21
    :cond_2
    nop

    .line 22
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v2, v4, :cond_a

    .line 23
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    .line 24
    const/16 v5, 0x61

    if-lt v4, v5, :cond_3

    const/16 v5, 0x7a

    if-le v4, v5, :cond_6

    :cond_3
    const/16 v5, 0x41

    if-lt v4, v5, :cond_4

    const/16 v5, 0x5a

    if-le v4, v5, :cond_6

    :cond_4
    const/16 v5, 0x30

    if-lt v4, v5, :cond_5

    const/16 v5, 0x39

    if-le v4, v5, :cond_6

    .line 25
    :cond_5
    const-string v5, "_-.!@#%^*+=?~"

    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v5

    if-ltz v5, :cond_7

    :cond_6
    const/4 v5, 0x1

    goto :goto_1

    :cond_7
    const/4 v5, 0x0

    .line 26
    :goto_1
    if-nez v5, :cond_8

    .line 27
    const-string p0, "newpwd_chars"

    return-object p0

    .line 29
    :cond_8
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-eq v4, v5, :cond_9

    .line 30
    const/4 v3, 0x0

    .line 22
    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 33
    :cond_a
    const-string v0, "newpwd_weak"

    if-eqz v3, :cond_b

    .line 34
    return-object v0

    .line 36
    :cond_b
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 37
    const-string v2, "admin"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_e

    const-string v2, "password"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-gez v2, :cond_e

    .line 38
    const-string v2, "12345678"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_c

    goto :goto_2

    .line 41
    :cond_c
    if-eqz p1, :cond_d

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_d

    .line 42
    const-string p0, "newpwd_same"

    return-object p0

    .line 44
    :cond_d
    const/4 p0, 0x0

    return-object p0

    .line 39
    :cond_e
    :goto_2
    return-object v0
.end method
