.class public Lorg/eclipse/jetty/webapp/FragmentDescriptor;
.super Lorg/eclipse/jetty/webapp/WebDescriptor;
.source "FragmentDescriptor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;
    }
.end annotation


# static fields
.field public static final NAMELESS:Ljava/lang/String; = "@@-NAMELESS-@@"

.field protected static _counter:I


# instance fields
.field protected _afters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected _befores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected _name:Ljava/lang/String;

.field protected _otherType:Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const/4 v0, 0x0

    sput v0, Lorg/eclipse/jetty/webapp/FragmentDescriptor;->_counter:I

    return-void
.end method

.method public constructor <init>(Lorg/eclipse/jetty/util/resource/Resource;)V
    .locals 1
    .param p1, "xml"    # Lorg/eclipse/jetty/util/resource/Resource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/webapp/WebDescriptor;-><init>(Lorg/eclipse/jetty/util/resource/Resource;)V

    .line 41
    sget-object v0, Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;->None:Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/FragmentDescriptor;->_otherType:Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/FragmentDescriptor;->_befores:Ljava/util/List;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/FragmentDescriptor;->_afters:Ljava/util/List;

    .line 53
    return-void
.end method


# virtual methods
.method public getAfters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/FragmentDescriptor;->_afters:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBefores()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/FragmentDescriptor;->_befores:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/FragmentDescriptor;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getOrdering()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 167
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOtherType()Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lorg/eclipse/jetty/webapp/FragmentDescriptor;->_otherType:Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;

    return-object v0
.end method

.method public parse()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 64
    invoke-super {p0}, Lorg/eclipse/jetty/webapp/WebDescriptor;->parse()V

    .line 65
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/FragmentDescriptor;->processName()V

    .line 66
    return-void
.end method

