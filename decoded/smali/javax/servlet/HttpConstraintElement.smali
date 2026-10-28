.class public Ljavax/servlet/HttpConstraintElement;
.super Ljava/lang/Object;
.source "HttpConstraintElement.java"


# instance fields
.field private emptyRoleSemantic:Ljavax/servlet/annotation/ServletSecurity$EmptyRoleSemantic;

.field private rolesAllowed:[Ljava/lang/String;

.field private transportGuarantee:Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    sget-object v0, Ljavax/servlet/annotation/ServletSecurity$EmptyRoleSemantic;->PERMIT:Ljavax/servlet/annotation/ServletSecurity$EmptyRoleSemantic;

    invoke-direct {p0, v0}, Ljavax/servlet/HttpConstraintElement;-><init>(Ljavax/servlet/annotation/ServletSecurity$EmptyRoleSemantic;)V

    .line 64
    return-void
.end method

.method public constructor <init>(Ljavax/servlet/annotation/ServletSecurity$EmptyRoleSemantic;)V
    .locals 2
    .param p1, "semantic"    # Ljavax/servlet/annotation/ServletSecurity$EmptyRoleSemantic;

    .prologue
    .line 72
    sget-object v0, Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;->NONE:Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Ljavax/servlet/HttpConstraintElement;-><init>(Ljavax/servlet/annotation/ServletSecurity$EmptyRoleSemantic;Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;[Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public varargs constructor <init>(Ljavax/servlet/annotation/ServletSecurity$EmptyRoleSemantic;Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;[Ljava/lang/String;)V
    .locals 2
    .param p1, "semantic"    # Ljavax/servlet/annotation/ServletSecurity$EmptyRoleSemantic;
    .param p2, "guarantee"    # Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;
    .param p3, "roleNames"    # [Ljava/lang/String;

    .prologue
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    sget-object v0, Ljavax/servlet/annotation/ServletSecurity$EmptyRoleSemantic;->DENY:Ljavax/servlet/annotation/ServletSecurity$EmptyRoleSemantic;

    if-ne p1, v0, :cond_0

    array-length v0, p3

    if-lez v0, :cond_0

    .line 103
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Deny semantic with rolesAllowed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 106
    :cond_0
    iput-object p1, p0, Ljavax/servlet/HttpConstraintElement;->emptyRoleSemantic:Ljavax/servlet/annotation/ServletSecurity$EmptyRoleSemantic;

    .line 107
    iput-object p2, p0, Ljavax/servlet/HttpConstraintElement;->transportGuarantee:Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;

    .line 108
    iput-object p3, p0, Ljavax/servlet/HttpConstraintElement;->rolesAllowed:[Ljava/lang/String;

    .line 109
    return-void
.end method

.method public varargs constructor <init>(Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;[Ljava/lang/String;)V
    .locals 1
    .param p1, "guarantee"    # Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;
    .param p2, "roleNames"    # [Ljava/lang/String;

    .prologue
    .line 86
    sget-object v0, Ljavax/servlet/annotation/ServletSecurity$EmptyRoleSemantic;->PERMIT:Ljavax/servlet/annotation/ServletSecurity$EmptyRoleSemantic;

    invoke-direct {p0, v0, p1, p2}, Ljavax/servlet/HttpConstraintElement;-><init>(Ljavax/servlet/annotation/ServletSecurity$EmptyRoleSemantic;Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;[Ljava/lang/String;)V

    .line 87
    return-void
.end method


# virtual methods
.method public getEmptyRoleSemantic()Ljavax/servlet/annotation/ServletSecurity$EmptyRoleSemantic;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Ljavax/servlet/HttpConstraintElement;->emptyRoleSemantic:Ljavax/servlet/annotation/ServletSecurity$EmptyRoleSemantic;

    return-object v0
.end method

.method public getRolesAllowed()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Ljavax/servlet/HttpConstraintElement;->rolesAllowed:[Ljava/lang/String;

    return-object v0
.end method

.method public getTransportGuarantee()Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Ljavax/servlet/HttpConstraintElement;->transportGuarantee:Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;

    return-object v0
.end method
