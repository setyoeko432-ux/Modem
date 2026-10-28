.class public Lorg/eclipse/jetty/util/security/Constraint;
.super Ljava/lang/Object;
.source "Constraint.java"

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/io/Serializable;


# static fields
.field public static final ANY_ROLE:Ljava/lang/String; = "*"

.field public static final DC_CONFIDENTIAL:I = 0x2

.field public static final DC_FORBIDDEN:I = 0x3

.field public static final DC_INTEGRAL:I = 0x1

.field public static final DC_NONE:I = 0x0

.field public static final DC_UNSET:I = -0x1

.field public static final NONE:Ljava/lang/String; = "NONE"

.field public static final __BASIC_AUTH:Ljava/lang/String; = "BASIC"

.field public static final __CERT_AUTH:Ljava/lang/String; = "CLIENT_CERT"

.field public static final __CERT_AUTH2:Ljava/lang/String; = "CLIENT-CERT"

.field public static final __DIGEST_AUTH:Ljava/lang/String; = "DIGEST"

.field public static final __FORM_AUTH:Ljava/lang/String; = "FORM"

.field public static final __NEGOTIATE_AUTH:Ljava/lang/String; = "NEGOTIATE"

.field public static final __SPNEGO_AUTH:Ljava/lang/String; = "SPNEGO"


# instance fields
.field private _anyRole:Z

.field private _authenticate:Z

.field private _dataConstraint:I

.field private _name:Ljava/lang/String;