.method public processAfters(Lorg/eclipse/jetty/xml/XmlParser$Node;)V
    .locals 7
    .param p1, "ordering"    # Lorg/eclipse/jetty/xml/XmlParser$Node;

    .prologue
    .line 126
    const-string v4, "after"

    invoke-virtual {p1, v4}, Lorg/eclipse/jetty/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/eclipse/jetty/xml/XmlParser$Node;

    move-result-object v0

    .line 127
    .local v0, "after":Lorg/eclipse/jetty/xml/XmlParser$Node;
    if-nez v0, :cond_1

    .line 148
    :cond_0
    return-void

    .line 130
    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jetty/xml/XmlParser$Node;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 131
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    const/4 v2, 0x0

    .line 132
    .local v2, "node":Lorg/eclipse/jetty/xml/XmlParser$Node;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 134
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 135
    .local v3, "o":Ljava/lang/Object;
    instance-of v4, v3, Lorg/eclipse/jetty/xml/XmlParser$Node;

    if-eqz v4, :cond_2

    move-object v2, v3

    .line 136
    check-cast v2, Lorg/eclipse/jetty/xml/XmlParser$Node;

    .line 137
    invoke-virtual {v2}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getTag()Ljava/lang/String;

    move-result-object v4

    const-string v5, "others"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 139
    iget-object v4, p0, Lorg/eclipse/jetty/webapp/FragmentDescriptor;->_otherType:Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;

    sget-object v5, Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;->None:Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;

    if-eq v4, v5, :cond_3

    .line 140
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Duplicate <other> clause detected in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/eclipse/jetty/webapp/FragmentDescriptor;->_xml:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v6}, Lorg/eclipse/jetty/util/resource/Resource;->getURI()Ljava/net/URI;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 142
    :cond_3
    sget-object v4, Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;->After:Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;

    iput-object v4, p0, Lorg/eclipse/jetty/webapp/FragmentDescriptor;->_otherType:Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;

    goto :goto_0

    .line 145
    :cond_4
    invoke-virtual {v2}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getTag()Ljava/lang/String;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 146
    iget-object v4, p0, Lorg/eclipse/jetty/webapp/FragmentDescriptor;->_afters:Ljava/util/List;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Lorg/eclipse/jetty/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public processBefores(Lorg/eclipse/jetty/xml/XmlParser$Node;)V
    .locals 7
    .param p1, "ordering"    # Lorg/eclipse/jetty/xml/XmlParser$Node;

    .prologue
    .line 100
    const-string v4, "before"

    invoke-virtual {p1, v4}, Lorg/eclipse/jetty/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/eclipse/jetty/xml/XmlParser$Node;

    move-result-object v0

    .line 101
    .local v0, "before":Lorg/eclipse/jetty/xml/XmlParser$Node;
    if-nez v0, :cond_1

    .line 121
    :cond_0
    return-void

    .line 104
    :cond_1
    invoke-virtual {v0}, Lorg/eclipse/jetty/xml/XmlParser$Node;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 105
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    const/4 v2, 0x0

    .line 106
    .local v2, "node":Lorg/eclipse/jetty/xml/XmlParser$Node;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 108
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 109
    .local v3, "o":Ljava/lang/Object;
    instance-of v4, v3, Lorg/eclipse/jetty/xml/XmlParser$Node;

    if-eqz v4, :cond_2

    move-object v2, v3

    .line 110
    check-cast v2, Lorg/eclipse/jetty/xml/XmlParser$Node;

    .line 111
    invoke-virtual {v2}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getTag()Ljava/lang/String;

    move-result-object v4

    const-string v5, "others"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 113
    iget-object v4, p0, Lorg/eclipse/jetty/webapp/FragmentDescriptor;->_otherType:Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;

    sget-object v5, Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;->None:Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;

    if-eq v4, v5, :cond_3

    .line 114
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Duplicate <other> clause detected in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/eclipse/jetty/webapp/FragmentDescriptor;->_xml:Lorg/eclipse/jetty/util/resource/Resource;

    invoke-virtual {v6}, Lorg/eclipse/jetty/util/resource/Resource;->getURI()Ljava/net/URI;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 116
    :cond_3
    sget-object v4, Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;->Before:Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;

    iput-object v4, p0, Lorg/eclipse/jetty/webapp/FragmentDescriptor;->_otherType:Lorg/eclipse/jetty/webapp/FragmentDescriptor$OtherType;

    goto :goto_0

    .line 118
    :cond_4
    invoke-virtual {v2}, Lorg/eclipse/jetty/xml/XmlParser$Node;->getTag()Ljava/lang/String;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 119
    iget-object v4, p0, Lorg/eclipse/jetty/webapp/FragmentDescriptor;->_befores:Ljava/util/List;

    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v2, v5, v6}, Lorg/eclipse/jetty/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public processName()V
    .locals 6

    .prologue
    .line 70
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/FragmentDescriptor;->getRoot()Lorg/eclipse/jetty/xml/XmlParser$Node;

    move-result-object v1

    .line 71
    .local v1, "root":Lorg/eclipse/jetty/xml/XmlParser$Node;
    const-string v3, "name"

    invoke-virtual {v1, v3}, Lorg/eclipse/jetty/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/eclipse/jetty/xml/XmlParser$Node;

    move-result-object v0

    .line 72
    .local v0, "nameNode":Lorg/eclipse/jetty/xml/XmlParser$Node;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@@-NAMELESS-@@"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget v4, Lorg/eclipse/jetty/webapp/FragmentDescriptor;->_counter:I

    add-int/lit8 v5, v4, 0x1

    sput v5, Lorg/eclipse/jetty/webapp/FragmentDescriptor;->_counter:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/eclipse/jetty/webapp/FragmentDescriptor;->_name:Ljava/lang/String;

    .line 73
    if-eqz v0, :cond_0

    .line 75
    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Lorg/eclipse/jetty/xml/XmlParser$Node;->toString(ZZ)Ljava/lang/String;

    move-result-object v2

    .line 76
    .local v2, "tmp":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 77
    iput-object v2, p0, Lorg/eclipse/jetty/webapp/FragmentDescriptor;->_name:Ljava/lang/String;

    .line 79
    .end local v2    # "tmp":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public processOrdering()V
    .locals 3

    .prologue
    .line 84
    invoke-virtual {p0}, Lorg/eclipse/jetty/webapp/FragmentDescriptor;->getRoot()Lorg/eclipse/jetty/xml/XmlParser$Node;

    move-result-object v1

    .line 86
    .local v1, "root":Lorg/eclipse/jetty/xml/XmlParser$Node;
    const-string v2, "ordering"

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/xml/XmlParser$Node;->get(Ljava/lang/String;)Lorg/eclipse/jetty/xml/XmlParser$Node;

    move-result-object v0

    .line 87
    .local v0, "ordering":Lorg/eclipse/jetty/xml/XmlParser$Node;
    if-nez v0, :cond_0

    .line 94
    :goto_0
    return-void

    .line 90
    :cond_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lorg/eclipse/jetty/webapp/FragmentDescriptor;->_isOrdered:Z

    .line 92
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/webapp/FragmentDescriptor;->processBefores(Lorg/eclipse/jetty/xml/XmlParser$Node;)V

    .line 93
    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/webapp/FragmentDescriptor;->processAfters(Lorg/eclipse/jetty/xml/XmlParser$Node;)V

    goto :goto_0
.end method
