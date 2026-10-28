.class public Lorg/eclipse/jetty/http/MimeTypes;
.super Ljava/lang/Object;
.source "MimeTypes.java"


# static fields
.field public static final CACHE:Lorg/eclipse/jetty/io/BufferCache;

.field public static final FORM_ENCODED:Ljava/lang/String; = "application/x-www-form-urlencoded"

.field public static final FORM_ENCODED_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field private static final FORM_ENCODED_ORDINAL:I = 0x1

.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field public static final MESSAGE_HTTP:Ljava/lang/String; = "message/http"

.field public static final MESSAGE_HTTP_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field private static final MESSAGE_HTTP_ORDINAL:I = 0x2

.field public static final MULTIPART_BYTERANGES:Ljava/lang/String; = "multipart/byteranges"

.field public static final MULTIPART_BYTERANGES_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field private static final MULTIPART_BYTERANGES_ORDINAL:I = 0x3

.field public static final TEXT_HTML:Ljava/lang/String; = "text/html"

.field public static final TEXT_HTML_8859_1:Ljava/lang/String; = "text/html;charset=ISO-8859-1"

.field public static final TEXT_HTML_8859_1_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field private static final TEXT_HTML_8859_1_ORDINAL:I = 0x8

.field public static final TEXT_HTML_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field private static final TEXT_HTML_ORDINAL:I = 0x4

.field public static final TEXT_HTML_UTF_8:Ljava/lang/String; = "text/html;charset=UTF-8"

.field public static final TEXT_HTML_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field private static final TEXT_HTML_UTF_8_ORDINAL:I = 0xb

.field private static final TEXT_HTML__8859_1:Ljava/lang/String; = "text/html; charset=ISO-8859-1"

.field public static final TEXT_HTML__8859_1_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field private static final TEXT_HTML__UTF_8:Ljava/lang/String; = "text/html; charset=UTF-8"

.field public static final TEXT_HTML__UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field public static final TEXT_JSON:Ljava/lang/String; = "text/json"

.field public static final TEXT_JSON_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field private static final TEXT_JSON_ORDINAL:I = 0x7

.field public static final TEXT_JSON_UTF_8:Ljava/lang/String; = "text/json;charset=UTF-8"

.field public static final TEXT_JSON_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field private static final TEXT_JSON_UTF_8_ORDINAL:I = 0xe

.field private static final TEXT_JSON__UTF_8:Ljava/lang/String; = "text/json; charset=UTF-8"

.field public static final TEXT_JSON__UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field public static final TEXT_PLAIN:Ljava/lang/String; = "text/plain"

.field public static final TEXT_PLAIN_8859_1:Ljava/lang/String; = "text/plain;charset=ISO-8859-1"

.field public static final TEXT_PLAIN_8859_1_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field private static final TEXT_PLAIN_8859_1_ORDINAL:I = 0x9

.field public static final TEXT_PLAIN_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field private static final TEXT_PLAIN_ORDINAL:I = 0x5

.field public static final TEXT_PLAIN_UTF_8:Ljava/lang/String; = "text/plain;charset=UTF-8"

.field public static final TEXT_PLAIN_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field private static final TEXT_PLAIN_UTF_8_ORDINAL:I = 0xc

.field private static final TEXT_PLAIN__8859_1:Ljava/lang/String; = "text/plain; charset=ISO-8859-1"

.field public static final TEXT_PLAIN__8859_1_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field private static final TEXT_PLAIN__UTF_8:Ljava/lang/String; = "text/plain; charset=UTF-8"

.field public static final TEXT_PLAIN__UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field public static final TEXT_XML:Ljava/lang/String; = "text/xml"

.field public static final TEXT_XML_8859_1:Ljava/lang/String; = "text/xml;charset=ISO-8859-1"

.field public static final TEXT_XML_8859_1_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field private static final TEXT_XML_8859_1_ORDINAL:I = 0xa

.field public static final TEXT_XML_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field private static final TEXT_XML_ORDINAL:I = 0x6

.field public static final TEXT_XML_UTF_8:Ljava/lang/String; = "text/xml;charset=UTF-8"

