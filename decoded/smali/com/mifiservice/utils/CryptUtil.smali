.class public Lcom/mifiservice/utils/CryptUtil;
.super Ljava/lang/Object;
.source "CryptUtil.java"


# static fields
.field private static final AES:Ljava/lang/String; = "AES/ECB/PKCS5Padding"

.field private static final RSA:Ljava/lang/String; = "RSA/ECB/PKCS1Padding"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static aesDecrypt([B[B)[B
    .locals 2
    .param p0, "data"    # [B
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 46
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 47
    .local v0, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    const-string v1, "AES/ECB/PKCS5Padding"

    invoke-static {p0, v0, v1}, Lcom/mifiservice/utils/CryptUtil;->decrypt([BLjava/security/Key;Ljava/lang/String;)[B

    move-result-object v1

    return-object v1
.end method

.method public static aesEncrypt([B[B)[B
    .locals 2
    .param p0, "content"    # [B
    .param p1, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 41
    new-instance v0, Ljavax/crypto/spec/SecretKeySpec;

    const-string v1, "AES"

    invoke-direct {v0, p1, v1}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    .line 42
    .local v0, "keySpec":Ljavax/crypto/spec/SecretKeySpec;
    const-string v1, "AES/ECB/PKCS5Padding"

    invoke-static {p0, v0, v1}, Lcom/mifiservice/utils/CryptUtil;->encrypt([BLjava/security/Key;Ljava/lang/String;)[B

    move-result-object v1

    return-object v1
.end method

.method public static bytes2PrivateKey([B)Ljava/security/PrivateKey;
    .locals 4
    .param p0, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 80
    new-instance v1, Ljava/security/spec/PKCS8EncodedKeySpec;

    invoke-direct {v1, p0}, Ljava/security/spec/PKCS8EncodedKeySpec;-><init>([B)V

    .line 81
    .local v1, "keySpec":Ljava/security/spec/PKCS8EncodedKeySpec;
    const-string v3, "RSA"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 82
    .local v0, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePrivate(Ljava/security/spec/KeySpec;)Ljava/security/PrivateKey;

    move-result-object v2

    .line 83
    .local v2, "privateKey":Ljava/security/PrivateKey;
    return-object v2
.end method

.method public static bytes2PublicKey([B)Ljava/security/PublicKey;
    .locals 4
    .param p0, "key"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 72
    new-instance v1, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v1, p0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 73
    .local v1, "keySpec":Ljava/security/spec/X509EncodedKeySpec;
    const-string v3, "RSA"

    invoke-static {v3}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v0

    .line 74
    .local v0, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v0, v1}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;

    move-result-object v2

    .line 75
    .local v2, "publicKey":Ljava/security/PublicKey;
    return-object v2
.end method

.method private static decrypt([BLjava/security/Key;Ljava/lang/String;)[B
    .locals 2
    .param p0, "content"    # [B
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 65
    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 66
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 67
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    return-object v1
.end method

.method private static encrypt([BLjava/security/Key;Ljava/lang/String;)[B
    .locals 2
    .param p0, "content"    # [B
    .param p1, "key"    # Ljava/security/Key;
    .param p2, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 59
    invoke-static {p2}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;)Ljavax/crypto/Cipher;

    move-result-object v0

    .line 60
    .local v0, "cipher":Ljavax/crypto/Cipher;
    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;)V

    .line 61
    invoke-virtual {v0, p0}, Ljavax/crypto/Cipher;->doFinal([B)[B

    move-result-object v1

    return-object v1
.end method

.method public static generateAESKey()[B
    .locals 4

    .prologue
    .line 20
    :try_start_0
    const-string v3, "AES"

    invoke-static {v3}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    move-result-object v1

    .line 21
    .local v1, "keygen":Ljavax/crypto/KeyGenerator;
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    .line 22
    .local v2, "random":Ljava/security/SecureRandom;
    const/16 v3, 0x80

    invoke-virtual {v1, v3, v2}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 23
    invoke-virtual {v1}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    move-result-object v3

    invoke-interface {v3}, Ljavax/crypto/SecretKey;->getEncoded()[B
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 25
    .end local v2    # "random":Ljava/security/SecureRandom;
    :goto_0
    return-object v3

    .line 24
    :catch_0
    move-exception v0

    .line 25
    .local v0, "cannotHappen":Ljava/security/NoSuchAlgorithmException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static generateKeyPair()Ljava/security/KeyPair;
    .locals 4

    .prologue
    .line 31
    :try_start_0
    const-string v3, "RSA"

    invoke-static {v3}, Ljava/security/KeyPairGenerator;->getInstance(Ljava/lang/String;)Ljava/security/KeyPairGenerator;

    move-result-object v1

    .line 32
    .local v1, "pairgen":Ljava/security/KeyPairGenerator;
    new-instance v2, Ljava/security/SecureRandom;

    invoke-direct {v2}, Ljava/security/SecureRandom;-><init>()V

    .line 33
    .local v2, "random":Ljava/security/SecureRandom;
    const/16 v3, 0x400

    invoke-virtual {v1, v3, v2}, Ljava/security/KeyPairGenerator;->initialize(ILjava/security/SecureRandom;)V

    .line 34
    invoke-virtual {v1}, Ljava/security/KeyPairGenerator;->generateKeyPair()Ljava/security/KeyPair;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 36
    .end local v2    # "random":Ljava/security/SecureRandom;
    :goto_0
    return-object v3

    .line 35
    :catch_0
    move-exception v0

    .line 36
    .local v0, "cannotHappen":Ljava/security/NoSuchAlgorithmException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static md5(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 88
    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 89
    .local v1, "md":Ljava/security/MessageDigest;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->update([B)V

    .line 90
    new-instance v2, Ljava/math/BigInteger;

    const/4 v3, 0x1

    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v4

    invoke-direct {v2, v3, v4}, Ljava/math/BigInteger;-><init>(I[B)V

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 92
    .end local v1    # "md":Ljava/security/MessageDigest;
    :goto_0
    return-object v2

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "cannotHappen":Ljava/security/NoSuchAlgorithmException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static rsaDecryptByPrivate([BLjava/security/PrivateKey;)[B
    .locals 1
    .param p0, "data"    # [B
    .param p1, "privateKey"    # Ljava/security/PrivateKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 51
    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-static {p0, p1, v0}, Lcom/mifiservice/utils/CryptUtil;->decrypt([BLjava/security/Key;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public static rsaEncryptByPublicKey([BLjava/security/PublicKey;)[B
    .locals 1
    .param p0, "data"    # [B
    .param p1, "pubKey"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 55
    const-string v0, "RSA/ECB/PKCS1Padding"

    invoke-static {p0, p1, v0}, Lcom/mifiservice/utils/CryptUtil;->encrypt([BLjava/security/Key;Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
