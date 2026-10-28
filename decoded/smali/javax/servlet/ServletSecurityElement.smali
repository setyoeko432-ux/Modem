.class public Ljavax/servlet/ServletSecurityElement;
.super Ljavax/servlet/HttpConstraintElement;
.source "ServletSecurityElement.java"


# instance fields
.field private methodConstraints:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Ljavax/servlet/HttpMethodConstraintElement;",
            ">;"
        }
    .end annotation
.end field

.field private methodNames:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
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
    .line 62
    invoke-direct {p0}, Ljavax/servlet/HttpConstraintElement;-><init>()V

    .line 63
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljavax/servlet/ServletSecurityElement;->methodConstraints:Ljava/util/Collection;

    .line 64
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljavax/servlet/ServletSecurityElement;->methodNames:Ljava/util/Collection;

    .line 65
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljavax/servlet/HttpMethodConstraintElement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, "methodConstraints":Ljava/util/Collection;, "Ljava/util/Collection<Ljavax/servlet/HttpMethodConstraintElement;>;"
    invoke-direct {p0}, Ljavax/servlet/HttpConstraintElement;-><init>()V

    .line 97
    if-nez p1, :cond_0

    new-instance p1, Ljava/util/HashSet;

    .end local p1    # "methodConstraints":Ljava/util/Collection;, "Ljava/util/Collection<Ljavax/servlet/HttpMethodConstraintElement;>;"
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    :cond_0
    iput-object p1, p0, Ljavax/servlet/ServletSecurityElement;->methodConstraints:Ljava/util/Collection;

    .line 99
    iget-object v0, p0, Ljavax/servlet/ServletSecurityElement;->methodConstraints:Ljava/util/Collection;

    invoke-direct {p0, v0}, Ljavax/servlet/ServletSecurityElement;->checkMethodNames(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Ljavax/servlet/ServletSecurityElement;->methodNames:Ljava/util/Collection;

    .line 100
    return-void
.end method

.method public constructor <init>(Ljavax/servlet/HttpConstraintElement;)V
    .locals 3
    .param p1, "constraint"    # Ljavax/servlet/HttpConstraintElement;

    .prologue
    .line 76
    invoke-virtual {p1}, Ljavax/servlet/HttpConstraintElement;->getEmptyRoleSemantic()Ljavax/servlet/annotation/ServletSecurity$EmptyRoleSemantic;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/servlet/HttpConstraintElement;->getTransportGuarantee()Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/servlet/HttpConstraintElement;->getRolesAllowed()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Ljavax/servlet/HttpConstraintElement;-><init>(Ljavax/servlet/annotation/ServletSecurity$EmptyRoleSemantic;Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;[Ljava/lang/String;)V

    .line 79
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ljavax/servlet/ServletSecurityElement;->methodConstraints:Ljava/util/Collection;

    .line 80
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Ljavax/servlet/ServletSecurityElement;->methodNames:Ljava/util/Collection;

    .line 81
    return-void
.end method

.method public constructor <init>(Ljavax/servlet/HttpConstraintElement;Ljava/util/Collection;)V
    .locals 3
    .param p1, "constraint"    # Ljavax/servlet/HttpConstraintElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/servlet/HttpConstraintElement;",
            "Ljava/util/Collection",
            "<",
            "Ljavax/servlet/HttpMethodConstraintElement;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p2, "methodConstraints":Ljava/util/Collection;, "Ljava/util/Collection<Ljavax/servlet/HttpMethodConstraintElement;>;"
    invoke-virtual {p1}, Ljavax/servlet/HttpConstraintElement;->getEmptyRoleSemantic()Ljavax/servlet/annotation/ServletSecurity$EmptyRoleSemantic;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/servlet/HttpConstraintElement;->getTransportGuarantee()Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/servlet/HttpConstraintElement;->getRolesAllowed()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Ljavax/servlet/HttpConstraintElement;-><init>(Ljavax/servlet/annotation/ServletSecurity$EmptyRoleSemantic;Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;[Ljava/lang/String;)V

    .line 120
    if-nez p2, :cond_0

    new-instance p2, Ljava/util/HashSet;

    .end local p2    # "methodConstraints":Ljava/util/Collection;, "Ljava/util/Collection<Ljavax/servlet/HttpMethodConstraintElement;>;"
    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    :cond_0
    iput-object p2, p0, Ljavax/servlet/ServletSecurityElement;->methodConstraints:Ljava/util/Collection;

    .line 122
    iget-object v0, p0, Ljavax/servlet/ServletSecurityElement;->methodConstraints:Ljava/util/Collection;

    invoke-direct {p0, v0}, Ljavax/servlet/ServletSecurityElement;->checkMethodNames(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Ljavax/servlet/ServletSecurityElement;->methodNames:Ljava/util/Collection;

    .line 123
    return-void
.end method

.method public constructor <init>(Ljavax/servlet/annotation/ServletSecurity;)V
    .locals 11
    .param p1, "annotation"    # Ljavax/servlet/annotation/ServletSecurity;

    .prologue
    .line 134
    invoke-interface {p1}, Ljavax/servlet/annotation/ServletSecurity;->value()Ljavax/servlet/annotation/HttpConstraint;

    move-result-object v4

    invoke-interface {v4}, Ljavax/servlet/annotation/HttpConstraint;->value()Ljavax/servlet/annotation/ServletSecurity$EmptyRoleSemantic;

    move-result-object v4

    invoke-interface {p1}, Ljavax/servlet/annotation/ServletSecurity;->value()Ljavax/servlet/annotation/HttpConstraint;

    move-result-object v5

    invoke-interface {v5}, Ljavax/servlet/annotation/HttpConstraint;->transportGuarantee()Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;

    move-result-object v5

    invoke-interface {p1}, Ljavax/servlet/annotation/ServletSecurity;->value()Ljavax/servlet/annotation/HttpConstraint;

    move-result-object v6

    invoke-interface {v6}, Ljavax/servlet/annotation/HttpConstraint;->rolesAllowed()[Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v5, v6}, Ljavax/servlet/HttpConstraintElement;-><init>(Ljavax/servlet/annotation/ServletSecurity$EmptyRoleSemantic;Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;[Ljava/lang/String;)V

    .line 137
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iput-object v4, p0, Ljavax/servlet/ServletSecurityElement;->methodConstraints:Ljava/util/Collection;

    .line 139
    invoke-interface {p1}, Ljavax/servlet/annotation/ServletSecurity;->httpMethodConstraints()[Ljavax/servlet/annotation/HttpMethodConstraint;

    move-result-object v0

    .local v0, "arr$":[Ljavax/servlet/annotation/HttpMethodConstraint;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 140
    .local v1, "constraint":Ljavax/servlet/annotation/HttpMethodConstraint;
    iget-object v4, p0, Ljavax/servlet/ServletSecurityElement;->methodConstraints:Ljava/util/Collection;

    new-instance v5, Ljavax/servlet/HttpMethodConstraintElement;

    invoke-interface {v1}, Ljavax/servlet/annotation/HttpMethodConstraint;->value()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljavax/servlet/HttpConstraintElement;

    invoke-interface {v1}, Ljavax/servlet/annotation/HttpMethodConstraint;->emptyRoleSemantic()Ljavax/servlet/annotation/ServletSecurity$EmptyRoleSemantic;

    move-result-object v8

    invoke-interface {v1}, Ljavax/servlet/annotation/HttpMethodConstraint;->transportGuarantee()Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;

    move-result-object v9

    invoke-interface {v1}, Ljavax/servlet/annotation/HttpMethodConstraint;->rolesAllowed()[Ljava/lang/String;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Ljavax/servlet/HttpConstraintElement;-><init>(Ljavax/servlet/annotation/ServletSecurity$EmptyRoleSemantic;Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;[Ljava/lang/String;)V

    invoke-direct {v5, v6, v7}, Ljavax/servlet/HttpMethodConstraintElement;-><init>(Ljava/lang/String;Ljavax/servlet/HttpConstraintElement;)V

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 139
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 147
    .end local v1    # "constraint":Ljavax/servlet/annotation/HttpMethodConstraint;
    :cond_0
    iget-object v4, p0, Ljavax/servlet/ServletSecurityElement;->methodConstraints:Ljava/util/Collection;

    invoke-direct {p0, v4}, Ljavax/servlet/ServletSecurityElement;->checkMethodNames(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v4

    iput-object v4, p0, Ljavax/servlet/ServletSecurityElement;->methodNames:Ljava/util/Collection;

    .line 148
    return-void
.end method

.method private checkMethodNames(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljavax/servlet/HttpMethodConstraintElement;",
            ">;)",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    .local p1, "methodConstraints":Ljava/util/Collection;, "Ljava/util/Collection<Ljavax/servlet/HttpMethodConstraintElement;>;"
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 193
    .local v3, "methodNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavax/servlet/HttpMethodConstraintElement;

    .line 194
    .local v1, "methodConstraint":Ljavax/servlet/HttpMethodConstraintElement;
    invoke-virtual {v1}, Ljavax/servlet/HttpMethodConstraintElement;->getMethodName()Ljava/lang/String;

    move-result-object v2

    .line 195
    .local v2, "methodName":Ljava/lang/String;
    invoke-interface {v3, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 196
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Duplicate HTTP method name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 200
    .end local v1    # "methodConstraint":Ljavax/servlet/HttpMethodConstraintElement;
    .end local v2    # "methodName":Ljava/lang/String;
    :cond_1
    return-object v3
.end method


# virtual methods
.method public getHttpMethodConstraints()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Ljavax/servlet/HttpMethodConstraintElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Ljavax/servlet/ServletSecurityElement;->methodConstraints:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public getMethodNames()Ljava/util/Collection;
    .locals 1
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
    .line 176
    iget-object v0, p0, Ljavax/servlet/ServletSecurityElement;->methodNames:Ljava/util/Collection;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
