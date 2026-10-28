.class public Ljavax/servlet/ServletContextAttributeEvent;
.super Ljavax/servlet/ServletContextEvent;
.source "ServletContextAttributeEvent.java"


# instance fields
.field private name:Ljava/lang/String;

.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljavax/servlet/ServletContext;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "source"    # Ljavax/servlet/ServletContext;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 85
    invoke-direct {p0, p1}, Ljavax/servlet/ServletContextEvent;-><init>(Ljavax/servlet/ServletContext;)V

    .line 86
    iput-object p2, p0, Ljavax/servlet/ServletContextAttributeEvent;->name:Ljava/lang/String;

    .line 87
    iput-object p3, p0, Ljavax/servlet/ServletContextAttributeEvent;->value:Ljava/lang/Object;

    .line 88
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Ljavax/servlet/ServletContextAttributeEvent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Ljavax/servlet/ServletContextAttributeEvent;->value:Ljava/lang/Object;

    return-object v0
.end method