.field private _roles:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jetty/util/security/Constraint;->_dataConstraint:I

    .line 76
    iput-boolean v1, p0, Lorg/eclipse/jetty/util/security/Constraint;->_anyRole:Z

    .line 78
    iput-boolean v1, p0, Lorg/eclipse/jetty/util/security/Constraint;->_authenticate:Z

    .line 86
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "role"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, -0x1

    iput v0, p0, Lorg/eclipse/jetty/util/security/Constraint;->_dataConstraint:I

    .line 76
    iput-boolean v1, p0, Lorg/eclipse/jetty/util/security/Constraint;->_anyRole:Z

    .line 78
    iput-boolean v1, p0, Lorg/eclipse/jetty/util/security/Constraint;->_authenticate:Z

    .line 97
    invoke-virtual {p0, p1}, Lorg/eclipse/jetty/util/security/Constraint;->setName(Ljava/lang/String;)V

    .line 98
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    aput-object p2, v0, v1

    invoke-virtual {p0, v0}, Lorg/eclipse/jetty/util/security/Constraint;->setRoles([Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public static validateMethod(Ljava/lang/String;)Z
    .locals 2
    .param p0, "method"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 49
    if-nez p0, :cond_1

    .line 52
    :cond_0
    :goto_0
    return v0

    .line 51
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 52
    const-string v1, "FORM"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "BASIC"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "DIGEST"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "CLIENT_CERT"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "CLIENT-CERT"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "SPNEGO"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "NEGOTIATE"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 105
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getAuthenticate()Z
    .locals 1

    .prologue
    .line 173
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/security/Constraint;->_authenticate:Z

    return v0
.end method

.method public getDataConstraint()I
    .locals 1

    .prologue
    .line 203
    iget v0, p0, Lorg/eclipse/jetty/util/security/Constraint;->_dataConstraint:I

    return v0
.end method

.method public getRoles()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lorg/eclipse/jetty/util/security/Constraint;->_roles:[Ljava/lang/String;

    return-object v0
.end method

.method public hasDataConstraint()Z
    .locals 1

    .prologue
    .line 212
    iget v0, p0, Lorg/eclipse/jetty/util/security/Constraint;->_dataConstraint:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRole(Ljava/lang/String;)Z
    .locals 4
    .param p1, "role"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    .line 152
    iget-boolean v3, p0, Lorg/eclipse/jetty/util/security/Constraint;->_anyRole:Z

    if-eqz v3, :cond_1

    .line 155
    :cond_0
    :goto_0
    return v2

    .line 153
    :cond_1
    iget-object v3, p0, Lorg/eclipse/jetty/util/security/Constraint;->_roles:[Ljava/lang/String;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lorg/eclipse/jetty/util/security/Constraint;->_roles:[Ljava/lang/String;

    array-length v0, v3

    .local v0, "i":I
    move v1, v0

    .end local v0    # "i":I
    .local v1, "i":I
    :goto_1
    add-int/lit8 v0, v1, -0x1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    if-lez v1, :cond_2

    .line 154
    iget-object v3, p0, Lorg/eclipse/jetty/util/security/Constraint;->_roles:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v0

    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_1

    .line 155
    .end local v1    # "i":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isAnyRole()Z
    .locals 1

    .prologue
    .line 133
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/security/Constraint;->_anyRole:Z

    return v0
.end method

.method public isForbidden()Z
    .locals 1

    .prologue
    .line 182
    iget-boolean v0, p0, Lorg/eclipse/jetty/util/security/Constraint;->_authenticate:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lorg/eclipse/jetty/util/security/Constraint;->_anyRole:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/util/security/Constraint;->_roles:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/eclipse/jetty/util/security/Constraint;->_roles:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAuthenticate(Z)V
    .locals 0
    .param p1, "authenticate"    # Z

    .prologue
    .line 164
    iput-boolean p1, p0, Lorg/eclipse/jetty/util/security/Constraint;->_authenticate:Z

    .line 165
    return-void
.end method

.method public setDataConstraint(I)V
    .locals 2
    .param p1, "c"    # I

    .prologue
    .line 192
    if-ltz p1, :cond_0

    const/4 v0, 0x2

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Constraint out of range"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_1
    iput p1, p0, Lorg/eclipse/jetty/util/security/Constraint;->_dataConstraint:I

    .line 194
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lorg/eclipse/jetty/util/security/Constraint;->_name:Ljava/lang/String;

    .line 115
    return-void
.end method

.method public setRoles([Ljava/lang/String;)V
    .locals 5
    .param p1, "roles"    # [Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lorg/eclipse/jetty/util/security/Constraint;->_roles:[Ljava/lang/String;

    .line 121
    const/4 v2, 0x0

    iput-boolean v2, p0, Lorg/eclipse/jetty/util/security/Constraint;->_anyRole:Z

    .line 122
    if-eqz p1, :cond_0

    .line 123
    array-length v0, p1

    .local v0, "i":I
    :goto_0
    iget-boolean v2, p0, Lorg/eclipse/jetty/util/security/Constraint;->_anyRole:Z

    if-nez v2, :cond_0

    add-int/lit8 v1, v0, -0x1

    .end local v0    # "i":I
    .local v1, "i":I
    if-lez v0, :cond_0

    .line 124
    iget-boolean v2, p0, Lorg/eclipse/jetty/util/security/Constraint;->_anyRole:Z

    const-string v3, "*"

    aget-object v4, p1, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    or-int/2addr v2, v3

    iput-boolean v2, p0, Lorg/eclipse/jetty/util/security/Constraint;->_anyRole:Z

    move v0, v1

    .end local v1    # "i":I
    .restart local v0    # "i":I
    goto :goto_0

    .line 125
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SC{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/eclipse/jetty/util/security/Constraint;->_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v0, p0, Lorg/eclipse/jetty/util/security/Constraint;->_anyRole:Z

    if-eqz v0, :cond_0

    const-string v0, "*"

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v0, p0, Lorg/eclipse/jetty/util/security/Constraint;->_dataConstraint:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    const-string v0, "DC_UNSET}"

    :goto_1
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/util/security/Constraint;->_roles:[Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, "-"

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/util/security/Constraint;->_roles:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/eclipse/jetty/util/security/Constraint;->_dataConstraint:I

    if-nez v0, :cond_3

    const-string v0, "NONE}"

    goto :goto_1

    :cond_3
    iget v0, p0, Lorg/eclipse/jetty/util/security/Constraint;->_dataConstraint:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    const-string v0, "INTEGRAL}"

    goto :goto_1

    :cond_4
    const-string v0, "CONFIDENTIAL}"

    goto :goto_1
.end method
