.class public Lorg/eclipse/jetty/server/ResourceCache;
.super Ljava/lang/Object;
.source "ResourceCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/server/ResourceCache$Content;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private final _cache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/server/ResourceCache$Content;",
            ">;"
        }
    .end annotation
.end field

.field private final _cachedFiles:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final _cachedSize:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final _etags:Z

.field private final _factory:Lorg/eclipse/jetty/util/resource/ResourceFactory;

.field private _maxCacheSize:I

.field private _maxCachedFileSize:I

.field private _maxCachedFiles:I

.field private final _mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

.field private final _parent:Lorg/eclipse/jetty/server/ResourceCache;

.field private _useFileMappedBuffer:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 53
    const-class v0, Lorg/eclipse/jetty/server/ResourceCache;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/server/ResourceCache;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/server/ResourceCache;Lorg/eclipse/jetty/util/resource/ResourceFactory;Lorg/eclipse/jetty/http/MimeTypes;ZZ)V
    .locals 1
    .param p1, "parent"    # Lorg/eclipse/jetty/server/ResourceCache;
    .param p2, "factory"    # Lorg/eclipse/jetty/util/resource/ResourceFactory;
    .param p3, "mimeTypes"    # Lorg/eclipse/jetty/http/MimeTypes;
    .param p4, "useFileMappedBuffer"    # Z
    .param p5, "etags"    # Z

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/server/ResourceCache;->_useFileMappedBuffer:Z

    .line 64
    const/high16 v0, 0x400000

    iput v0, p0, Lorg/eclipse/jetty/server/ResourceCache;->_maxCachedFileSize:I

    .line 65
    const/16 v0, 0x800

    iput v0, p0, Lorg/eclipse/jetty/server/ResourceCache;->_maxCachedFiles:I

    .line 66
    const/high16 v0, 0x2000000

    iput v0, p0, Lorg/eclipse/jetty/server/ResourceCache;->_maxCacheSize:I

    .line 74
    iput-object p2, p0, Lorg/eclipse/jetty/server/ResourceCache;->_factory:Lorg/eclipse/jetty/util/resource/ResourceFactory;

    .line 75
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache;->_cache:Ljava/util/concurrent/ConcurrentMap;

    .line 76
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache;->_cachedSize:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 77
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache;->_cachedFiles:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 78
    iput-object p3, p0, Lorg/eclipse/jetty/server/ResourceCache;->_mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

    .line 79
    iput-object p1, p0, Lorg/eclipse/jetty/server/ResourceCache;->_parent:Lorg/eclipse/jetty/server/ResourceCache;

    .line 80
    iput-boolean p5, p0, Lorg/eclipse/jetty/server/ResourceCache;->_etags:Z

    .line 81
    iput-boolean p4, p0, Lorg/eclipse/jetty/server/ResourceCache;->_useFileMappedBuffer:Z

    .line 82
    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/jetty/server/ResourceCache;)Lorg/eclipse/jetty/http/MimeTypes;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/server/ResourceCache;

    .prologue
    .line 51
    iget-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache;->_mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

    return-object v0
.end method

