.class public Ljavax/servlet/HttpMethodConstraintElement;
.super Ljavax/servlet/HttpConstraintElement;
.source "HttpMethodConstraintElement.java"


# instance fields
.field private methodName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "methodName"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0}, Ljavax/servlet/HttpConstraintElement;-><init>()V

    .line 63
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 64
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid HTTP method name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 66
    :cond_1
    iput-object p1, p0, Ljavax/servlet/HttpMethodConstraintElement;->methodName:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavax/servlet/HttpConstraintElement;)V
    .locals 3
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "constraint"    # Ljavax/servlet/HttpConstraintElement;

    .prologue
    .line 81
    invoke-virtual {p2}, Ljavax/servlet/HttpConstraintElement;->getEmptyRoleSemantic()Ljavax/servlet/annotation/ServletSecurity$EmptyRoleSemantic;

    move-result-object v0

    invoke-virtual {p2}, Ljavax/servlet/HttpConstraintElement;->getTransportGuarantee()Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;

    move-result-object v1

    invoke-virtual {p2}, Ljavax/servlet/HttpConstraintElement;->getRolesAllowed()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Ljavax/servlet/HttpConstraintElement;-><init>(Ljavax/servlet/annotation/ServletSecurity$EmptyRoleSemantic;Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;[Ljava/lang/String;)V

    .line 84
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 85
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid HTTP method name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_1
    iput-object p1, p0, Ljavax/servlet/HttpMethodConstraintElement;->methodName:Ljava/lang/String;

    .line 88
    return-void
.end method


# virtual methods
.method public getMethodName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Ljavax/servlet/HttpMethodConstraintElement;->methodName:Ljava/lang/String;

    return-object v0
.end method
