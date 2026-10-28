.class public final enum Lorg/eclipse/jetty/webapp/MetaDataComplete;
.super Ljava/lang/Enum;
.source "MetaDataComplete.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/eclipse/jetty/webapp/MetaDataComplete;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/eclipse/jetty/webapp/MetaDataComplete;

.field public static final enum False:Lorg/eclipse/jetty/webapp/MetaDataComplete;

.field public static final enum NotSet:Lorg/eclipse/jetty/webapp/MetaDataComplete;

.field public static final enum True:Lorg/eclipse/jetty/webapp/MetaDataComplete;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lorg/eclipse/jetty/webapp/MetaDataComplete;

    const-string v1, "NotSet"

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jetty/webapp/MetaDataComplete;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/jetty/webapp/MetaDataComplete;->NotSet:Lorg/eclipse/jetty/webapp/MetaDataComplete;

    new-instance v0, Lorg/eclipse/jetty/webapp/MetaDataComplete;

    const-string v1, "True"

    invoke-direct {v0, v1, v3}, Lorg/eclipse/jetty/webapp/MetaDataComplete;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/jetty/webapp/MetaDataComplete;->True:Lorg/eclipse/jetty/webapp/MetaDataComplete;

    new-instance v0, Lorg/eclipse/jetty/webapp/MetaDataComplete;

    const-string v1, "False"

    invoke-direct {v0, v1, v4}, Lorg/eclipse/jetty/webapp/MetaDataComplete;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/jetty/webapp/MetaDataComplete;->False:Lorg/eclipse/jetty/webapp/MetaDataComplete;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/eclipse/jetty/webapp/MetaDataComplete;

    sget-object v1, Lorg/eclipse/jetty/webapp/MetaDataComplete;->NotSet:Lorg/eclipse/jetty/webapp/MetaDataComplete;

    aput-object v1, v0, v2

    sget-object v1, Lorg/eclipse/jetty/webapp/MetaDataComplete;->True:Lorg/eclipse/jetty/webapp/MetaDataComplete;

    aput-object v1, v0, v3

    sget-object v1, Lorg/eclipse/jetty/webapp/MetaDataComplete;->False:Lorg/eclipse/jetty/webapp/MetaDataComplete;

    aput-object v1, v0, v4

    sput-object v0, Lorg/eclipse/jetty/webapp/MetaDataComplete;->$VALUES:[Lorg/eclipse/jetty/webapp/MetaDataComplete;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/eclipse/jetty/webapp/MetaDataComplete;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Lorg/eclipse/jetty/webapp/MetaDataComplete;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/webapp/MetaDataComplete;

    return-object v0
.end method

.method public static values()[Lorg/eclipse/jetty/webapp/MetaDataComplete;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lorg/eclipse/jetty/webapp/MetaDataComplete;->$VALUES:[Lorg/eclipse/jetty/webapp/MetaDataComplete;

    invoke-virtual {v0}, [Lorg/eclipse/jetty/webapp/MetaDataComplete;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jetty/webapp/MetaDataComplete;

    return-object v0
.end method
