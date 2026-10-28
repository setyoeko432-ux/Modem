.class Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$1;
.super Lorg/apache/commons/fileupload/util/LimitedInputStream;
.source "FileUploadBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;-><init>(Lorg/apache/commons/fileupload/FileUploadBase;Lorg/apache/commons/fileupload/RequestContext;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;

.field final synthetic val$this$0:Lorg/apache/commons/fileupload/FileUploadBase;


# direct methods
.method constructor <init>(Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;Ljava/io/InputStream;JLorg/apache/commons/fileupload/FileUploadBase;)V
    .locals 0
    .param p1, "this$1"    # Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;
    .param p2, "inputStream"    # Ljava/io/InputStream;
    .param p3, "pSizeMax"    # J

    .prologue
    .line 980
    iput-object p1, p0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$1;->this$1:Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;

    iput-object p5, p0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$1;->val$this$0:Lorg/apache/commons/fileupload/FileUploadBase;

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
    .line 984
    new-instance v0, Lorg/apache/commons/fileupload/FileUploadBase$SizeLimitExceededException;

    const-string v1, "the request was rejected because its size (%s) exceeds the configured maximum (%s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 986
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    .line 985
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-wide v2, p3

    move-wide v4, p1

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/fileupload/FileUploadBase$SizeLimitExceededException;-><init>(Ljava/lang/String;JJ)V

    .line 988
    .local v0, "ex":Lorg/apache/commons/fileupload/FileUploadException;
    new-instance v1, Lorg/apache/commons/fileupload/FileUploadBase$FileUploadIOException;

    invoke-direct {v1, v0}, Lorg/apache/commons/fileupload/FileUploadBase$FileUploadIOException;-><init>(Lorg/apache/commons/fileupload/FileUploadException;)V

    throw v1
.end method
