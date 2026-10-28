.class Lorg/eclipse/jetty/http/HttpFields$DateParser;
.super Ljava/lang/Object;
.source "HttpFields.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/http/HttpFields;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DateParser"
.end annotation


# instance fields
.field final _dateReceive:[Ljava/text/SimpleDateFormat;


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    invoke-static {}, Lorg/eclipse/jetty/http/HttpFields;->access$300()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Ljava/text/SimpleDateFormat;

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpFields$DateParser;->_dateReceive:[Ljava/text/SimpleDateFormat;

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/jetty/http/HttpFields$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/eclipse/jetty/http/HttpFields$1;

    .prologue
    .line 233
    invoke-direct {p0}, Lorg/eclipse/jetty/http/HttpFields$DateParser;-><init>()V

    return-void
.end method


# virtual methods
.method parse(Ljava/lang/String;)J
    .locals 7
    .param p1, "dateVal"    # Ljava/lang/String;

    .prologue
    .line 239
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpFields$DateParser;->_dateReceive:[Ljava/text/SimpleDateFormat;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 241
    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpFields$DateParser;->_dateReceive:[Ljava/text/SimpleDateFormat;

    aget-object v3, v3, v1

    if-nez v3, :cond_0

    .line 243
    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpFields$DateParser;->_dateReceive:[Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/text/SimpleDateFormat;

    invoke-static {}, Lorg/eclipse/jetty/http/HttpFields;->access$300()[Ljava/lang/String;

    move-result-object v5

    aget-object v5, v5, v1

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v4, v5, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    aput-object v4, v3, v1

    .line 244
    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpFields$DateParser;->_dateReceive:[Ljava/text/SimpleDateFormat;

    aget-object v3, v3, v1

    sget-object v4, Lorg/eclipse/jetty/http/HttpFields;->__GMT:Ljava/util/TimeZone;

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 249
    :cond_0
    :try_start_0
    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpFields$DateParser;->_dateReceive:[Ljava/text/SimpleDateFormat;

    aget-object v3, v3, v1

    invoke-virtual {v3, p1}, Ljava/text/SimpleDateFormat;->parseObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 250
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v3

    .line 275
    .end local v0    # "date":Ljava/util/Date;
    :goto_1
    return-wide v3

    .line 252
    :catch_0
    move-exception v3

    .line 239
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 258
    :cond_1
    const-string v3, " GMT"

    invoke-virtual {p1, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 260
    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    .line 262
    .local v2, "val":Ljava/lang/String;
    const/4 v1, 0x0

    :goto_2
    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpFields$DateParser;->_dateReceive:[Ljava/text/SimpleDateFormat;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 266
    :try_start_1
    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpFields$DateParser;->_dateReceive:[Ljava/text/SimpleDateFormat;

    aget-object v3, v3, v1

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->parseObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Date;

    .line 267
    .restart local v0    # "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v3

    goto :goto_1

    .line 269
    .end local v0    # "date":Ljava/util/Date;
    :catch_1
    move-exception v3

    .line 262
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 275
    .end local v2    # "val":Ljava/lang/String;
    :cond_2
    const-wide/16 v3, -0x1

    goto :goto_1
.end method
