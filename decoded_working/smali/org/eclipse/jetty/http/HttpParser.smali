.class public Lorg/eclipse/jetty/http/HttpParser;
.super Ljava/lang/Object;
.source "HttpParser.java"

# interfaces
.implements Lorg/eclipse/jetty/http/Parser;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/http/HttpParser$EventHandler;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;

.field public static final STATE_CHUNK:I = 0x6

.field public static final STATE_CHUNKED_CONTENT:I = 0x3

.field public static final STATE_CHUNK_PARAMS:I = 0x5

.field public static final STATE_CHUNK_SIZE:I = 0x4

.field public static final STATE_CONTENT:I = 0x2

.field public static final STATE_END:I = 0x0

.field public static final STATE_END0:I = -0x8

.field public static final STATE_END1:I = -0x7

.field public static final STATE_EOF_CONTENT:I = 0x1

.field public static final STATE_FIELD0:I = -0xd

.field public static final STATE_FIELD2:I = -0x6

.field public static final STATE_HEADER:I = -0x5

.field public static final STATE_HEADER_IN_NAME:I = -0x3

.field public static final STATE_HEADER_IN_VALUE:I = -0x1

.field public static final STATE_HEADER_NAME:I = -0x4

.field public static final STATE_HEADER_VALUE:I = -0x2

.field public static final STATE_SEEKING_EOF:I = 0x7

.field public static final STATE_SPACE1:I = -0xc

.field public static final STATE_SPACE2:I = -0x9

.field public static final STATE_START:I = -0xe

.field public static final STATE_STATUS:I = -0xb

.field public static final STATE_URI:I = -0xa


# instance fields
.field private _body:Lorg/eclipse/jetty/io/Buffer;

.field private _buffer:Lorg/eclipse/jetty/io/Buffer;

.field private final _buffers:Lorg/eclipse/jetty/io/Buffers;

.field private _cached:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

.field protected _chunkLength:I

.field protected _chunkPosition:I

.field protected _contentLength:J

.field protected _contentPosition:J

.field protected final _contentView:Lorg/eclipse/jetty/io/View;

.field private final _endp:Lorg/eclipse/jetty/io/EndPoint;

.field protected _eol:B

.field private _forceContentBuffer:Z

.field private final _handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

.field private _headResponse:Z

.field private _header:Lorg/eclipse/jetty/io/Buffer;

.field protected _length:I

.field private _multiLineValue:Ljava/lang/String;

.field private _persistent:Z

.field private _responseStatus:I

.field protected _state:I

.field private final _tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

.field private final _tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-class v0, Lorg/eclipse/jetty/http/HttpParser;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/http/HttpParser;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/http/HttpParser$EventHandler;)V
    .locals 2
    .param p1, "buffer"    # Lorg/eclipse/jetty/io/Buffer;
    .param p2, "handler"    # Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    .prologue
    const/4 v1, 0x0

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Lorg/eclipse/jetty/io/View;

    invoke-direct {v0}, Lorg/eclipse/jetty/io/View;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    .line 80
    const/16 v0, -0xe

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 95
    iput-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    .line 96
    iput-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    .line 97
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    .line 98
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 99
    iput-object p2, p0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    .line 101
    new-instance v0, Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/io/View$CaseInsensitive;-><init>(Lorg/eclipse/jetty/io/Buffer;)V

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    .line 102
    new-instance v0, Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/io/View$CaseInsensitive;-><init>(Lorg/eclipse/jetty/io/Buffer;)V

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    .line 103
    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/io/Buffers;Lorg/eclipse/jetty/io/EndPoint;Lorg/eclipse/jetty/http/HttpParser$EventHandler;)V
    .locals 1
    .param p1, "buffers"    # Lorg/eclipse/jetty/io/Buffers;
    .param p2, "endp"    # Lorg/eclipse/jetty/io/EndPoint;
    .param p3, "handler"    # Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance v0, Lorg/eclipse/jetty/io/View;

    invoke-direct {v0}, Lorg/eclipse/jetty/io/View;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    .line 80
    const/16 v0, -0xe

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 114
    iput-object p1, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    .line 115
    iput-object p2, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    .line 116
    iput-object p3, p0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    .line 117
    new-instance v0, Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-direct {v0}, Lorg/eclipse/jetty/io/View$CaseInsensitive;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    .line 118
    new-instance v0, Lorg/eclipse/jetty/io/View$CaseInsensitive;

    invoke-direct {v0}, Lorg/eclipse/jetty/io/View$CaseInsensitive;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    .line 119
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1223
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/View;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1224
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/View;->length()I

    move-result v1

    .line 1235
    :cond_0
    :goto_0
    return v1

    .line 1226
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/EndPoint;->isBlocking()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1228
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    instance-of v0, v0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;

    if-eqz v0, :cond_0

    .line 1229
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    check-cast v0, Lorg/eclipse/jetty/io/bio/StreamEndPoint;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/bio/StreamEndPoint;->getInputStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    .line 1234
    :cond_3
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->parseNext()I

    .line 1235
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    invoke-virtual {v0}, Lorg/eclipse/jetty/io/View;->length()I

    move-result v1

    goto :goto_0
.end method

.method public blockForContent(J)Lorg/eclipse/jetty/io/Buffer;
    .locals 4
    .param p1, "maxIdleTime"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x7

    .line 1179
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    invoke-virtual {v2}, Lorg/eclipse/jetty/io/View;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 1180
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    .line 1214
    :cond_0
    :goto_0
    return-object v1

    .line 1182
    :cond_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->getState()I

    move-result v2

    if-lez v2, :cond_0

    invoke-virtual {p0, v3}, Lorg/eclipse/jetty/http/HttpParser;->isState(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1187
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->parseNext()I

    .line 1190
    :cond_2
    :goto_1
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    invoke-virtual {v2}, Lorg/eclipse/jetty/io/View;->length()I

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/http/HttpParser;->isState(I)Z

    move-result v2

    if-nez v2, :cond_4

    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lorg/eclipse/jetty/http/HttpParser;->isState(I)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/EndPoint;->isOpen()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1192
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/EndPoint;->isBlocking()Z

    move-result v2

    if-nez v2, :cond_3

    .line 1194
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->parseNext()I

    move-result v2

    if-gtz v2, :cond_2

    .line 1197
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v2, p1, p2}, Lorg/eclipse/jetty/io/EndPoint;->blockReadable(J)Z

    move-result v2

    if-nez v2, :cond_3

    .line 1199
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    .line 1200
    new-instance v1, Lorg/eclipse/jetty/io/EofException;

    const-string v2, "timeout"

    invoke-direct {v1, v2}, Lorg/eclipse/jetty/io/EofException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1207
    :catch_0
    move-exception v0

    .line 1210
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    .line 1211
    throw v0

    .line 1204
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->parseNext()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1214
    :cond_4
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    invoke-virtual {v2}, Lorg/eclipse/jetty/io/View;->length()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    goto :goto_0
.end method

.method protected fill()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1007
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-nez v2, :cond_0

    .line 1008
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->getHeaderBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 1011
    :cond_0
    iget v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-lez v2, :cond_1

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1013
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    iput-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 1014
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    .line 1054
    :goto_0
    return v1

    .line 1018
    :cond_1
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-ne v2, v3, :cond_5

    iget v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-lez v2, :cond_5

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v2

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_forceContentBuffer:Z

    if-nez v2, :cond_2

    iget-wide v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    iget-wide v4, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    sub-long/2addr v2, v4

    iget-object v4, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v4}, Lorg/eclipse/jetty/io/Buffer;->capacity()I

    move-result v4

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-lez v2, :cond_5

    :cond_2
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    if-nez v2, :cond_3

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    if-eqz v2, :cond_5

    .line 1020
    :cond_3
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    if-nez v2, :cond_4

    .line 1021
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffers;->getBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    .line 1022
    :cond_4
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    iput-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 1026
    :cond_5
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    if-eqz v2, :cond_b

    .line 1029
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    if-eq v2, v3, :cond_6

    iget v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-lez v2, :cond_7

    .line 1031
    :cond_6
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->compact()V

    .line 1035
    :cond_7
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v2

    if-nez v2, :cond_9

    .line 1037
    sget-object v2, Lorg/eclipse/jetty/http/HttpParser;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v3, "HttpParser Full for {} "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1038
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    .line 1039
    new-instance v3, Lorg/eclipse/jetty/http/HttpException;

    const/16 v4, 0x19d

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Request Entity Too Large: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v6, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    if-ne v2, v6, :cond_8

    const-string v2, "body"

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v4, v2}, Lorg/eclipse/jetty/http/HttpException;-><init>(ILjava/lang/String;)V

    throw v3

    :cond_8
    const-string v2, "head"

    goto :goto_1

    .line 1044
    :cond_9
    :try_start_0
    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/EndPoint;->fill(Lorg/eclipse/jetty/io/Buffer;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1045
    .local v1, "filled":I
    goto/16 :goto_0

    .line 1047
    .end local v1    # "filled":I
    :catch_0
    move-exception v0

    .line 1049
    .local v0, "e":Ljava/io/IOException;
    sget-object v2, Lorg/eclipse/jetty/http/HttpParser;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/Throwable;)V

    .line 1050
    instance-of v2, v0, Lorg/eclipse/jetty/io/EofException;

    if-eqz v2, :cond_a

    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    throw v0

    .restart local v0    # "e":Ljava/io/IOException;
    :cond_a
    new-instance v2, Lorg/eclipse/jetty/io/EofException;

    invoke-direct {v2, v0}, Lorg/eclipse/jetty/io/EofException;-><init>(Ljava/lang/Throwable;)V

    move-object v0, v2

    goto :goto_2

    .line 1054
    .end local v0    # "e":Ljava/io/IOException;
    :cond_b
    const/4 v1, -0x1

    goto/16 :goto_0
