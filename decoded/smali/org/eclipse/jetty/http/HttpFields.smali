.class public Lorg/eclipse/jetty/http/HttpFields;
.super Ljava/lang/Object;
.source "HttpFields.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/http/HttpFields$Field;,
        Lorg/eclipse/jetty/http/HttpFields$DateParser;,
        Lorg/eclipse/jetty/http/HttpFields$DateGenerator;
    }
.end annotation


# static fields
.field private static final DAYS:[Ljava/lang/String;

.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field private static final MONTHS:[Ljava/lang/String;

.field public static final __01Jan1970:Ljava/lang/String;

.field public static final __01Jan1970_BUFFER:Lorg/eclipse/jetty/io/Buffer;

.field public static final __01Jan1970_COOKIE:Ljava/lang/String;

.field public static final __COOKIE_DELIM:Ljava/lang/String; = "\"\\\n\r\t\u000c\u0008%+ ;="

.field public static final __GMT:Ljava/util/TimeZone;

.field private static __cache:Ljava/util/concurrent/ConcurrentMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/io/Buffer;",
            ">;"
        }
    .end annotation
.end field

.field private static __cacheSize:I = 0x0

.field public static final __dateCache:Lorg/eclipse/jetty/io/BufferDateCache;

.field private static final __dateGenerator:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lorg/eclipse/jetty/http/HttpFields$DateGenerator;",
            ">;"
        }
    .end annotation
.end field

.field private static final __dateParser:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Lorg/eclipse/jetty/http/HttpFields$DateParser;",
            ">;"
        }
    .end annotation
.end field

.field private static final __dateReceiveFmt:[Ljava/lang/String;

.field private static final __one:Ljava/lang/Float;

.field private static final __qualities:Lorg/eclipse/jetty/util/StringMap;

.field public static final __separators:Ljava/lang/String; = ", \t"

.field private static final __zero:Ljava/lang/Float;


# instance fields
.field private final _fields:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lorg/eclipse/jetty/http/HttpFields$Field;",
            ">;"
        }
    .end annotation
.end field

