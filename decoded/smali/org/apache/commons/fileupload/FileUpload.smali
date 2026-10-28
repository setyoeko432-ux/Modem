.class public Lorg/apache/commons/fileupload/FileUpload;
.super Lorg/apache/commons/fileupload/FileUploadBase;
.source "FileUpload.java"


# instance fields
.field private fileItemFactory:Lorg/apache/commons/fileupload/FileItemFactory;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/apache/commons/fileupload/FileUploadBase;-><init>()V

    .line 56
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/fileupload/FileItemFactory;)V
    .locals 0
    .param p1, "fileItemFactory"    # Lorg/apache/commons/fileupload/FileItemFactory;

    .prologue
    .line 66
    invoke-direct {p0}, Lorg/apache/commons/fileupload/FileUploadBase;-><init>()V

    .line 67
    iput-object p1, p0, Lorg/apache/commons/fileupload/FileUpload;->fileItemFactory:Lorg/apache/commons/fileupload/FileItemFactory;

    .line 68
    return-void
.end method


# virtual methods
.method public getFileItemFactory()Lorg/apache/commons/fileupload/FileItemFactory;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lorg/apache/commons/fileupload/FileUpload;->fileItemFactory:Lorg/apache/commons/fileupload/FileItemFactory;

    return-object v0
.end method

.method public setFileItemFactory(Lorg/apache/commons/fileupload/FileItemFactory;)V
    .locals 0
    .param p1, "factory"    # Lorg/apache/commons/fileupload/FileItemFactory;

    .prologue
    .line 89
    iput-object p1, p0, Lorg/apache/commons/fileupload/FileUpload;->fileItemFactory:Lorg/apache/commons/fileupload/FileItemFactory;

    .line 90
    return-void
.end method
