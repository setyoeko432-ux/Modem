.class public final enum Lorg/eclipse/jetty/webapp/Origin;
.super Ljava/lang/Enum;
.source "Origin.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/eclipse/jetty/webapp/Origin;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/eclipse/jetty/webapp/Origin;

.field public static final enum API:Lorg/eclipse/jetty/webapp/Origin;

.field public static final enum Annotation:Lorg/eclipse/jetty/webapp/Origin;

.field public static final enum NotSet:Lorg/eclipse/jetty/webapp/Origin;

.field public static final enum WebDefaults:Lorg/eclipse/jetty/webapp/Origin;

.field public static final enum WebFragment:Lorg/eclipse/jetty/webapp/Origin;

.field public static final enum WebOverride:Lorg/eclipse/jetty/webapp/Origin;

.field public static final enum WebXml:Lorg/eclipse/jetty/webapp/Origin;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 21
    new-instance v0, Lorg/eclipse/jetty/webapp/Origin;

    const-string v1, "NotSet"

    invoke-direct {v0, v1, v3}, Lorg/eclipse/jetty/webapp/Origin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/jetty/webapp/Origin;->NotSet:Lorg/eclipse/jetty/webapp/Origin;

    new-instance v0, Lorg/eclipse/jetty/webapp/Origin;

    const-string v1, "WebXml"

    invoke-direct {v0, v1, v4}, Lorg/eclipse/jetty/webapp/Origin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/jetty/webapp/Origin;->WebXml:Lorg/eclipse/jetty/webapp/Origin;

    new-instance v0, Lorg/eclipse/jetty/webapp/Origin;

    const-string v1, "WebDefaults"

    invoke-direct {v0, v1, v5}, Lorg/eclipse/jetty/webapp/Origin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/jetty/webapp/Origin;->WebDefaults:Lorg/eclipse/jetty/webapp/Origin;

    new-instance v0, Lorg/eclipse/jetty/webapp/Origin;

    const-string v1, "WebOverride"

    invoke-direct {v0, v1, v6}, Lorg/eclipse/jetty/webapp/Origin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/jetty/webapp/Origin;->WebOverride:Lorg/eclipse/jetty/webapp/Origin;

    new-instance v0, Lorg/eclipse/jetty/webapp/Origin;

    const-string v1, "WebFragment"

    invoke-direct {v0, v1, v7}, Lorg/eclipse/jetty/webapp/Origin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/jetty/webapp/Origin;->WebFragment:Lorg/eclipse/jetty/webapp/Origin;

    new-instance v0, Lorg/eclipse/jetty/webapp/Origin;

    const-string v1, "Annotation"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jetty/webapp/Origin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/jetty/webapp/Origin;->Annotation:Lorg/eclipse/jetty/webapp/Origin;

    new-instance v0, Lorg/eclipse/jetty/webapp/Origin;

    const-string v1, "API"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lorg/eclipse/jetty/webapp/Origin;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/eclipse/jetty/webapp/Origin;->API:Lorg/eclipse/jetty/webapp/Origin;

    const/4 v0, 0x7

    new-array v0, v0, [Lorg/eclipse/jetty/webapp/Origin;

    sget-object v1, Lorg/eclipse/jetty/webapp/Origin;->NotSet:Lorg/eclipse/jetty/webapp/Origin;

    aput-object v1, v0, v3

    sget-object v1, Lorg/eclipse/jetty/webapp/Origin;->WebXml:Lorg/eclipse/jetty/webapp/Origin;

    aput-object v1, v0, v4

    sget-object v1, Lorg/eclipse/jetty/webapp/Origin;->WebDefaults:Lorg/eclipse/jetty/webapp/Origin;

    aput-object v1, v0, v5

    sget-object v1, Lorg/eclipse/jetty/webapp/Origin;->WebOverride:Lorg/eclipse/jetty/webapp/Origin;

    aput-object v1, v0, v6

    sget-object v1, Lorg/eclipse/jetty/webapp/Origin;->WebFragment:Lorg/eclipse/jetty/webapp/Origin;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lorg/eclipse/jetty/webapp/Origin;->Annotation:Lorg/eclipse/jetty/webapp/Origin;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lorg/eclipse/jetty/webapp/Origin;->API:Lorg/eclipse/jetty/webapp/Origin;

    aput-object v2, v0, v1

    sput-object v0, Lorg/eclipse/jetty/webapp/Origin;->$VALUES:[Lorg/eclipse/jetty/webapp/Origin;

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

.method public static valueOf(Ljava/lang/String;)Lorg/eclipse/jetty/webapp/Origin;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 21
    const-class v0, Lorg/eclipse/jetty/webapp/Origin;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/webapp/Origin;

    return-object v0
.end method

.method public static values()[Lorg/eclipse/jetty/webapp/Origin;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lorg/eclipse/jetty/webapp/Origin;->$VALUES:[Lorg/eclipse/jetty/webapp/Origin;

    invoke-virtual {v0}, [Lorg/eclipse/jetty/webapp/Origin;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/eclipse/jetty/webapp/Origin;

    return-object v0
.end method
