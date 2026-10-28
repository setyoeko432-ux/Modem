.class public Lorg/eclipse/jetty/security/ConstraintSecurityHandler;
.super Lorg/eclipse/jetty/security/SecurityHandler;
.source "ConstraintSecurityHandler.java"

# interfaces
.implements Lorg/eclipse/jetty/security/ConstraintAware;


# static fields
.field private static final OMISSION_SUFFIX:Ljava/lang/String; = ".omission"


# instance fields
.field private final _constraintMap:Lorg/eclipse/jetty/http/PathMap;

.field private final _constraintMappings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/security/ConstraintMapping;",
            ">;"
        }
    .end annotation
.end field

.field private final _roles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _strict:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    invoke-direct {p0}, Lorg/eclipse/jetty/security/SecurityHandler;-><init>()V

    .line 62
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_constraintMappings:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_roles:Ljava/util/Set;

    .line 64
    new-instance v0, Lorg/eclipse/jetty/http/PathMap;

    invoke-direct {v0}, Lorg/eclipse/jetty/http/PathMap;-><init>()V

    iput-object v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_constraintMap:Lorg/eclipse/jetty/http/PathMap;

    .line 65
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_strict:Z

    return-void
.end method

.method public static createConstraint()Lorg/eclipse/jetty/util/security/Constraint;
    .locals 1

    .prologue
    .line 74
    new-instance v0, Lorg/eclipse/jetty/util/security/Constraint;

    invoke-direct {v0}, Lorg/eclipse/jetty/util/security/Constraint;-><init>()V

    return-object v0
.end method

