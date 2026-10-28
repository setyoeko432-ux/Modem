.class Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;
.super Ljava/lang/Object;
.source "FileUploadBase.java"

# interfaces
.implements Lorg/apache/commons/fileupload/FileItemIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/fileupload/FileUploadBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FileItemIteratorImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;
    }
.end annotation


# instance fields
.field private final boundary:[B

.field private currentFieldName:Ljava/lang/String;

.field private currentItem:Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;

.field private eof:Z

.field private itemValid:Z

.field private final multi:Lorg/apache/commons/fileupload/MultipartStream;

.field private final notifier:Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;

.field private skipPreamble:Z

.field final synthetic this$0:Lorg/apache/commons/fileupload/FileUploadBase;


# direct methods
.method constructor <init>(Lorg/apache/commons/fileupload/FileUploadBase;Lorg/apache/commons/fileupload/RequestContext;)V
    .locals 14
    .param p2, "ctx"    # Lorg/apache/commons/fileupload/RequestContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/fileupload/FileUploadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 948
    iput-object p1, p0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->this$0:Lorg/apache/commons/fileupload/FileUploadBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 949
    if-nez p2, :cond_0

    .line 950
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ctx parameter"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 953
    :cond_0
    invoke-interface/range {p2 .. p2}, Lorg/apache/commons/fileupload/RequestContext;->getContentType()Ljava/lang/String;

    move-result-object v12

    .line 954
    .local v12, "contentType":Ljava/lang/String;
    if-eqz v12, :cond_1

    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 955
    invoke-virtual {v12, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "multipart/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 956
    :cond_1
    new-instance v0, Lorg/apache/commons/fileupload/FileUploadBase$InvalidContentTypeException;

    const-string v1, "the request doesn\'t contain a %s or %s stream, content type header is %s"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "multipart/form-data"

    aput-object v7, v5, v6

    const/4 v6, 0x1

    const-string v7, "multipart/mixed"

    aput-object v7, v5, v6

    const/4 v6, 0x2

    aput-object v12, v5, v6

    .line 957
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/fileupload/FileUploadBase$InvalidContentTypeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 963
    :cond_2
    invoke-interface/range {p2 .. p2}, Lorg/apache/commons/fileupload/RequestContext;->getContentLength()I

    move-result v11

    .line 965
    .local v11, "contentLengthInt":I
    const-class v0, Lorg/apache/commons/fileupload/UploadContext;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object/from16 v0, p2

    check-cast v0, Lorg/apache/commons/fileupload/UploadContext;

    .line 967
    invoke-interface {v0}, Lorg/apache/commons/fileupload/UploadContext;->contentLength()J

    move-result-wide v2

    .line 972
    .local v2, "requestSize":J
    :goto_0
    invoke-static {p1}, Lorg/apache/commons/fileupload/FileUploadBase;->access$400(Lorg/apache/commons/fileupload/FileUploadBase;)J

    move-result-wide v0

    const-wide/16 v5, 0x0

    cmp-long v0, v0, v5

    if-ltz v0, :cond_6

    .line 973
    const-wide/16 v0, -0x1

    cmp-long v0, v2, v0

    if-eqz v0, :cond_4

    invoke-static {p1}, Lorg/apache/commons/fileupload/FileUploadBase;->access$400(Lorg/apache/commons/fileupload/FileUploadBase;)J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-lez v0, :cond_4

    .line 974
    new-instance v0, Lorg/apache/commons/fileupload/FileUploadBase$SizeLimitExceededException;

    const-string v1, "the request was rejected because its size (%s) exceeds the configured maximum (%s)"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 976
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {p1}, Lorg/apache/commons/fileupload/FileUploadBase;->access$400(Lorg/apache/commons/fileupload/FileUploadBase;)J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v5, v6

    .line 975
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 977
    invoke-static {p1}, Lorg/apache/commons/fileupload/FileUploadBase;->access$400(Lorg/apache/commons/fileupload/FileUploadBase;)J

    move-result-wide v4

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/fileupload/FileUploadBase$SizeLimitExceededException;-><init>(Ljava/lang/String;JJ)V

    throw v0

    .line 967
    .end local v2    # "requestSize":J
    :cond_3
    int-to-long v2, v11

    goto :goto_0

    .line 980
    .restart local v2    # "requestSize":J
    :cond_4
    new-instance v4, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$1;

    invoke-interface/range {p2 .. p2}, Lorg/apache/commons/fileupload/RequestContext;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-static {p1}, Lorg/apache/commons/fileupload/FileUploadBase;->access$400(Lorg/apache/commons/fileupload/FileUploadBase;)J

    move-result-wide v7

    move-object v5, p0

    move-object v9, p1

    invoke-direct/range {v4 .. v9}, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$1;-><init>(Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;Ljava/io/InputStream;JLorg/apache/commons/fileupload/FileUploadBase;)V

    .line 995
    .local v4, "input":Ljava/io/InputStream;
    :goto_1
    invoke-static {p1}, Lorg/apache/commons/fileupload/FileUploadBase;->access$500(Lorg/apache/commons/fileupload/FileUploadBase;)Ljava/lang/String;

    move-result-object v10

    .line 996
    .local v10, "charEncoding":Ljava/lang/String;
    if-nez v10, :cond_5

    .line 997
    invoke-interface/range {p2 .. p2}, Lorg/apache/commons/fileupload/RequestContext;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v10

    .line 1000
    :cond_5
    invoke-virtual {p1, v12}, Lorg/apache/commons/fileupload/FileUploadBase;->getBoundary(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->boundary:[B

    .line 1001
    iget-object v0, p0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->boundary:[B

    if-nez v0, :cond_7

    .line 1002
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 1003
    new-instance v0, Lorg/apache/commons/fileupload/FileUploadException;

    const-string v1, "the request was rejected because no multipart boundary was found"

    invoke-direct {v0, v1}, Lorg/apache/commons/fileupload/FileUploadException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 992
    .end local v4    # "input":Ljava/io/InputStream;
    .end local v10    # "charEncoding":Ljava/lang/String;
    :cond_6
    invoke-interface/range {p2 .. p2}, Lorg/apache/commons/fileupload/RequestContext;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .restart local v4    # "input":Ljava/io/InputStream;
    goto :goto_1

    .line 1006
    .restart local v10    # "charEncoding":Ljava/lang/String;
    :cond_7
    new-instance v0, Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;

    invoke-static {p1}, Lorg/apache/commons/fileupload/FileUploadBase;->access$600(Lorg/apache/commons/fileupload/FileUploadBase;)Lorg/apache/commons/fileupload/ProgressListener;

    move-result-object v1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;-><init>(Lorg/apache/commons/fileupload/ProgressListener;J)V

    iput-object v0, p0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->notifier:Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;

    .line 1008
    :try_start_0
    new-instance v0, Lorg/apache/commons/fileupload/MultipartStream;

    iget-object v1, p0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->boundary:[B

    iget-object v5, p0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->notifier:Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;

    invoke-direct {v0, v4, v1, v5}, Lorg/apache/commons/fileupload/MultipartStream;-><init>(Ljava/io/InputStream;[BLorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;)V

    iput-object v0, p0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->multi:Lorg/apache/commons/fileupload/MultipartStream;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1014
    iget-object v0, p0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->multi:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-virtual {v0, v10}, Lorg/apache/commons/fileupload/MultipartStream;->setHeaderEncoding(Ljava/lang/String;)V

    .line 1016
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->skipPreamble:Z

    .line 1017
    invoke-direct {p0}, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->findNextItem()Z

    .line 1018
    return-void

    .line 1009
    :catch_0
    move-exception v13

    .line 1010
    .local v13, "iae":Ljava/lang/IllegalArgumentException;
    invoke-static {v4}, Lorg/apache/commons/io/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 1011
    new-instance v0, Lorg/apache/commons/fileupload/FileUploadBase$InvalidContentTypeException;

    const-string v1, "The boundary specified in the %s header is too long"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-string v7, "Content-type"

    aput-object v7, v5, v6

    .line 1012
    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, v13}, Lorg/apache/commons/fileupload/FileUploadBase$InvalidContentTypeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method static synthetic access$200(Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;)Lorg/apache/commons/fileupload/MultipartStream;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;

    .prologue
    .line 708
    iget-object v0, p0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->multi:Lorg/apache/commons/fileupload/MultipartStream;

    return-object v0
.end method

.method private findNextItem()Z
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1027
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->eof:Z

    if-eqz v1, :cond_0

    .line 1028
    const/4 v1, 0x0

    .line 1087
    :goto_0
    return v1

    .line 1030
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->currentItem:Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;

    if-eqz v1, :cond_1

    .line 1031
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->currentItem:Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;

    invoke-virtual {v1}, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;->close()V

    .line 1032
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->currentItem:Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;

    .line 1036
    :cond_1
    :goto_1
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->skipPreamble:Z

    if-eqz v1, :cond_2

    .line 1037
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->multi:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-virtual {v1}, Lorg/apache/commons/fileupload/MultipartStream;->skipPreamble()Z

    move-result v14

    .line 1041
    .local v14, "nextPart":Z
    :goto_2
    if-nez v14, :cond_4

    .line 1042
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->currentFieldName:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 1044
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->eof:Z

    .line 1045
    const/4 v1, 0x0

    goto :goto_0

    .line 1039
    .end local v14    # "nextPart":Z
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->multi:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-virtual {v1}, Lorg/apache/commons/fileupload/MultipartStream;->readBoundary()Z

    move-result v14

    .restart local v14    # "nextPart":Z
    goto :goto_2

    .line 1048
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->multi:Lorg/apache/commons/fileupload/MultipartStream;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->boundary:[B

    invoke-virtual {v1, v2}, Lorg/apache/commons/fileupload/MultipartStream;->setBoundary([B)V

    .line 1049
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->currentFieldName:Ljava/lang/String;

    goto :goto_1

    .line 1052
    :cond_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->this$0:Lorg/apache/commons/fileupload/FileUploadBase;

    move-object/from16 v0, p0

    iget-object v2, v0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->multi:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-virtual {v2}, Lorg/apache/commons/fileupload/MultipartStream;->readHeaders()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/apache/commons/fileupload/FileUploadBase;->getParsedHeaders(Ljava/lang/String;)Lorg/apache/commons/fileupload/FileItemHeaders;

    move-result-object v13

    .line 1053
    .local v13, "headers":Lorg/apache/commons/fileupload/FileItemHeaders;
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->currentFieldName:Ljava/lang/String;

    if-nez v1, :cond_7

    .line 1055
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->this$0:Lorg/apache/commons/fileupload/FileUploadBase;

    invoke-virtual {v1, v13}, Lorg/apache/commons/fileupload/FileUploadBase;->getFieldName(Lorg/apache/commons/fileupload/FileItemHeaders;)Ljava/lang/String;

    move-result-object v4

    .line 1056
    .local v4, "fieldName":Ljava/lang/String;
    if-eqz v4, :cond_8

    .line 1057
    const-string v1, "Content-type"

    invoke-interface {v13, v1}, Lorg/apache/commons/fileupload/FileItemHeaders;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 1058
    .local v16, "subContentType":Ljava/lang/String;
    if-eqz v16, :cond_5

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 1059
    move-object/from16 v0, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "multipart/mixed"

    .line 1060
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1061
    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->currentFieldName:Ljava/lang/String;

    .line 1063
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->this$0:Lorg/apache/commons/fileupload/FileUploadBase;

    move-object/from16 v0, v16

    invoke-virtual {v1, v0}, Lorg/apache/commons/fileupload/FileUploadBase;->getBoundary(Ljava/lang/String;)[B

    move-result-object v15

    .line 1064
    .local v15, "subBoundary":[B
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->multi:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-virtual {v1, v15}, Lorg/apache/commons/fileupload/MultipartStream;->setBoundary([B)V

    .line 1065
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->skipPreamble:Z

    goto/16 :goto_1

    .line 1068
    .end local v15    # "subBoundary":[B
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->this$0:Lorg/apache/commons/fileupload/FileUploadBase;

    invoke-virtual {v1, v13}, Lorg/apache/commons/fileupload/FileUploadBase;->getFileName(Lorg/apache/commons/fileupload/FileItemHeaders;)Ljava/lang/String;

    move-result-object v3

    .line 1069
    .local v3, "fileName":Ljava/lang/String;
    new-instance v1, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;

    const-string v2, "Content-type"

    .line 1070
    invoke-interface {v13, v2}, Lorg/apache/commons/fileupload/FileItemHeaders;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v3, :cond_6

    const/4 v6, 0x1

    .line 1071
    :goto_3
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->getContentLength(Lorg/apache/commons/fileupload/FileItemHeaders;)J

    move-result-wide v7

    move-object/from16 v2, p0

    invoke-direct/range {v1 .. v8}, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;-><init>(Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->currentItem:Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;

    .line 1072
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->currentItem:Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;

    invoke-virtual {v1, v13}, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;->setHeaders(Lorg/apache/commons/fileupload/FileItemHeaders;)V

    .line 1073
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->notifier:Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;

    invoke-virtual {v1}, Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;->noteItem()V

    .line 1074
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->itemValid:Z

    .line 1075
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1070
    :cond_6
    const/4 v6, 0x0

    goto :goto_3

    .line 1078
    .end local v3    # "fileName":Ljava/lang/String;
    .end local v4    # "fieldName":Ljava/lang/String;
    .end local v16    # "subContentType":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->this$0:Lorg/apache/commons/fileupload/FileUploadBase;

    invoke-virtual {v1, v13}, Lorg/apache/commons/fileupload/FileUploadBase;->getFileName(Lorg/apache/commons/fileupload/FileItemHeaders;)Ljava/lang/String;

    move-result-object v3

    .line 1079
    .restart local v3    # "fileName":Ljava/lang/String;
    if-eqz v3, :cond_8

    .line 1080
    new-instance v5, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;

    move-object/from16 v0, p0

    iget-object v8, v0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->currentFieldName:Ljava/lang/String;

    const-string v1, "Content-type"

    .line 1082
    invoke-interface {v13, v1}, Lorg/apache/commons/fileupload/FileItemHeaders;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    .line 1083
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->getContentLength(Lorg/apache/commons/fileupload/FileItemHeaders;)J

    move-result-wide v11

    move-object/from16 v6, p0

    move-object v7, v3

    invoke-direct/range {v5 .. v12}, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;-><init>(Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZJ)V

    move-object/from16 v0, p0

    iput-object v5, v0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->currentItem:Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;

    .line 1084
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->currentItem:Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;

    invoke-virtual {v1, v13}, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;->setHeaders(Lorg/apache/commons/fileupload/FileItemHeaders;)V

    .line 1085
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->notifier:Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;

    invoke-virtual {v1}, Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;->noteItem()V

    .line 1086
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput-boolean v1, v0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->itemValid:Z

    .line 1087
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 1090
    .end local v3    # "fileName":Ljava/lang/String;
    :cond_8
    move-object/from16 v0, p0

    iget-object v1, v0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->multi:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-virtual {v1}, Lorg/apache/commons/fileupload/MultipartStream;->discardBodyData()I

    goto/16 :goto_1
.end method

.method private getContentLength(Lorg/apache/commons/fileupload/FileItemHeaders;)J
    .locals 3
    .param p1, "pHeaders"    # Lorg/apache/commons/fileupload/FileItemHeaders;

    .prologue
    .line 1096
    :try_start_0
    const-string v1, "Content-length"

    invoke-interface {p1, v1}, Lorg/apache/commons/fileupload/FileItemHeaders;->getHeader(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v1

    .line 1098
    :goto_0
    return-wide v1

    .line 1097
    :catch_0
    move-exception v0

    .line 1098
    .local v0, "e":Ljava/lang/Exception;
    const-wide/16 v1, -0x1

    goto :goto_0
.end method


# virtual methods
.method public hasNext()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/fileupload/FileUploadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1114
    iget-boolean v1, p0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->eof:Z

    if-eqz v1, :cond_0

    .line 1115
    const/4 v1, 0x0

    .line 1121
    :goto_0
    return v1

    .line 1117
    :cond_0
    iget-boolean v1, p0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->itemValid:Z

    if-eqz v1, :cond_1

    .line 1118
    const/4 v1, 0x1

    goto :goto_0

    .line 1121
    :cond_1
    :try_start_0
    invoke-direct {p0}, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->findNextItem()Z
    :try_end_0
    .catch Lorg/apache/commons/fileupload/FileUploadBase$FileUploadIOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 1122
    :catch_0
    move-exception v0

    .line 1124
    .local v0, "e":Lorg/apache/commons/fileupload/FileUploadBase$FileUploadIOException;
    invoke-virtual {v0}, Lorg/apache/commons/fileupload/FileUploadBase$FileUploadIOException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/fileupload/FileUploadException;

    throw v1
.end method

.method public next()Lorg/apache/commons/fileupload/FileItemStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/fileupload/FileUploadException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1141
    iget-boolean v0, p0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->eof:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->itemValid:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1142
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 1144
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->itemValid:Z

    .line 1145
    iget-object v0, p0, Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl;->currentItem:Lorg/apache/commons/fileupload/FileUploadBase$FileItemIteratorImpl$FileItemStreamImpl;

    return-object v0
.end method