.end method

.method public getBodyBuffer()Lorg/eclipse/jetty/io/Buffer;
    .locals 1

    .prologue
    .line 1164
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    return-object v0
.end method

.method public getContentLength()J
    .locals 2

    .prologue
    .line 124
    iget-wide v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    return-wide v0
.end method

.method public getContentRead()J
    .locals 2

    .prologue
    .line 130
    iget-wide v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    return-wide v0
.end method

.method public getHeaderBuffer()Lorg/eclipse/jetty/io/Buffer;
    .locals 2

    .prologue
    .line 1152
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-nez v0, :cond_0

    .line 1154
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffers;->getHeader()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v0

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    .line 1155
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(Lorg/eclipse/jetty/io/Buffer;)V

    .line 1156
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(Lorg/eclipse/jetty/io/Buffer;)V

    .line 1158
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    return-object v0
.end method

.method public getState()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    return v0
.end method

.method public inContentState()Z
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public inHeaderState()Z
    .locals 1

    .prologue
    .line 157
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isChunking()Z
    .locals 4

    .prologue
    .line 163
    iget-wide v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    const-wide/16 v2, -0x2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isComplete()Z
    .locals 1

    .prologue
    .line 175
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/http/HttpParser;->isState(I)Z

    move-result v0

    return v0
.end method

.method public isIdle()Z
    .locals 1

    .prologue
    .line 169
    const/16 v0, -0xe

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/http/HttpParser;->isState(I)Z

    move-result v0

    return v0
.end method

.method public isMoreInBuffer()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPersistent()Z
    .locals 1

    .prologue
    .line 195
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    return v0
.end method

.method public isState(I)Z
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 189
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public parse()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 214
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-nez v0, :cond_0

    .line 215
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->reset()V

    .line 216
    :cond_0
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    const/16 v1, -0xe

    if-eq v0, v1, :cond_1

    .line 217
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "!START"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 220
    :cond_1
    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-eqz v0, :cond_2

    .line 221
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->parseNext()I

    move-result v0

    if-gez v0, :cond_1

    .line 223
    :cond_2
    return-void
.end method

.method public parseAvailable()Z
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 235
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->parseNext()I

    move-result v3

    if-lez v3, :cond_0

    move v0, v1

    .line 238
    .local v0, "progress":Z
    :goto_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->isComplete()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v3}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v3

    if-lez v3, :cond_2

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    invoke-virtual {v3}, Lorg/eclipse/jetty/io/View;->hasContent()Z

    move-result v3

    if-nez v3, :cond_2

    .line 240
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->parseNext()I

    move-result v3

    if-lez v3, :cond_1

    move v3, v1

    :goto_1
    or-int/2addr v0, v3

    goto :goto_0

    .end local v0    # "progress":Z
    :cond_0
    move v0, v2

    .line 235
    goto :goto_0

    .restart local v0    # "progress":Z
    :cond_1
    move v3, v2

    .line 240
    goto :goto_1

    .line 242
    :cond_2
    return v0
.end method