.field public static final TEXT_XML_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field private static final TEXT_XML_UTF_8_ORDINAL:I = 0xd

.field private static final TEXT_XML__8859_1:Ljava/lang/String; = "text/xml; charset=ISO-8859-1"

.field public static final TEXT_XML__8859_1_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field private static final TEXT_XML__UTF_8:Ljava/lang/String; = "text/xml; charset=UTF-8"

.field public static final TEXT_XML__UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field private static final __dftMimeMap:Ljava/util/Map;

.field private static final __encodings:Ljava/util/Map;

.field private static __index:I


# instance fields
.field private _mimeMap:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    .prologue
    const/16 v14, 0xb

    const/16 v13, 0xa

    const/16 v12, 0x9

    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 42
    const-class v7, Lorg/eclipse/jetty/http/MimeTypes;

    invoke-static {v7}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v7

    sput-object v7, Lorg/eclipse/jetty/http/MimeTypes;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 91
    const/16 v7, 0xf

    sput v7, Lorg/eclipse/jetty/http/MimeTypes;->__index:I

    .line 93
    new-instance v7, Lorg/eclipse/jetty/io/BufferCache;

    invoke-direct {v7}, Lorg/eclipse/jetty/io/BufferCache;-><init>()V

    sput-object v7, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    .line 96
    sget-object v7, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v8, "application/x-www-form-urlencoded"

    const/4 v9, 0x1

    invoke-virtual {v7, v8, v9}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v7

    sput-object v7, Lorg/eclipse/jetty/http/MimeTypes;->FORM_ENCODED_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 97
    sget-object v7, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v8, "message/http"

    const/4 v9, 0x2

    invoke-virtual {v7, v8, v9}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v7

    sput-object v7, Lorg/eclipse/jetty/http/MimeTypes;->MESSAGE_HTTP_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 98
    sget-object v7, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v8, "multipart/byteranges"

    const/4 v9, 0x3

    invoke-virtual {v7, v8, v9}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v7

    sput-object v7, Lorg/eclipse/jetty/http/MimeTypes;->MULTIPART_BYTERANGES_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 100
    sget-object v7, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v8, "text/html"

    const/4 v9, 0x4

    invoke-virtual {v7, v8, v9}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v7

    sput-object v7, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_HTML_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 101
    sget-object v7, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v8, "text/plain"

    const/4 v9, 0x5

    invoke-virtual {v7, v8, v9}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v7

    sput-object v7, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_PLAIN_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 102
    sget-object v7, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v8, "text/xml"

    const/4 v9, 0x6

    invoke-virtual {v7, v8, v9}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v7

    sput-object v7, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_XML_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 103
    sget-object v7, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v8, "text/json"

    const/4 v9, 0x7

    invoke-virtual {v7, v8, v9}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v7

    sput-object v7, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_JSON_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 105
    sget-object v7, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v8, "text/html;charset=ISO-8859-1"

    invoke-virtual {v7, v8, v11}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v7

    sput-object v7, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_HTML_8859_1_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 106
    sget-object v7, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v8, "text/plain;charset=ISO-8859-1"

    invoke-virtual {v7, v8, v12}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v7

    sput-object v7, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_PLAIN_8859_1_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 107
    sget-object v7, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v8, "text/xml;charset=ISO-8859-1"

    invoke-virtual {v7, v8, v13}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v7

    sput-object v7, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_XML_8859_1_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 109
    sget-object v7, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v8, "text/html;charset=UTF-8"

    invoke-virtual {v7, v8, v14}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v7

    sput-object v7, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_HTML_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 110
    sget-object v7, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v8, "text/plain;charset=UTF-8"

    const/16 v9, 0xc

    invoke-virtual {v7, v8, v9}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v7

    sput-object v7, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_PLAIN_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 111
    sget-object v7, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v8, "text/xml;charset=UTF-8"

    const/16 v9, 0xd

    invoke-virtual {v7, v8, v9}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v7

    sput-object v7, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_XML_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 112
    sget-object v7, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v8, "text/json;charset=UTF-8"

    const/16 v9, 0xe

    invoke-virtual {v7, v8, v9}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v7

    sput-object v7, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_JSON_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 114
    sget-object v7, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v8, "text/html; charset=ISO-8859-1"

    invoke-virtual {v7, v8, v11}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v7

    sput-object v7, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_HTML__8859_1_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 115
    sget-object v7, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v8, "text/plain; charset=ISO-8859-1"

    invoke-virtual {v7, v8, v12}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v7

    sput-object v7, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_PLAIN__8859_1_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 116
    sget-object v7, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v8, "text/xml; charset=ISO-8859-1"

    invoke-virtual {v7, v8, v13}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v7

    sput-object v7, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_XML__8859_1_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 118
    sget-object v7, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v8, "text/html; charset=UTF-8"

    invoke-virtual {v7, v8, v14}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v7

    sput-object v7, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_HTML__UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 119
    sget-object v7, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v8, "text/plain; charset=UTF-8"

    const/16 v9, 0xc

    invoke-virtual {v7, v8, v9}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v7

    sput-object v7, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_PLAIN__UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 120
    sget-object v7, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v8, "text/xml; charset=UTF-8"

    const/16 v9, 0xd

    invoke-virtual {v7, v8, v9}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v7

    sput-object v7, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_XML__UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 121
    sget-object v7, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    const-string v8, "text/json; charset=UTF-8"

    const/16 v9, 0xe

    invoke-virtual {v7, v8, v9}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v7

    sput-object v7, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_JSON__UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 126
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    sput-object v7, Lorg/eclipse/jetty/http/MimeTypes;->__dftMimeMap:Ljava/util/Map;

    .line 127
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    sput-object v7, Lorg/eclipse/jetty/http/MimeTypes;->__encodings:Ljava/util/Map;

    .line 132
    :try_start_0
    const-string v7, "org/eclipse/jetty/http/mime"

    invoke-static {v7}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v5

    .line 133
    .local v5, "mime":Ljava/util/ResourceBundle;
    invoke-virtual {v5}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object v3

    .line 134
    .local v3, "i":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 136
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 137
    .local v2, "ext":Ljava/lang/String;
    invoke-virtual {v5, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 138
    .local v4, "m":Ljava/lang/String;
    sget-object v7, Lorg/eclipse/jetty/http/MimeTypes;->__dftMimeMap:Ljava/util/Map;

    invoke-static {v2}, Lorg/eclipse/jetty/util/StringUtil;->asciiToLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v4}, Lorg/eclipse/jetty/http/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 141
    .end local v2    # "ext":Ljava/lang/String;
    .end local v3    # "i":Ljava/util/Enumeration;
    .end local v4    # "m":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 143
    .local v0, "e":Ljava/util/MissingResourceException;
    sget-object v7, Lorg/eclipse/jetty/http/MimeTypes;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual {v0}, Ljava/util/MissingResourceException;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v10, [Ljava/lang/Object;

    invoke-interface {v7, v8, v9}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    sget-object v7, Lorg/eclipse/jetty/http/MimeTypes;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v7, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 149
    .end local v0    # "e":Ljava/util/MissingResourceException;
    :cond_0
    :try_start_1
    const-string v7, "org/eclipse/jetty/http/encoding"

    invoke-static {v7}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    move-result-object v1

    .line 150
    .local v1, "encoding":Ljava/util/ResourceBundle;
    invoke-virtual {v1}, Ljava/util/ResourceBundle;->getKeys()Ljava/util/Enumeration;

    move-result-object v3

    .line 151
    .restart local v3    # "i":Ljava/util/Enumeration;
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 153
    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v7}, Lorg/eclipse/jetty/http/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v6

    .line 154
    .local v6, "type":Lorg/eclipse/jetty/io/Buffer;
    sget-object v7, Lorg/eclipse/jetty/http/MimeTypes;->__encodings:Ljava/util/Map;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/MissingResourceException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 157
    .end local v1    # "encoding":Ljava/util/ResourceBundle;
    .end local v3    # "i":Ljava/util/Enumeration;
    .end local v6    # "type":Lorg/eclipse/jetty/io/Buffer;
    :catch_1
    move-exception v0

    .line 159
    .restart local v0    # "e":Ljava/util/MissingResourceException;
    sget-object v7, Lorg/eclipse/jetty/http/MimeTypes;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual {v0}, Ljava/util/MissingResourceException;->toString()Ljava/lang/String;

    move-result-object v8

    new-array v9, v10, [Ljava/lang/Object;

    invoke-interface {v7, v8, v9}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    sget-object v7, Lorg/eclipse/jetty/http/MimeTypes;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v7, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 164
    .end local v0    # "e":Ljava/util/MissingResourceException;
    :cond_1
    sget-object v7, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_HTML_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v8, "ISO-8859-1"

    sget-object v9, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_HTML_8859_1_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v7, v8, v9}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 165
    sget-object v7, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_HTML_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v8, "ISO_8859_1"

    sget-object v9, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_HTML_8859_1_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v7, v8, v9}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 166
    sget-object v7, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_HTML_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v8, "iso-8859-1"

    sget-object v9, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_HTML_8859_1_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v7, v8, v9}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 167
    sget-object v7, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_PLAIN_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v8, "ISO-8859-1"

    sget-object v9, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_PLAIN_8859_1_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v7, v8, v9}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 168
    sget-object v7, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_PLAIN_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v8, "ISO_8859_1"

    sget-object v9, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_PLAIN_8859_1_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v7, v8, v9}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 169
    sget-object v7, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_PLAIN_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v8, "iso-8859-1"

    sget-object v9, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_PLAIN_8859_1_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v7, v8, v9}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 170
    sget-object v7, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_XML_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v8, "ISO-8859-1"

    sget-object v9, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_XML_8859_1_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v7, v8, v9}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 171
    sget-object v7, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_XML_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v8, "ISO_8859_1"

    sget-object v9, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_XML_8859_1_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v7, v8, v9}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 172
    sget-object v7, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_XML_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v8, "iso-8859-1"

    sget-object v9, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_XML_8859_1_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v7, v8, v9}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 174
    sget-object v7, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_HTML_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v8, "UTF-8"

    sget-object v9, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_HTML_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v7, v8, v9}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 175
    sget-object v7, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_HTML_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v8, "UTF8"

    sget-object v9, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_HTML_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v7, v8, v9}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 176
    sget-object v7, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_HTML_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v8, "utf8"

    sget-object v9, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_HTML_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v7, v8, v9}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 177
    sget-object v7, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_HTML_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v8, "utf-8"

    sget-object v9, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_HTML_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v7, v8, v9}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 178
    sget-object v7, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_PLAIN_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v8, "UTF-8"

    sget-object v9, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_PLAIN_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v7, v8, v9}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 179
    sget-object v7, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_PLAIN_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v8, "UTF8"

    sget-object v9, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_PLAIN_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v7, v8, v9}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 180
    sget-object v7, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_PLAIN_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v8, "utf8"

    sget-object v9, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_PLAIN_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v7, v8, v9}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 181
    sget-object v7, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_PLAIN_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v8, "utf-8"

    sget-object v9, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_PLAIN_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v7, v8, v9}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 182
    sget-object v7, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_XML_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v8, "UTF-8"

    sget-object v9, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_XML_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v7, v8, v9}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 183
    sget-object v7, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_XML_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v8, "UTF8"

    sget-object v9, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_XML_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v7, v8, v9}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 184
    sget-object v7, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_XML_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v8, "utf8"

    sget-object v9, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_XML_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v7, v8, v9}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 185
    sget-object v7, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_XML_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v8, "utf-8"

    sget-object v9, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_XML_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v7, v8, v9}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 186
    sget-object v7, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_JSON_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v8, "UTF-8"

    sget-object v9, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_JSON_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v7, v8, v9}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 187
    sget-object v7, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_JSON_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v8, "UTF8"

    sget-object v9, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_JSON_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v7, v8, v9}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 188
    sget-object v7, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_JSON_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v8, "utf8"

    sget-object v9, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_JSON_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v7, v8, v9}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 189
    sget-object v7, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_JSON_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    const-string v8, "utf-8"

    sget-object v9, Lorg/eclipse/jetty/http/MimeTypes;->TEXT_JSON_UTF_8_BUFFER:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v7, v8, v9}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->setAssociate(Ljava/lang/Object;Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;)V

    .line 190
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    return-void
.end method

