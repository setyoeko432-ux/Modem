.class public Lorg/eclipse/jetty/xml/XmlParser;
.super Ljava/lang/Object;
.source "XmlParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/xml/XmlParser$Node;,
        Lorg/eclipse/jetty/xml/XmlParser$Attribute;,
        Lorg/eclipse/jetty/xml/XmlParser$Handler;,
        Lorg/eclipse/jetty/xml/XmlParser$NoopHandler;
    }
.end annotation


# static fields
.field private static final LOG:Lorg/eclipse/jetty/util/log/Logger;


# instance fields
.field private _dtd:Ljava/lang/String;

.field private _observerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/xml/sax/ContentHandler;",
            ">;"
        }
    .end annotation
.end field

.field private _observers:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lorg/xml/sax/ContentHandler;",
            ">;"
        }
    .end annotation
.end field

.field private _parser:Ljavax/xml/parsers/SAXParser;

.field private _redirectMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field

.field private _xpath:Ljava/lang/String;

.field private _xpaths:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lorg/eclipse/jetty/xml/XmlParser;

    invoke-static {v0}, Lorg/eclipse/jetty/util/log/Log;->getLogger(Ljava/lang/Class;)Lorg/eclipse/jetty/util/log/Logger;

    move-result-object v0

    sput-object v0, Lorg/eclipse/jetty/xml/XmlParser;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lorg/eclipse/jetty/xml/XmlParser;->_redirectMap:Ljava/util/Map;

    .line 66
    new-instance v4, Ljava/util/Stack;

    invoke-direct {v4}, Ljava/util/Stack;-><init>()V

    iput-object v4, p0, Lorg/eclipse/jetty/xml/XmlParser;->_observers:Ljava/util/Stack;

    .line 77
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 78
    .local v0, "factory":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "org.apache.xerces."

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    .line 79
    .local v2, "validating_dft":Z
    const-string v5, "org.eclipse.jetty.xml.XmlParser.Validating"

    if-eqz v2, :cond_0

    const-string v4, "true"

    :goto_0
    invoke-static {v5, v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 80
    .local v3, "validating_prop":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 81
    .local v1, "validating":Z
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/xml/XmlParser;->setValidating(Z)V

    .line 82
    return-void

    .line 79
    .end local v1    # "validating":Z
    .end local v3    # "validating_prop":Ljava/lang/String;
    :cond_0
    const-string v4, "false"

    goto :goto_0
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "validating"    # Z

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/xml/XmlParser;->_redirectMap:Ljava/util/Map;

    .line 66
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/xml/XmlParser;->_observers:Ljava/util/Stack;

    .line 90
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/xml/XmlParser;->setValidating(Z)V

    .line 91
    return-void
.end method

.method static synthetic access$000(Lorg/eclipse/jetty/xml/XmlParser;)Ljavax/xml/parsers/SAXParser;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/xml/XmlParser;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/eclipse/jetty/xml/XmlParser;->_parser:Ljavax/xml/parsers/SAXParser;

    return-object v0
.end method

.method static synthetic access$100(Lorg/eclipse/jetty/xml/XmlParser;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/xml/XmlParser;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/eclipse/jetty/xml/XmlParser;->_xpaths:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lorg/eclipse/jetty/xml/XmlParser;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/xml/XmlParser;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/eclipse/jetty/xml/XmlParser;->_observerMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lorg/eclipse/jetty/xml/XmlParser;)Ljava/util/Stack;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/xml/XmlParser;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/eclipse/jetty/xml/XmlParser;->_observers:Ljava/util/Stack;

    return-object v0
.end method

.method static synthetic access$400()Lorg/eclipse/jetty/util/log/Logger;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lorg/eclipse/jetty/xml/XmlParser;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    return-object v0
.end method

.method static synthetic access$502(Lorg/eclipse/jetty/xml/XmlParser;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lorg/eclipse/jetty/xml/XmlParser;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lorg/eclipse/jetty/xml/XmlParser;->_dtd:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$600(Lorg/eclipse/jetty/xml/XmlParser;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lorg/eclipse/jetty/xml/XmlParser;

    .prologue
    .line 59
    iget-object v0, p0, Lorg/eclipse/jetty/xml/XmlParser;->_redirectMap:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method public declared-synchronized addContentHandler(Ljava/lang/String;Lorg/xml/sax/ContentHandler;)V
    .locals 1
    .param p1, "trigger"    # Ljava/lang/String;
    .param p2, "observer"    # Lorg/xml/sax/ContentHandler;

    .prologue
    .line 188
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/xml/XmlParser;->_observerMap:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 189
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/xml/XmlParser;->_observerMap:Ljava/util/Map;

    .line 190
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/xml/XmlParser;->_observerMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    monitor-exit p0

    return-void

    .line 188
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDTD()Ljava/lang/String;
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lorg/eclipse/jetty/xml/XmlParser;->_dtd:Ljava/lang/String;

    return-object v0
.end method

.method public getXpath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lorg/eclipse/jetty/xml/XmlParser;->_xpath:Ljava/lang/String;

    return-object v0
.end method

.method public declared-synchronized parse(Ljava/io/File;)Lorg/eclipse/jetty/xml/XmlParser$Node;
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 229
    monitor-enter p0

    :try_start_0
    sget-object v0, Lorg/eclipse/jetty/xml/XmlParser;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 230
    sget-object v0, Lorg/eclipse/jetty/xml/XmlParser;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    :cond_0
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-static {p1}, Lorg/eclipse/jetty/util/resource/Resource;->toURL(Ljava/io/File;)Ljava/net/URL;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/xml/XmlParser;->parse(Lorg/xml/sax/InputSource;)Lorg/eclipse/jetty/xml/XmlParser$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 229
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized parse(Ljava/io/InputStream;)Lorg/eclipse/jetty/xml/XmlParser$Node;
    .locals 5
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 240
    monitor-enter p0

    const/4 v3, 0x0

    :try_start_0
    iput-object v3, p0, Lorg/eclipse/jetty/xml/XmlParser;->_dtd:Ljava/lang/String;

    .line 241
    new-instance v1, Lorg/eclipse/jetty/xml/XmlParser$Handler;

    invoke-direct {v1, p0}, Lorg/eclipse/jetty/xml/XmlParser$Handler;-><init>(Lorg/eclipse/jetty/xml/XmlParser;)V

    .line 242
    .local v1, "handler":Lorg/eclipse/jetty/xml/XmlParser$Handler;
    iget-object v3, p0, Lorg/eclipse/jetty/xml/XmlParser;->_parser:Ljavax/xml/parsers/SAXParser;

    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v2

    .line 243
    .local v2, "reader":Lorg/xml/sax/XMLReader;
    invoke-interface {v2, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 244
    invoke-interface {v2, v1}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 245
    invoke-interface {v2, v1}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 246
    iget-object v3, p0, Lorg/eclipse/jetty/xml/XmlParser;->_parser:Ljavax/xml/parsers/SAXParser;

    new-instance v4, Lorg/xml/sax/InputSource;

    invoke-direct {v4, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v3, v4, v1}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 247
    iget-object v3, v1, Lorg/eclipse/jetty/xml/XmlParser$Handler;->_error:Lorg/xml/sax/SAXParseException;

    if-eqz v3, :cond_0

    .line 248
    iget-object v3, v1, Lorg/eclipse/jetty/xml/XmlParser$Handler;->_error:Lorg/xml/sax/SAXParseException;

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 240
    .end local v1    # "handler":Lorg/eclipse/jetty/xml/XmlParser$Handler;
    .end local v2    # "reader":Lorg/xml/sax/XMLReader;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 249
    .restart local v1    # "handler":Lorg/eclipse/jetty/xml/XmlParser$Handler;
    .restart local v2    # "reader":Lorg/xml/sax/XMLReader;
    :cond_0
    :try_start_1
    iget-object v3, v1, Lorg/eclipse/jetty/xml/XmlParser$Handler;->_top:Lorg/eclipse/jetty/xml/XmlParser$Node;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/eclipse/jetty/xml/XmlParser$Node;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/xml/XmlParser$Node;

    .line 250
    .local v0, "doc":Lorg/eclipse/jetty/xml/XmlParser$Node;
    invoke-virtual {v1}, Lorg/eclipse/jetty/xml/XmlParser$Handler;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 251
    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized parse(Ljava/lang/String;)Lorg/eclipse/jetty/xml/XmlParser$Node;
    .locals 3
    .param p1, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 218
    monitor-enter p0

    :try_start_0
    sget-object v0, Lorg/eclipse/jetty/xml/XmlParser;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v0}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    sget-object v0, Lorg/eclipse/jetty/xml/XmlParser;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "parse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    :cond_0
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/xml/XmlParser;->parse(Lorg/xml/sax/InputSource;)Lorg/eclipse/jetty/xml/XmlParser$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit p0

    return-object v0

    .line 218
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized parse(Lorg/xml/sax/InputSource;)Lorg/eclipse/jetty/xml/XmlParser$Node;
    .locals 6
    .param p1, "source"    # Lorg/xml/sax/InputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .prologue
    .line 196
    monitor-enter p0

    const/4 v3, 0x0

    :try_start_0
    iput-object v3, p0, Lorg/eclipse/jetty/xml/XmlParser;->_dtd:Ljava/lang/String;

    .line 197
    new-instance v1, Lorg/eclipse/jetty/xml/XmlParser$Handler;

    invoke-direct {v1, p0}, Lorg/eclipse/jetty/xml/XmlParser$Handler;-><init>(Lorg/eclipse/jetty/xml/XmlParser;)V

    .line 198
    .local v1, "handler":Lorg/eclipse/jetty/xml/XmlParser$Handler;
    iget-object v3, p0, Lorg/eclipse/jetty/xml/XmlParser;->_parser:Ljavax/xml/parsers/SAXParser;

    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v2

    .line 199
    .local v2, "reader":Lorg/xml/sax/XMLReader;
    invoke-interface {v2, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 200
    invoke-interface {v2, v1}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 201
    invoke-interface {v2, v1}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 202
    sget-object v3, Lorg/eclipse/jetty/xml/XmlParser;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v3}, Lorg/eclipse/jetty/util/log/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 203
    sget-object v3, Lorg/eclipse/jetty/xml/XmlParser;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parsing: sid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getSystemId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Lorg/xml/sax/InputSource;->getPublicId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lorg/eclipse/jetty/util/log/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    :cond_0
    iget-object v3, p0, Lorg/eclipse/jetty/xml/XmlParser;->_parser:Ljavax/xml/parsers/SAXParser;

    invoke-virtual {v3, p1, v1}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 205
    iget-object v3, v1, Lorg/eclipse/jetty/xml/XmlParser$Handler;->_error:Lorg/xml/sax/SAXParseException;

    if-eqz v3, :cond_1

    .line 206
    iget-object v3, v1, Lorg/eclipse/jetty/xml/XmlParser$Handler;->_error:Lorg/xml/sax/SAXParseException;

    throw v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 196
    .end local v1    # "handler":Lorg/eclipse/jetty/xml/XmlParser$Handler;
    .end local v2    # "reader":Lorg/xml/sax/XMLReader;
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 207
    .restart local v1    # "handler":Lorg/eclipse/jetty/xml/XmlParser$Handler;
    .restart local v2    # "reader":Lorg/xml/sax/XMLReader;
    :cond_1
    :try_start_1
    iget-object v3, v1, Lorg/eclipse/jetty/xml/XmlParser$Handler;->_top:Lorg/eclipse/jetty/xml/XmlParser$Node;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lorg/eclipse/jetty/xml/XmlParser$Node;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/xml/XmlParser$Node;

    .line 208
    .local v0, "doc":Lorg/eclipse/jetty/xml/XmlParser$Node;
    invoke-virtual {v1}, Lorg/eclipse/jetty/xml/XmlParser$Handler;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 209
    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized redirectEntity(Ljava/lang/String;Ljava/net/URL;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "entity"    # Ljava/net/URL;

    .prologue
    .line 142
    monitor-enter p0

    if-eqz p2, :cond_0

    .line 143
    :try_start_0
    iget-object v0, p0, Lorg/eclipse/jetty/xml/XmlParser;->_redirectMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    :cond_0
    monitor-exit p0

    return-void

    .line 142
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setValidating(Z)V
    .locals 5
    .param p1, "validating"    # Z

    .prologue
    .line 98
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v1

    .line 99
    .local v1, "factory":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v1, p1}, Ljavax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    .line 100
    invoke-virtual {v1}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    iput-object v2, p0, Lorg/eclipse/jetty/xml/XmlParser;->_parser:Ljavax/xml/parsers/SAXParser;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 104
    if-eqz p1, :cond_0

    .line 105
    :try_start_1
    iget-object v2, p0, Lorg/eclipse/jetty/xml/XmlParser;->_parser:Ljavax/xml/parsers/SAXParser;

    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v2

    const-string v3, "http://apache.org/xml/features/validation/schema"

    invoke-interface {v2, v3, p1}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 115
    :cond_0
    :goto_0
    :try_start_2
    iget-object v2, p0, Lorg/eclipse/jetty/xml/XmlParser;->_parser:Ljavax/xml/parsers/SAXParser;

    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v2

    const-string v3, "http://xml.org/sax/features/validation"

    invoke-interface {v2, v3, p1}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    .line 116
    iget-object v2, p0, Lorg/eclipse/jetty/xml/XmlParser;->_parser:Ljavax/xml/parsers/SAXParser;

    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v2

    const-string v3, "http://xml.org/sax/features/namespaces"

    const/4 v4, 0x1

    invoke-interface {v2, v3, v4}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V

    .line 117
    iget-object v2, p0, Lorg/eclipse/jetty/xml/XmlParser;->_parser:Ljavax/xml/parsers/SAXParser;

    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v2

    const-string v3, "http://xml.org/sax/features/namespace-prefixes"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 120
    if-eqz p1, :cond_1

    .line 121
    :try_start_3
    iget-object v2, p0, Lorg/eclipse/jetty/xml/XmlParser;->_parser:Ljavax/xml/parsers/SAXParser;

    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v2

    const-string v3, "http://apache.org/xml/features/nonvalidating/load-external-dtd"

    invoke-interface {v2, v3, p1}, Lorg/xml/sax/XMLReader;->setFeature(Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    .line 133
    :cond_1
    :goto_1
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 109
    .local v0, "e":Ljava/lang/Exception;
    if-eqz p1, :cond_2

    .line 110
    :try_start_4
    sget-object v2, Lorg/eclipse/jetty/xml/XmlParser;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v3, "Schema validation may not be supported: "

    invoke-interface {v2, v3, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 128
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "factory":Ljavax/xml/parsers/SAXParserFactory;
    :catch_1
    move-exception v0

    .line 130
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v2, Lorg/eclipse/jetty/xml/XmlParser;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    const-string v3, "EXCEPTION "

    invoke-interface {v2, v3, v0}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 131
    new-instance v2, Ljava/lang/Error;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v2

    .line 112
    .restart local v1    # "factory":Ljavax/xml/parsers/SAXParserFactory;
    :cond_2
    :try_start_5
    sget-object v2, Lorg/eclipse/jetty/xml/XmlParser;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-interface {v2, v0}, Lorg/eclipse/jetty/util/log/Logger;->ignore(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 123
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v0

    .line 125
    .restart local v0    # "e":Ljava/lang/Exception;
    sget-object v2, Lorg/eclipse/jetty/xml/XmlParser;->LOG:Lorg/eclipse/jetty/util/log/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lorg/eclipse/jetty/util/log/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1
.end method

.method public setXpath(Ljava/lang/String;)V
    .locals 3
    .param p1, "xpath"    # Ljava/lang/String;

    .prologue
    .line 165
    iput-object p1, p0, Lorg/eclipse/jetty/xml/XmlParser;->_xpath:Ljava/lang/String;

    .line 166
    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, "| "

    invoke-direct {v0, p1, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .local v0, "tok":Ljava/util/StringTokenizer;
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 168
    iget-object v1, p0, Lorg/eclipse/jetty/xml/XmlParser;->_xpaths:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/eclipse/jetty/util/LazyList;->add(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lorg/eclipse/jetty/xml/XmlParser;->_xpaths:Ljava/lang/Object;

    goto :goto_0

    .line 169
    :cond_0
    return-void
.end method