.method public parseNext()I
    .locals 31
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    const/16 v19, 0x0

    .line 257
    .local v19, "progress":I
    :try_start_0
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    move/from16 v26, v0

    if-nez v26, :cond_0

    .line 258
    const/16 v26, 0x0

    .line 990
    :goto_0
    return v26

    .line 260
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    if-nez v26, :cond_1

    .line 261
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpParser;->getHeaderBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 264
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    move/from16 v26, v0

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    move-wide/from16 v28, v0

    cmp-long v26, v26, v28

    if-nez v26, :cond_2

    .line 266
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 267
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    move-wide/from16 v27, v0

    invoke-virtual/range {v26 .. v28}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->messageComplete(J)V

    .line 268
    const/16 v26, 0x1

    goto :goto_0

    .line 271
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->length()I
    :try_end_0
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v17

    .line 274
    .local v17, "length":I
    if-nez v17, :cond_4

    .line 276
    const/4 v11, -0x1

    .line 277
    .local v11, "filled":I
    const/4 v10, 0x0

    .line 280
    .local v10, "ex":Ljava/io/IOException;
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpParser;->fill()I

    move-result v11

    .line 281
    sget-object v26, Lorg/eclipse/jetty/http/HttpParser;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v27, "filled {}/{}"

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    const/16 v29, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v30

    invoke-static/range {v30 .. v30}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v30

    aput-object v30, v28, v29

    invoke-interface/range {v26 .. v28}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_1 .. :try_end_1} :catch_1

    .line 289
    :goto_1
    if-lez v11, :cond_6

    .line 290
    add-int/lit8 v19, v19, 0x1

    .line 335
    :cond_3
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v17

    .line 341
    .end local v10    # "ex":Ljava/io/IOException;
    .end local v11    # "filled":I
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->array()[B

    move-result-object v5

    .line 342
    .local v5, "array":[B
    move-object/from16 v0, p0

    iget v15, v0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .local v15, "last":I
    move/from16 v18, v17

    .line 343
    .end local v17    # "length":I
    .local v18, "length":I
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    move/from16 v26, v0

    if-gez v26, :cond_3c

    add-int/lit8 v17, v18, -0x1

    .end local v18    # "length":I
    .restart local v17    # "length":I
    if-lez v18, :cond_3d

    .line 345
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-eq v15, v0, :cond_5

    .line 347
    add-int/lit8 v19, v19, 0x1

    .line 348
    move-object/from16 v0, p0

    iget v15, v0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 351
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v7

    .line 353
    .local v7, "ch":B
    move-object/from16 v0, p0

    iget-byte v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    move/from16 v26, v0

    const/16 v27, 0xd

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_c

    .line 355
    const/16 v26, 0xa

    move/from16 v0, v26

    if-ne v7, v0, :cond_b

    .line 357
    const/16 v26, 0xa

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-byte v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    move/from16 v18, v17

    .line 358
    .end local v17    # "length":I
    .restart local v18    # "length":I
    goto :goto_2

    .line 283
    .end local v5    # "array":[B
    .end local v7    # "ch":B
    .end local v15    # "last":I
    .end local v18    # "length":I
    .restart local v10    # "ex":Ljava/io/IOException;
    .restart local v11    # "filled":I
    .restart local v17    # "length":I
    :catch_0
    move-exception v9

    .line 285
    .local v9, "e":Ljava/io/IOException;
    sget-object v26, Lorg/eclipse/jetty/http/HttpParser;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpParser;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v26

    move-object/from16 v1, v27

    invoke-interface {v0, v1, v9}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 286
    move-object v10, v9

    goto :goto_1

    .line 291
    .end local v9    # "e":Ljava/io/IOException;
    :cond_6
    if-gez v11, :cond_3

    .line 293
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    .line 296
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    move/from16 v26, v0

    if-lez v26, :cond_7

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v26

    if-lez v26, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_headResponse:Z

    move/from16 v26, v0

    if-nez v26, :cond_7

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v27

    invoke-interface/range {v26 .. v27}, Lorg/eclipse/jetty/io/Buffer;->get(I)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v8

    .line 301
    .local v8, "chunk":Lorg/eclipse/jetty/io/Buffer;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    move-wide/from16 v26, v0

    invoke-interface {v8}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v28

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    add-long v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Lorg/eclipse/jetty/io/View;->update(Lorg/eclipse/jetty/io/Buffer;)V

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->content(Lorg/eclipse/jetty/io/Buffer;)V

    .line 308
    .end local v8    # "chunk":Lorg/eclipse/jetty/io/Buffer;
    :cond_7
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    move/from16 v26, v0

    sparse-switch v26, :sswitch_data_0

    .line 321
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 322
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_headResponse:Z

    move/from16 v26, v0

    if-nez v26, :cond_8

    .line 323
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->earlyEOF()V

    .line 324
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    move-wide/from16 v27, v0

    invoke-virtual/range {v26 .. v28}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->messageComplete(J)V

    .line 327
    :goto_3
    if-eqz v10, :cond_9

    .line 328
    throw v10
    :try_end_2
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_2 .. :try_end_2} :catch_1

    .line 992
    .end local v10    # "ex":Ljava/io/IOException;
    .end local v11    # "filled":I
    .end local v17    # "length":I
    :catch_1
    move-exception v9

    .line 994
    .local v9, "e":Lorg/eclipse/jetty/http/HttpException;
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    .line 995
    const/16 v26, 0x7

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 996
    throw v9

    .line 312
    .end local v9    # "e":Lorg/eclipse/jetty/http/HttpException;
    .restart local v10    # "ex":Ljava/io/IOException;
    .restart local v11    # "filled":I
    .restart local v17    # "length":I
    :sswitch_0
    const/16 v26, 0x0

    :try_start_3
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto :goto_3

    .line 316
    :sswitch_1
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    move-wide/from16 v27, v0

    invoke-virtual/range {v26 .. v28}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->messageComplete(J)V

    goto :goto_3

    .line 330
    :cond_9
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpParser;->isComplete()Z

    move-result v26

    if-nez v26, :cond_a

    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/http/HttpParser;->isIdle()Z

    move-result v26

    if-nez v26, :cond_a

    .line 331
    new-instance v26, Lorg/eclipse/jetty/io/EofException;

    invoke-direct/range {v26 .. v26}, Lorg/eclipse/jetty/io/EofException;-><init>()V

    throw v26

    .line 333
    :cond_a
    const/16 v26, -0x1

    goto/16 :goto_0

    .line 360
    .end local v10    # "ex":Ljava/io/IOException;
    .end local v11    # "filled":I
    .restart local v5    # "array":[B
    .restart local v7    # "ch":B
    .restart local v15    # "last":I
    :cond_b
    new-instance v26, Lorg/eclipse/jetty/http/HttpException;

    const/16 v27, 0x190

    invoke-direct/range {v26 .. v27}, Lorg/eclipse/jetty/http/HttpException;-><init>(I)V

    throw v26

    .line 362
    :cond_c
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-byte v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 364
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    move/from16 v26, v0

    packed-switch v26, :pswitch_data_0

    :cond_d
    :goto_4
    :pswitch_0
    :sswitch_2
    move/from16 v18, v17

    .line 800
    .end local v17    # "length":I
    .restart local v18    # "length":I
    goto/16 :goto_2

    .line 367
    .end local v18    # "length":I
    .restart local v17    # "length":I
    :pswitch_1
    const-wide/16 v26, -0x3

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    .line 368
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_cached:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 369
    const/16 v26, 0x20

    move/from16 v0, v26

    if-gt v7, v0, :cond_e

    if-gez v7, :cond_d

    .line 371
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->mark()V

    .line 372
    const/16 v26, -0xd

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto :goto_4

    .line 377
    :pswitch_2
    const/16 v26, 0x20

    move/from16 v0, v26

    if-ne v7, v0, :cond_10

    .line 379
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v28

    add-int/lit8 v28, v28, -0x1

    invoke-virtual/range {v26 .. v28}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(II)V

    .line 380
    sget-object v26, Lorg/eclipse/jetty/http/HttpVersions;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lorg/eclipse/jetty/io/BufferCache;->get(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v26

    if-nez v26, :cond_f

    const/16 v26, -0x1

    :goto_5
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    .line 381
    const/16 v26, -0xc

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    move/from16 v18, v17

    .line 382
    .end local v17    # "length":I
    .restart local v18    # "length":I
    goto/16 :goto_2

    .line 380
    .end local v18    # "length":I
    .restart local v17    # "length":I
    :cond_f
    const/16 v26, 0x0

    goto :goto_5

    .line 384
    :cond_10
    const/16 v26, 0x20

    move/from16 v0, v26

    if-ge v7, v0, :cond_d

    if-ltz v7, :cond_d

    .line 386
    new-instance v26, Lorg/eclipse/jetty/http/HttpException;

    const/16 v27, 0x190

    invoke-direct/range {v26 .. v27}, Lorg/eclipse/jetty/http/HttpException;-><init>(I)V

    throw v26

    .line 391
    :pswitch_3
    const/16 v26, 0x20

    move/from16 v0, v26

    if-gt v7, v0, :cond_11

    if-gez v7, :cond_13

    .line 393
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->mark()V

    .line 394
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    move/from16 v26, v0

    if-ltz v26, :cond_12

    .line 396
    const/16 v26, -0xb

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 397
    add-int/lit8 v26, v7, -0x30

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    goto/16 :goto_4

    .line 400
    :cond_12
    const/16 v26, -0xa

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_4

    .line 402
    :cond_13
    const/16 v26, 0x20

    move/from16 v0, v26

    if-ge v7, v0, :cond_d

    .line 404
    new-instance v26, Lorg/eclipse/jetty/http/HttpException;

    const/16 v27, 0x190

    invoke-direct/range {v26 .. v27}, Lorg/eclipse/jetty/http/HttpException;-><init>(I)V

    throw v26

    .line 409
    :pswitch_4
    const/16 v26, 0x20

    move/from16 v0, v26

    if-ne v7, v0, :cond_14

    .line 411
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v28

    add-int/lit8 v28, v28, -0x1

    invoke-virtual/range {v26 .. v28}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(II)V

    .line 412
    const/16 v26, -0x9

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    move/from16 v18, v17

    .line 413
    .end local v17    # "length":I
    .restart local v18    # "length":I
    goto/16 :goto_2

    .line 415
    .end local v18    # "length":I
    .restart local v17    # "length":I
    :cond_14
    const/16 v26, 0x30

    move/from16 v0, v26

    if-lt v7, v0, :cond_15

    const/16 v26, 0x39

    move/from16 v0, v26

    if-gt v7, v0, :cond_15

    .line 417
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    move/from16 v26, v0

    mul-int/lit8 v26, v26, 0xa

    add-int/lit8 v27, v7, -0x30

    add-int v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    move/from16 v18, v17

    .line 418
    .end local v17    # "length":I
    .restart local v18    # "length":I
    goto/16 :goto_2

    .line 420
    .end local v18    # "length":I
    .restart local v17    # "length":I
    :cond_15
    const/16 v26, 0x20

    move/from16 v0, v26

    if-ge v7, v0, :cond_16

    if-ltz v7, :cond_16

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    move-object/from16 v26, v0

    sget-object v27, Lorg/eclipse/jetty/http/HttpMethods;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lorg/eclipse/jetty/io/BufferCache;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    move/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v26 .. v29}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->startResponse(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V

    .line 423
    move-object/from16 v0, p0

    iput-byte v7, v0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 424
    const/16 v26, -0x5

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 425
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->getIndex()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->setPutIndex(I)V

    .line 426
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->getIndex()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->setPutIndex(I)V

    .line 427
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    move/from16 v18, v17

    .line 428
    .end local v17    # "length":I
    .restart local v18    # "length":I
    goto/16 :goto_2

    .line 431
    .end local v18    # "length":I
    .restart local v17    # "length":I
    :cond_16
    const/16 v26, -0xa

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 432
    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    goto/16 :goto_4

    .line 436
    :pswitch_5
    const/16 v26, 0x20

    move/from16 v0, v26

    if-ne v7, v0, :cond_17

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v28

    add-int/lit8 v28, v28, -0x1

    invoke-virtual/range {v26 .. v28}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(II)V

    .line 439
    const/16 v26, -0x9

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    move/from16 v18, v17

    .line 440
    .end local v17    # "length":I
    .restart local v18    # "length":I
    goto/16 :goto_2

    .line 442
    .end local v18    # "length":I
    .restart local v17    # "length":I
    :cond_17
    const/16 v26, 0x20

    move/from16 v0, v26

    if-ge v7, v0, :cond_d

    if-ltz v7, :cond_d

    .line 445
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    move-object/from16 v26, v0

    sget-object v27, Lorg/eclipse/jetty/http/HttpMethods;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lorg/eclipse/jetty/io/BufferCache;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lorg/eclipse/jetty/io/Buffer;->sliceFromMark()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v28

    const/16 v29, 0x0

    invoke-virtual/range {v26 .. v29}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->startRequest(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 446
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    .line 447
    const/16 v26, 0x7

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 448
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->headerComplete()V

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    move-wide/from16 v27, v0

    invoke-virtual/range {v26 .. v28}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->messageComplete(J)V

    .line 450
    const/16 v26, 0x1

    goto/16 :goto_0

    .line 455
    :pswitch_6
    const/16 v26, 0x20

    move/from16 v0, v26

    if-gt v7, v0, :cond_18

    if-gez v7, :cond_19

    .line 457
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->mark()V

    .line 458
    const/16 v26, -0x6

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_4

    .line 460
    :cond_19
    const/16 v26, 0x20

    move/from16 v0, v26

    if-ge v7, v0, :cond_d

    .line 462
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    move/from16 v26, v0

    if-lez v26, :cond_1a

    .line 464
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    move-object/from16 v26, v0

    sget-object v27, Lorg/eclipse/jetty/http/HttpMethods;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lorg/eclipse/jetty/io/BufferCache;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v27

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    move/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v26 .. v29}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->startResponse(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V

    .line 465
    move-object/from16 v0, p0

    iput-byte v7, v0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 466
    const/16 v26, -0x5

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 467
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->getIndex()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->setPutIndex(I)V

    .line 468
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->getIndex()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->setPutIndex(I)V

    .line 469
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    goto/16 :goto_4

    .line 474
    :cond_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    move-object/from16 v26, v0

    sget-object v27, Lorg/eclipse/jetty/http/HttpMethods;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lorg/eclipse/jetty/io/BufferCache;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    invoke-virtual/range {v26 .. v29}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->startRequest(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 475
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    .line 476
    const/16 v26, 0x7

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->headerComplete()V

    .line 478
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    move-wide/from16 v27, v0

    invoke-virtual/range {v26 .. v28}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->messageComplete(J)V

    .line 479
    const/16 v26, 0x1

    goto/16 :goto_0

    .line 485
    :pswitch_7
    const/16 v26, 0xd

    move/from16 v0, v26

    if-eq v7, v0, :cond_1b

    const/16 v26, 0xa

    move/from16 v0, v26

    if-ne v7, v0, :cond_d

    .line 488
    :cond_1b
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    move/from16 v26, v0

    if-lez v26, :cond_1c

    .line 489
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    move-object/from16 v26, v0

    sget-object v27, Lorg/eclipse/jetty/http/HttpVersions;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lorg/eclipse/jetty/io/BufferCache;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v24

    .local v24, "version":Lorg/eclipse/jetty/io/Buffer;
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lorg/eclipse/jetty/io/Buffer;->sliceFromMark()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v28

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    move/from16 v2, v27

    move-object/from16 v3, v28

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->startResponse(Lorg/eclipse/jetty/io/Buffer;ILorg/eclipse/jetty/io/Buffer;)V

    .line 492
    :goto_6
    move-object/from16 v0, p0

    iput-byte v7, v0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 493
    sget-object v26, Lorg/eclipse/jetty/http/HttpVersions;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    move-object/from16 v0, v26

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/io/BufferCache;->getOrdinal(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v26

    const/16 v27, 0xb

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_1d

    const/16 v26, 0x1

    :goto_7
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    .line 494
    const/16 v26, -0x5

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 495
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->getIndex()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->setPutIndex(I)V

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->getIndex()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->setPutIndex(I)V

    .line 497
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    move/from16 v18, v17

    .line 498
    .end local v17    # "length":I
    .restart local v18    # "length":I
    goto/16 :goto_2

    .line 491
    .end local v18    # "length":I
    .end local v24    # "version":Lorg/eclipse/jetty/io/Buffer;
    .restart local v17    # "length":I
    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    move-object/from16 v26, v0

    sget-object v27, Lorg/eclipse/jetty/http/HttpMethods;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Lorg/eclipse/jetty/io/BufferCache;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v28, v0

    sget-object v29, Lorg/eclipse/jetty/http/HttpVersions;->CACHE:Lorg/eclipse/jetty/io/BufferCache;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lorg/eclipse/jetty/io/Buffer;->sliceFromMark()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Lorg/eclipse/jetty/io/BufferCache;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v24

    .restart local v24    # "version":Lorg/eclipse/jetty/io/Buffer;
    move-object/from16 v0, v26

    move-object/from16 v1, v27

    move-object/from16 v2, v28

    move-object/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->startRequest(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    goto/16 :goto_6

    .line 493
    :cond_1d
    const/16 v26, 0x0

    goto :goto_7

    .line 503
    .end local v24    # "version":Lorg/eclipse/jetty/io/Buffer;
    :pswitch_8
    sparse-switch v7, :sswitch_data_1

    .line 518
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_cached:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-object/from16 v26, v0

    if-nez v26, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->length()I

    move-result v26

    if-gtz v26, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->length()I

    move-result v26

    if-gtz v26, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_20

    .line 520
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_cached:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-object/from16 v26, v0

    if-eqz v26, :cond_25

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/eclipse/jetty/http/HttpParser;->_cached:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 521
    .local v12, "header":Lorg/eclipse/jetty/io/Buffer;
    :goto_8
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_cached:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 522
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    move-object/from16 v26, v0

    if-nez v26, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v23, v0

    .line 524
    .local v23, "value":Lorg/eclipse/jetty/io/Buffer;
    :goto_9
    sget-object v26, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Lorg/eclipse/jetty/http/HttpHeaders;->getOrdinal(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v13

    .line 525
    .local v13, "ho":I
    if-ltz v13, :cond_1f

    .line 529
    sparse-switch v13, :sswitch_data_2

    .line 596
    :cond_1f
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v12, v1}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->parsedHeader(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 597
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->getIndex()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->setPutIndex(I)V

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->getIndex()I

    move-result v27

    invoke-virtual/range {v26 .. v27}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->setPutIndex(I)V

    .line 599
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    .line 601
    .end local v12    # "header":Lorg/eclipse/jetty/io/Buffer;
    .end local v13    # "ho":I
    .end local v23    # "value":Lorg/eclipse/jetty/io/Buffer;
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    const/16 v27, -0x1

    invoke-interface/range {v26 .. v27}, Lorg/eclipse/jetty/io/Buffer;->setMarkIndex(I)V

    .line 604
    const/16 v26, 0xd

    move/from16 v0, v26

    if-eq v7, v0, :cond_21

    const/16 v26, 0xa

    move/from16 v0, v26

    if-ne v7, v0, :cond_2f

    .line 607
    :cond_21
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    move/from16 v26, v0

    if-lez v26, :cond_29

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    move/from16 v26, v0

    const/16 v27, 0x130

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_22

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    move/from16 v26, v0

    const/16 v27, 0xcc

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_22

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    move/from16 v26, v0

    const/16 v27, 0xc8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_29

    .line 611
    :cond_22
    const-wide/16 v26, 0x0

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    .line 624
    :cond_23
    :goto_b
    const-wide/16 v26, 0x0

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    .line 625
    move-object/from16 v0, p0

    iput-byte v7, v0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 626
    move-object/from16 v0, p0

    iget-byte v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    move/from16 v26, v0

    const/16 v27, 0xd

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v26

    if-eqz v26, :cond_24

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->peek()B

    move-result v26

    const/16 v27, 0xa

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_24

    .line 627
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-byte v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 631
    :cond_24
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    move-wide/from16 v26, v0

    const-wide/32 v28, 0x7fffffff

    cmp-long v26, v26, v28

    if-lez v26, :cond_2c

    const v26, 0x7fffffff

    :goto_c
    packed-switch v26, :pswitch_data_1

    .line 650
    const/16 v26, 0x2

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 651
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->headerComplete()V

    .line 654
    :goto_d
    const/16 v26, 0x1

    goto/16 :goto_0

    .line 510
    :sswitch_3
    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    .line 511
    const/16 v26, -0x2

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_4

    .line 520
    :cond_25
    sget-object v26, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Lorg/eclipse/jetty/http/HttpHeaders;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v12

    goto/16 :goto_8

    .line 522
    .restart local v12    # "header":Lorg/eclipse/jetty/io/Buffer;
    :cond_26
    new-instance v23, Lorg/eclipse/jetty/io/ByteArrayBuffer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    move-object/from16 v26, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Lorg/eclipse/jetty/io/ByteArrayBuffer;-><init>(Ljava/lang/String;)V

    goto/16 :goto_9

    .line 532
    .restart local v13    # "ho":I
    .restart local v23    # "value":Lorg/eclipse/jetty/io/Buffer;
    :sswitch_4
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    move-wide/from16 v26, v0
    :try_end_3
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_3 .. :try_end_3} :catch_1

    const-wide/16 v28, -0x2

    cmp-long v26, v26, v28

    if-eqz v26, :cond_1f

    .line 536
    :try_start_4
    invoke-static/range {v23 .. v23}, Lorg/eclipse/jetty/io/BufferUtil;->toLong(Lorg/eclipse/jetty/io/Buffer;)J

    move-result-wide v26

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_4 .. :try_end_4} :catch_1

    .line 543
    :try_start_5
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    move-wide/from16 v26, v0

    const-wide/16 v28, 0x0

    cmp-long v26, v26, v28

    if-gtz v26, :cond_1f

    .line 544
    const-wide/16 v26, 0x0

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    goto/16 :goto_a

    .line 538
    :catch_2
    move-exception v9

    .line 540
    .local v9, "e":Ljava/lang/NumberFormatException;
    sget-object v26, Lorg/eclipse/jetty/http/HttpParser;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    move-object/from16 v0, v26

    invoke-interface {v0, v9}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    .line 541
    new-instance v26, Lorg/eclipse/jetty/http/HttpException;

    const/16 v27, 0x190

    invoke-direct/range {v26 .. v27}, Lorg/eclipse/jetty/http/HttpException;-><init>(I)V

    throw v26

    .line 549
    .end local v9    # "e":Ljava/lang/NumberFormatException;
    :sswitch_5
    sget-object v26, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/HttpHeaderValues;->lookup(Lorg/eclipse/jetty/io/Buffer;)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v23

    .line 550
    sget-object v26, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/HttpHeaderValues;->getOrdinal(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v25

    .line 551
    .local v25, "vo":I
    const/16 v26, 0x2

    move/from16 v0, v26

    move/from16 v1, v25

    if-ne v0, v1, :cond_27

    .line 552
    const-wide/16 v26, -0x2

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    goto/16 :goto_a

    .line 555
    :cond_27
    const-string v26, "ISO-8859-1"

    move-object/from16 v0, v23

    move-object/from16 v1, v26

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/Buffer;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 556
    .local v6, "c":Ljava/lang/String;
    const-string v26, "chunked"

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v26

    if-eqz v26, :cond_28

    .line 557
    const-wide/16 v26, -0x2

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    goto/16 :goto_a

    .line 559
    :cond_28
    const-string v26, "chunked"

    move-object/from16 v0, v26

    invoke-virtual {v6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v26

    if-ltz v26, :cond_1f

    .line 560
    new-instance v26, Lorg/eclipse/jetty/http/HttpException;

    const/16 v27, 0x190

    const/16 v28, 0x0

    invoke-direct/range {v26 .. v28}, Lorg/eclipse/jetty/http/HttpException;-><init>(ILjava/lang/String;)V

    throw v26

    .line 565
    .end local v6    # "c":Ljava/lang/String;
    .end local v25    # "vo":I
    :sswitch_6
    sget-object v26, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    move-object/from16 v0, v26

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/http/HttpHeaderValues;->getOrdinal(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v26

    sparse-switch v26, :sswitch_data_3

    goto/16 :goto_a

    .line 577
    :sswitch_7
    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v26

    const-string v27, ","

    invoke-virtual/range {v26 .. v27}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .local v4, "arr$":[Ljava/lang/String;
    array-length v0, v4

    move/from16 v16, v0

    .local v16, "len$":I
    const/4 v14, 0x0

    .local v14, "i$":I
    :goto_e
    move/from16 v0, v16

    if-ge v14, v0, :cond_1f

    aget-object v22, v4, v14

    .line 579
    .local v22, "v":Ljava/lang/String;
    sget-object v26, Lorg/eclipse/jetty/http/HttpHeaderValues;->CACHE:Lorg/eclipse/jetty/http/HttpHeaderValues;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Lorg/eclipse/jetty/http/HttpHeaderValues;->getOrdinal(Ljava/lang/String;)I

    move-result v26

    sparse-switch v26, :sswitch_data_4

    .line 577
    :goto_f
    add-int/lit8 v14, v14, 0x1

    goto :goto_e

    .line 568
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v14    # "i$":I
    .end local v16    # "len$":I
    .end local v22    # "v":Ljava/lang/String;
    :sswitch_8
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    goto/16 :goto_a

    .line 572
    :sswitch_9
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    goto/16 :goto_a

    .line 582
    .restart local v4    # "arr$":[Ljava/lang/String;
    .restart local v14    # "i$":I
    .restart local v16    # "len$":I
    .restart local v22    # "v":Ljava/lang/String;
    :sswitch_a
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    goto :goto_f

    .line 586
    :sswitch_b
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    goto :goto_f

    .line 613
    .end local v4    # "arr$":[Ljava/lang/String;
    .end local v12    # "header":Lorg/eclipse/jetty/io/Buffer;
    .end local v13    # "ho":I
    .end local v14    # "i$":I
    .end local v16    # "len$":I
    .end local v22    # "v":Ljava/lang/String;
    .end local v23    # "value":Lorg/eclipse/jetty/io/Buffer;
    :cond_29
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    move-wide/from16 v26, v0

    const-wide/16 v28, -0x3

    cmp-long v26, v26, v28

    if-nez v26, :cond_23

    .line 615
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    move/from16 v26, v0

    if-eqz v26, :cond_2a

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    move/from16 v26, v0

    const/16 v27, 0x130

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_2a

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    move/from16 v26, v0

    const/16 v27, 0xcc

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_2a

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    move/from16 v26, v0

    const/16 v27, 0xc8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_2b

    .line 619
    :cond_2a
    const-wide/16 v26, 0x0

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    goto/16 :goto_b

    .line 621
    :cond_2b
    const-wide/16 v26, -0x1

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    goto/16 :goto_b

    .line 631
    :cond_2c
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    move-wide/from16 v26, v0

    move-wide/from16 v0, v26

    long-to-int v0, v0

    move/from16 v26, v0

    goto/16 :goto_c

    .line 634
    :pswitch_9
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->headerComplete()V

    goto/16 :goto_d

    .line 639
    :pswitch_a
    const/16 v26, 0x3

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->headerComplete()V

    goto/16 :goto_d

    .line 644
    :pswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->headerComplete()V

    .line 645
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    move/from16 v26, v0

    if-nez v26, :cond_2d

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    move/from16 v26, v0

    const/16 v27, 0x64

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_2e

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    move/from16 v26, v0

    const/16 v27, 0xc8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_2e

    :cond_2d
    const/16 v26, 0x0

    :goto_10
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 646
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    move-wide/from16 v27, v0

    invoke-virtual/range {v26 .. v28}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->messageComplete(J)V

    .line 647
    const/16 v26, 0x1

    goto/16 :goto_0

    .line 645
    :cond_2e
    const/16 v26, 0x7

    goto :goto_10

    .line 659
    :cond_2f
    const/16 v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    .line 660
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->mark()V

    .line 661
    const/16 v26, -0x4

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 664
    if-eqz v5, :cond_d

    .line 666
    sget-object v26, Lorg/eclipse/jetty/http/HttpHeaders;->CACHE:Lorg/eclipse/jetty/http/HttpHeaders;

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v27

    add-int/lit8 v28, v17, 0x1

    move-object/from16 v0, v26

    move/from16 v1, v27

    move/from16 v2, v28

    invoke-virtual {v0, v5, v1, v2}, Lorg/eclipse/jetty/http/HttpHeaders;->getBest([BII)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_cached:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 668
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_cached:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-object/from16 v26, v0

    if-eqz v26, :cond_d

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_cached:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->length()I

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    .line 671
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v27

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    move/from16 v28, v0

    add-int v27, v27, v28

    invoke-interface/range {v26 .. v27}, Lorg/eclipse/jetty/io/Buffer;->setGetIndex(I)V

    .line 672
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v17

    goto/16 :goto_4

    .line 682
    :pswitch_c
    sparse-switch v7, :sswitch_data_5

    .line 702
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_cached:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 703
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_30

    .line 704
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->mark()V

    .line 705
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v27

    sub-int v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    .line 706
    const/16 v26, -0x3

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_4

    .line 686
    :sswitch_c
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    move/from16 v26, v0

    if-lez v26, :cond_31

    .line 687
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v28

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    move/from16 v29, v0

    add-int v28, v28, v29

    invoke-virtual/range {v26 .. v28}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(II)V

    .line 688
    :cond_31
    move-object/from16 v0, p0

    iput-byte v7, v0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 689
    const/16 v26, -0x5

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_4

    .line 692
    :sswitch_d
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    move/from16 v26, v0

    if-lez v26, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_cached:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-object/from16 v26, v0

    if-nez v26, :cond_32

    .line 693
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v28

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    move/from16 v29, v0

    add-int v28, v28, v29

    invoke-virtual/range {v26 .. v28}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(II)V

    .line 694
    :cond_32
    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    .line 695
    const/16 v26, -0x2

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_4

    .line 713
    :pswitch_d
    sparse-switch v7, :sswitch_data_6

    .line 734
    const/16 v26, 0x0

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_cached:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    .line 735
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    goto/16 :goto_4

    .line 717
    :sswitch_e
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    move/from16 v26, v0

    if-lez v26, :cond_33

    .line 718
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v28

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    move/from16 v29, v0

    add-int v28, v28, v29

    invoke-virtual/range {v26 .. v28}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(II)V

    .line 719
    :cond_33
    move-object/from16 v0, p0

    iput-byte v7, v0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 720
    const/16 v26, -0x5

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_4

    .line 723
    :sswitch_f
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    move/from16 v26, v0

    if-lez v26, :cond_34

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_cached:Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-object/from16 v26, v0

    if-nez v26, :cond_34

    .line 724
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok0:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v28

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    move/from16 v29, v0

    add-int v28, v28, v29

    invoke-virtual/range {v26 .. v28}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(II)V

    .line 725
    :cond_34
    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    .line 726
    const/16 v26, -0x2

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_4

    .line 730
    :sswitch_10
    const/16 v26, -0x4

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_4

    .line 741
    :pswitch_e
    sparse-switch v7, :sswitch_data_7

    .line 765
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    move/from16 v26, v0

    const/16 v27, -0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_35

    .line 766
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->mark()V

    .line 767
    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v27

    sub-int v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    .line 768
    const/16 v26, -0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_4

    .line 745
    :sswitch_11
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    move/from16 v26, v0

    if-lez v26, :cond_36

    .line 747
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->length()I

    move-result v26

    if-nez v26, :cond_37

    .line 748
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v28

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    move/from16 v29, v0

    add-int v28, v28, v29

    invoke-virtual/range {v26 .. v28}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(II)V

    .line 757
    :cond_36
    :goto_11
    move-object/from16 v0, p0

    iput-byte v7, v0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 758
    const/16 v26, -0x5

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_4

    .line 752
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    move-object/from16 v26, v0

    if-nez v26, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v26, v0

    const-string v27, "ISO-8859-1"

    invoke-virtual/range {v26 .. v27}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    .line 753
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v28

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    move/from16 v29, v0

    add-int v28, v28, v29

    invoke-virtual/range {v26 .. v28}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(II)V

    .line 754
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v27, v0

    const-string v28, "ISO-8859-1"

    invoke-virtual/range {v27 .. v28}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    goto :goto_11

    .line 774
    :pswitch_f
    sparse-switch v7, :sswitch_data_8

    .line 798
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    move/from16 v26, v0

    add-int/lit8 v26, v26, 0x1

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    goto/16 :goto_4

    .line 778
    :sswitch_12
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    move/from16 v26, v0

    if-lez v26, :cond_39

    .line 780
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->length()I

    move-result v26

    if-nez v26, :cond_3a

    .line 781
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v28

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    move/from16 v29, v0

    add-int v28, v28, v29

    invoke-virtual/range {v26 .. v28}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(II)V

    .line 790
    :cond_39
    :goto_12
    move-object/from16 v0, p0

    iput-byte v7, v0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 791
    const/16 v26, -0x5

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_4

    .line 785
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    move-object/from16 v26, v0

    if-nez v26, :cond_3b

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v26, v0

    const-string v27, "ISO-8859-1"

    invoke-virtual/range {v26 .. v27}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    .line 786
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v28, v0

    invoke-interface/range {v28 .. v28}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v28

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    move/from16 v29, v0

    add-int v28, v28, v29

    invoke-virtual/range {v26 .. v28}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->update(II)V

    .line 787
    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    move-object/from16 v27, v0

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, " "

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_tok1:Lorg/eclipse/jetty/io/View$CaseInsensitive;

    move-object/from16 v27, v0

    const-string v28, "ISO-8859-1"

    invoke-virtual/range {v27 .. v28}, Lorg/eclipse/jetty/io/View$CaseInsensitive;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    iput-object v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_multiLineValue:Ljava/lang/String;

    goto :goto_12

    .line 795
    :sswitch_13
    const/16 v26, -0x2

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_4

    .end local v7    # "ch":B
    .end local v17    # "length":I
    .restart local v18    # "length":I
    :cond_3c
    move/from16 v17, v18

    .line 807
    .end local v18    # "length":I
    .restart local v17    # "length":I
    :cond_3d
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    move/from16 v26, v0

    if-lez v26, :cond_3f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_headResponse:Z

    move/from16 v26, v0

    if-eqz v26, :cond_3f

    .line 809
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    move/from16 v26, v0

    if-nez v26, :cond_3e

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    move/from16 v26, v0

    const/16 v27, 0x64

    move/from16 v0, v26

    move/from16 v1, v27

    if-lt v0, v1, :cond_41

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    move/from16 v26, v0

    const/16 v27, 0xc8

    move/from16 v0, v26

    move/from16 v1, v27

    if-ge v0, v1, :cond_41

    :cond_3e
    const/16 v26, 0x0

    :goto_13
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 810
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    move-wide/from16 v27, v0

    invoke-virtual/range {v26 .. v28}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->messageComplete(J)V

    .line 817
    :cond_3f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v17

    .line 819
    move-object/from16 v0, p0

    iget v15, v0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 820
    :goto_14
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    move/from16 v26, v0

    if-lez v26, :cond_5e

    if-lez v17, :cond_5e

    .line 822
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    move/from16 v26, v0

    move/from16 v0, v26

    if-eq v15, v0, :cond_40

    .line 824
    add-int/lit8 v19, v19, 0x1

    .line 825
    move-object/from16 v0, p0

    iget v15, v0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 828
    :cond_40
    move-object/from16 v0, p0

    iget-byte v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    move/from16 v26, v0

    const/16 v27, 0xd

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_42

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->peek()B

    move-result v26

    const/16 v27, 0xa

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_42

    .line 830
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-byte v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 831
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v17

    .line 832
    goto :goto_14

    .line 809
    :cond_41
    const/16 v26, 0x7

    goto :goto_13

    .line 834
    :cond_42
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-byte v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 835
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    move/from16 v26, v0

    packed-switch v26, :pswitch_data_2

    .line 987
    :cond_43
    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v17

    goto :goto_14

    .line 838
    :pswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v27, v0

    invoke-interface/range {v27 .. v27}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v27

    invoke-interface/range {v26 .. v27}, Lorg/eclipse/jetty/io/Buffer;->get(I)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v8

    .line 839
    .restart local v8    # "chunk":Lorg/eclipse/jetty/io/Buffer;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    move-wide/from16 v26, v0

    invoke-interface {v8}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v28

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    add-long v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    .line 840
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Lorg/eclipse/jetty/io/View;->update(Lorg/eclipse/jetty/io/Buffer;)V

    .line 841
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->content(Lorg/eclipse/jetty/io/Buffer;)V

    .line 843
    const/16 v26, 0x1

    goto/16 :goto_0

    .line 847
    .end local v8    # "chunk":Lorg/eclipse/jetty/io/Buffer;
    :pswitch_11
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    move-wide/from16 v28, v0

    sub-long v20, v26, v28

    .line 848
    .local v20, "remaining":J
    const-wide/16 v26, 0x0

    cmp-long v26, v20, v26

    if-nez v26, :cond_45

    .line 850
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    move/from16 v26, v0

    if-eqz v26, :cond_44

    const/16 v26, 0x0

    :goto_16
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 851
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    move-wide/from16 v27, v0

    invoke-virtual/range {v26 .. v28}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->messageComplete(J)V

    .line 852
    const/16 v26, 0x1

    goto/16 :goto_0

    .line 850
    :cond_44
    const/16 v26, 0x7

    goto :goto_16

    .line 855
    :cond_45
    move/from16 v0, v17

    int-to-long v0, v0

    move-wide/from16 v26, v0

    cmp-long v26, v26, v20

    if-lez v26, :cond_46

    .line 859
    move-wide/from16 v0, v20

    long-to-int v0, v0

    move/from16 v17, v0

    .line 862
    :cond_46
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/Buffer;->get(I)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v8

    .line 863
    .restart local v8    # "chunk":Lorg/eclipse/jetty/io/Buffer;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    move-wide/from16 v26, v0

    invoke-interface {v8}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v28

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    add-long v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    .line 864
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Lorg/eclipse/jetty/io/View;->update(Lorg/eclipse/jetty/io/Buffer;)V

    .line 865
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->content(Lorg/eclipse/jetty/io/Buffer;)V

    .line 867
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    move-wide/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    move-wide/from16 v28, v0

    cmp-long v26, v26, v28

    if-nez v26, :cond_47

    .line 869
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    move/from16 v26, v0

    if-eqz v26, :cond_48

    const/16 v26, 0x0

    :goto_17
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 870
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    move-wide/from16 v27, v0

    invoke-virtual/range {v26 .. v28}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->messageComplete(J)V

    .line 873
    :cond_47
    const/16 v26, 0x1

    goto/16 :goto_0

    .line 869
    :cond_48
    const/16 v26, 0x7

    goto :goto_17

    .line 878
    .end local v8    # "chunk":Lorg/eclipse/jetty/io/Buffer;
    .end local v20    # "remaining":J
    :pswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->peek()B

    move-result v7

    .line 879
    .restart local v7    # "ch":B
    const/16 v26, 0xd

    move/from16 v0, v26

    if-eq v7, v0, :cond_49

    const/16 v26, 0xa

    move/from16 v0, v26

    if-ne v7, v0, :cond_4a

    .line 880
    :cond_49
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-byte v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    goto/16 :goto_15

    .line 881
    :cond_4a
    const/16 v26, 0x20

    move/from16 v0, v26

    if-gt v7, v0, :cond_4b

    .line 882
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->get()B

    goto/16 :goto_15

    .line 885
    :cond_4b
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_chunkLength:I

    .line 886
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_chunkPosition:I

    .line 887
    const/16 v26, 0x4

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_15

    .line 894
    .end local v7    # "ch":B
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v7

    .line 895
    .restart local v7    # "ch":B
    const/16 v26, 0xd

    move/from16 v0, v26

    if-eq v7, v0, :cond_4c

    const/16 v26, 0xa

    move/from16 v0, v26

    if-ne v7, v0, :cond_50

    .line 897
    :cond_4c
    move-object/from16 v0, p0

    iput-byte v7, v0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 899
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_chunkLength:I

    move/from16 v26, v0

    if-nez v26, :cond_4f

    .line 901
    move-object/from16 v0, p0

    iget-byte v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    move/from16 v26, v0

    const/16 v27, 0xd

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_4d

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v26

    if-eqz v26, :cond_4d

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->peek()B

    move-result v26

    const/16 v27, 0xa

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_4d

    .line 902
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-byte v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 903
    :cond_4d
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    move/from16 v26, v0

    if-eqz v26, :cond_4e

    const/16 v26, 0x0

    :goto_18
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 904
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    move-wide/from16 v27, v0

    invoke-virtual/range {v26 .. v28}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->messageComplete(J)V

    .line 905
    const/16 v26, 0x1

    goto/16 :goto_0

    .line 903
    :cond_4e
    const/16 v26, 0x7

    goto :goto_18

    .line 908
    :cond_4f
    const/16 v26, 0x6

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_15

    .line 910
    :cond_50
    const/16 v26, 0x20

    move/from16 v0, v26

    if-le v7, v0, :cond_51

    const/16 v26, 0x3b

    move/from16 v0, v26

    if-ne v7, v0, :cond_52

    .line 911
    :cond_51
    const/16 v26, 0x5

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_15

    .line 912
    :cond_52
    const/16 v26, 0x30

    move/from16 v0, v26

    if-lt v7, v0, :cond_53

    const/16 v26, 0x39

    move/from16 v0, v26

    if-gt v7, v0, :cond_53

    .line 913
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_chunkLength:I

    move/from16 v26, v0

    mul-int/lit8 v26, v26, 0x10

    add-int/lit8 v27, v7, -0x30

    add-int v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_chunkLength:I

    goto/16 :goto_15

    .line 914
    :cond_53
    const/16 v26, 0x61

    move/from16 v0, v26

    if-lt v7, v0, :cond_54

    const/16 v26, 0x66

    move/from16 v0, v26

    if-gt v7, v0, :cond_54

    .line 915
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_chunkLength:I

    move/from16 v26, v0

    mul-int/lit8 v26, v26, 0x10

    add-int/lit8 v27, v7, 0xa

    add-int/lit8 v27, v27, -0x61

    add-int v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_chunkLength:I

    goto/16 :goto_15

    .line 916
    :cond_54
    const/16 v26, 0x41

    move/from16 v0, v26

    if-lt v7, v0, :cond_55

    const/16 v26, 0x46

    move/from16 v0, v26

    if-gt v7, v0, :cond_55

    .line 917
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_chunkLength:I

    move/from16 v26, v0

    mul-int/lit8 v26, v26, 0x10

    add-int/lit8 v27, v7, 0xa

    add-int/lit8 v27, v27, -0x41

    add-int v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_chunkLength:I

    goto/16 :goto_15

    .line 919
    :cond_55
    new-instance v26, Ljava/io/IOException;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "bad chunk char: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-direct/range {v26 .. v27}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v26

    .line 925
    .end local v7    # "ch":B
    :pswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v7

    .line 926
    .restart local v7    # "ch":B
    const/16 v26, 0xd

    move/from16 v0, v26

    if-eq v7, v0, :cond_56

    const/16 v26, 0xa

    move/from16 v0, v26

    if-ne v7, v0, :cond_43

    .line 928
    :cond_56
    move-object/from16 v0, p0

    iput-byte v7, v0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 929
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_chunkLength:I

    move/from16 v26, v0

    if-nez v26, :cond_59

    .line 931
    move-object/from16 v0, p0

    iget-byte v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    move/from16 v26, v0

    const/16 v27, 0xd

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_57

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v26

    if-eqz v26, :cond_57

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->peek()B

    move-result v26

    const/16 v27, 0xa

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_57

    .line 932
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v26

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput-byte v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 933
    :cond_57
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    move/from16 v26, v0

    if-eqz v26, :cond_58

    const/16 v26, 0x0

    :goto_19
    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 934
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    move-wide/from16 v27, v0

    invoke-virtual/range {v26 .. v28}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->messageComplete(J)V

    .line 935
    const/16 v26, 0x1

    goto/16 :goto_0

    .line 933
    :cond_58
    const/16 v26, 0x7

    goto :goto_19

    .line 938
    :cond_59
    const/16 v26, 0x6

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_15

    .line 945
    .end local v7    # "ch":B
    :pswitch_15
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_chunkLength:I

    move/from16 v26, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_chunkPosition:I

    move/from16 v27, v0

    sub-int v20, v26, v27

    .line 946
    .local v20, "remaining":I
    if-nez v20, :cond_5a

    .line 948
    const/16 v26, 0x3

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    goto/16 :goto_15

    .line 951
    :cond_5a
    move/from16 v0, v17

    move/from16 v1, v20

    if-le v0, v1, :cond_5b

    .line 952
    move/from16 v17, v20

    .line 953
    :cond_5b
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    move/from16 v1, v17

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/Buffer;->get(I)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v8

    .line 954
    .restart local v8    # "chunk":Lorg/eclipse/jetty/io/Buffer;
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    move-wide/from16 v26, v0

    invoke-interface {v8}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v28

    move/from16 v0, v28

    int-to-long v0, v0

    move-wide/from16 v28, v0

    add-long v26, v26, v28

    move-wide/from16 v0, v26

    move-object/from16 v2, p0

    iput-wide v0, v2, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    .line 955
    move-object/from16 v0, p0

    iget v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_chunkPosition:I

    move/from16 v26, v0

    invoke-interface {v8}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v27

    add-int v26, v26, v27

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_chunkPosition:I

    .line 956
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Lorg/eclipse/jetty/io/View;->update(Lorg/eclipse/jetty/io/Buffer;)V

    .line 957
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_handler:Lorg/eclipse/jetty/http/HttpParser$EventHandler;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    invoke-virtual {v0, v8}, Lorg/eclipse/jetty/http/HttpParser$EventHandler;->content(Lorg/eclipse/jetty/io/Buffer;)V

    .line 959
    const/16 v26, 0x1

    goto/16 :goto_0

    .line 965
    .end local v8    # "chunk":Lorg/eclipse/jetty/io/Buffer;
    .end local v20    # "remaining":I
    :pswitch_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v26

    const/16 v27, 0x2

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_5d

    .line 967
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 968
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    .line 982
    :cond_5c
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->clear()V

    goto/16 :goto_15

    .line 973
    :cond_5d
    :goto_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v26

    if-lez v26, :cond_5c

    .line 974
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v26

    invoke-static/range {v26 .. v26}, Ljava/lang/Character;->isWhitespace(I)Z

    move-result v26

    if-nez v26, :cond_5d

    .line 976
    const/16 v26, 0x0

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 977
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/EndPoint;->close()V

    .line 978
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Lorg/eclipse/jetty/io/Buffer;->clear()V
    :try_end_5
    .catch Lorg/eclipse/jetty/http/HttpException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1a

    :cond_5e
    move/from16 v26, v19

    .line 990
    goto/16 :goto_0

    .line 308
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x1 -> :sswitch_1
        0x7 -> :sswitch_0
    .end sparse-switch

    .line 364
    :pswitch_data_0
    .packed-switch -0xe
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch

    .line 503
    :sswitch_data_1
    .sparse-switch
        0x9 -> :sswitch_3
        0x20 -> :sswitch_3
        0x3a -> :sswitch_3
    .end sparse-switch

    .line 529
    :sswitch_data_2
    .sparse-switch
        0x1 -> :sswitch_6
        0x5 -> :sswitch_5
        0xc -> :sswitch_4
    .end sparse-switch

    .line 631
    :pswitch_data_1
    .packed-switch -0x2
        :pswitch_a
        :pswitch_9
        :pswitch_b
    .end packed-switch

    .line 565
    :sswitch_data_3
    .sparse-switch
        -0x1 -> :sswitch_7
        0x1 -> :sswitch_8
        0x5 -> :sswitch_9
    .end sparse-switch

    .line 579
    :sswitch_data_4
    .sparse-switch
        0x1 -> :sswitch_a
        0x5 -> :sswitch_b
    .end sparse-switch

    .line 682
    :sswitch_data_5
    .sparse-switch
        0x9 -> :sswitch_2
        0xa -> :sswitch_c
        0xd -> :sswitch_c
        0x20 -> :sswitch_2
        0x3a -> :sswitch_d
    .end sparse-switch

    .line 713
    :sswitch_data_6
    .sparse-switch
        0x9 -> :sswitch_10
        0xa -> :sswitch_e
        0xd -> :sswitch_e
        0x20 -> :sswitch_10
        0x3a -> :sswitch_f
    .end sparse-switch

    .line 741
    :sswitch_data_7
    .sparse-switch
        0x9 -> :sswitch_2
        0xa -> :sswitch_11
        0xd -> :sswitch_11
        0x20 -> :sswitch_2
    .end sparse-switch

    .line 774
    :sswitch_data_8
    .sparse-switch
        0x9 -> :sswitch_13
        0xa -> :sswitch_12
        0xd -> :sswitch_12
        0x20 -> :sswitch_13
    .end sparse-switch

    .line 835
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
    .end packed-switch
.end method

.method public reset()V
    .locals 6

    .prologue
    const/4 v2, 0x0

    const/4 v5, -0x1

    .line 1061
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentView:Lorg/eclipse/jetty/io/View;

    invoke-virtual {v3}, Lorg/eclipse/jetty/io/View;->putIndex()I

    move-result v3

    invoke-virtual {v1, v3}, Lorg/eclipse/jetty/io/View;->setGetIndex(I)V

    .line 1062
    iget-boolean v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    if-eqz v1, :cond_5

    const/16 v1, -0xe

    :goto_0
    iput v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 1063
    const-wide/16 v3, -0x3

    iput-wide v3, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    .line 1064
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentPosition:J

    .line 1065
    iput v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    .line 1066
    iput v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_responseStatus:I

    .line 1069
    iget-byte v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->peek()B

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    .line 1070
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->get()B

    move-result v1

    iput-byte v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_eol:B

    .line 1072
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1077
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-nez v1, :cond_7

    .line 1078
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->getHeaderBuffer()Lorg/eclipse/jetty/io/Buffer;

    .line 1084
    :goto_1
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->space()I

    move-result v0

    .line 1085
    .local v0, "take":I
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 1086
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->length()I

    move-result v0

    .line 1087
    :cond_1
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v2}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v2

    invoke-interface {v1, v2, v0}, Lorg/eclipse/jetty/io/Buffer;->peek(II)Lorg/eclipse/jetty/io/Buffer;

    .line 1088
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    iget-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    iget-object v3, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    iget-object v4, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v4}, Lorg/eclipse/jetty/io/Buffer;->getIndex()I

    move-result v4

    invoke-interface {v3, v4, v0}, Lorg/eclipse/jetty/io/Buffer;->peek(II)Lorg/eclipse/jetty/io/Buffer;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/eclipse/jetty/io/Buffer;->put(Lorg/eclipse/jetty/io/Buffer;)I

    move-result v2

    invoke-interface {v1, v2}, Lorg/eclipse/jetty/io/Buffer;->skip(I)I

    .line 1091
    .end local v0    # "take":I
    :cond_2
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v1, :cond_3

    .line 1093
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1, v5}, Lorg/eclipse/jetty/io/Buffer;->setMarkIndex(I)V

    .line 1094
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->compact()V

    .line 1096
    :cond_3
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v1, :cond_4

    .line 1097
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1, v5}, Lorg/eclipse/jetty/io/Buffer;->setMarkIndex(I)V

    .line 1099
    :cond_4
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    iput-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 1100
    invoke-virtual {p0}, Lorg/eclipse/jetty/http/HttpParser;->returnBuffers()V

    .line 1101
    return-void

    .line 1062
    :cond_5
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_endp:Lorg/eclipse/jetty/io/EndPoint;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/EndPoint;->isInputShutdown()Z

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    goto/16 :goto_0

    :cond_6
    const/4 v1, 0x7

    goto/16 :goto_0

    .line 1081
    :cond_7
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1, v5}, Lorg/eclipse/jetty/io/Buffer;->setMarkIndex(I)V

    .line 1082
    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v1}, Lorg/eclipse/jetty/io/Buffer;->compact()V

    goto :goto_1
.end method

.method public returnBuffers()V
    .locals 4

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x0

    .line 1107
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v0

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    if-eqz v0, :cond_2

    .line 1109
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    if-ne v0, v1, :cond_0

    .line 1110
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    iput-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 1111
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    if-eqz v0, :cond_1

    .line 1112
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/Buffers;->returnBuffer(Lorg/eclipse/jetty/io/Buffer;)V

    .line 1113
    :cond_1
    iput-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_body:Lorg/eclipse/jetty/io/Buffer;

    .line 1116
    :cond_2
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->hasContent()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0}, Lorg/eclipse/jetty/io/Buffer;->markIndex()I

    move-result v0

    if-ne v0, v3, :cond_4

    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    if-eqz v0, :cond_4

    .line 1118
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    if-ne v0, v1, :cond_3

    .line 1119
    iput-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffer:Lorg/eclipse/jetty/io/Buffer;

    .line 1120
    :cond_3
    iget-object v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_buffers:Lorg/eclipse/jetty/io/Buffers;

    iget-object v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v0, v1}, Lorg/eclipse/jetty/io/Buffers;->returnBuffer(Lorg/eclipse/jetty/io/Buffer;)V

    .line 1121
    iput-object v2, p0, Lorg/eclipse/jetty/http/HttpParser;->_header:Lorg/eclipse/jetty/io/Buffer;

    .line 1123
    :cond_4
    return-void
.end method

.method public setForceContentBuffer(Z)V
    .locals 0
    .param p1, "force"    # Z

    .prologue
    .line 1173
    iput-boolean p1, p0, Lorg/eclipse/jetty/http/HttpParser;->_forceContentBuffer:Z

    .line 1174
    return-void
.end method

.method public setHeadResponse(Z)V
    .locals 0
    .param p1, "head"    # Z

    .prologue
    .line 139
    iput-boolean p1, p0, Lorg/eclipse/jetty/http/HttpParser;->_headResponse:Z

    .line 140
    return-void
.end method

.method public setPersistent(Z)V
    .locals 2
    .param p1, "persistent"    # Z

    .prologue
    .line 201
    iput-boolean p1, p0, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    .line 202
    iget-boolean v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_persistent:Z

    if-nez v0, :cond_1

    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    const/16 v1, -0xe

    if-ne v0, v1, :cond_1

    .line 203
    :cond_0
    const/4 v0, 0x7

    iput v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 204
    :cond_1
    return-void
.end method

.method public setState(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 1128
    iput p1, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    .line 1129
    const-wide/16 v0, -0x3

    iput-wide v0, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    .line 1130
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 1142
    const-string v0, "%s{s=%d,l=%d,c=%d}"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-wide v3, p0, Lorg/eclipse/jetty/http/HttpParser;->_contentLength:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Lorg/eclipse/jetty/io/Buffer;)Ljava/lang/String;
    .locals 2
    .param p1, "buf"    # Lorg/eclipse/jetty/io/Buffer;

    .prologue
    .line 1135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/eclipse/jetty/http/HttpParser;->_length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " buf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