.field private final _names:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lorg/eclipse/jetty/io/Buffer;",
            "Lorg/eclipse/jetty/http/HttpFields$Field;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 66
    const-class v0, Lorg/eclipse/jetty/http/HttpFields;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/HttpFields;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    .line 70
    const-string v0, "GMT"

    invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/HttpFields;->__GMT:Ljava/util/TimeZone;

    .line 71
    new-instance v0, Lorg/eclipse/jetty/io/BufferDateCache;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss \'GMT\'"

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jetty/io/BufferDateCache;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpFields;->__dateCache:Lorg/eclipse/jetty/io/BufferDateCache;

    .line 76
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->__GMT:Ljava/util/TimeZone;

    const-string v1, "GMT"

    invoke-virtual {v0, v1}, Ljava/util/TimeZone;->setID(Ljava/lang/String;)V

    .line 77
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->__dateCache:Lorg/eclipse/jetty/io/BufferDateCache;

    sget-object v1, Lorg/eclipse/jetty/http/HttpFields;->__GMT:Ljava/util/TimeZone;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/io/BufferDateCache;->setTimeZone(Ljava/util/TimeZone;)V

    .line 84
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Sat"

    aput-object v1, v0, v3

    const-string v1, "Sun"

    aput-object v1, v0, v4

    const-string v1, "Mon"

    aput-object v1, v0, v5

    const-string v1, "Tue"

    aput-object v1, v0, v6

    const-string v1, "Wed"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Thu"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Fri"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Sat"

    aput-object v2, v0, v1

    sput-object v0, Lorg/eclipse/jetty/http/HttpFields;->DAYS:[Ljava/lang/String;

    .line 86
    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Jan"

    aput-object v1, v0, v3

    const-string v1, "Feb"

    aput-object v1, v0, v4

    const-string v1, "Mar"

    aput-object v1, v0, v5

    const-string v1, "Apr"

    aput-object v1, v0, v6

    const-string v1, "May"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "Jun"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Jul"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "Aug"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Sep"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "Oct"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "Nov"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "Dec"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "Jan"

    aput-object v2, v0, v1

    sput-object v0, Lorg/eclipse/jetty/http/HttpFields;->MONTHS:[Ljava/lang/String;

    .line 178
    new-instance v0, Lorg/eclipse/jetty/http/HttpFields$1;

    invoke-direct {v0}, Lorg/eclipse/jetty/http/HttpFields$1;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/http/HttpFields;->__dateGenerator:Ljava/lang/ThreadLocal;

    .line 217
    const/16 v0, 0x16

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss zzz"

    aput-object v1, v0, v3

    const-string v1, "EEE, dd-MMM-yy HH:mm:ss"

    aput-object v1, v0, v4

    const-string v1, "EEE MMM dd HH:mm:ss yyyy"

    aput-object v1, v0, v5

    const-string v1, "EEE, dd MMM yyyy HH:mm:ss"

    aput-object v1, v0, v6

    const-string v1, "EEE dd MMM yyyy HH:mm:ss zzz"

    aput-object v1, v0, v7

    const/4 v1, 0x5

    const-string v2, "EEE dd MMM yyyy HH:mm:ss"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "EEE MMM dd yyyy HH:mm:ss zzz"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "EEE MMM dd yyyy HH:mm:ss"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "EEE MMM-dd-yyyy HH:mm:ss zzz"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "EEE MMM-dd-yyyy HH:mm:ss"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "dd MMM yyyy HH:mm:ss zzz"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "dd MMM yyyy HH:mm:ss"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "dd-MMM-yy HH:mm:ss zzz"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "dd-MMM-yy HH:mm:ss"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "MMM dd HH:mm:ss yyyy zzz"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "MMM dd HH:mm:ss yyyy"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "EEE MMM dd HH:mm:ss yyyy zzz"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "EEE, MMM dd HH:mm:ss yyyy zzz"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "EEE, MMM dd HH:mm:ss yyyy"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "EEE, dd-MMM-yy HH:mm:ss zzz"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "EEE dd-MMM-yy HH:mm:ss zzz"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "EEE dd-MMM-yy HH:mm:ss"

    aput-object v2, v0, v1

    sput-object v0, Lorg/eclipse/jetty/http/HttpFields;->__dateReceiveFmt:[Ljava/lang/String;

    .line 286
    new-instance v0, Lorg/eclipse/jetty/http/HttpFields$2;

    invoke-direct {v0}, Lorg/eclipse/jetty/http/HttpFields$2;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/http/HttpFields;->__dateParser:Ljava/lang/ThreadLocal;

    .line 296
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lorg/eclipse/jetty/http/HttpFields;->formatDate(J)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/HttpFields;->__01Jan1970:Ljava/lang/String;

    .line 297
    new-instance v0, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    sget-object v1, Lorg/eclipse/jetty/http/HttpFields;->__01Jan1970:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpFields;->__01Jan1970_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    .line 298
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lorg/eclipse/jetty/http/HttpFields;->formatCookieDate(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/HttpFields;->__01Jan1970_COOKIE:Ljava/lang/String;

    .line 313
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/http/HttpFields;->__cache:Ljava/util/concurrent/ConcurrentMap;

    .line 314
    const-string v0, "org.eclipse.jetty.http.HttpFields.CACHE"

    const/16 v1, 0x7d0

    invoke-static {v0, v1}, Ljava/lang/Integer;->getInteger(Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lorg/eclipse/jetty/http/HttpFields;->__cacheSize:I

    .line 1173
    new-instance v0, Ljava/lang/Float;

    const-string v1, "1.0"

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpFields;->__one:Ljava/lang/Float;

    .line 1174
    new-instance v0, Ljava/lang/Float;

    const-string v1, "0.0"

    invoke-direct {v0, v1}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/eclipse/jetty/http/HttpFields;->__zero:Ljava/lang/Float;

    .line 1175
    new-instance v0, Lorg/eclipse/jetty/util/StringMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/StringMap;-><init>()V

    sput-object v0, Lorg/eclipse/jetty/http/HttpFields;->__qualities:Lorg/eclipse/jetty/util/StringMap;

    .line 1178
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->__qualities:Lorg/eclipse/jetty/util/StringMap;

    const/4 v1, 0x0

    sget-object v2, Lorg/eclipse/jetty/http/HttpFields;->__one:Ljava/lang/Float;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1179
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->__qualities:Lorg/eclipse/jetty/util/StringMap;

    const-string v1, "1.0"

    sget-object v2, Lorg/eclipse/jetty/http/HttpFields;->__one:Ljava/lang/Float;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1180
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->__qualities:Lorg/eclipse/jetty/util/StringMap;

    const-string v1, "1"

    sget-object v2, Lorg/eclipse/jetty/http/HttpFields;->__one:Ljava/lang/Float;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1181
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->__qualities:Lorg/eclipse/jetty/util/StringMap;

    const-string v1, "0.9"

    new-instance v2, Ljava/lang/Float;

    const-string v3, "0.9"

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1182
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->__qualities:Lorg/eclipse/jetty/util/StringMap;

    const-string v1, "0.8"

    new-instance v2, Ljava/lang/Float;

    const-string v3, "0.8"

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1183
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->__qualities:Lorg/eclipse/jetty/util/StringMap;

    const-string v1, "0.7"

    new-instance v2, Ljava/lang/Float;

    const-string v3, "0.7"

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1184
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->__qualities:Lorg/eclipse/jetty/util/StringMap;

    const-string v1, "0.66"

    new-instance v2, Ljava/lang/Float;

    const-string v3, "0.66"

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1185
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->__qualities:Lorg/eclipse/jetty/util/StringMap;

    const-string v1, "0.6"

    new-instance v2, Ljava/lang/Float;

    const-string v3, "0.6"

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1186
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->__qualities:Lorg/eclipse/jetty/util/StringMap;

    const-string v1, "0.5"

    new-instance v2, Ljava/lang/Float;

    const-string v3, "0.5"

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1187
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->__qualities:Lorg/eclipse/jetty/util/StringMap;

    const-string v1, "0.4"

    new-instance v2, Ljava/lang/Float;

    const-string v3, "0.4"

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1188
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->__qualities:Lorg/eclipse/jetty/util/StringMap;

    const-string v1, "0.33"

    new-instance v2, Ljava/lang/Float;

    const-string v3, "0.33"

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1189
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->__qualities:Lorg/eclipse/jetty/util/StringMap;

    const-string v1, "0.3"

    new-instance v2, Ljava/lang/Float;

    const-string v3, "0.3"

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1190
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->__qualities:Lorg/eclipse/jetty/util/StringMap;

    const-string v1, "0.2"

    new-instance v2, Ljava/lang/Float;

    const-string v3, "0.2"

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1191
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->__qualities:Lorg/eclipse/jetty/util/StringMap;

    const-string v1, "0.1"

    new-instance v2, Ljava/lang/Float;

    const-string v3, "0.1"

    invoke-direct {v2, v3}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1192
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->__qualities:Lorg/eclipse/jetty/util/StringMap;

    const-string v1, "0"

    sget-object v2, Lorg/eclipse/jetty/http/HttpFields;->__zero:Ljava/lang/Float;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1193
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->__qualities:Lorg/eclipse/jetty/util/StringMap;

    const-string v1, "0.0"

    sget-object v2, Lorg/eclipse/jetty/http/HttpFields;->__zero:Ljava/lang/Float;

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/util/StringMap;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1194
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 301
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpFields;->_fields:Ljava/util/ArrayList;

    .line 302
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpFields;->_names:Ljava/util/HashMap;

    .line 310
    return-void
.end method

.method static synthetic access$000()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->DAYS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->MONTHS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->__dateReceiveFmt:[Ljava/lang/String;

    return-object v0
.end method

.method private convertValue(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;
    .locals 6
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 319
    sget-object v4, Lorg/eclipse/jetty/http/HttpFields;->__cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/io/Buffer;

    .line 320
    .local v1, "buffer":Lorg/eclipse/jetty/io/Buffer;
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 336
    .end local v1    # "buffer":Lorg/eclipse/jetty/io/Buffer;
    .local v2, "buffer":Lorg/eclipse/jetty/io/Buffer;
    :goto_0
    return-object v2

    .line 325
    .end local v2    # "buffer":Lorg/eclipse/jetty/io/Buffer;
    .restart local v1    # "buffer":Lorg/eclipse/jetty/io/Buffer;
    :cond_0
    :try_start_0
    new-instance v2, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    const-string v4, "ISO-8859-1"

    invoke-direct {v2, p1, v4}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 327
    .end local v1    # "buffer":Lorg/eclipse/jetty/io/Buffer;
    .restart local v2    # "buffer":Lorg/eclipse/jetty/io/Buffer;
    :try_start_1
    sget v4, Lorg/eclipse/jetty/http/HttpFields;->__cacheSize:I

    if-lez v4, :cond_2

    .line 329
    sget-object v4, Lorg/eclipse/jetty/http/HttpFields;->__cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v4

    sget v5, Lorg/eclipse/jetty/http/HttpFields;->__cacheSize:I

    if-le v4, v5, :cond_1

    .line 330
    sget-object v4, Lorg/eclipse/jetty/http/HttpFields;->__cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4}, Ljava/util/concurrent/ConcurrentMap;->clear()V

    .line 331
    :cond_1
    sget-object v4, Lorg/eclipse/jetty/http/HttpFields;->__cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, p1, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/io/Buffer;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 332
    .local v0, "b":Lorg/eclipse/jetty/io/Buffer;
    if-eqz v0, :cond_2

    .line 333
    move-object v1, v0

    .end local v0    # "b":Lorg/eclipse/jetty/io/Buffer;
    .end local v2    # "buffer":Lorg/eclipse/jetty/io/Buffer;
    .restart local v1    # "buffer":Lorg/eclipse/jetty/io/Buffer;
    :goto_1
    move-object v2, v1

    .line 336
    .end local v1    # "buffer":Lorg/eclipse/jetty/io/Buffer;
    .restart local v2    # "buffer":Lorg/eclipse/jetty/io/Buffer;
    goto :goto_0

    .line 338
    .end local v2    # "buffer":Lorg/eclipse/jetty/io/Buffer;
    .restart local v1    # "buffer":Lorg/eclipse/jetty/io/Buffer;
    :catch_0
    move-exception v3

    .line 340
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    :goto_2
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 338
    .end local v1    # "buffer":Lorg/eclipse/jetty/io/Buffer;
    .end local v3    # "e":Ljava/io/UnsupportedEncodingException;
    .restart local v2    # "buffer":Lorg/eclipse/jetty/io/Buffer;
    :catch_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "buffer":Lorg/eclipse/jetty/io/Buffer;
    .restart local v1    # "buffer":Lorg/eclipse/jetty/io/Buffer;
    goto :goto_2

    .end local v1    # "buffer":Lorg/eclipse/jetty/io/Buffer;
    .restart local v2    # "buffer":Lorg/eclipse/jetty/io/Buffer;
    :cond_2
    move-object v1, v2

    .end local v2    # "buffer":Lorg/eclipse/jetty/io/Buffer;
    .restart local v1    # "buffer":Lorg/eclipse/jetty/io/Buffer;
    goto :goto_1
.end method

.method public static formatCookieDate(J)Ljava/lang/String;
    .locals 2
    .param p0, "date"    # J

    .prologue
    .line 211
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1c

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 212
    .local v0, "buf":Ljava/lang/StringBuilder;
    invoke-static {v0, p0, p1}, Lorg/eclipse/jetty/http/HttpFields;->formatCookieDate(Ljava/lang/StringBuilder;J)V

    .line 213
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatCookieDate(Ljava/lang/StringBuilder;J)V
    .locals 1
    .param p0, "buf"    # Ljava/lang/StringBuilder;
    .param p1, "date"    # J

    .prologue
    .line 202
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->__dateGenerator:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;

    invoke-virtual {v0, p0, p1, p2}, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;->formatCookieDate(Ljava/lang/StringBuilder;J)V

    .line 203
    return-void
.end method

.method public static formatDate(J)Ljava/lang/String;
    .locals 1
    .param p0, "date"    # J

    .prologue
    .line 193
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->__dateGenerator:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;

    invoke-virtual {v0, p0, p1}, Lorg/eclipse/jetty/http/HttpFields$DateGenerator;->formatDate(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getField(Ljava/lang/String;)Lorg/eclipse/jetty/http/HttpFields$Field;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 402
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields;->_names:Ljava/util/HashMap;

    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/http/HttpHeaders;->lookup(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/http/HttpFields$Field;

    return-object v0
.end method

.method private getField(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/http/HttpFields$Field;
    .locals 2
    .param p1, "name"    # Lorg/eclipse/jetty/io/Buffer;

    .prologue
    .line 408
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields;->_names:Ljava/util/HashMap;

    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/http/HttpHeaders;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/http/HttpFields$Field;

    return-object v0
.end method

.method public static getQuality(Ljava/lang/String;)Ljava/lang/Float;
    .locals 9
    .param p0, "value"    # Ljava/lang/String;

    .prologue
    .line 1199
    if-nez p0, :cond_0

    sget-object v7, Lorg/eclipse/jetty/http/HttpFields;->__zero:Ljava/lang/Float;

    .line 1226
    :goto_0
    return-object v7

    .line 1201
    :cond_0
    const-string v7, ";"

    invoke-virtual {p0, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    .line 1202
    .local v4, "qe":I
    add-int/lit8 v5, v4, 0x1

    .end local v4    # "qe":I
    .local v5, "qe":I
    if-ltz v4, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    if-ne v5, v7, :cond_2

    :cond_1
    sget-object v7, Lorg/eclipse/jetty/http/HttpFields;->__one:Ljava/lang/Float;

    goto :goto_0

    .line 1204
    :cond_2
    add-int/lit8 v4, v5, 0x1

    .end local v5    # "qe":I
    .restart local v4    # "qe":I
    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x71

    if-ne v7, v8, :cond_3

    .line 1206
    add-int/lit8 v4, v4, 0x1

    .line 1207
    sget-object v7, Lorg/eclipse/jetty/http/HttpFields;->__qualities:Lorg/eclipse/jetty/util/StringMap;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v4

    invoke-virtual {v7, p0, v4, v8}, Lorg/eclipse/jetty/util/StringMap;->getEntry(Ljava/lang/String;II)Ljava/util/Map$Entry;

    move-result-object v1

    .line 1208
    .local v1, "entry":Ljava/util/Map$Entry;
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    goto :goto_0

    .line 1211
    .end local v1    # "entry":Ljava/util/Map$Entry;
    :cond_3
    new-instance v2, Ljava/util/HashMap;

    const/4 v7, 0x3

    invoke-direct {v2, v7}, Ljava/util/HashMap;-><init>(I)V

    .line 1212
    .local v2, "params":Ljava/util/HashMap;
    invoke-static {p0, v2}, Lorg/eclipse/jetty/http/HttpFields;->valueParameters(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    .line 1213
    const-string v7, "q"

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1214
    .local v6, "qs":Ljava/lang/String;
    sget-object v7, Lorg/eclipse/jetty/http/HttpFields;->__qualities:Lorg/eclipse/jetty/util/StringMap;

    invoke-virtual {v7, v6}, Lorg/eclipse/jetty/util/StringMap;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    .line 1215
    .local v3, "q":Ljava/lang/Float;
    if-nez v3, :cond_4

    .line 1219
    :try_start_0
    new-instance v3, Ljava/lang/Float;

    .end local v3    # "q":Ljava/lang/Float;
    invoke-direct {v3, v6}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .restart local v3    # "q":Ljava/lang/Float;
    :cond_4
    :goto_1
    move-object v7, v3

    .line 1226
    goto :goto_0

    .line 1221
    .end local v3    # "q":Ljava/lang/Float;
    :catch_0
    move-exception v0

    .line 1223
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lorg/eclipse/jetty/http/HttpFields;->__one:Ljava/lang/Float;

    .restart local v3    # "q":Ljava/lang/Float;
    goto :goto_1
.end method

.method public static parseDate(Ljava/lang/String;)J
    .locals 2
    .param p0, "date"    # Ljava/lang/String;

    .prologue
    .line 282
    sget-object v0, Lorg/eclipse/jetty/http/HttpFields;->__dateParser:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/http/HttpFields$DateParser;

    invoke-virtual {v0, p0}, Lorg/eclipse/jetty/http/HttpFields$DateParser;->parse(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static qualityList(Ljava/util/Enumeration;)Ljava/util/List;
    .locals 15
    .param p0, "e"    # Ljava/util/Enumeration;

    .prologue
    const/4 v14, 0x0

    .line 1238
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-nez v10, :cond_2

    :cond_0
    sget-object v9, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 1280
    :cond_1
    :goto_0
    return-object v9

    .line 1240
    :cond_2
    const/4 v3, 0x0

    .line 1241
    .local v3, "list":Ljava/lang/Object;
    const/4 v6, 0x0

    .line 1244
    .end local v3    # "list":Ljava/lang/Object;
    :cond_3
    :goto_1
    invoke-interface {p0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 1246
    invoke-interface {p0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1247
    .local v8, "v":Ljava/lang/String;
    invoke-static {v8}, Lorg/eclipse/jetty/http/HttpFields;->getQuality(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v4

    .line 1249
    .local v4, "q":Ljava/lang/Float;
    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v10

    float-to-double v10, v10

    const-wide v12, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v10, v10, v12

    if-ltz v10, :cond_3

    .line 1251
    invoke-static {v3, v8}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 1252
    .restart local v3    # "list":Ljava/lang/Object;
    invoke-static {v6, v4}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .local v6, "qual":Ljava/lang/Object;
    goto :goto_1

    .line 1256
    .end local v3    # "list":Ljava/lang/Object;
    .end local v4    # "q":Ljava/lang/Float;
    .end local v6    # "qual":Ljava/lang/Object;
    .end local v8    # "v":Ljava/lang/String;
    :cond_4
    invoke-static {v3, v14}, Lorg/eclipse/jetty/util/LazyList;->getList(Ljava/lang/Object;Z)Ljava/util/List;

    move-result-object v9

    .line 1257
    .local v9, "vl":Ljava/util/List;
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x2

    if-lt v10, v11, :cond_1

    .line 1259
    invoke-static {v6, v14}, Lorg/eclipse/jetty/util/LazyList;->getList(Ljava/lang/Object;Z)Ljava/util/List;

    move-result-object v5

    .line 1262
    .local v5, "ql":Ljava/util/List;
    sget-object v2, Lorg/eclipse/jetty/http/HttpFields;->__zero:Ljava/lang/Float;

    .line 1263
    .local v2, "last":Ljava/lang/Float;
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "i":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_2
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-lez v1, :cond_6

    .line 1265
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    .line 1266
    .restart local v4    # "q":Ljava/lang/Float;
    invoke-virtual {v2, v4}, Ljava/lang/Float;->compareTo(Ljava/lang/Float;)I

    move-result v10

    if-lez v10, :cond_5

    .line 1268
    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .line 1269
    .local v7, "tmp":Ljava/lang/Object;
    add-int/lit8 v10, v0, 0x1

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v0, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1270
    add-int/lit8 v10, v0, 0x1

    invoke-interface {v9, v10, v7}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1271
    add-int/lit8 v10, v0, 0x1

    invoke-interface {v5, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v5, v0, v10}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1272
    add-int/lit8 v10, v0, 0x1

    invoke-interface {v5, v10, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1273
    sget-object v2, Lorg/eclipse/jetty/http/HttpFields;->__zero:Ljava/lang/Float;

    .line 1274
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    move v1, v0

    .line 1275
    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 1277
    .end local v1    # "i":I
    .end local v7    # "tmp":Ljava/lang/Object;
    .restart local v0    # "i":I
    :cond_5
    move-object v2, v4

    move v1, v0

    .line 1278
    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_2

    .line 1279
    .end local v1    # "i":I
    .end local v4    # "q":Ljava/lang/Float;
    .restart local v0    # "i":I
    :cond_6
    invoke-interface {v5}, Ljava/util/List;->clear()V

    goto :goto_0
.end method

.method public static valueParameters(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;
    .locals 10
    .param p0, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v9, 0x0

    .line 1149
    if-nez p0, :cond_1

    const/4 p0, 0x0

    .line 1169
    .end local p0    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object p0

    .line 1151
    .restart local p0    # "value":Ljava/lang/String;
    :cond_1
    const/16 v6, 0x3b

    invoke-virtual {p0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 1152
    .local v0, "i":I
    if-ltz v0, :cond_0

    .line 1153
    if-nez p1, :cond_2

    invoke-virtual {p0, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 1155
    :cond_2
    new-instance v3, Lorg/eclipse/jetty/util/QuotedStringTokenizer;

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, ";"

    const/4 v8, 0x1

    invoke-direct {v3, v6, v7, v9, v8}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1156
    .local v3, "tok1":Ljava/util/StringTokenizer;
    :cond_3
    :goto_1
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1158
    invoke-virtual {v3}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v5

    .line 1159
    .local v5, "token":Ljava/lang/String;
    new-instance v4, Lorg/eclipse/jetty/util/QuotedStringTokenizer;

    const-string v6, "= "

    invoke-direct {v4, v5, v6}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1160
    .local v4, "tok2":Ljava/util/StringTokenizer;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 1162
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    .line 1163
    .local v1, "paramName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1164
    .local v2, "paramVal":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 1165
    :cond_4
    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1169
    .end local v1    # "paramName":Ljava/lang/String;
    .end local v2    # "paramVal":Ljava/lang/String;
    .end local v4    # "tok2":Ljava/util/StringTokenizer;
    .end local v5    # "token":Ljava/lang/String;
    :cond_5
    invoke-virtual {p0, v9, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    goto :goto_0
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 699
    if-nez p2, :cond_0

    .line 704
    :goto_0
    return-void

    .line 701
    :cond_0
    sget-object v2, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    invoke-virtual {v2, p1}, Lorg/eclipse/jetty/http/HttpHeaders;->lookup(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    .line 702
    .local v0, "n":Lorg/eclipse/jetty/io/Buffer;
    invoke-direct {p0, p2}, Lorg/eclipse/jetty/http/HttpFields;->convertValue(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    .line 703
    .local v1, "v":Lorg/eclipse/jetty/io/Buffer;
    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/http/HttpFields;->add(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    goto :goto_0
.end method

.method public add(Lorg/eclipse/jetty/http/HttpFields;)V
    .locals 4
    .param p1, "fields"    # Lorg/eclipse/jetty/http/HttpFields;

    .prologue
    .line 1120
    if-nez p1, :cond_1

    .line 1130
    :cond_0
    return-void

    .line 1122
    :cond_1
    invoke-virtual {p1}, Lorg/eclipse/jetty/http/HttpFields;->getFieldNames()Ljava/util/Enumeration;

    move-result-object v0

    .line 1123
    .local v0, "e":Ljava/util/Enumeration;
    :cond_2
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1125
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1126
    .local v1, "name":Ljava/lang/String;
    invoke-virtual {p1, v1}, Lorg/eclipse/jetty/http/HttpFields;->getValues(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v2

    .line 1127
    .local v2, "values":Ljava/util/Enumeration;
    :goto_0
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1128
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v1, v3}, Lorg/eclipse/jetty/http/HttpFields;->add(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public add(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V
    .locals 4
    .param p1, "name"    # Lorg/eclipse/jetty/io/Buffer;
    .param p2, "value"    # Lorg/eclipse/jetty/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 718
    if-nez p2, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "null value"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 720
    :cond_0
    instance-of v2, p1, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-nez v2, :cond_1

    .line 721
    sget-object v2, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    invoke-virtual {v2, p1}, Lorg/eclipse/jetty/http/HttpHeaders;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object p1

    .line 722
    :cond_1
    invoke-interface {p1}, Lorg/eclipse/jetty/io/Buffer;->asImmutableBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object p1

    .line 724
    instance-of v2, p2, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-nez v2, :cond_2

    sget-object v2, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    invoke-virtual {v2, p1}, Lorg/eclipse/jetty/http/HttpHeaders;->getOrdinal(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v2

    invoke-static {v2}, Lorg/eclipse/jetty/http/HttpHeaderValues;->hasKnownValues(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 725
    sget-object v2, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    invoke-virtual {v2, p2}, Lorg/eclipse/jetty/http/HttpHeaderValues;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object p2

    .line 726
    :cond_2
    invoke-interface {p2}, Lorg/eclipse/jetty/io/Buffer;->asImmutableBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object p2

    .line 728
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpFields;->_names:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/http/HttpFields$Field;

    .line 729
    .local v0, "field":Lorg/eclipse/jetty/http/HttpFields$Field;
    const/4 v1, 0x0

    .line 730
    .local v1, "last":Lorg/eclipse/jetty/http/HttpFields$Field;
    :goto_0
    if-eqz v0, :cond_3

    .line 732
    move-object v1, v0

    .line 733
    invoke-static {v0}, Lorg/eclipse/jetty/http/HttpFields$Field;->access$700(Lorg/eclipse/jetty/http/HttpFields$Field;)Lorg/eclipse/jetty/http/HttpFields$Field;

    move-result-object v0

    goto :goto_0

    .line 737
    :cond_3
    new-instance v0, Lorg/eclipse/jetty/http/HttpFields$Field;

    .end local v0    # "field":Lorg/eclipse/jetty/http/HttpFields$Field;
    const/4 v2, 0x0

    invoke-direct {v0, p1, p2, v2}, Lorg/eclipse/jetty/http/HttpFields$Field;-><init>(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/http/HttpFields$1;)V

    .line 738
    .restart local v0    # "field":Lorg/eclipse/jetty/http/HttpFields$Field;
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpFields;->_fields:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 741
    if-eqz v1, :cond_4

    .line 742
    invoke-static {v1, v0}, Lorg/eclipse/jetty/http/HttpFields$Field;->access$702(Lorg/eclipse/jetty/http/HttpFields$Field;Lorg/eclipse/jetty/http/HttpFields$Field;)Lorg/eclipse/jetty/http/HttpFields$Field;

    .line 745
    :goto_1
    return-void

    .line 744
    :cond_4
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpFields;->_names:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method

.method public addDateField(Ljava/lang/String;J)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "date"    # J

    .prologue
    .line 917
    invoke-static {p2, p3}, Lorg/eclipse/jetty/http/HttpFields;->formatDate(J)Ljava/lang/String;

    move-result-object v0

    .line 918
    .local v0, "d":Ljava/lang/String;
    sget-object v3, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    invoke-virtual {v3, p1}, Lorg/eclipse/jetty/http/HttpHeaders;->lookup(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    .line 919
    .local v1, "n":Lorg/eclipse/jetty/io/Buffer;
    new-instance v2, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-direct {v2, v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    .line 920
    .local v2, "v":Lorg/eclipse/jetty/io/Buffer;
    invoke-virtual {p0, v1, v2}, Lorg/eclipse/jetty/http/HttpFields;->add(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 921
    return-void
.end method

.method public addLongField(Ljava/lang/String;J)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 863
    sget-object v2, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    invoke-virtual {v2, p1}, Lorg/eclipse/jetty/http/HttpHeaders;->lookup(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    .line 864
    .local v0, "n":Lorg/eclipse/jetty/io/Buffer;
    invoke-static {p2, p3}, Lorg/eclipse/jetty/io/BufferUtil;->toBuffer(J)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    .line 865
    .local v1, "v":Lorg/eclipse/jetty/io/Buffer;
    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/http/HttpFields;->add(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 866
    return-void
.end method

.method public addLongField(Lorg/eclipse/jetty/io/Buffer;J)V
    .locals 1
    .param p1, "name"    # Lorg/eclipse/jetty/io/Buffer;
    .param p2, "value"    # J

    .prologue
    .line 877
    invoke-static {p2, p3}, Lorg/eclipse/jetty/io/BufferUtil;->toBuffer(J)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    .line 878
    .local v0, "v":Lorg/eclipse/jetty/io/Buffer;
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/http/HttpFields;->add(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 879
    return-void
.end method

.method public addSetCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZZI)V
    .locals 15
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "domain"    # Ljava/lang/String;
    .param p4, "path"    # Ljava/lang/String;
    .param p5, "maxAge"    # J
    .param p7, "comment"    # Ljava/lang/String;
    .param p8, "isSecure"    # Z
    .param p9, "isHttpOnly"    # Z
    .param p10, "version"    # I

    .prologue
    .line 967
    const-string v3, "\"\\\n\r\t\u000c\u0008%+ ;="

    .line 970
    .local v3, "delim":Ljava/lang/String;
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_1

    .line 971
    :cond_0
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string v12, "Bad cookie name"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 974
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v11, 0x80

    invoke-direct {v2, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 976
    .local v2, "buf":Ljava/lang/StringBuilder;
    move-object/from16 v0, p1

    invoke-static {v2, v0, v3}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/String;)Z

    .line 977
    const/16 v11, 0x3d

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 978
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 979
    .local v9, "start":Ljava/lang/String;
    const/4 v5, 0x0

    .line 980
    .local v5, "hasDomain":Z
    const/4 v6, 0x0

    .line 982
    .local v6, "hasPath":Z
    if-eqz p2, :cond_2

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_2

    .line 983
    move-object/from16 v0, p2

    invoke-static {v2, v0, v3}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/String;)Z

    .line 985
    :cond_2
    if-eqz p7, :cond_3

    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_3

    .line 987
    const-string v11, ";Comment="

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 988
    move-object/from16 v0, p7

    invoke-static {v2, v0, v3}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/String;)Z

    .line 991
    :cond_3
    if-eqz p4, :cond_4

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_4

    .line 993
    const/4 v6, 0x1

    .line 994
    const-string v11, ";Path="

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 995
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_e

    .line 996
    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1000
    :cond_4
    :goto_0
    if-eqz p3, :cond_5

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_5

    .line 1002
    const/4 v5, 0x1

    .line 1003
    const-string v11, ";Domain="

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1004
    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, p3

    invoke-virtual {v0, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11, v3}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/String;)Z

    .line 1007
    :cond_5
    const-wide/16 v11, 0x0

    cmp-long v11, p5, v11

    if-ltz v11, :cond_6

    .line 1010
    const-string v11, ";Expires="

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1011
    const-wide/16 v11, 0x0

    cmp-long v11, p5, v11

    if-nez v11, :cond_f

    .line 1012
    sget-object v11, Lorg/eclipse/jetty/http/HttpFields;->__01Jan1970_COOKIE:Ljava/lang/String;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1016
    :goto_1
    if-lez p10, :cond_6

    .line 1018
    const-string v11, ";Max-Age="

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1019
    move-wide/from16 v0, p5

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1023
    :cond_6
    if-eqz p8, :cond_7

    .line 1024
    const-string v11, ";Secure"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1025
    :cond_7
    if-eqz p9, :cond_8

    .line 1026
    const-string v11, ";HttpOnly"

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1028
    :cond_8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1031
    .local v8, "name_value_params":Ljava/lang/String;
    const-string v11, "Set-Cookie"

    invoke-direct {p0, v11}, Lorg/eclipse/jetty/http/HttpFields;->getField(Ljava/lang/String;)Lorg/eclipse/jetty/http/HttpFields$Field;

    move-result-object v4

    .line 1032
    .local v4, "field":Lorg/eclipse/jetty/http/HttpFields$Field;
    const/4 v7, 0x0

    .line 1033
    .local v7, "last":Lorg/eclipse/jetty/http/HttpFields$Field;
    :goto_2
    if-eqz v4, :cond_d

    .line 1035
    invoke-static {v4}, Lorg/eclipse/jetty/http/HttpFields$Field;->access$600(Lorg/eclipse/jetty/http/HttpFields$Field;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v11

    if-nez v11, :cond_10

    const/4 v10, 0x0

    .line 1036
    .local v10, "val":Ljava/lang/String;
    :goto_3
    if-eqz v10, :cond_12

    invoke-virtual {v10, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 1039
    if-nez v5, :cond_9

    const-string v11, "Domain"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_a

    :cond_9
    if-eqz v5, :cond_12

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Domain="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_12

    :cond_a
    if-nez v6, :cond_b

    const-string v11, "Path"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_c

    :cond_b
    if-eqz v6, :cond_12

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Path="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 v0, p4

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_12

    .line 1042
    :cond_c
    iget-object v11, p0, Lorg/eclipse/jetty/http/HttpFields;->_fields:Ljava/util/ArrayList;

    invoke-virtual {v11, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1043
    if-nez v7, :cond_11

    .line 1044
    iget-object v11, p0, Lorg/eclipse/jetty/http/HttpFields;->_names:Ljava/util/HashMap;

    sget-object v12, Lorg/eclipse/jetty/http/HttpHeaders;->SET_COOKIE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-static {v4}, Lorg/eclipse/jetty/http/HttpFields$Field;->access$700(Lorg/eclipse/jetty/http/HttpFields$Field;)Lorg/eclipse/jetty/http/HttpFields$Field;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1054
    .end local v10    # "val":Ljava/lang/String;
    :cond_d
    :goto_4
    sget-object v11, Lorg/eclipse/jetty/http/HttpHeaders;->SET_COOKIE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    new-instance v12, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-direct {v12, v8}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v11, v12}, Lorg/eclipse/jetty/http/HttpFields;->add(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 1057
    sget-object v11, Lorg/eclipse/jetty/http/HttpHeaders;->EXPIRES_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    sget-object v12, Lorg/eclipse/jetty/http/HttpFields;->__01Jan1970_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {p0, v11, v12}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 1058
    return-void

    .line 998
    .end local v4    # "field":Lorg/eclipse/jetty/http/HttpFields$Field;
    .end local v7    # "last":Lorg/eclipse/jetty/http/HttpFields$Field;
    .end local v8    # "name_value_params":Ljava/lang/String;
    :cond_e
    move-object/from16 v0, p4

    invoke-static {v2, v0, v3}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/Appendable;Ljava/lang/String;Ljava/lang/String;)Z

    goto/16 :goto_0

    .line 1014
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    const-wide/16 v13, 0x3e8

    mul-long v13, v13, p5

    add-long/2addr v11, v13

    invoke-static {v2, v11, v12}, Lorg/eclipse/jetty/http/HttpFields;->formatCookieDate(Ljava/lang/StringBuilder;J)V

    goto/16 :goto_1

    .line 1035
    .restart local v4    # "field":Lorg/eclipse/jetty/http/HttpFields$Field;
    .restart local v7    # "last":Lorg/eclipse/jetty/http/HttpFields$Field;
    .restart local v8    # "name_value_params":Ljava/lang/String;
    :cond_10
    invoke-static {v4}, Lorg/eclipse/jetty/http/HttpFields$Field;->access$600(Lorg/eclipse/jetty/http/HttpFields$Field;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    goto/16 :goto_3

    .line 1046
    .restart local v10    # "val":Ljava/lang/String;
    :cond_11
    invoke-static {v4}, Lorg/eclipse/jetty/http/HttpFields$Field;->access$700(Lorg/eclipse/jetty/http/HttpFields$Field;)Lorg/eclipse/jetty/http/HttpFields$Field;

    move-result-object v11

    invoke-static {v7, v11}, Lorg/eclipse/jetty/http/HttpFields$Field;->access$702(Lorg/eclipse/jetty/http/HttpFields$Field;Lorg/eclipse/jetty/http/HttpFields$Field;)Lorg/eclipse/jetty/http/HttpFields$Field;

    goto :goto_4

    .line 1050
    :cond_12
    move-object v7, v4

    .line 1051
    invoke-static {v4}, Lorg/eclipse/jetty/http/HttpFields$Field;->access$700(Lorg/eclipse/jetty/http/HttpFields$Field;)Lorg/eclipse/jetty/http/HttpFields$Field;

    move-result-object v4

    .line 1052
    goto/16 :goto_2
.end method

.method public addSetCookie(Lorg/eclipse/jetty/http/HttpCookie;)V
    .locals 11
    .param p1, "cookie"    # Lorg/eclipse/jetty/http/HttpCookie;

    .prologue
    .line 931
    invoke-virtual {p1}, Lorg/eclipse/jetty/http/HttpCookie;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lorg/eclipse/jetty/http/HttpCookie;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/eclipse/jetty/http/HttpCookie;->getDomain()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/eclipse/jetty/http/HttpCookie;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lorg/eclipse/jetty/http/HttpCookie;->getMaxAge()I

    move-result v0

    int-to-long v5, v0

    invoke-virtual {p1}, Lorg/eclipse/jetty/http/HttpCookie;->getComment()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lorg/eclipse/jetty/http/HttpCookie;->isSecure()Z

    move-result v8

    invoke-virtual {p1}, Lorg/eclipse/jetty/http/HttpCookie;->isHttpOnly()Z

    move-result v9

    invoke-virtual {p1}, Lorg/eclipse/jetty/http/HttpCookie;->getVersion()I

    move-result v10

    move-object v0, p0

    invoke-virtual/range {v0 .. v10}, Lorg/eclipse/jetty/http/HttpFields;->addSetCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZZI)V

    .line 941
    return-void
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 1107
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields;->_fields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1108
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields;->_names:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 1109
    return-void
.end method

.method public containsKey(Ljava/lang/String;)Z
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 420
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields;->_names:Ljava/util/HashMap;

    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/http/HttpHeaders;->lookup(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsKey(Lorg/eclipse/jetty/io/Buffer;)Z
    .locals 2
    .param p1, "name"    # Lorg/eclipse/jetty/io/Buffer;

    .prologue
    .line 414
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields;->_names:Ljava/util/HashMap;

    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/http/HttpHeaders;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public get(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;
    .locals 2
    .param p1, "name"    # Lorg/eclipse/jetty/io/Buffer;

    .prologue
    .line 455
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/http/HttpFields;->getField(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/http/HttpFields$Field;

    move-result-object v0

    .line 456
    .local v0, "field":Lorg/eclipse/jetty/http/HttpFields$Field;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Lorg/eclipse/jetty/http/HttpFields$Field;->access$600(Lorg/eclipse/jetty/http/HttpFields$Field;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    goto :goto_0
.end method

.method public getDateField(Ljava/lang/String;)J
    .locals 8
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const-wide/16 v5, -0x1

    .line 813
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/http/HttpFields;->getField(Ljava/lang/String;)Lorg/eclipse/jetty/http/HttpFields$Field;

    move-result-object v2

    .line 814
    .local v2, "field":Lorg/eclipse/jetty/http/HttpFields$Field;
    if-nez v2, :cond_1

    move-wide v0, v5

    .line 824
    :cond_0
    :goto_0
    return-wide v0

    .line 817
    :cond_1
    invoke-static {v2}, Lorg/eclipse/jetty/http/HttpFields$Field;->access$600(Lorg/eclipse/jetty/http/HttpFields$Field;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v4

    invoke-static {v4}, Lorg/eclipse/jetty/io/BufferUtil;->to8859_1_String(Lorg/eclipse/jetty/io/Buffer;)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    invoke-static {v4, v7}, Lorg/eclipse/jetty/http/HttpFields;->valueParameters(Ljava/lang/String;Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    .line 818
    .local v3, "val":Ljava/lang/String;
    if-nez v3, :cond_2

    move-wide v0, v5

    .line 819
    goto :goto_0

    .line 821
    :cond_2
    sget-object v4, Lorg/eclipse/jetty/http/HttpFields;->__dateParser:Ljava/lang/ThreadLocal;

    invoke-virtual {v4}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/eclipse/jetty/http/HttpFields$DateParser;

    invoke-virtual {v4, v3}, Lorg/eclipse/jetty/http/HttpFields$DateParser;->parse(Ljava/lang/String;)J

    move-result-wide v0

    .line 822
    .local v0, "date":J
    cmp-long v4, v0, v5

    if-nez v4, :cond_0

    .line 823
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot convert date: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public getField(I)Lorg/eclipse/jetty/http/HttpFields$Field;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 396
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields;->_fields:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/http/HttpFields$Field;

    return-object v0
.end method

.method public getFieldNames()Ljava/util/Enumeration;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 367
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpFields;->_names:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v0

    .line 368
    .local v0, "buffers":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    new-instance v1, Lorg/eclipse/jetty/http/HttpFields$3;

    invoke-direct {v1, p0, v0}, Lorg/eclipse/jetty/http/HttpFields$3;-><init>(Lorg/eclipse/jetty/http/HttpFields;Ljava/util/Enumeration;)V

    return-object v1
.end method

.method public getFieldNamesCollection()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 350
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpFields;->_fields:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 352
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpFields;->_fields:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/http/HttpFields$Field;

    .line 354
    .local v0, "f":Lorg/eclipse/jetty/http/HttpFields$Field;
    if-eqz v0, :cond_0

    .line 355
    invoke-static {v0}, Lorg/eclipse/jetty/http/HttpFields$Field;->access$500(Lorg/eclipse/jetty/http/HttpFields$Field;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v3

    invoke-static {v3}, Lorg/eclipse/jetty/io/BufferUtil;->to8859_1_String(Lorg/eclipse/jetty/io/Buffer;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 357
    .end local v0    # "f":Lorg/eclipse/jetty/http/HttpFields$Field;
    :cond_1
    return-object v2
.end method

.method public getLongField(Ljava/lang/String;)J
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 786
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/http/HttpFields;->getField(Ljava/lang/String;)Lorg/eclipse/jetty/http/HttpFields$Field;

    move-result-object v0

    .line 787
    .local v0, "field":Lorg/eclipse/jetty/http/HttpFields$Field;
    if-nez v0, :cond_0

    const-wide/16 v1, -0x1

    :goto_0
    return-wide v1

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpFields$Field;->getLongValue()J

    move-result-wide v1

    goto :goto_0
.end method

.method public getLongField(Lorg/eclipse/jetty/io/Buffer;)J
    .locals 3
    .param p1, "name"    # Lorg/eclipse/jetty/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 800
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/http/HttpFields;->getField(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/http/HttpFields$Field;

    move-result-object v0

    .line 801
    .local v0, "field":Lorg/eclipse/jetty/http/HttpFields$Field;
    if-nez v0, :cond_0

    const-wide/16 v1, -0x1

    :goto_0
    return-wide v1

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpFields$Field;->getLongValue()J

    move-result-wide v1

    goto :goto_0
.end method

.method public getStringField(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 431
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/http/HttpFields;->getField(Ljava/lang/String;)Lorg/eclipse/jetty/http/HttpFields$Field;

    move-result-object v0

    .line 432
    .local v0, "field":Lorg/eclipse/jetty/http/HttpFields$Field;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpFields$Field;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getStringField(Lorg/eclipse/jetty/io/Buffer;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Lorg/eclipse/jetty/io/Buffer;

    .prologue
    .line 443
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/http/HttpFields;->getField(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/http/HttpFields$Field;

    move-result-object v0

    .line 444
    .local v0, "field":Lorg/eclipse/jetty/http/HttpFields$Field;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpFields$Field;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getValues(Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 492
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/http/HttpFields;->getField(Ljava/lang/String;)Lorg/eclipse/jetty/http/HttpFields$Field;

    move-result-object v1

    .line 493
    .local v1, "field":Lorg/eclipse/jetty/http/HttpFields$Field;
    if-nez v1, :cond_0

    .line 495
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 496
    .local v0, "empty":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v2

    .line 499
    .end local v0    # "empty":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/eclipse/jetty/http/HttpFields$4;

    invoke-direct {v2, p0, v1}, Lorg/eclipse/jetty/http/HttpFields$4;-><init>(Lorg/eclipse/jetty/http/HttpFields;Lorg/eclipse/jetty/http/HttpFields$Field;)V

    goto :goto_0
.end method

.method public getValues(Ljava/lang/String;Ljava/lang/String;)Ljava/util/Enumeration;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "separators"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 565
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/http/HttpFields;->getValues(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v0

    .line 566
    .local v0, "e":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    if-nez v0, :cond_0

    .line 567
    const/4 v1, 0x0

    .line 568
    :goto_0
    return-object v1

    :cond_0
    new-instance v1, Lorg/eclipse/jetty/http/HttpFields$6;

    invoke-direct {v1, p0, v0, p2}, Lorg/eclipse/jetty/http/HttpFields$6;-><init>(Lorg/eclipse/jetty/http/HttpFields;Ljava/util/Enumeration;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getValues(Lorg/eclipse/jetty/io/Buffer;)Ljava/util/Enumeration;
    .locals 3
    .param p1, "name"    # Lorg/eclipse/jetty/io/Buffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jetty/io/Buffer;",
            ")",
            "Ljava/util/Enumeration",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 527
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/http/HttpFields;->getField(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/http/HttpFields$Field;

    move-result-object v1

    .line 528
    .local v1, "field":Lorg/eclipse/jetty/http/HttpFields$Field;
    if-nez v1, :cond_0

    .line 530
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    .line 531
    .local v0, "empty":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Ljava/util/Collections;->enumeration(Ljava/util/Collection;)Ljava/util/Enumeration;

    move-result-object v2

    .line 534
    .end local v0    # "empty":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    return-object v2

    :cond_0
    new-instance v2, Lorg/eclipse/jetty/http/HttpFields$5;

    invoke-direct {v2, p0, v1}, Lorg/eclipse/jetty/http/HttpFields$5;-><init>(Lorg/eclipse/jetty/http/HttpFields;Lorg/eclipse/jetty/http/HttpFields$Field;)V

    goto :goto_0
.end method

.method public getValuesCollection(Ljava/lang/String;)Ljava/util/Collection;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 469
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/http/HttpFields;->getField(Ljava/lang/String;)Lorg/eclipse/jetty/http/HttpFields$Field;

    move-result-object v0

    .line 470
    .local v0, "field":Lorg/eclipse/jetty/http/HttpFields$Field;
    if-nez v0, :cond_1

    .line 471
    const/4 v1, 0x0

    .line 480
    :cond_0
    return-object v1

    .line 473
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 475
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    if-eqz v0, :cond_0

    .line 477
    invoke-virtual {v0}, Lorg/eclipse/jetty/http/HttpFields$Field;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 478
    invoke-static {v0}, Lorg/eclipse/jetty/http/HttpFields$Field;->access$700(Lorg/eclipse/jetty/http/HttpFields$Field;)Lorg/eclipse/jetty/http/HttpFields$Field;

    move-result-object v0

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 605
    if-nez p2, :cond_0

    .line 606
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/http/HttpFields;->remove(Ljava/lang/String;)V

    .line 613
    :goto_0
    return-void

    .line 609
    :cond_0
    sget-object v2, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    invoke-virtual {v2, p1}, Lorg/eclipse/jetty/http/HttpHeaders;->lookup(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    .line 610
    .local v0, "n":Lorg/eclipse/jetty/io/Buffer;
    invoke-direct {p0, p2}, Lorg/eclipse/jetty/http/HttpFields;->convertValue(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    .line 611
    .local v1, "v":Lorg/eclipse/jetty/io/Buffer;
    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    goto :goto_0
.end method

.method public put(Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 662
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<*>;"
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 664
    :cond_0
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/http/HttpFields;->remove(Ljava/lang/String;)V

    .line 685
    :cond_1
    return-void

    .line 667
    :cond_2
    sget-object v3, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    invoke-virtual {v3, p1}, Lorg/eclipse/jetty/http/HttpHeaders;->lookup(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    .line 669
    .local v1, "n":Lorg/eclipse/jetty/io/Buffer;
    const/4 v3, 0x0

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 670
    .local v2, "v":Ljava/lang/Object;
    if-eqz v2, :cond_4

    .line 671
    sget-object v3, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/eclipse/jetty/http/HttpHeaderValues;->lookup(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 675
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1

    .line 677
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 678
    .local v0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 679
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 681
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 682
    if-eqz v2, :cond_3

    sget-object v3, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/eclipse/jetty/http/HttpHeaderValues;->lookup(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v3

    invoke-virtual {p0, v1, v3}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    goto :goto_1

    .line 673
    .end local v0    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_4
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/http/HttpFields;->remove(Lorg/eclipse/jetty/io/Buffer;)V

    goto :goto_0
.end method

.method public put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Lorg/eclipse/jetty/io/Buffer;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 624
    sget-object v2, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    invoke-virtual {v2, p1}, Lorg/eclipse/jetty/http/HttpHeaders;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    .line 625
    .local v0, "n":Lorg/eclipse/jetty/io/Buffer;
    invoke-direct {p0, p2}, Lorg/eclipse/jetty/http/HttpFields;->convertValue(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    .line 626
    .local v1, "v":Lorg/eclipse/jetty/io/Buffer;
    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 627
    return-void
.end method

.method public put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V
    .locals 2
    .param p1, "name"    # Lorg/eclipse/jetty/io/Buffer;
    .param p2, "value"    # Lorg/eclipse/jetty/io/Buffer;

    .prologue
    .line 638
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/http/HttpFields;->remove(Lorg/eclipse/jetty/io/Buffer;)V

    .line 639
    if-nez p2, :cond_0

    .line 651
    :goto_0
    return-void

    .line 642
    :cond_0
    instance-of v1, p1, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-nez v1, :cond_1

    .line 643
    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/http/HttpHeaders;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object p1

    .line 644
    :cond_1
    instance-of v1, p2, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-nez v1, :cond_2

    .line 645
    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    invoke-virtual {v1, p2}, Lorg/eclipse/jetty/http/HttpHeaderValues;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->asImmutableBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object p2

    .line 648
    :cond_2
    new-instance v0, Lorg/eclipse/jetty/http/HttpFields$Field;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lorg/eclipse/jetty/http/HttpFields$Field;-><init>(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/http/HttpFields$1;)V

    .line 649
    .local v0, "field":Lorg/eclipse/jetty/http/HttpFields$Field;
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpFields;->_fields:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 650
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpFields;->_names:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public putDateField(Ljava/lang/String;J)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "date"    # J

    .prologue
    .line 904
    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/http/HttpHeaders;->lookup(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    .line 905
    .local v0, "n":Lorg/eclipse/jetty/io/Buffer;
    invoke-virtual {p0, v0, p2, p3}, Lorg/eclipse/jetty/http/HttpFields;->putDateField(Lorg/eclipse/jetty/io/Buffer;J)V

    .line 906
    return-void
.end method

.method public putDateField(Lorg/eclipse/jetty/io/Buffer;J)V
    .locals 2
    .param p1, "name"    # Lorg/eclipse/jetty/io/Buffer;
    .param p2, "date"    # J

    .prologue
    .line 890
    invoke-static {p2, p3}, Lorg/eclipse/jetty/http/HttpFields;->formatDate(J)Ljava/lang/String;

    move-result-object v0

    .line 891
    .local v0, "d":Ljava/lang/String;
    new-instance v1, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    invoke-direct {v1, v0}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    .line 892
    .local v1, "v":Lorg/eclipse/jetty/io/Buffer;
    invoke-virtual {p0, p1, v1}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 893
    return-void
.end method

.method public putLongField(Ljava/lang/String;J)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 849
    sget-object v2, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    invoke-virtual {v2, p1}, Lorg/eclipse/jetty/http/HttpHeaders;->lookup(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    .line 850
    .local v0, "n":Lorg/eclipse/jetty/io/Buffer;
    invoke-static {p2, p3}, Lorg/eclipse/jetty/io/BufferUtil;->toBuffer(J)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v1

    .line 851
    .local v1, "v":Lorg/eclipse/jetty/io/Buffer;
    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 852
    return-void
.end method

.method public putLongField(Lorg/eclipse/jetty/io/Buffer;J)V
    .locals 1
    .param p1, "name"    # Lorg/eclipse/jetty/io/Buffer;
    .param p2, "value"    # J

    .prologue
    .line 836
    invoke-static {p2, p3}, Lorg/eclipse/jetty/io/BufferUtil;->toBuffer(J)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    .line 837
    .local v0, "v":Lorg/eclipse/jetty/io/Buffer;
    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 838
    return-void
.end method

.method public putTo(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 3
    .param p1, "buffer"    # Lorg/eclipse/jetty/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1063
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpFields;->_fields:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1065
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpFields;->_fields:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/http/HttpFields$Field;

    .line 1066
    .local v0, "field":Lorg/eclipse/jetty/http/HttpFields$Field;
    if-eqz v0, :cond_0

    .line 1067
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpFields$Field;->putTo(Lorg/eclipse/jetty/io/Buffer;)V

    .line 1063
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1069
    .end local v0    # "field":Lorg/eclipse/jetty/http/HttpFields$Field;
    :cond_1
    invoke-static {p1}, Lorg/eclipse/jetty/io/BufferUtil;->putCRLF(Lorg/eclipse/jetty/io/Buffer;)V

    .line 1070
    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 755
    sget-object v0, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpHeaders;->lookup(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/http/HttpFields;->remove(Lorg/eclipse/jetty/io/Buffer;)V

    .line 756
    return-void
.end method

.method public remove(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 2
    .param p1, "name"    # Lorg/eclipse/jetty/io/Buffer;

    .prologue
    .line 766
    instance-of v1, p1, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    if-nez v1, :cond_0

    .line 767
    sget-object v1, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/http/HttpHeaders;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object p1

    .line 768
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpFields;->_names:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/http/HttpFields$Field;

    .line 769
    .local v0, "field":Lorg/eclipse/jetty/http/HttpFields$Field;
    :goto_0
    if-eqz v0, :cond_1

    .line 771
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpFields;->_fields:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 772
    invoke-static {v0}, Lorg/eclipse/jetty/http/HttpFields$Field;->access$700(Lorg/eclipse/jetty/http/HttpFields$Field;)Lorg/eclipse/jetty/http/HttpFields$Field;

    move-result-object v0

    goto :goto_0

    .line 774
    :cond_1
    return-void
.end method

.method public size()I
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpFields;->_fields:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 1077
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1078
    .local v0, "buffer":Ljava/lang/StringBuffer;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpFields;->_fields:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 1080
    iget-object v5, p0, Lorg/eclipse/jetty/http/HttpFields;->_fields:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jetty/http/HttpFields$Field;

    .line 1081
    .local v2, "field":Lorg/eclipse/jetty/http/HttpFields$Field;
    if-eqz v2, :cond_2

    .line 1083
    invoke-virtual {v2}, Lorg/eclipse/jetty/http/HttpFields$Field;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1084
    .local v4, "tmp":Ljava/lang/String;
    if-eqz v4, :cond_0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1085
    :cond_0
    const-string v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1086
    invoke-virtual {v2}, Lorg/eclipse/jetty/http/HttpFields$Field;->getValue()Ljava/lang/String;

    move-result-object v4

    .line 1087
    if-eqz v4, :cond_1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1088
    :cond_1
    const-string v5, "\r\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1078
    .end local v4    # "tmp":Ljava/lang/String;
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1091
    .end local v2    # "field":Lorg/eclipse/jetty/http/HttpFields$Field;
    :cond_3
    const-string v5, "\r\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 1092
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 1097
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .end local v3    # "i":I
    :goto_1
    return-object v5

    .line 1094
    :catch_0
    move-exception v1

    .line 1096
    .local v1, "e":Ljava/lang/Exception;
    sget-object v5, Lorg/eclipse/jetty/http/HttpFields;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v5, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    .line 1097
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_1
.end method