.method public static getCharsetFromContentType(Lorg/eclipse/jetty/io/Buffer;)Ljava/lang/String;
    .locals 11
    .param p0, "value"    # Lorg/eclipse/jetty/io/Buffer;

    .prologue
    const/16 v10, 0x3b

    const/16 v9, 0xa

    const/16 v8, 0x22

    const/16 v7, 0x20

    .line 295
    instance-of v6, p0, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-eqz v6, :cond_0

    move-object v6, p0

    .line 297
    check-cast v6, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    invoke-virtual {v6}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->getOrdinal()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 312
    :cond_0
    invoke-interface {p0}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v2

    .line 313
    .local v2, "i":I
    invoke-interface {p0}, Lorg/eclipse/jetty/io/Buffer;->putIndex()I

    move-result v1

    .line 314
    .local v1, "end":I
    const/4 v5, 0x0

    .line 315
    .local v5, "state":I
    const/4 v4, 0x0

    .line 316
    .local v4, "start":I
    const/4 v3, 0x0

    .line 317
    .local v3, "quote":Z
    :goto_0
    if-ge v2, v1, :cond_f

    .line 319
    invoke-interface {p0, v2}, Lorg/eclipse/jetty/io/Buffer;->peek(I)B

    move-result v0

    .line 321
    .local v0, "b":B
    if-eqz v3, :cond_2

    if-eq v5, v9, :cond_2

    .line 323
    if-ne v8, v0, :cond_1

    .line 324
    const/4 v3, 0x0

    .line 317
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 302
    .end local v0    # "b":B
    .end local v1    # "end":I
    .end local v2    # "i":I
    .end local v3    # "quote":Z
    .end local v4    # "start":I
    .end local v5    # "state":I
    :pswitch_0
    const-string v6, "ISO-8859-1"

    .line 374
    :goto_2
    return-object v6

    .line 308
    :pswitch_1
    const-string v6, "UTF-8"

    goto :goto_2

    .line 328
    .restart local v0    # "b":B
    .restart local v1    # "end":I
    .restart local v2    # "i":I
    .restart local v3    # "quote":Z
    .restart local v4    # "start":I
    .restart local v5    # "state":I
    :cond_2
    packed-switch v5, :pswitch_data_1

    goto :goto_1

    .line 331
    :pswitch_2
    if-ne v8, v0, :cond_3

    .line 333
    const/4 v3, 0x1

    .line 334
    goto :goto_1

    .line 336
    :cond_3
    if-ne v10, v0, :cond_1

    .line 337
    const/4 v5, 0x1

    goto :goto_1

    .line 340
    :pswitch_3
    const/16 v6, 0x63

    if-ne v6, v0, :cond_4

    const/4 v5, 0x2

    goto :goto_1

    :cond_4
    if-eq v7, v0, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    .line 341
    :pswitch_4
    const/16 v6, 0x68

    if-ne v6, v0, :cond_5

    const/4 v5, 0x3

    goto :goto_1

    :cond_5
    const/4 v5, 0x0

    goto :goto_1

    .line 342
    :pswitch_5
    const/16 v6, 0x61

    if-ne v6, v0, :cond_6

    const/4 v5, 0x4

    goto :goto_1

    :cond_6
    const/4 v5, 0x0

    goto :goto_1

    .line 343
    :pswitch_6
    const/16 v6, 0x72

    if-ne v6, v0, :cond_7

    const/4 v5, 0x5

    goto :goto_1

    :cond_7
    const/4 v5, 0x0

    goto :goto_1

    .line 344
    :pswitch_7
    const/16 v6, 0x73

    if-ne v6, v0, :cond_8

    const/4 v5, 0x6

    goto :goto_1

    :cond_8
    const/4 v5, 0x0

    goto :goto_1

    .line 345
    :pswitch_8
    const/16 v6, 0x65

    if-ne v6, v0, :cond_9

    const/4 v5, 0x7

    goto :goto_1

    :cond_9
    const/4 v5, 0x0

    goto :goto_1

    .line 346
    :pswitch_9
    const/16 v6, 0x74

    if-ne v6, v0, :cond_a

    const/16 v5, 0x8

    goto :goto_1

    :cond_a
    const/4 v5, 0x0

    goto :goto_1

    .line 348
    :pswitch_a
    const/16 v6, 0x3d

    if-ne v6, v0, :cond_b

    const/16 v5, 0x9

    goto :goto_1

    :cond_b
    if-eq v7, v0, :cond_1

    const/4 v5, 0x0

    goto :goto_1

    .line 351
    :pswitch_b
    if-eq v7, v0, :cond_1

    .line 353
    if-ne v8, v0, :cond_c

    .line 355
    const/4 v3, 0x1

    .line 356
    add-int/lit8 v4, v2, 0x1

    .line 357
    const/16 v5, 0xa

    .line 358
    goto :goto_1

    .line 360
    :cond_c
    move v4, v2

    .line 361
    const/16 v5, 0xa

    .line 362
    goto :goto_1

    .line 365
    :pswitch_c
    if-nez v3, :cond_d

    if-eq v10, v0, :cond_e

    if-eq v7, v0, :cond_e

    :cond_d
    if-eqz v3, :cond_1

    if-ne v8, v0, :cond_1

    .line 367
    :cond_e
    sget-object v6, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    sub-int v7, v2, v4

    invoke-interface {p0, v4, v7}, Lorg/eclipse/jetty/io/Buffer;->peek(II)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/eclipse/jetty/io/BufferCache;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-interface {v6, v7}, Lorg/eclipse/jetty/io/Buffer;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 371
    .end local v0    # "b":B
    :cond_f
    if-ne v5, v9, :cond_10

    .line 372
    sget-object v6, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    sub-int v7, v2, v4

    invoke-interface {p0, v4, v7}, Lorg/eclipse/jetty/io/Buffer;->peek(II)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/eclipse/jetty/io/BufferCache;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v6

    const-string v7, "UTF-8"

    invoke-interface {v6, v7}, Lorg/eclipse/jetty/io/Buffer;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_2

    .line 374
    :cond_10
    sget-object v6, Lorg/eclipse/jetty/http/MimeTypes;->__encodings:Ljava/util/Map;

    invoke-interface {v6, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    goto/16 :goto_2

    .line 297
    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    .line 328
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method private static declared-synchronized normalizeMimeType(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;
    .locals 5
    .param p0, "type"    # Ljava/lang/String;

    .prologue
    .line 286
    const-class v2, Lorg/eclipse/jetty/http/MimeTypes;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    invoke-virtual {v1, p0}, Lorg/eclipse/jetty/io/BufferCache;->get(Ljava/lang/String;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v0

    .line 287
    .local v0, "b":Lorg/eclipse/jetty/io/Buffer;
    if-nez v0, :cond_0

    .line 288
    sget-object v1, Lorg/eclipse/jetty/http/MimeTypes;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    sget v3, Lorg/eclipse/jetty/http/MimeTypes;->__index:I

    add-int/lit8 v4, v3, 0x1

    sput v4, Lorg/eclipse/jetty/http/MimeTypes;->__index:I

    invoke-virtual {v1, p0, v3}, Lorg/eclipse/jetty/io/BufferCache;->add(Ljava/lang/String;I)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 289
    :cond_0
    monitor-exit v2

    return-object v0

    .line 286
    .end local v0    # "b":Lorg/eclipse/jetty/io/Buffer;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method


# virtual methods
.method public addMimeMapping(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "extension"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 277
    iget-object v0, p0, Lorg/eclipse/jetty/http/MimeTypes;->_mimeMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 278
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/http/MimeTypes;->_mimeMap:Ljava/util/Map;

    .line 280
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/MimeTypes;->_mimeMap:Ljava/util/Map;

    invoke-static {p1}, Lorg/eclipse/jetty/util/StringUtil;->asciiToLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Lorg/eclipse/jetty/http/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    return-void
.end method

.method public getMimeByExtension(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;
    .locals 5
    .param p1, "filename"    # Ljava/lang/String;

    .prologue
    .line 239
    const/4 v2, 0x0

    .line 241
    .local v2, "type":Lorg/eclipse/jetty/io/Buffer;
    if-eqz p1, :cond_1

    .line 243
    const/4 v1, -0x1

    .line 244
    .local v1, "i":I
    :cond_0
    :goto_0
    if-nez v2, :cond_1

    .line 246
    const-string v3, "."

    add-int/lit8 v4, v1, 0x1

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    .line 248
    if-ltz v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_4

    .line 259
    .end local v1    # "i":I
    :cond_1
    if-nez v2, :cond_3

    .line 261
    iget-object v3, p0, Lorg/eclipse/jetty/http/MimeTypes;->_mimeMap:Ljava/util/Map;

    if-eqz v3, :cond_2

    .line 262
    iget-object v3, p0, Lorg/eclipse/jetty/http/MimeTypes;->_mimeMap:Ljava/util/Map;

    const-string v4, "*"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "type":Lorg/eclipse/jetty/io/Buffer;
    check-cast v2, Lorg/eclipse/jetty/io/Buffer;

    .line 263
    .restart local v2    # "type":Lorg/eclipse/jetty/io/Buffer;
    :cond_2
    if-nez v2, :cond_3

    .line 264
    sget-object v3, Lorg/eclipse/jetty/http/MimeTypes;->__dftMimeMap:Ljava/util/Map;

    const-string v4, "*"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "type":Lorg/eclipse/jetty/io/Buffer;
    check-cast v2, Lorg/eclipse/jetty/io/Buffer;

    .line 267
    .restart local v2    # "type":Lorg/eclipse/jetty/io/Buffer;
    :cond_3
    return-object v2

    .line 251
    .restart local v1    # "i":I
    :cond_4
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lorg/eclipse/jetty/util/StringUtil;->asciiToLowerCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 252
    .local v0, "ext":Ljava/lang/String;
    iget-object v3, p0, Lorg/eclipse/jetty/http/MimeTypes;->_mimeMap:Ljava/util/Map;

    if-eqz v3, :cond_5

    .line 253
    iget-object v3, p0, Lorg/eclipse/jetty/http/MimeTypes;->_mimeMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "type":Lorg/eclipse/jetty/io/Buffer;
    check-cast v2, Lorg/eclipse/jetty/io/Buffer;

    .line 254
    .restart local v2    # "type":Lorg/eclipse/jetty/io/Buffer;
    :cond_5
    if-nez v2, :cond_0

    .line 255
    sget-object v3, Lorg/eclipse/jetty/http/MimeTypes;->__dftMimeMap:Ljava/util/Map;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "type":Lorg/eclipse/jetty/io/Buffer;
    check-cast v2, Lorg/eclipse/jetty/io/Buffer;

    .restart local v2    # "type":Lorg/eclipse/jetty/io/Buffer;
    goto :goto_0
.end method

.method public declared-synchronized getMimeMap()Ljava/util/Map;
    .locals 1

    .prologue
    .line 206
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/MimeTypes;->_mimeMap:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setMimeMap(Ljava/util/Map;)V
    .locals 5
    .param p1, "mimeMap"    # Ljava/util/Map;

    .prologue
    .line 215
    if-nez p1, :cond_0

    .line 217
    const/4 v3, 0x0

    iput-object v3, p0, Lorg/eclipse/jetty/http/MimeTypes;->_mimeMap:Ljava/util/Map;

    .line 229
    :goto_0
    return-void

    .line 221
    :cond_0
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 222
    .local v2, "m":Ljava/util/Map;
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 223
    .local v1, "i":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 225
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 226
    .local v0, "entry":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/eclipse/jetty/http/MimeTypes;->normalizeMimeType(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 228
    .end local v0    # "entry":Ljava/util/Map$Entry;
    :cond_1
    iput-object v2, p0, Lorg/eclipse/jetty/http/MimeTypes;->_mimeMap:Ljava/util/Map;

    goto :goto_0
.end method
