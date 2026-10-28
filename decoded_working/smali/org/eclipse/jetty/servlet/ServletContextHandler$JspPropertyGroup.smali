.class public Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;
.super Ljava/lang/Object;
.source "ServletContextHandler.java"

# interfaces
.implements Ljavax/servlet/descriptor/JspPropertyGroupDescriptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/servlet/ServletContextHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "JspPropertyGroup"
.end annotation


# instance fields
.field private _buffer:Ljava/lang/String;

.field private _defaultContentType:Ljava/lang/String;

.field private _deferredSyntaxAllowedAsLiteral:Ljava/lang/String;

.field private _elIgnored:Ljava/lang/String;

.field private _errorOnUndeclaredNamespace:Ljava/lang/String;

.field private _includeCodas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _includePreludes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _isXml:Ljava/lang/String;

.field private _pageEncoding:Ljava/lang/String;

.field private _scriptingInvalid:Ljava/lang/String;

.field private _trimDirectiveWhitespaces:Ljava/lang/String;

.field private _urlPatterns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 520
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 522
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_urlPatterns:Ljava/util/List;

    .line 527
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_includePreludes:Ljava/util/List;

    .line 528
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_includeCodas:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addIncludeCoda(Ljava/lang/String;)V
    .locals 1
    .param p1, "coda"    # Ljava/lang/String;

    .prologue
    .line 652
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_includeCodas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 653
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_includeCodas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 654
    :cond_0
    return-void
.end method

.method public addIncludePrelude(Ljava/lang/String;)V
    .locals 1
    .param p1, "prelude"    # Ljava/lang/String;

    .prologue
    .line 638
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_includePreludes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 639
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_includePreludes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 640
    :cond_0
    return-void
.end method

.method public addUrlPattern(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 547
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_urlPatterns:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 548
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_urlPatterns:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 549
    :cond_0
    return-void
.end method

.method public getBuffer()Ljava/lang/String;
    .locals 1

    .prologue
    .line 685
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_buffer:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_defaultContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getDeferredSyntaxAllowedAsLiteral()Ljava/lang/String;
    .locals 1

    .prologue
    .line 661
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_deferredSyntaxAllowedAsLiteral:Ljava/lang/String;

    return-object v0
.end method

.method public getElIgnored()Ljava/lang/String;
    .locals 1

    .prologue
    .line 556
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_elIgnored:Ljava/lang/String;

    return-object v0
.end method

.method public getErrorOnUndeclaredNamespace()Ljava/lang/String;
    .locals 1

    .prologue
    .line 693
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_errorOnUndeclaredNamespace:Ljava/lang/String;

    return-object v0
.end method

.method public getIncludeCodas()Ljava/util/Collection;
    .locals 2
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
    .line 647
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_includeCodas:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getIncludePreludes()Ljava/util/Collection;
    .locals 2
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
    .line 633
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_includePreludes:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getIsXml()Ljava/lang/String;
    .locals 1

    .prologue
    .line 625
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_isXml:Ljava/lang/String;

    return-object v0
.end method

.method public getPageEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 569
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_pageEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getScriptingInvalid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 617
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_scriptingInvalid:Ljava/lang/String;

    return-object v0
.end method

.method public getTrimDirectiveWhitespaces()Ljava/lang/String;
    .locals 1

    .prologue
    .line 669
    iget-object v0, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_trimDirectiveWhitespaces:Ljava/lang/String;

    return-object v0
.end method

.method public getUrlPatterns()Ljava/util/Collection;
    .locals 2
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
    .line 542
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_urlPatterns:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public setBuffer(Ljava/lang/String;)V
    .locals 0
    .param p1, "buffer"    # Ljava/lang/String;

    .prologue
    .line 604
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_buffer:Ljava/lang/String;

    .line 605
    return-void
.end method

.method public setDefaultContentType(Ljava/lang/String;)V
    .locals 0
    .param p1, "defaultContentType"    # Ljava/lang/String;

    .prologue
    .line 599
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_defaultContentType:Ljava/lang/String;

    .line 600
    return-void
.end method

.method public setDeferredSyntaxAllowedAsLiteral(Ljava/lang/String;)V
    .locals 0
    .param p1, "deferredSyntaxAllowedAsLiteral"    # Ljava/lang/String;

    .prologue
    .line 589
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_deferredSyntaxAllowedAsLiteral:Ljava/lang/String;

    .line 590
    return-void
.end method

.method public setElIgnored(Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 561
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_elIgnored:Ljava/lang/String;

    .line 562
    return-void
.end method

.method public setErrorOnUndeclaredNamespace(Ljava/lang/String;)V
    .locals 0
    .param p1, "errorOnUndeclaredNamespace"    # Ljava/lang/String;

    .prologue
    .line 609
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_errorOnUndeclaredNamespace:Ljava/lang/String;

    .line 610
    return-void
.end method

.method public setIsXml(Ljava/lang/String;)V
    .locals 0
    .param p1, "isXml"    # Ljava/lang/String;

    .prologue
    .line 584
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_isXml:Ljava/lang/String;

    .line 585
    return-void
.end method

.method public setPageEncoding(Ljava/lang/String;)V
    .locals 0
    .param p1, "pageEncoding"    # Ljava/lang/String;

    .prologue
    .line 574
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_pageEncoding:Ljava/lang/String;

    .line 575
    return-void
.end method

.method public setScriptingInvalid(Ljava/lang/String;)V
    .locals 0
    .param p1, "scriptingInvalid"    # Ljava/lang/String;

    .prologue
    .line 579
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_scriptingInvalid:Ljava/lang/String;

    .line 580
    return-void
.end method

.method public setTrimDirectiveWhitespaces(Ljava/lang/String;)V
    .locals 0
    .param p1, "trimDirectiveWhitespaces"    # Ljava/lang/String;

    .prologue
    .line 594
    iput-object p1, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_trimDirectiveWhitespaces:Ljava/lang/String;

    .line 595
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 698
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 699
    .local v3, "sb":Ljava/lang/StringBuffer;
    const-string v4, "JspPropertyGroupDescriptor:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 700
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " el-ignored="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_elIgnored:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 701
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " is-xml="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_isXml:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 702
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " page-encoding="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_pageEncoding:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 703
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " scripting-invalid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_scriptingInvalid:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 704
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " deferred-syntax-allowed-as-literal="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_deferredSyntaxAllowedAsLiteral:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 705
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " trim-directive-whitespaces"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_trimDirectiveWhitespaces:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 706
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " default-content-type="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_defaultContentType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 707
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " buffer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_buffer:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 708
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " error-on-undeclared-namespace="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_errorOnUndeclaredNamespace:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 709
    iget-object v4, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_includePreludes:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 710
    .local v2, "prelude":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " include-prelude="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 711
    .end local v2    # "prelude":Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lorg/eclipse/jetty/servlet/ServletContextHandler$JspPropertyGroup;->_includeCodas:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 712
    .local v0, "coda":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " include-coda="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 713
    .end local v0    # "coda":Ljava/lang/String;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method