.method public static createConstraint(Ljava/lang/String;Ljavax/servlet/HttpConstraintElement;)Lorg/eclipse/jetty/util/security/Constraint;
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "element"    # Ljavax/servlet/HttpConstraintElement;

    .prologue
    .line 124
    invoke-virtual {p1}, Ljavax/servlet/HttpConstraintElement;->getRolesAllowed()[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljavax/servlet/HttpConstraintElement;->getEmptyRoleSemantic()Ljavax/servlet/annotation/ServletSecurity$EmptyRoleSemantic;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/servlet/HttpConstraintElement;->getTransportGuarantee()Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;

    move-result-object v2

    invoke-static {p0, v0, v1, v2}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->createConstraint(Ljava/lang/String;[Ljava/lang/String;Ljavax/servlet/annotation/ServletSecurity$EmptyRoleSemantic;Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;)Lorg/eclipse/jetty/util/security/Constraint;

    move-result-object v0

    return-object v0
.end method

.method public static createConstraint(Ljava/lang/String;Z[Ljava/lang/String;I)Lorg/eclipse/jetty/util/security/Constraint;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "authenticate"    # Z
    .param p2, "roles"    # [Ljava/lang/String;
    .param p3, "dataConstraint"    # I

    .prologue
    .line 106
    invoke-static {}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->createConstraint()Lorg/eclipse/jetty/util/security/Constraint;

    move-result-object v0

    .line 107
    .local v0, "constraint":Lorg/eclipse/jetty/util/security/Constraint;
    if-eqz p0, :cond_0

    .line 108
    invoke-virtual {v0, p0}, Lorg/eclipse/jetty/util/security/Constraint;->setName(Ljava/lang/String;)V

    .line 109
    :cond_0
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/security/Constraint;->setAuthenticate(Z)V

    .line 110
    invoke-virtual {v0, p2}, Lorg/eclipse/jetty/util/security/Constraint;->setRoles([Ljava/lang/String;)V

    .line 111
    invoke-virtual {v0, p3}, Lorg/eclipse/jetty/util/security/Constraint;->setDataConstraint(I)V

    .line 112
    return-object v0
.end method

.method public static createConstraint(Ljava/lang/String;[Ljava/lang/String;Ljavax/servlet/annotation/ServletSecurity$EmptyRoleSemantic;Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;)Lorg/eclipse/jetty/util/security/Constraint;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "rolesAllowed"    # [Ljava/lang/String;
    .param p2, "permitOrDeny"    # Ljavax/servlet/annotation/ServletSecurity$EmptyRoleSemantic;
    .param p3, "transport"    # Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;

    .prologue
    const/4 v4, 0x1

    const/4 v1, 0x0

    .line 138
    invoke-static {}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->createConstraint()Lorg/eclipse/jetty/util/security/Constraint;

    move-result-object v0

    .line 140
    .local v0, "constraint":Lorg/eclipse/jetty/util/security/Constraint;
    if-eqz p1, :cond_0

    array-length v2, p1

    if-nez v2, :cond_3

    .line 142
    :cond_0
    sget-object v2, Ljavax/servlet/annotation/ServletSecurity$EmptyRoleSemantic;->DENY:Ljavax/servlet/annotation/ServletSecurity$EmptyRoleSemantic;

    invoke-virtual {p2, v2}, Ljavax/servlet/annotation/ServletSecurity$EmptyRoleSemantic;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-Deny"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/util/security/Constraint;->setName(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v0, v4}, Lorg/eclipse/jetty/util/security/Constraint;->setAuthenticate(Z)V

    .line 164
    :goto_0
    sget-object v2, Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;->CONFIDENTIAL:Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;

    invoke-virtual {p3, v2}, Ljavax/servlet/annotation/ServletSecurity$TransportGuarantee;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x2

    :cond_1
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/util/security/Constraint;->setDataConstraint(I)V

    .line 165
    return-object v0

    .line 151
    :cond_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-Permit"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/util/security/Constraint;->setName(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/util/security/Constraint;->setAuthenticate(Z)V

    goto :goto_0

    .line 158
    :cond_3
    invoke-virtual {v0, v4}, Lorg/eclipse/jetty/util/security/Constraint;->setAuthenticate(Z)V

    .line 159
    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/util/security/Constraint;->setRoles([Ljava/lang/String;)V

    .line 160
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-RolesAllowed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/eclipse/jetty/util/security/Constraint;->setName(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static createConstraint(Lorg/eclipse/jetty/util/security/Constraint;)Lorg/eclipse/jetty/util/security/Constraint;
    .locals 2
    .param p0, "constraint"    # Lorg/eclipse/jetty/util/security/Constraint;

    .prologue
    .line 86
    :try_start_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/util/security/Constraint;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/util/security/Constraint;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 88
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static createConstraintsWithMappingsForPath(Ljava/lang/String;Ljava/lang/String;Ljavax/servlet/ServletSecurityElement;)Ljava/util/List;
    .locals 10
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "pathSpec"    # Ljava/lang/String;
    .param p2, "securityElement"    # Ljavax/servlet/ServletSecurityElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljavax/servlet/ServletSecurityElement;",
            ")",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/security/ConstraintMapping;",
            ">;"
        }
    .end annotation

    .prologue
    .line 230
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 233
    .local v4, "mappings":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/security/ConstraintMapping;>;"
    invoke-static {p0, p2}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->createConstraint(Ljava/lang/String;Ljavax/servlet/HttpConstraintElement;)Lorg/eclipse/jetty/util/security/Constraint;

    move-result-object v0

    .line 236
    .local v0, "constraint":Lorg/eclipse/jetty/util/security/Constraint;
    new-instance v1, Lorg/eclipse/jetty/security/ConstraintMapping;

    invoke-direct {v1}, Lorg/eclipse/jetty/security/ConstraintMapping;-><init>()V

    .line 237
    .local v1, "defaultMapping":Lorg/eclipse/jetty/security/ConstraintMapping;
    invoke-virtual {v1, p1}, Lorg/eclipse/jetty/security/ConstraintMapping;->setPathSpec(Ljava/lang/String;)V

    .line 238
    invoke-virtual {v1, v0}, Lorg/eclipse/jetty/security/ConstraintMapping;->setConstraint(Lorg/eclipse/jetty/util/security/Constraint;)V

    .line 239
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 246
    .local v8, "methodOmissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljavax/servlet/ServletSecurityElement;->getHttpMethodConstraints()Ljava/util/Collection;

    move-result-object v7

    .line 247
    .local v7, "methodConstraints":Ljava/util/Collection;, "Ljava/util/Collection<Ljavax/servlet/HttpMethodConstraintElement;>;"
    if-eqz v7, :cond_1

    .line 249
    invoke-interface {v7}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavax/servlet/HttpMethodConstraintElement;

    .line 252
    .local v6, "methodConstraint":Ljavax/servlet/HttpMethodConstraintElement;
    invoke-static {p0, v6}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->createConstraint(Ljava/lang/String;Ljavax/servlet/HttpConstraintElement;)Lorg/eclipse/jetty/util/security/Constraint;

    move-result-object v5

    .line 253
    .local v5, "mconstraint":Lorg/eclipse/jetty/util/security/Constraint;
    new-instance v3, Lorg/eclipse/jetty/security/ConstraintMapping;

    invoke-direct {v3}, Lorg/eclipse/jetty/security/ConstraintMapping;-><init>()V

    .line 254
    .local v3, "mapping":Lorg/eclipse/jetty/security/ConstraintMapping;
    invoke-virtual {v3, v5}, Lorg/eclipse/jetty/security/ConstraintMapping;->setConstraint(Lorg/eclipse/jetty/util/security/Constraint;)V

    .line 255
    invoke-virtual {v3, p1}, Lorg/eclipse/jetty/security/ConstraintMapping;->setPathSpec(Ljava/lang/String;)V

    .line 256
    invoke-virtual {v6}, Ljavax/servlet/HttpMethodConstraintElement;->getMethodName()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 258
    invoke-virtual {v6}, Ljavax/servlet/HttpMethodConstraintElement;->getMethodName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Lorg/eclipse/jetty/security/ConstraintMapping;->setMethod(Ljava/lang/String;)V

    .line 260
    invoke-virtual {v6}, Ljavax/servlet/HttpMethodConstraintElement;->getMethodName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    :cond_0
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 266
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v3    # "mapping":Lorg/eclipse/jetty/security/ConstraintMapping;
    .end local v5    # "mconstraint":Lorg/eclipse/jetty/util/security/Constraint;
    .end local v6    # "methodConstraint":Ljavax/servlet/HttpMethodConstraintElement;
    :cond_1
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    if-lez v9, :cond_2

    .line 267
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-interface {v8, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    invoke-virtual {v1, v9}, Lorg/eclipse/jetty/security/ConstraintMapping;->setMethodOmissions([Ljava/lang/String;)V

    .line 269
    :cond_2
    return-object v4
.end method

.method public static getConstraintMappingsForPath(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .param p0, "pathSpec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/security/ConstraintMapping;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/security/ConstraintMapping;",
            ">;"
        }
    .end annotation

    .prologue
    .line 178
    .local p1, "constraintMappings":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/security/ConstraintMapping;>;"
    if-eqz p0, :cond_0

    const-string v3, ""

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 179
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 189
    :cond_1
    return-object v2

    .line 181
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .local v2, "mappings":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/security/ConstraintMapping;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/security/ConstraintMapping;

    .line 184
    .local v1, "mapping":Lorg/eclipse/jetty/security/ConstraintMapping;
    invoke-virtual {v1}, Lorg/eclipse/jetty/security/ConstraintMapping;->getPathSpec()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 186
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static removeConstraintMappingsForPath(Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 5
    .param p0, "pathSpec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/security/ConstraintMapping;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/security/ConstraintMapping;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    .local p1, "constraintMappings":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/security/ConstraintMapping;>;"
    if-eqz p0, :cond_0

    const-string v3, ""

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 204
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    .line 215
    :cond_1
    return-object v2

    .line 206
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 207
    .local v2, "mappings":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/security/ConstraintMapping;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/security/ConstraintMapping;

    .line 210
    .local v1, "mapping":Lorg/eclipse/jetty/security/ConstraintMapping;
    invoke-virtual {v1}, Lorg/eclipse/jetty/security/ConstraintMapping;->getPathSpec()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 212
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method


# virtual methods
.method public addConstraintMapping(Lorg/eclipse/jetty/security/ConstraintMapping;)V
    .locals 5
    .param p1, "mapping"    # Lorg/eclipse/jetty/security/ConstraintMapping;

    .prologue
    .line 406
    iget-object v4, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_constraintMappings:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 407
    invoke-virtual {p1}, Lorg/eclipse/jetty/security/ConstraintMapping;->getConstraint()Lorg/eclipse/jetty/util/security/Constraint;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lorg/eclipse/jetty/security/ConstraintMapping;->getConstraint()Lorg/eclipse/jetty/util/security/Constraint;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/jetty/util/security/Constraint;->getRoles()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 408
    invoke-virtual {p1}, Lorg/eclipse/jetty/security/ConstraintMapping;->getConstraint()Lorg/eclipse/jetty/util/security/Constraint;

    move-result-object v4

    invoke-virtual {v4}, Lorg/eclipse/jetty/util/security/Constraint;->getRoles()[Ljava/lang/String;

    move-result-object v0

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 409
    .local v3, "role":Ljava/lang/String;
    invoke-virtual {p0, v3}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->addRole(Ljava/lang/String;)V

    .line 408
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 411
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "role":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->isStarted()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 413
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->processConstraintMapping(Lorg/eclipse/jetty/security/ConstraintMapping;)V

    .line 415
    :cond_1
    return-void
.end method

.method public addRole(Ljava/lang/String;)V
    .locals 6
    .param p1, "role"    # Ljava/lang/String;

    .prologue
    .line 423
    iget-object v5, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_roles:Ljava/util/Set;

    invoke-interface {v5, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 424
    .local v4, "modified":Z
    invoke-virtual {p0}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->isStarted()Z

    move-result v5

    if-eqz v5, :cond_2

    if-eqz v4, :cond_2

    iget-boolean v5, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_strict:Z

    if-eqz v5, :cond_2

    .line 427
    iget-object v5, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_constraintMap:Lorg/eclipse/jetty/http/PathMap;

    invoke-virtual {v5}, Lorg/eclipse/jetty/http/PathMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 429
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/eclipse/jetty/security/RoleInfo;>;"
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/eclipse/jetty/security/RoleInfo;

    .line 431
    .local v2, "info":Lorg/eclipse/jetty/security/RoleInfo;
    invoke-virtual {v2}, Lorg/eclipse/jetty/security/RoleInfo;->isAnyRole()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 432
    invoke-virtual {v2, p1}, Lorg/eclipse/jetty/security/RoleInfo;->addRole(Ljava/lang/String;)V

    goto :goto_0

    .line 436
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "info":Lorg/eclipse/jetty/security/RoleInfo;
    .end local v3    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/eclipse/jetty/security/RoleInfo;>;"
    :cond_2
    return-void
.end method

.method protected checkUserDataPermissions(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lorg/eclipse/jetty/server/Response;Ljava/lang/Object;)Z
    .locals 10
    .param p1, "pathInContext"    # Ljava/lang/String;
    .param p2, "request"    # Lorg/eclipse/jetty/server/Request;
    .param p3, "response"    # Lorg/eclipse/jetty/server/Response;
    .param p4, "constraintInfo"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 686
    if-nez p4, :cond_0

    .line 687
    const/4 v7, 0x1

    .line 745
    :goto_0
    return v7

    :cond_0
    move-object v4, p4

    .line 689
    check-cast v4, Lorg/eclipse/jetty/security/RoleInfo;

    .line 690
    .local v4, "roleInfo":Lorg/eclipse/jetty/security/RoleInfo;
    invoke-virtual {v4}, Lorg/eclipse/jetty/security/RoleInfo;->isForbidden()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 691
    const/4 v7, 0x0

    goto :goto_0

    .line 694
    :cond_1
    invoke-virtual {v4}, Lorg/eclipse/jetty/security/RoleInfo;->getUserDataConstraint()Lorg/eclipse/jetty/security/UserDataConstraint;

    move-result-object v2

    .line 695
    .local v2, "dataConstraint":Lorg/eclipse/jetty/security/UserDataConstraint;
    if-eqz v2, :cond_2

    sget-object v7, Lorg/eclipse/jetty/security/UserDataConstraint;->None:Lorg/eclipse/jetty/security/UserDataConstraint;

    if-ne v2, v7, :cond_3

    .line 697
    :cond_2
    const/4 v7, 0x1

    goto :goto_0

    .line 699
    :cond_3
    invoke-static {}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getCurrentConnection()Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-result-object v0

    .line 700
    .local v0, "connection":Lorg/eclipse/jetty/server/AbstractHttpConnection;
    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getConnector()Lorg/eclipse/jetty/server/Connector;

    move-result-object v1

    .line 702
    .local v1, "connector":Lorg/eclipse/jetty/server/Connector;
    sget-object v7, Lorg/eclipse/jetty/security/UserDataConstraint;->Integral:Lorg/eclipse/jetty/security/UserDataConstraint;

    if-ne v2, v7, :cond_8

    .line 704
    invoke-interface {v1, p2}, Lorg/eclipse/jetty/server/Connector;->isIntegral(Lorg/eclipse/jetty/server/Request;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 705
    const/4 v7, 0x1

    goto :goto_0

    .line 706
    :cond_4
    invoke-interface {v1}, Lorg/eclipse/jetty/server/Connector;->getIntegralPort()I

    move-result v7

    if-lez v7, :cond_7

    .line 708
    invoke-interface {v1}, Lorg/eclipse/jetty/server/Connector;->getIntegralScheme()Ljava/lang/String;

    move-result-object v5

    .line 709
    .local v5, "scheme":Ljava/lang/String;
    invoke-interface {v1}, Lorg/eclipse/jetty/server/Connector;->getIntegralPort()I

    move-result v3

    .line 710
    .local v3, "port":I
    const-string v7, "https"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/16 v7, 0x1bb

    if-ne v3, v7, :cond_6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "https://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getServerName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 713
    .local v6, "url":Ljava/lang/String;
    :goto_1
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getQueryString()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 714
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getQueryString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 715
    :cond_5
    const/4 v7, 0x0

    invoke-virtual {p3, v7}, Lorg/eclipse/jetty/server/Response;->setContentLength(I)V

    .line 716
    invoke-virtual {p3, v6}, Lorg/eclipse/jetty/server/Response;->sendRedirect(Ljava/lang/String;)V

    .line 721
    .end local v3    # "port":I
    .end local v5    # "scheme":Ljava/lang/String;
    .end local v6    # "url":Ljava/lang/String;
    :goto_2
    const/4 v7, 0x1

    invoke-virtual {p2, v7}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    .line 722
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 710
    .restart local v3    # "port":I
    .restart local v5    # "scheme":Ljava/lang/String;
    :cond_6
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getServerName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    .line 719
    .end local v3    # "port":I
    .end local v5    # "scheme":Ljava/lang/String;
    :cond_7
    const/16 v7, 0x193

    const-string v8, "!Integral"

    invoke-virtual {p3, v7, v8}, Lorg/eclipse/jetty/server/Response;->sendError(ILjava/lang/String;)V

    goto :goto_2

    .line 724
    :cond_8
    sget-object v7, Lorg/eclipse/jetty/security/UserDataConstraint;->Confidential:Lorg/eclipse/jetty/security/UserDataConstraint;

    if-ne v2, v7, :cond_d

    .line 726
    invoke-interface {v1, p2}, Lorg/eclipse/jetty/server/Connector;->isConfidential(Lorg/eclipse/jetty/server/Request;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 727
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 729
    :cond_9
    invoke-interface {v1}, Lorg/eclipse/jetty/server/Connector;->getConfidentialPort()I

    move-result v7

    if-lez v7, :cond_c

    .line 731
    invoke-interface {v1}, Lorg/eclipse/jetty/server/Connector;->getConfidentialScheme()Ljava/lang/String;

    move-result-object v5

    .line 732
    .restart local v5    # "scheme":Ljava/lang/String;
    invoke-interface {v1}, Lorg/eclipse/jetty/server/Connector;->getConfidentialPort()I

    move-result v3

    .line 733
    .restart local v3    # "port":I
    const-string v7, "https"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b

    const/16 v7, 0x1bb

    if-ne v3, v7, :cond_b

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "https://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getServerName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 736
    .restart local v6    # "url":Ljava/lang/String;
    :goto_3
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getQueryString()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 737
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "?"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getQueryString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 738
    :cond_a
    const/4 v7, 0x0

    invoke-virtual {p3, v7}, Lorg/eclipse/jetty/server/Response;->setContentLength(I)V

    .line 739
    invoke-virtual {p3, v6}, Lorg/eclipse/jetty/server/Response;->sendRedirect(Ljava/lang/String;)V

    .line 744
    .end local v3    # "port":I
    .end local v5    # "scheme":Ljava/lang/String;
    .end local v6    # "url":Ljava/lang/String;
    :goto_4
    const/4 v7, 0x1

    invoke-virtual {p2, v7}, Lorg/eclipse/jetty/server/Request;->setHandled(Z)V

    .line 745
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 733
    .restart local v3    # "port":I
    .restart local v5    # "scheme":Ljava/lang/String;
    :cond_b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "://"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getServerName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getRequestURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_3

    .line 742
    .end local v3    # "port":I
    .end local v5    # "scheme":Ljava/lang/String;
    :cond_c
    const/16 v7, 0x193

    const-string v8, "!Confidential"

    invoke-virtual {p3, v7, v8}, Lorg/eclipse/jetty/server/Response;->sendError(ILjava/lang/String;)V

    goto :goto_4

    .line 749
    :cond_d
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid dataConstraint value: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method protected checkWebResourcePermissions(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;Lorg/eclipse/jetty/server/Response;Ljava/lang/Object;Lorg/eclipse/jetty/server/UserIdentity;)Z
    .locals 5
    .param p1, "pathInContext"    # Ljava/lang/String;
    .param p2, "request"    # Lorg/eclipse/jetty/server/Request;
    .param p3, "response"    # Lorg/eclipse/jetty/server/Response;
    .param p4, "constraintInfo"    # Ljava/lang/Object;
    .param p5, "userIdentity"    # Lorg/eclipse/jetty/server/UserIdentity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 776
    if-nez p4, :cond_1

    .line 795
    :cond_0
    :goto_0
    return v3

    :cond_1
    move-object v2, p4

    .line 780
    check-cast v2, Lorg/eclipse/jetty/security/RoleInfo;

    .line 782
    .local v2, "roleInfo":Lorg/eclipse/jetty/security/RoleInfo;
    invoke-virtual {v2}, Lorg/eclipse/jetty/security/RoleInfo;->isChecked()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 787
    invoke-virtual {v2}, Lorg/eclipse/jetty/security/RoleInfo;->isAnyRole()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getAuthType()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 790
    :cond_2
    invoke-virtual {v2}, Lorg/eclipse/jetty/security/RoleInfo;->getRoles()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 792
    .local v1, "role":Ljava/lang/String;
    const/4 v4, 0x0

    invoke-interface {p5, v1, v4}, Lorg/eclipse/jetty/server/UserIdentity;->isUserInRole(Ljava/lang/String;Lorg/eclipse/jetty/server/UserIdentity$Scope;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_0

    .line 795
    .end local v1    # "role":Ljava/lang/String;
    :cond_4
    const/4 v3, 0x0

    goto :goto_0
.end method

.method protected configureRoleInfo(Lorg/eclipse/jetty/security/RoleInfo;Lorg/eclipse/jetty/security/ConstraintMapping;)V
    .locals 12
    .param p1, "ri"    # Lorg/eclipse/jetty/security/RoleInfo;
    .param p2, "mapping"    # Lorg/eclipse/jetty/security/ConstraintMapping;

    .prologue
    .line 577
    invoke-virtual {p2}, Lorg/eclipse/jetty/security/ConstraintMapping;->getConstraint()Lorg/eclipse/jetty/util/security/Constraint;

    move-result-object v2

    .line 578
    .local v2, "constraint":Lorg/eclipse/jetty/util/security/Constraint;
    invoke-virtual {v2}, Lorg/eclipse/jetty/util/security/Constraint;->isForbidden()Z

    move-result v3

    .line 579
    .local v3, "forbidden":Z
    invoke-virtual {p1, v3}, Lorg/eclipse/jetty/security/RoleInfo;->setForbidden(Z)V

    .line 583
    invoke-virtual {p2}, Lorg/eclipse/jetty/security/ConstraintMapping;->getConstraint()Lorg/eclipse/jetty/util/security/Constraint;

    move-result-object v9

    invoke-virtual {v9}, Lorg/eclipse/jetty/util/security/Constraint;->getDataConstraint()I

    move-result v9

    invoke-static {v9}, Lorg/eclipse/jetty/security/UserDataConstraint;->get(I)Lorg/eclipse/jetty/security/UserDataConstraint;

    move-result-object v8

    .line 584
    .local v8, "userDataConstraint":Lorg/eclipse/jetty/security/UserDataConstraint;
    invoke-virtual {p1, v8}, Lorg/eclipse/jetty/security/RoleInfo;->setUserDataConstraint(Lorg/eclipse/jetty/security/UserDataConstraint;)V

    .line 588
    invoke-virtual {p1}, Lorg/eclipse/jetty/security/RoleInfo;->isForbidden()Z

    move-result v9

    if-nez v9, :cond_1

    .line 591
    invoke-virtual {p2}, Lorg/eclipse/jetty/security/ConstraintMapping;->getConstraint()Lorg/eclipse/jetty/util/security/Constraint;

    move-result-object v9

    invoke-virtual {v9}, Lorg/eclipse/jetty/util/security/Constraint;->getAuthenticate()Z

    move-result v1

    .line 592
    .local v1, "checked":Z
    invoke-virtual {p1, v1}, Lorg/eclipse/jetty/security/RoleInfo;->setChecked(Z)V

    .line 593
    invoke-virtual {p1}, Lorg/eclipse/jetty/security/RoleInfo;->isChecked()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 595
    invoke-virtual {p2}, Lorg/eclipse/jetty/security/ConstraintMapping;->getConstraint()Lorg/eclipse/jetty/util/security/Constraint;

    move-result-object v9

    invoke-virtual {v9}, Lorg/eclipse/jetty/util/security/Constraint;->isAnyRole()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 597
    iget-boolean v9, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_strict:Z

    if-eqz v9, :cond_0

    .line 600
    iget-object v9, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_roles:Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 601
    .local v7, "role":Ljava/lang/String;
    invoke-virtual {p1, v7}, Lorg/eclipse/jetty/security/RoleInfo;->addRole(Ljava/lang/String;)V

    goto :goto_0

    .line 605
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v7    # "role":Ljava/lang/String;
    :cond_0
    const/4 v9, 0x1

    invoke-virtual {p1, v9}, Lorg/eclipse/jetty/security/RoleInfo;->setAnyRole(Z)V

    .line 619
    .end local v1    # "checked":Z
    :cond_1
    return-void

    .line 609
    .restart local v1    # "checked":Z
    :cond_2
    invoke-virtual {p2}, Lorg/eclipse/jetty/security/ConstraintMapping;->getConstraint()Lorg/eclipse/jetty/util/security/Constraint;

    move-result-object v9

    invoke-virtual {v9}, Lorg/eclipse/jetty/util/security/Constraint;->getRoles()[Ljava/lang/String;

    move-result-object v6

    .line 610
    .local v6, "newRoles":[Ljava/lang/String;
    move-object v0, v6

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_1
    if-ge v4, v5, :cond_1

    aget-object v7, v0, v4

    .line 612
    .restart local v7    # "role":Ljava/lang/String;
    iget-boolean v9, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_strict:Z

    if-eqz v9, :cond_3

    iget-object v9, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_roles:Ljava/util/Set;

    invoke-interface {v9, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 613
    new-instance v9, Ljava/lang/IllegalArgumentException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Attempt to use undeclared role: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", known roles: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_roles:Ljava/util/Set;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 614
    :cond_3
    invoke-virtual {p1, v7}, Lorg/eclipse/jetty/security/RoleInfo;->addRole(Ljava/lang/String;)V

    .line 610
    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method

.method protected doStart()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 445
    iget-object v2, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_constraintMap:Lorg/eclipse/jetty/http/PathMap;

    invoke-virtual {v2}, Lorg/eclipse/jetty/http/PathMap;->clear()V

    .line 446
    iget-object v2, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_constraintMappings:Ljava/util/List;

    if-eqz v2, :cond_0

    .line 448
    iget-object v2, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_constraintMappings:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/security/ConstraintMapping;

    .line 450
    .local v1, "mapping":Lorg/eclipse/jetty/security/ConstraintMapping;
    invoke-virtual {p0, v1}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->processConstraintMapping(Lorg/eclipse/jetty/security/ConstraintMapping;)V

    goto :goto_0

    .line 453
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "mapping":Lorg/eclipse/jetty/security/ConstraintMapping;
    :cond_0
    invoke-super {p0}, Lorg/eclipse/jetty/security/SecurityHandler;->doStart()V

    .line 454
    return-void
.end method

.method protected doStop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 461
    iget-object v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_constraintMap:Lorg/eclipse/jetty/http/PathMap;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/PathMap;->clear()V

    .line 462
    iget-object v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_constraintMappings:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 463
    iget-object v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_roles:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 464
    invoke-super {p0}, Lorg/eclipse/jetty/security/SecurityHandler;->doStop()V

    .line 465
    return-void
.end method

.method public dump(Ljava/lang/Appendable;Ljava/lang/String;)V
    .locals 3
    .param p1, "out"    # Ljava/lang/Appendable;
    .param p2, "indent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 802
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->dumpThis(Ljava/lang/Appendable;)V

    .line 803
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/util/Collection;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->getLoginService()Lorg/eclipse/jetty/security/LoginService;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->getIdentityService()Lorg/eclipse/jetty/security/IdentityService;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->getAuthenticator()Lorg/eclipse/jetty/security/Authenticator;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_roles:Ljava/util/Set;

    invoke-static {v2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    iget-object v2, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_constraintMap:Lorg/eclipse/jetty/http/PathMap;

    invoke-virtual {v2}, Lorg/eclipse/jetty/http/PathMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    invoke-virtual {p0}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->getBeans()Ljava/util/Collection;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    invoke-virtual {p0}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->getHandlers()[Lorg/eclipse/jetty/server/Handler;

    move-result-object v2

    invoke-static {v2}, Lorg/eclipse/jetty/util/TypeUtil;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p1, p2, v0}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->dump(Ljava/lang/Appendable;Ljava/lang/String;[Ljava/util/Collection;)V

    .line 811
    return-void
.end method

.method public getConstraintMappings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/security/ConstraintMapping;",
            ">;"
        }
    .end annotation

    .prologue
    .line 309
    iget-object v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_constraintMappings:Ljava/util/List;

    return-object v0
.end method

.method public getRoles()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 315
    iget-object v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_roles:Ljava/util/Set;

    return-object v0
.end method

.method protected isAuthMandatory(Lorg/eclipse/jetty/server/Request;Lorg/eclipse/jetty/server/Response;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "baseRequest"    # Lorg/eclipse/jetty/server/Request;
    .param p2, "base_response"    # Lorg/eclipse/jetty/server/Response;
    .param p3, "constraintInfo"    # Ljava/lang/Object;

    .prologue
    .line 760
    if-nez p3, :cond_0

    .line 762
    const/4 v0, 0x0

    .line 764
    .end local p3    # "constraintInfo":Ljava/lang/Object;
    :goto_0
    return v0

    .restart local p3    # "constraintInfo":Ljava/lang/Object;
    :cond_0
    check-cast p3, Lorg/eclipse/jetty/security/RoleInfo;

    .end local p3    # "constraintInfo":Ljava/lang/Object;
    invoke-virtual {p3}, Lorg/eclipse/jetty/security/RoleInfo;->isChecked()Z

    move-result v0

    goto :goto_0
.end method

.method public isStrict()Z
    .locals 1

    .prologue
    .line 279
    iget-boolean v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_strict:Z

    return v0
.end method

.method protected prepareConstraintInfo(Ljava/lang/String;Lorg/eclipse/jetty/server/Request;)Ljava/lang/Object;
    .locals 10
    .param p1, "pathInContext"    # Ljava/lang/String;
    .param p2, "request"    # Lorg/eclipse/jetty/server/Request;

    .prologue
    const/4 v8, 0x0

    .line 637
    iget-object v9, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_constraintMap:Lorg/eclipse/jetty/http/PathMap;

    invoke-virtual {v9, p1}, Lorg/eclipse/jetty/http/PathMap;->match(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map;

    .line 639
    .local v5, "mappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/eclipse/jetty/security/RoleInfo;>;"
    if-eqz v5, :cond_5

    .line 641
    invoke-virtual {p2}, Lorg/eclipse/jetty/server/Request;->getMethod()Ljava/lang/String;

    move-result-object v3

    .line 642
    .local v3, "httpMethod":Ljava/lang/String;
    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/eclipse/jetty/security/RoleInfo;

    .line 643
    .local v7, "roleInfo":Lorg/eclipse/jetty/security/RoleInfo;
    if-nez v7, :cond_3

    .line 646
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 649
    .local v1, "applicableConstraints":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/security/RoleInfo;>;"
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/security/RoleInfo;

    .line 650
    .local v0, "all":Lorg/eclipse/jetty/security/RoleInfo;
    if-eqz v0, :cond_0

    .line 651
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 656
    :cond_0
    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 658
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/eclipse/jetty/security/RoleInfo;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    const-string v9, ".omission"

    invoke-virtual {v8, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".omission"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 659
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 662
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/eclipse/jetty/security/RoleInfo;>;"
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    .line 663
    const/4 v8, 0x0

    invoke-interface {v1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "roleInfo":Lorg/eclipse/jetty/security/RoleInfo;
    check-cast v7, Lorg/eclipse/jetty/security/RoleInfo;

    .line 676
    .end local v0    # "all":Lorg/eclipse/jetty/security/RoleInfo;
    .end local v1    # "applicableConstraints":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/security/RoleInfo;>;"
    .end local v3    # "httpMethod":Ljava/lang/String;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    return-object v7

    .line 666
    .restart local v0    # "all":Lorg/eclipse/jetty/security/RoleInfo;
    .restart local v1    # "applicableConstraints":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/security/RoleInfo;>;"
    .restart local v3    # "httpMethod":Ljava/lang/String;
    .restart local v4    # "i$":Ljava/util/Iterator;
    .restart local v7    # "roleInfo":Lorg/eclipse/jetty/security/RoleInfo;
    :cond_4
    new-instance v7, Lorg/eclipse/jetty/security/RoleInfo;

    .end local v7    # "roleInfo":Lorg/eclipse/jetty/security/RoleInfo;
    invoke-direct {v7}, Lorg/eclipse/jetty/security/RoleInfo;-><init>()V

    .line 667
    .restart local v7    # "roleInfo":Lorg/eclipse/jetty/security/RoleInfo;
    sget-object v8, Lorg/eclipse/jetty/security/UserDataConstraint;->None:Lorg/eclipse/jetty/security/UserDataConstraint;

    invoke-virtual {v7, v8}, Lorg/eclipse/jetty/security/RoleInfo;->setUserDataConstraint(Lorg/eclipse/jetty/security/UserDataConstraint;)V

    .line 669
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jetty/security/RoleInfo;

    .line 670
    .local v6, "r":Lorg/eclipse/jetty/security/RoleInfo;
    invoke-virtual {v7, v6}, Lorg/eclipse/jetty/security/RoleInfo;->combine(Lorg/eclipse/jetty/security/RoleInfo;)V

    goto :goto_2

    .end local v0    # "all":Lorg/eclipse/jetty/security/RoleInfo;
    .end local v1    # "applicableConstraints":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/security/RoleInfo;>;"
    .end local v3    # "httpMethod":Ljava/lang/String;
    .end local v4    # "i$":Ljava/util/Iterator;
    .end local v6    # "r":Lorg/eclipse/jetty/security/RoleInfo;
    .end local v7    # "roleInfo":Lorg/eclipse/jetty/security/RoleInfo;
    :cond_5
    move-object v7, v8

    .line 676
    goto :goto_1
.end method

.method protected processConstraintMapping(Lorg/eclipse/jetty/security/ConstraintMapping;)V
    .locals 10
    .param p1, "mapping"    # Lorg/eclipse/jetty/security/ConstraintMapping;

    .prologue
    const/4 v9, 0x0

    .line 477
    iget-object v7, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_constraintMap:Lorg/eclipse/jetty/http/PathMap;

    invoke-virtual {p1}, Lorg/eclipse/jetty/security/ConstraintMapping;->getPathSpec()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lorg/eclipse/jetty/http/PathMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map;

    .line 478
    .local v4, "mappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/eclipse/jetty/security/RoleInfo;>;"
    if-nez v4, :cond_0

    .line 480
    new-instance v4, Lorg/eclipse/jetty/util/StringMap;

    .end local v4    # "mappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/eclipse/jetty/security/RoleInfo;>;"
    invoke-direct {v4}, Lorg/eclipse/jetty/util/StringMap;-><init>()V

    .line 481
    .restart local v4    # "mappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/eclipse/jetty/security/RoleInfo;>;"
    iget-object v7, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_constraintMap:Lorg/eclipse/jetty/http/PathMap;

    invoke-virtual {p1}, Lorg/eclipse/jetty/security/ConstraintMapping;->getPathSpec()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v4}, Lorg/eclipse/jetty/http/PathMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 483
    :cond_0
    invoke-interface {v4, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/eclipse/jetty/security/RoleInfo;

    .line 484
    .local v0, "allMethodsRoleInfo":Lorg/eclipse/jetty/security/RoleInfo;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lorg/eclipse/jetty/security/RoleInfo;->isForbidden()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 534
    :cond_1
    :goto_0
    return-void

    .line 487
    :cond_2
    invoke-virtual {p1}, Lorg/eclipse/jetty/security/ConstraintMapping;->getMethodOmissions()[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_3

    invoke-virtual {p1}, Lorg/eclipse/jetty/security/ConstraintMapping;->getMethodOmissions()[Ljava/lang/String;

    move-result-object v7

    array-length v7, v7

    if-lez v7, :cond_3

    .line 490
    invoke-virtual {p0, p1, v4}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->processConstraintMappingWithMethodOmissions(Lorg/eclipse/jetty/security/ConstraintMapping;Ljava/util/Map;)V

    goto :goto_0

    .line 494
    :cond_3
    invoke-virtual {p1}, Lorg/eclipse/jetty/security/ConstraintMapping;->getMethod()Ljava/lang/String;

    move-result-object v2

    .line 495
    .local v2, "httpMethod":Ljava/lang/String;
    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/eclipse/jetty/security/RoleInfo;

    .line 496
    .local v5, "roleInfo":Lorg/eclipse/jetty/security/RoleInfo;
    if-nez v5, :cond_4

    .line 498
    new-instance v5, Lorg/eclipse/jetty/security/RoleInfo;

    .end local v5    # "roleInfo":Lorg/eclipse/jetty/security/RoleInfo;
    invoke-direct {v5}, Lorg/eclipse/jetty/security/RoleInfo;-><init>()V

    .line 499
    .restart local v5    # "roleInfo":Lorg/eclipse/jetty/security/RoleInfo;
    invoke-interface {v4, v2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    if-eqz v0, :cond_4

    .line 502
    invoke-virtual {v5, v0}, Lorg/eclipse/jetty/security/RoleInfo;->combine(Lorg/eclipse/jetty/security/RoleInfo;)V

    .line 505
    :cond_4
    invoke-virtual {v5}, Lorg/eclipse/jetty/security/RoleInfo;->isForbidden()Z

    move-result v7

    if-nez v7, :cond_1

    .line 509
    invoke-virtual {p0, v5, p1}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->configureRoleInfo(Lorg/eclipse/jetty/security/RoleInfo;Lorg/eclipse/jetty/security/ConstraintMapping;)V

    .line 511
    invoke-virtual {v5}, Lorg/eclipse/jetty/security/RoleInfo;->isForbidden()Z

    move-result v7

    if-eqz v7, :cond_5

    .line 513
    if-nez v2, :cond_1

    .line 515
    invoke-interface {v4}, Ljava/util/Map;->clear()V

    .line 516
    invoke-interface {v4, v9, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 522
    :cond_5
    if-nez v2, :cond_1

    .line 524
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_6
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 526
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Lorg/eclipse/jetty/security/RoleInfo;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 528
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jetty/security/RoleInfo;

    .line 529
    .local v6, "specific":Lorg/eclipse/jetty/security/RoleInfo;
    invoke-virtual {v6, v5}, Lorg/eclipse/jetty/security/RoleInfo;->combine(Lorg/eclipse/jetty/security/RoleInfo;)V

    goto :goto_1
.end method

.method protected processConstraintMappingWithMethodOmissions(Lorg/eclipse/jetty/security/ConstraintMapping;Ljava/util/Map;)V
    .locals 8
    .param p1, "mapping"    # Lorg/eclipse/jetty/security/ConstraintMapping;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/eclipse/jetty/security/ConstraintMapping;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/eclipse/jetty/security/RoleInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 550
    .local p2, "mappings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/eclipse/jetty/security/RoleInfo;>;"
    invoke-virtual {p1}, Lorg/eclipse/jetty/security/ConstraintMapping;->getMethodOmissions()[Ljava/lang/String;

    move-result-object v4

    .line 552
    .local v4, "omissions":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 555
    .local v3, "omission":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".omission"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/eclipse/jetty/security/RoleInfo;

    .line 556
    .local v5, "ri":Lorg/eclipse/jetty/security/RoleInfo;
    if-nez v5, :cond_0

    .line 559
    new-instance v5, Lorg/eclipse/jetty/security/RoleInfo;

    .end local v5    # "ri":Lorg/eclipse/jetty/security/RoleInfo;
    invoke-direct {v5}, Lorg/eclipse/jetty/security/RoleInfo;-><init>()V

    .line 560
    .restart local v5    # "ri":Lorg/eclipse/jetty/security/RoleInfo;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".omission"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p2, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 564
    :cond_0
    invoke-virtual {p0, v5, p1}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->configureRoleInfo(Lorg/eclipse/jetty/security/RoleInfo;Lorg/eclipse/jetty/security/ConstraintMapping;)V

    .line 552
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 566
    .end local v3    # "omission":Ljava/lang/String;
    .end local v5    # "ri":Lorg/eclipse/jetty/security/RoleInfo;
    :cond_1
    return-void
.end method

.method public setConstraintMappings(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/security/ConstraintMapping;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 329
    .local p1, "constraintMappings":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/security/ConstraintMapping;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->setConstraintMappings(Ljava/util/List;Ljava/util/Set;)V

    .line 330
    return-void
.end method

.method public setConstraintMappings(Ljava/util/List;Ljava/util/Set;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/eclipse/jetty/security/ConstraintMapping;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 356
    .local p1, "constraintMappings":Ljava/util/List;, "Ljava/util/List<Lorg/eclipse/jetty/security/ConstraintMapping;>;"
    .local p2, "roles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v8, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_constraintMappings:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 357
    iget-object v8, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_constraintMappings:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 359
    if-nez p2, :cond_2

    .line 361
    new-instance p2, Ljava/util/HashSet;

    .end local p2    # "roles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    .line 362
    .restart local p2    # "roles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/eclipse/jetty/security/ConstraintMapping;

    .line 364
    .local v1, "cm":Lorg/eclipse/jetty/security/ConstraintMapping;
    invoke-virtual {v1}, Lorg/eclipse/jetty/security/ConstraintMapping;->getConstraint()Lorg/eclipse/jetty/util/security/Constraint;

    move-result-object v8

    invoke-virtual {v8}, Lorg/eclipse/jetty/util/security/Constraint;->getRoles()[Ljava/lang/String;

    move-result-object v2

    .line 365
    .local v2, "cmr":[Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 367
    move-object v0, v2

    .local v0, "arr$":[Ljava/lang/String;
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v7, v0, v4

    .line 368
    .local v7, "r":Ljava/lang/String;
    const-string v8, "*"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 369
    invoke-interface {p2, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 367
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 373
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "cm":Lorg/eclipse/jetty/security/ConstraintMapping;
    .end local v2    # "cmr":[Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v7    # "r":Ljava/lang/String;
    :cond_2
    invoke-virtual {p0, p2}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->setRoles(Ljava/util/Set;)V

    .line 375
    invoke-virtual {p0}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->isStarted()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 377
    iget-object v8, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_constraintMappings:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/eclipse/jetty/security/ConstraintMapping;

    .line 379
    .local v6, "mapping":Lorg/eclipse/jetty/security/ConstraintMapping;
    invoke-virtual {p0, v6}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->processConstraintMapping(Lorg/eclipse/jetty/security/ConstraintMapping;)V

    goto :goto_1

    .line 382
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v6    # "mapping":Lorg/eclipse/jetty/security/ConstraintMapping;
    :cond_3
    return-void
.end method

.method public setConstraintMappings([Lorg/eclipse/jetty/security/ConstraintMapping;)V
    .locals 2
    .param p1, "constraintMappings"    # [Lorg/eclipse/jetty/security/ConstraintMapping;

    .prologue
    .line 342
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->setConstraintMappings(Ljava/util/List;Ljava/util/Set;)V

    .line 343
    return-void
.end method

.method public setRoles(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 394
    .local p1, "roles":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    iget-object v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_roles:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 395
    iget-object v0, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_roles:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 396
    return-void
.end method

.method public setStrict(Z)V
    .locals 0
    .param p1, "strict"    # Z

    .prologue
    .line 300
    iput-boolean p1, p0, Lorg/eclipse/jetty/security/ConstraintSecurityHandler;->_strict:Z

    .line 301
    return-void
.end method
