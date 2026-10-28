.class Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl$1;
.super Lorg/apache/commons/fileupload/util/LimitedInputStream;
.source "FileUploadBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;-><init>(Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;

.field final synthetic val$itemStream:Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;

.field final synthetic val$this$1:Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;


# direct methods
.method constructor <init>(Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;Ljava/io/InputStream;JLorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;)V
    .locals 0
    .param p1, "this$2"    # Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .param p3, "pSizeMax"    # J

    .prologue
    .line 784
    iput-object p1, p0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl$1;->this$2:Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;

    iput-object p5, p0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl$1;->val$this$1:Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;

    iput-object p6, p0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl$1;->val$itemStream:Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;

    invoke-direct {p0, p2, p3, p4}, Lorg/apache/commons/fileupload/util/LimitedInputStream;-><init>(Ljava/io/InputStream;J)V

    return-void
.end method


# virtual methods
.method protected raiseError(JJ)V
    .locals 6
    .param p1, "pSizeMax"    # J
    .param p3, "pCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 788
    iget-object v1, p0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl$1;->val$itemStream:Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;

    invoke-virtual {v1, v5}, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->close(Z)V

    .line 789
    new-instance v0, Lorg/apache/commons/fileupload/FileUploadBase$FileSizeLimitExceededException;

    const-string v1, "The field %s exceeds its maximum permitted size of %s bytes."

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl$1;->this$2:Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;

    .line 792
    invoke-static {v4}, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;->access$300(Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v5

    .line 791
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-wide v2, p3

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/fileupload/FileUploadBase$FileSizeLimitExceededException;-><init>(Ljava/lang/String;JJ)V

    .line 794
    .local v0, "e":Lorg/apache/commons/fileupload/FileUploadBase$FileSizeLimitExceededException;
    iget-object v1, p0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl$1;->this$2:Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;

    invoke-static {v1}, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;->access$300(Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/fileupload/FileUploadBase$FileSizeLimitExceededException;->setFieldName(Ljava/lang/String;)V

    .line 795
    iget-object v1, p0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl$1;->this$2:Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;

    invoke-static {v1}, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;->access$000(Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/commons/fileupload/FileUploadBase$FileSizeLimitExceededException;->setFileName(Ljava/lang/String;)V

    .line 796
    new-instance v1, Lorg/apache/commons/fileupload/FileUploadBase$FileUploadIOException;

    invoke-direct {v1, v0}, Lorg/apache/commons/fileupload/FileUploadBase$FileUploadIOException;-><init>(Lorg/apache/commons/fileupload/FileUploadException;)V

    throw v1
.end method
