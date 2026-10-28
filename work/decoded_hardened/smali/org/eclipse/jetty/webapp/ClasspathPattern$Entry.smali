.class Lorg/eclipse/jetty/webapp/ClasspathPattern$Entry;
.super Ljava/lang/Object;
.source "ClasspathPattern.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/webapp/ClasspathPattern;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Entry"
.end annotation


# instance fields
.field public classpath:Ljava/lang/String;

.field public partial:Z

.field public result:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/eclipse/jetty/webapp/ClasspathPattern$Entry;->classpath:Ljava/lang/String;

    .line 44
    iput-boolean v1, p0, Lorg/eclipse/jetty/webapp/ClasspathPattern$Entry;->result:Z

    .line 45
    iput-boolean v1, p0, Lorg/eclipse/jetty/webapp/ClasspathPattern$Entry;->partial:Z

    return-void
.end method

.method synthetic constructor <init>(Lorg/eclipse/jetty/webapp/ClasspathPattern$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/eclipse/jetty/webapp/ClasspathPattern$1;

    .prologue
    .line 41
    invoke-direct {p0}, Lorg/eclipse/jetty/webapp/ClasspathPattern$Entry;-><init>()V

    return-void
.end method
