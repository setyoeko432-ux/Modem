.class Lorg/eclipse/jetty/util/IPAddressMap$IPAddrPattern;
.super Ljava/lang/Object;
.source "IPAddressMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/util/IPAddressMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IPAddrPattern"
.end annotation


# instance fields
.field private final _octets:[Lorg/eclipse/jetty/util/IPAddressMap$OctetPattern;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 8
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x4

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    new-array v5, v7, [Lorg/eclipse/jetty/util/IPAddressMap$OctetPattern;

    iput-object v5, p0, Lorg/eclipse/jetty/util/IPAddressMap$IPAddrPattern;->_octets:[Lorg/eclipse/jetty/util/IPAddressMap$OctetPattern;

    .line 180
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 181
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid IP address pattern: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 185
    :cond_1
    :try_start_0
    new-instance v4, Ljava/util/StringTokenizer;

    const-string v5, "."

    invoke-direct {v4, p1, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    .local v4, "parts":Ljava/util/StringTokenizer;
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_0
    if-ge v1, v7, :cond_5

    .line 190
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 192
    .local v3, "part":Ljava/lang/String;
    :goto_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    .line 193
    .local v2, "len":I
    if-nez v2, :cond_3

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 194
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid IP address pattern: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 199
    .end local v1    # "idx":I
    .end local v2    # "len":I
    .end local v3    # "part":Ljava/lang/String;
    .end local v4    # "parts":Ljava/util/StringTokenizer;
    :catch_0
    move-exception v0

    .line 201
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid IP address pattern: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 190
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "idx":I
    .restart local v4    # "parts":Ljava/util/StringTokenizer;
    :cond_2
    :try_start_1
    const-string v3, "0-255"

    goto :goto_1

    .line 196
    .restart local v2    # "len":I
    .restart local v3    # "part":Ljava/lang/String;
    :cond_3
    iget-object v5, p0, Lorg/eclipse/jetty/util/IPAddressMap$IPAddrPattern;->_octets:[Lorg/eclipse/jetty/util/IPAddressMap$OctetPattern;

    new-instance v6, Lorg/eclipse/jetty/util/IPAddressMap$OctetPattern;

    if-nez v2, :cond_4

    const-string v3, "0-255"

    .end local v3    # "part":Ljava/lang/String;
    :cond_4
    invoke-direct {v6, v3}, Lorg/eclipse/jetty/util/IPAddressMap$OctetPattern;-><init>(Ljava/lang/String;)V

    aput-object v6, v5, v1
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 188
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 203
    .end local v2    # "len":I
    :cond_5
    return-void
.end method


# virtual methods
.method public match(Ljava/lang/String;)Z
    .locals 7
    .param p1, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 217
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_1

    .line 218
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid IP address: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 222
    :cond_1
    :try_start_0
    new-instance v2, Ljava/util/StringTokenizer;

    const-string v4, "."

    invoke-direct {v2, p1, v4}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .local v2, "parts":Ljava/util/StringTokenizer;
    const/4 v3, 0x1

    .line 225
    .local v3, "result":Z
    const/4 v1, 0x0

    .local v1, "idx":I
    :goto_0
    const/4 v4, 0x4

    if-ge v1, v4, :cond_3

    .line 227
    invoke-virtual {v2}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v4

    if-nez v4, :cond_2

    .line 228
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid IP address: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    .end local v1    # "idx":I
    .end local v2    # "parts":Ljava/util/StringTokenizer;
    .end local v3    # "result":Z
    :catch_0
    move-exception v0

    .line 237
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid IP address: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v4

    .line 230
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "idx":I
    .restart local v2    # "parts":Ljava/util/StringTokenizer;
    .restart local v3    # "result":Z
    :cond_2
    :try_start_1
    iget-object v4, p0, Lorg/eclipse/jetty/util/IPAddressMap$IPAddrPattern;->_octets:[Lorg/eclipse/jetty/util/IPAddressMap$OctetPattern;

    aget-object v4, v4, v1

    invoke-virtual {v2}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/eclipse/jetty/util/IPAddressMap$OctetPattern;->match(Ljava/lang/String;)Z
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    and-int/2addr v3, v4

    if-nez v3, :cond_4

    .line 233
    :cond_3
    return v3

    .line 225
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method