.method static synthetic access$100(Lorg/eclipse/jetty/server/ResourceCache;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/server/ResourceCache;

    .prologue
    .line 51
    iget-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache;->_cachedSize:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$200(Lorg/eclipse/jetty/server/ResourceCache;)Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/server/ResourceCache;

    .prologue
    .line 51
    iget-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache;->_cachedFiles:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$300(Lorg/eclipse/jetty/server/ResourceCache;)Z
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/server/ResourceCache;

    .prologue
    .line 51
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/ResourceCache;->_etags:Z

    return v0
.end method

.method static synthetic access$400(Lorg/eclipse/jetty/server/ResourceCache;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/server/ResourceCache;

    .prologue
    .line 51
    iget-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache;->_cache:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method static synthetic access$500()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lorg/eclipse/jetty/server/ResourceCache;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method private load(Ljava/lang/String;Lorg/eclipse/jetty/util/resource/Resource;)Lorg/eclipse/jetty/http/HttpContent;
    .locals 6
    .param p1, "pathInContext"    # Ljava/lang/String;
    .param p2, "resource"    # Lorg/eclipse/jetty/util/resource/Resource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 223
    const/4 v1, 0x0

    .line 225
    .local v1, "content":Lorg/eclipse/jetty/server/ResourceCache$Content;
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lorg/eclipse/jetty/util/resource/Resource;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 226
    :cond_0
    const/4 v2, 0x0

    .line 248
    :goto_0
    return-object v2

    .line 229
    :cond_1
    invoke-virtual {p2}, Lorg/eclipse/jetty/util/resource/Resource;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/server/ResourceCache;->isCacheable(Lorg/eclipse/jetty/util/resource/Resource;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 232
    new-instance v1, Lorg/eclipse/jetty/server/ResourceCache$Content;

    .end local v1    # "content":Lorg/eclipse/jetty/server/ResourceCache$Content;
    invoke-direct {v1, p0, p1, p2}, Lorg/eclipse/jetty/server/ResourceCache$Content;-><init>(Lorg/eclipse/jetty/server/ResourceCache;Ljava/lang/String;Lorg/eclipse/jetty/util/resource/Resource;)V

    .line 235
    .restart local v1    # "content":Lorg/eclipse/jetty/server/ResourceCache$Content;
    invoke-direct {p0}, Lorg/eclipse/jetty/server/ResourceCache;->shrinkCache()V

    .line 238
    iget-object v2, p0, Lorg/eclipse/jetty/server/ResourceCache;->_cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/ResourceCache$Content;

    .line 239
    .local v0, "added":Lorg/eclipse/jetty/server/ResourceCache$Content;
    if-eqz v0, :cond_2

    .line 241
    invoke-virtual {v1}, Lorg/eclipse/jetty/server/ResourceCache$Content;->invalidate()V

    .line 242
    move-object v1, v0

    :cond_2
    move-object v2, v1

    .line 245
    goto :goto_0

    .line 248
    .end local v0    # "added":Lorg/eclipse/jetty/server/ResourceCache$Content;
    :cond_3
    new-instance v2, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;

    iget-object v3, p0, Lorg/eclipse/jetty/server/ResourceCache;->_mimeTypes:Lorg/eclipse/jetty/http/MimeTypes;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/eclipse/jetty/http/MimeTypes;->getMimeByExtension(Ljava/lang/String;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v3

    invoke-virtual {p0}, Lorg/eclipse/jetty/server/ResourceCache;->getMaxCachedFileSize()I

    move-result v4

    iget-boolean v5, p0, Lorg/eclipse/jetty/server/ResourceCache;->_etags:Z

    invoke-direct {v2, p2, v3, v4, v5}, Lorg/eclipse/jetty/http/HttpContent$ResourceAsHttpContent;-><init>(Lorg/eclipse/jetty/util/resource/Resource;Lorg/eclipse/jetty/io/Buffer;IZ)V

    goto :goto_0
.end method

.method private shrinkCache()V
    .locals 5

    .prologue
    .line 256
    :cond_0
    iget-object v3, p0, Lorg/eclipse/jetty/server/ResourceCache;->_cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v3

    if-lez v3, :cond_5

    iget-object v3, p0, Lorg/eclipse/jetty/server/ResourceCache;->_cachedFiles:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    iget v4, p0, Lorg/eclipse/jetty/server/ResourceCache;->_maxCachedFiles:I

    if-gt v3, v4, :cond_1

    iget-object v3, p0, Lorg/eclipse/jetty/server/ResourceCache;->_cachedSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    iget v4, p0, Lorg/eclipse/jetty/server/ResourceCache;->_maxCacheSize:I

    if-le v3, v4, :cond_5

    .line 259
    :cond_1
    new-instance v2, Ljava/util/TreeSet;

    new-instance v3, Lorg/eclipse/jetty/server/ResourceCache$1;

    invoke-direct {v3, p0}, Lorg/eclipse/jetty/server/ResourceCache$1;-><init>(Lorg/eclipse/jetty/server/ResourceCache;)V

    invoke-direct {v2, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 276
    .local v2, "sorted":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lorg/eclipse/jetty/server/ResourceCache$Content;>;"
    iget-object v3, p0, Lorg/eclipse/jetty/server/ResourceCache;->_cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/ResourceCache$Content;

    .line 277
    .local v0, "content":Lorg/eclipse/jetty/server/ResourceCache$Content;
    invoke-interface {v2, v0}, Ljava/util/SortedSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 280
    .end local v0    # "content":Lorg/eclipse/jetty/server/ResourceCache$Content;
    :cond_2
    invoke-interface {v2}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/ResourceCache$Content;

    .line 282
    .restart local v0    # "content":Lorg/eclipse/jetty/server/ResourceCache$Content;
    iget-object v3, p0, Lorg/eclipse/jetty/server/ResourceCache;->_cachedFiles:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    iget v4, p0, Lorg/eclipse/jetty/server/ResourceCache;->_maxCachedFiles:I

    if-gt v3, v4, :cond_4

    iget-object v3, p0, Lorg/eclipse/jetty/server/ResourceCache;->_cachedSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    iget v4, p0, Lorg/eclipse/jetty/server/ResourceCache;->_maxCacheSize:I

    if-le v3, v4, :cond_0

    .line 284
    :cond_4
    iget-object v3, p0, Lorg/eclipse/jetty/server/ResourceCache;->_cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/ResourceCache$Content;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne v0, v3, :cond_3

    .line 285
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/ResourceCache$Content;->invalidate()V

    goto :goto_1

    .line 288
    .end local v0    # "content":Lorg/eclipse/jetty/server/ResourceCache$Content;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "sorted":Ljava/util/SortedSet;, "Ljava/util/SortedSet<Lorg/eclipse/jetty/server/ResourceCache$Content;>;"
    :cond_5
    return-void
.end method


# virtual methods
.method public flushCache()V
    .locals 4

    .prologue
    .line 156
    iget-object v3, p0, Lorg/eclipse/jetty/server/ResourceCache;->_cache:Ljava/util/concurrent/ConcurrentMap;

    if-eqz v3, :cond_2

    .line 158
    :cond_0
    iget-object v3, p0, Lorg/eclipse/jetty/server/ResourceCache;->_cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->size()I

    move-result v3

    if-lez v3, :cond_2

    .line 160
    iget-object v3, p0, Lorg/eclipse/jetty/server/ResourceCache;->_cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 162
    .local v2, "path":Ljava/lang/String;
    iget-object v3, p0, Lorg/eclipse/jetty/server/ResourceCache;->_cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v2}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/ResourceCache$Content;

    .line 163
    .local v0, "content":Lorg/eclipse/jetty/server/ResourceCache$Content;
    if-eqz v0, :cond_1

    .line 164
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/ResourceCache$Content;->invalidate()V

    goto :goto_0

    .line 168
    .end local v0    # "content":Lorg/eclipse/jetty/server/ResourceCache$Content;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "path":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method public getCachedFiles()I
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache;->_cachedFiles:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getCachedSize()I
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lorg/eclipse/jetty/server/ResourceCache;->_cachedSize:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method protected getDirectBuffer(Lorg/eclipse/jetty/util/resource/Resource;)Lorg/eclipse/jetty/io/Buffer;
    .locals 8
    .param p1, "resource"    # Lorg/eclipse/jetty/util/resource/Resource;

    .prologue
    const/4 v4, 0x0

    .line 319
    :try_start_0
    iget-boolean v5, p0, Lorg/eclipse/jetty/server/ResourceCache;->_useFileMappedBuffer:Z

    if-eqz v5, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jetty/util/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 320
    new-instance v0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;

    invoke-virtual {p1}, Lorg/eclipse/jetty/util/resource/Resource;->getFile()Ljava/io/File;

    move-result-object v5

    invoke-direct {v0, v5}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;-><init>(Ljava/io/File;)V

    .line 337
    :goto_0
    return-object v0

    .line 322
    :cond_0
    invoke-virtual {p1}, Lorg/eclipse/jetty/util/resource/Resource;->length()J

    move-result-wide v5

    long-to-int v3, v5

    .line 323
    .local v3, "len":I
    if-gez v3, :cond_1

    .line 325
    sget-object v5, Lorg/eclipse/jetty/server/ResourceCache;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid resource: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v4

    .line 326
    goto :goto_0

    .line 328
    :cond_1
    new-instance v0, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;

    invoke-direct {v0, v3}, Lorg/eclipse/jetty/io/nio/DirectNIOBuffer;-><init>(I)V

    .line 329
    .local v0, "buffer":Lorg/eclipse/jetty/io/Buffer;
    invoke-virtual {p1}, Lorg/eclipse/jetty/util/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 330
    .local v2, "is":Ljava/io/InputStream;
    invoke-interface {v0, v2, v3}, Lorg/eclipse/jetty/io/Buffer;->readFrom(Ljava/io/InputStream;I)I

    .line 331
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 334
    .end local v0    # "buffer":Lorg/eclipse/jetty/io/Buffer;
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "len":I
    :catch_0
    move-exception v1

    .line 336
    .local v1, "e":Ljava/io/IOException;
    sget-object v5, Lorg/eclipse/jetty/server/ResourceCache;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v5, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    move-object v0, v4

    .line 337
    goto :goto_0
.end method

.method protected getIndirectBuffer(Lorg/eclipse/jetty/util/resource/Resource;)Lorg/eclipse/jetty/io/Buffer;
    .locals 8
    .param p1, "resource"    # Lorg/eclipse/jetty/util/resource/Resource;

    .prologue
    const/4 v4, 0x0

    .line 295
    :try_start_0
    invoke-virtual {p1}, Lorg/eclipse/jetty/util/resource/Resource;->length()J

    move-result-wide v5

    long-to-int v3, v5

    .line 296
    .local v3, "len":I
    if-gez v3, :cond_0

    .line 298
    sget-object v5, Lorg/eclipse/jetty/server/ResourceCache;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "invalid resource: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v0, v4

    .line 310
    .end local v3    # "len":I
    :goto_0
    return-object v0

    .line 301
    .restart local v3    # "len":I
    :cond_0
    new-instance v0, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;

    invoke-direct {v0, v3}, Lorg/eclipse/jetty/io/nio/IndirectNIOBuffer;-><init>(I)V

    .line 302
    .local v0, "buffer":Lorg/eclipse/jetty/io/Buffer;
    invoke-virtual {p1}, Lorg/eclipse/jetty/util/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    .line 303
    .local v2, "is":Ljava/io/InputStream;
    invoke-interface {v0, v2, v3}, Lorg/eclipse/jetty/io/Buffer;->readFrom(Ljava/io/InputStream;I)I

    .line 304
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 307
    .end local v0    # "buffer":Lorg/eclipse/jetty/io/Buffer;
    .end local v2    # "is":Ljava/io/InputStream;
    .end local v3    # "len":I
    :catch_0
    move-exception v1

    .line 309
    .local v1, "e":Ljava/io/IOException;
    sget-object v5, Lorg/eclipse/jetty/server/ResourceCache;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v5, v1}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/Throwable;)V

    move-object v0, v4

    .line 310
    goto :goto_0
.end method

.method public getMaxCacheSize()I
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lorg/eclipse/jetty/server/ResourceCache;->_maxCacheSize:I

    return v0
.end method

.method public getMaxCachedFileSize()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lorg/eclipse/jetty/server/ResourceCache;->_maxCachedFileSize:I

    return v0
.end method

.method public getMaxCachedFiles()I
    .locals 1

    .prologue
    .line 128
    iget v0, p0, Lorg/eclipse/jetty/server/ResourceCache;->_maxCachedFiles:I

    return v0
.end method

.method protected isCacheable(Lorg/eclipse/jetty/util/resource/Resource;)Z
    .locals 4
    .param p1, "resource"    # Lorg/eclipse/jetty/util/resource/Resource;

    .prologue
    .line 213
    invoke-virtual {p1}, Lorg/eclipse/jetty/util/resource/Resource;->length()J

    move-result-wide v0

    .line 216
    .local v0, "len":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iget v2, p0, Lorg/eclipse/jetty/server/ResourceCache;->_maxCachedFileSize:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    iget v2, p0, Lorg/eclipse/jetty/server/ResourceCache;->_maxCacheSize:I

    int-to-long v2, v2

    cmp-long v2, v0, v2

    if-gez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isUseFileMappedBuffer()Z
    .locals 1

    .prologue
    .line 144
    iget-boolean v0, p0, Lorg/eclipse/jetty/server/ResourceCache;->_useFileMappedBuffer:Z

    return v0
.end method

.method public lookup(Ljava/lang/String;)Lorg/eclipse/jetty/http/HttpContent;
    .locals 5
    .param p1, "pathInContext"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 185
    iget-object v4, p0, Lorg/eclipse/jetty/server/ResourceCache;->_cache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v4, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/server/ResourceCache$Content;

    .line 186
    .local v0, "content":Lorg/eclipse/jetty/server/ResourceCache$Content;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/ResourceCache$Content;->isValid()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 203
    .end local v0    # "content":Lorg/eclipse/jetty/server/ResourceCache$Content;
    :goto_0
    return-object v0

    .line 190
    .restart local v0    # "content":Lorg/eclipse/jetty/server/ResourceCache$Content;
    :cond_0
    iget-object v4, p0, Lorg/eclipse/jetty/server/ResourceCache;->_factory:Lorg/eclipse/jetty/util/resource/ResourceFactory;

    invoke-interface {v4, p1}, Lorg/eclipse/jetty/util/resource/ResourceFactory;->getResource(Ljava/lang/String;)Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v3

    .line 191
    .local v3, "resource":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-direct {p0, p1, v3}, Lorg/eclipse/jetty/server/ResourceCache;->load(Ljava/lang/String;Lorg/eclipse/jetty/util/resource/Resource;)Lorg/eclipse/jetty/http/HttpContent;

    move-result-object v2

    .line 192
    .local v2, "loaded":Lorg/eclipse/jetty/http/HttpContent;
    if-eqz v2, :cond_1

    move-object v0, v2

    .line 193
    goto :goto_0

    .line 196
    :cond_1
    iget-object v4, p0, Lorg/eclipse/jetty/server/ResourceCache;->_parent:Lorg/eclipse/jetty/server/ResourceCache;

    if-eqz v4, :cond_2

    .line 198
    iget-object v4, p0, Lorg/eclipse/jetty/server/ResourceCache;->_parent:Lorg/eclipse/jetty/server/ResourceCache;

    invoke-virtual {v4, p1}, Lorg/eclipse/jetty/server/ResourceCache;->lookup(Ljava/lang/String;)Lorg/eclipse/jetty/http/HttpContent;

    move-result-object v1

    .line 199
    .local v1, "httpContent":Lorg/eclipse/jetty/http/HttpContent;
    if-eqz v1, :cond_2

    move-object v0, v1

    .line 200
    goto :goto_0

    .line 203
    .end local v1    # "httpContent":Lorg/eclipse/jetty/http/HttpContent;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMaxCacheSize(I)V
    .locals 0
    .param p1, "maxCacheSize"    # I

    .prologue
    .line 118
    iput p1, p0, Lorg/eclipse/jetty/server/ResourceCache;->_maxCacheSize:I

    .line 119
    invoke-direct {p0}, Lorg/eclipse/jetty/server/ResourceCache;->shrinkCache()V

    .line 120
    return-void
.end method

.method public setMaxCachedFileSize(I)V
    .locals 0
    .param p1, "maxCachedFileSize"    # I

    .prologue
    .line 105
    iput p1, p0, Lorg/eclipse/jetty/server/ResourceCache;->_maxCachedFileSize:I

    .line 106
    invoke-direct {p0}, Lorg/eclipse/jetty/server/ResourceCache;->shrinkCache()V

    .line 107
    return-void
.end method

.method public setMaxCachedFiles(I)V
    .locals 0
    .param p1, "maxCachedFiles"    # I

    .prologue
    .line 137
    iput p1, p0, Lorg/eclipse/jetty/server/ResourceCache;->_maxCachedFiles:I

    .line 138
    invoke-direct {p0}, Lorg/eclipse/jetty/server/ResourceCache;->shrinkCache()V

    .line 139
    return-void
.end method

.method public setUseFileMappedBuffer(Z)V
    .locals 0
    .param p1, "useFileMappedBuffer"    # Z

    .prologue
    .line 150
    iput-boolean p1, p0, Lorg/eclipse/jetty/server/ResourceCache;->_useFileMappedBuffer:Z

    .line 151
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ResourceCache["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/ResourceCache;->_parent:Lorg/eclipse/jetty/server/ResourceCache;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/server/ResourceCache;->_factory:Lorg/eclipse/jetty/util/resource/ResourceFactory;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]@"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
