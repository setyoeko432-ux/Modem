.class public Lorg/eclipse/jetty/xml/XmlParser$Attribute;
.super Ljava/lang/Object;
.source "XmlParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/xml/XmlParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Attribute"
.end annotation


# instance fields
.field private _name:Ljava/lang/String;

.field private _value:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "n"    # Ljava/lang/String;
    .param p2, "v"    # Ljava/lang/String;

    .prologue
    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 471
    iput-object p1, p0, Lorg/eclipse/jetty/xml/XmlParser$Attribute;->_name:Ljava/lang/String;

    .line 472
    iput-object p2, p0, Lorg/eclipse/jetty/xml/XmlParser$Attribute;->_value:Ljava/lang/String;

    .line 473
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lorg/eclipse/jetty/xml/XmlParser$Attribute;->_name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lorg/eclipse/jetty/xml/XmlParser$Attribute;->_value:Ljava/lang/String;

    return-object v0
.end method
