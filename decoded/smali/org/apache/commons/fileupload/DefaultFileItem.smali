.class public Lorg/apache/commons/fileupload/DefaultFileItem;
.super Lorg/apache/commons/fileupload/disk/DiskFileItem;
.source "DefaultFileItem.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/io/File;)V
    .locals 0
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "isFormField"    # Z
    .param p4, "fileName"    # Ljava/lang/String;
    .param p5, "sizeThreshold"    # I
    .param p6, "repository"    # Ljava/io/File;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 66
    invoke-direct/range {p0 .. p6}, Lorg/apache/commons/fileupload/disk/DiskFileItem;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/io/File;)V

    .line 68
    return-void
.end method
