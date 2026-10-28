.class public Lorg/apache/commons/fileupload/disk/DiskFileItemFactory;
.super Ljava/lang/Object;
.source "DiskFileItemFactory.java"

# interfaces
.implements Lorg/apache/commons/fileupload/FileItemFactory;


# static fields
.field public static final DEFAULT_SIZE_THRESHOLD:I = 0x2800


# instance fields
.field private defaultCharset:Ljava/lang/String;

.field private fileCleaningTracker:Lorg/apache/commons/io/FileCleaningTracker;

.field private repository:Ljava/io/File;

.field private sizeThreshold:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 111
    const/16 v0, 0x2800

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/fileupload/disk/DiskFileItemFactory;-><init>(ILjava/io/File;)V

    .line 112
    return-void
.end method

.method public constructor <init>(ILjava/io/File;)V
    .locals 1
    .param p1, "sizeThreshold"    # I
    .param p2, "repository"    # Ljava/io/File;

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/16 v0, 0x2800

    iput v0, p0, Lorg/apache/commons/fileupload/disk/DiskFileItemFactory;->sizeThreshold:I

    .line 102
    const-string v0, "ISO-8859-1"

    iput-object v0, p0, Lorg/apache/commons/fileupload/disk/DiskFileItemFactory;->defaultCharset:Ljava/lang/String;

    .line 125
    iput p1, p0, Lorg/apache/commons/fileupload/disk/DiskFileItemFactory;->sizeThreshold:I

    .line 126
    iput-object p2, p0, Lorg/apache/commons/fileupload/disk/DiskFileItemFactory;->repository:Ljava/io/File;

    .line 127
    return-void
.end method


# virtual methods
.method public createItem(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Lorg/apache/commons/fileupload/FileItem;
    .locals 8
    .param p1, "fieldName"    # Ljava/lang/String;
    .param p2, "contentType"    # Ljava/lang/String;
    .param p3, "isFormField"    # Z
    .param p4, "fileName"    # Ljava/lang/String;

    .prologue
    .line 200
    new-instance v0, Lorg/apache/commons/fileupload/disk/DiskFileItem;

    iget v5, p0, Lorg/apache/commons/fileupload/disk/DiskFileItemFactory;->sizeThreshold:I

    iget-object v6, p0, Lorg/apache/commons/fileupload/disk/DiskFileItemFactory;->repository:Ljava/io/File;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v6}, Lorg/apache/commons/fileupload/disk/DiskFileItem;-><init>(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ILjava/io/File;)V

    .line 202
    .local v0, "result":Lorg/apache/commons/fileupload/disk/DiskFileItem;
    iget-object v1, p0, Lorg/apache/commons/fileupload/disk/DiskFileItemFactory;->defaultCharset:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/apache/commons/fileupload/disk/DiskFileItem;->setDefaultCharset(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p0}, Lorg/apache/commons/fileupload/disk/DiskFileItemFactory;->getFileCleaningTracker()Lorg/apache/commons/io/FileCleaningTracker;

    move-result-object v7

    .line 204
    .local v7, "tracker":Lorg/apache/commons/io/FileCleaningTracker;
    if-eqz v7, :cond_0

    .line 205
    invoke-virtual {v0}, Lorg/apache/commons/fileupload/disk/DiskFileItem;->getTempFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v7, v1, v0}, Lorg/apache/commons/io/FileCleaningTracker;->track(Ljava/io/File;Ljava/lang/Object;)V

    .line 207
    :cond_0
    return-object v0
.end method

.method public getDefaultCharset()Ljava/lang/String;
    .locals 1

    .prologue
    .line 239
    iget-object v0, p0, Lorg/apache/commons/fileupload/disk/DiskFileItemFactory;->defaultCharset:Ljava/lang/String;

    return-object v0
.end method

.method public getFileCleaningTracker()Lorg/apache/commons/io/FileCleaningTracker;
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lorg/apache/commons/fileupload/disk/DiskFileItemFactory;->fileCleaningTracker:Lorg/apache/commons/io/FileCleaningTracker;

    return-object v0
.end method

.method public getRepository()Ljava/io/File;
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lorg/apache/commons/fileupload/disk/DiskFileItemFactory;->repository:Ljava/io/File;

    return-object v0
.end method

.method public getSizeThreshold()I
    .locals 1

    .prologue
    .line 166
    iget v0, p0, Lorg/apache/commons/fileupload/disk/DiskFileItemFactory;->sizeThreshold:I

    return v0
.end method

.method public setDefaultCharset(Ljava/lang/String;)V
    .locals 0
    .param p1, "pCharset"    # Ljava/lang/String;

    .prologue
    .line 248
    iput-object p1, p0, Lorg/apache/commons/fileupload/disk/DiskFileItemFactory;->defaultCharset:Ljava/lang/String;

    .line 249
    return-void
.end method

.method public setFileCleaningTracker(Lorg/apache/commons/io/FileCleaningTracker;)V
    .locals 0
    .param p1, "pTracker"    # Lorg/apache/commons/io/FileCleaningTracker;

    .prologue
    .line 230
    iput-object p1, p0, Lorg/apache/commons/fileupload/disk/DiskFileItemFactory;->fileCleaningTracker:Lorg/apache/commons/io/FileCleaningTracker;

    .line 231
    return-void
.end method

.method public setRepository(Ljava/io/File;)V
    .locals 0
    .param p1, "repository"    # Ljava/io/File;

    .prologue
    .line 154
    iput-object p1, p0, Lorg/apache/commons/fileupload/disk/DiskFileItemFactory;->repository:Ljava/io/File;

    .line 155
    return-void
.end method

.method public setSizeThreshold(I)V
    .locals 0
    .param p1, "sizeThreshold"    # I

    .prologue
    .line 178
    iput p1, p0, Lorg/apache/commons/fileupload/disk/DiskFileItemFactory;->sizeThreshold:I

    .line 179
    return-void
.end method
