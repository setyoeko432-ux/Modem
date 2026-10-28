.class public Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;
.super Ljava/io/InputStream;
.source "MultipartStream.java"

# interfaces
.implements Lorg/apache/commons/fileupload/util/Closeable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/fileupload/MultipartStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ItemInputStream"
.end annotation


# static fields
.field private static final BYTE_POSITIVE_OFFSET:I = 0x100


# instance fields
.field private closed:Z

.field private pad:I

.field private pos:I

.field final synthetic this$0:Lorg/apache/commons/fileupload/MultipartStream;

.field private total:J


# direct methods
.method constructor <init>(Lorg/apache/commons/fileupload/MultipartStream;)V
    .locals 0
    .param p1, "this$0"    # Lorg/apache/commons/fileupload/MultipartStream;

    .prologue
    .line 840
    iput-object p1, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->this$0:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 841
    invoke-direct {p0}, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->findSeparator()V

    .line 842
    return-void
.end method

.method private findSeparator()V
    .locals 2

    .prologue
    .line 848
    iget-object v0, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->this$0:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-virtual {v0}, Lorg/apache/commons/fileupload/MultipartStream;->findSeparator()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->pos:I

    .line 849
    iget v0, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->pos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 850
    iget-object v0, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->this$0:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-static {v0}, Lorg/apache/commons/fileupload/MultipartStream;->access$000(Lorg/apache/commons/fileupload/MultipartStream;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->this$0:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-static {v1}, Lorg/apache/commons/fileupload/MultipartStream;->access$100(Lorg/apache/commons/fileupload/MultipartStream;)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->this$0:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-static {v1}, Lorg/apache/commons/fileupload/MultipartStream;->access$200(Lorg/apache/commons/fileupload/MultipartStream;)I

    move-result v1

    if-le v0, v1, :cond_1

    .line 851
    iget-object v0, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->this$0:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-static {v0}, Lorg/apache/commons/fileupload/MultipartStream;->access$200(Lorg/apache/commons/fileupload/MultipartStream;)I

    move-result v0

    iput v0, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->pad:I

    .line 856
    :cond_0
    :goto_0
    return-void

    .line 853
    :cond_1
    iget-object v0, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->this$0:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-static {v0}, Lorg/apache/commons/fileupload/MultipartStream;->access$000(Lorg/apache/commons/fileupload/MultipartStream;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->this$0:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-static {v1}, Lorg/apache/commons/fileupload/MultipartStream;->access$100(Lorg/apache/commons/fileupload/MultipartStream;)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->pad:I

    goto :goto_0
.end method

.method private makeAvailable()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v8, -0x1

    .line 1014
    iget v3, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->pos:I

    if-eq v3, v8, :cond_1

    .line 1044
    :cond_0
    :goto_0
    return v0

    .line 1019
    :cond_1
    iget-wide v3, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->total:J

    iget-object v5, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->this$0:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-static {v5}, Lorg/apache/commons/fileupload/MultipartStream;->access$000(Lorg/apache/commons/fileupload/MultipartStream;)I

    move-result v5

    iget-object v6, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->this$0:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-static {v6}, Lorg/apache/commons/fileupload/MultipartStream;->access$100(Lorg/apache/commons/fileupload/MultipartStream;)I

    move-result v6

    sub-int/2addr v5, v6

    iget v6, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->pad:I

    sub-int/2addr v5, v6

    int-to-long v5, v5

    add-long/2addr v3, v5

    iput-wide v3, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->total:J

    .line 1020
    iget-object v3, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->this$0:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-static {v3}, Lorg/apache/commons/fileupload/MultipartStream;->access$300(Lorg/apache/commons/fileupload/MultipartStream;)[B

    move-result-object v3

    iget-object v4, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->this$0:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-static {v4}, Lorg/apache/commons/fileupload/MultipartStream;->access$000(Lorg/apache/commons/fileupload/MultipartStream;)I

    move-result v4

    iget v5, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->pad:I

    sub-int/2addr v4, v5

    iget-object v5, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->this$0:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-static {v5}, Lorg/apache/commons/fileupload/MultipartStream;->access$300(Lorg/apache/commons/fileupload/MultipartStream;)[B

    move-result-object v5

    iget v6, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->pad:I

    invoke-static {v3, v4, v5, v0, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1023
    iget-object v3, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->this$0:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-static {v3, v0}, Lorg/apache/commons/fileupload/MultipartStream;->access$102(Lorg/apache/commons/fileupload/MultipartStream;I)I

    .line 1024
    iget-object v3, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->this$0:Lorg/apache/commons/fileupload/MultipartStream;

    iget v4, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->pad:I

    invoke-static {v3, v4}, Lorg/apache/commons/fileupload/MultipartStream;->access$002(Lorg/apache/commons/fileupload/MultipartStream;I)I

    .line 1027
    :cond_2
    iget-object v3, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->this$0:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-static {v3}, Lorg/apache/commons/fileupload/MultipartStream;->access$400(Lorg/apache/commons/fileupload/MultipartStream;)Ljava/io/InputStream;

    move-result-object v3

    iget-object v4, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->this$0:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-static {v4}, Lorg/apache/commons/fileupload/MultipartStream;->access$300(Lorg/apache/commons/fileupload/MultipartStream;)[B

    move-result-object v4

    iget-object v5, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->this$0:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-static {v5}, Lorg/apache/commons/fileupload/MultipartStream;->access$000(Lorg/apache/commons/fileupload/MultipartStream;)I

    move-result v5

    iget-object v6, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->this$0:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-static {v6}, Lorg/apache/commons/fileupload/MultipartStream;->access$500(Lorg/apache/commons/fileupload/MultipartStream;)I

    move-result v6

    iget-object v7, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->this$0:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-static {v7}, Lorg/apache/commons/fileupload/MultipartStream;->access$000(Lorg/apache/commons/fileupload/MultipartStream;)I

    move-result v7

    sub-int/2addr v6, v7

    invoke-virtual {v3, v4, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    .line 1028
    .local v1, "bytesRead":I
    if-ne v1, v8, :cond_3

    .line 1032
    const-string v2, "Stream ended unexpectedly"

    .line 1033
    .local v2, "msg":Ljava/lang/String;
    new-instance v3, Lorg/apache/commons/fileupload/MultipartStream$MalformedStreamException;

    const-string v4, "Stream ended unexpectedly"

    invoke-direct {v3, v4}, Lorg/apache/commons/fileupload/MultipartStream$MalformedStreamException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1035
    .end local v2    # "msg":Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->this$0:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-static {v3}, Lorg/apache/commons/fileupload/MultipartStream;->access$600(Lorg/apache/commons/fileupload/MultipartStream;)Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1036
    iget-object v3, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->this$0:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-static {v3}, Lorg/apache/commons/fileupload/MultipartStream;->access$600(Lorg/apache/commons/fileupload/MultipartStream;)Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;

    move-result-object v3

    invoke-virtual {v3, v1}, Lorg/apache/commons/fileupload/MultipartStream$ProgressNotifier;->noteBytesRead(I)V

    .line 1038
    :cond_4
    iget-object v3, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->this$0:Lorg/apache/commons/fileupload/MultipartStream;

    iget-object v4, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->this$0:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-static {v4}, Lorg/apache/commons/fileupload/MultipartStream;->access$000(Lorg/apache/commons/fileupload/MultipartStream;)I

    move-result v4

    add-int/2addr v4, v1

    invoke-static {v3, v4}, Lorg/apache/commons/fileupload/MultipartStream;->access$002(Lorg/apache/commons/fileupload/MultipartStream;I)I

    .line 1040
    invoke-direct {p0}, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->findSeparator()V

    .line 1041
    invoke-virtual {p0}, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->available()I

    move-result v0

    .line 1043
    .local v0, "av":I
    if-gtz v0, :cond_0

    iget v3, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->pos:I

    if-eq v3, v8, :cond_2

    goto/16 :goto_0
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 877
    iget v0, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->pos:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 878
    iget-object v0, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->this$0:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-static {v0}, Lorg/apache/commons/fileupload/MultipartStream;->access$000(Lorg/apache/commons/fileupload/MultipartStream;)I

    move-result v0

    iget-object v1, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->this$0:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-static {v1}, Lorg/apache/commons/fileupload/MultipartStream;->access$100(Lorg/apache/commons/fileupload/MultipartStream;)I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->pad:I

    sub-int/2addr v0, v1

    .line 880
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->pos:I

    iget-object v1, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->this$0:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-static {v1}, Lorg/apache/commons/fileupload/MultipartStream;->access$100(Lorg/apache/commons/fileupload/MultipartStream;)I

    move-result v1

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 950
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->close(Z)V

    .line 951
    return-void
.end method

.method public close(Z)V
    .locals 4
    .param p1, "pCloseUnderlying"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 961
    iget-boolean v1, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->closed:Z

    if-eqz v1, :cond_0

    .line 980
    :goto_0
    return-void

    .line 964
    :cond_0
    if-eqz p1, :cond_2

    .line 965
    iput-boolean v3, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->closed:Z

    .line 966
    iget-object v1, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->this$0:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-static {v1}, Lorg/apache/commons/fileupload/MultipartStream;->access$400(Lorg/apache/commons/fileupload/MultipartStream;)Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 979
    :goto_1
    iput-boolean v3, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->closed:Z

    goto :goto_0

    .line 976
    .local v0, "av":I
    :cond_1
    int-to-long v1, v0

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->skip(J)J

    .line 969
    .end local v0    # "av":I
    :cond_2
    invoke-virtual {p0}, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->available()I

    move-result v0

    .line 970
    .restart local v0    # "av":I
    if-nez v0, :cond_1

    .line 971
    invoke-direct {p0}, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->makeAvailable()I

    move-result v0

    .line 972
    if-nez v0, :cond_1

    goto :goto_1
.end method

.method public getBytesRead()J
    .locals 2

    .prologue
    .line 865
    iget-wide v0, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->total:J

    return-wide v0
.end method

.method public isClosed()Z
    .locals 1

    .prologue
    .line 1056
    iget-boolean v0, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->closed:Z

    return v0
.end method

.method public read()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 897
    iget-boolean v1, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->closed:Z

    if-eqz v1, :cond_0

    .line 898
    new-instance v1, Lorg/apache/commons/fileupload/FileItemStream$ItemSkippedException;

    invoke-direct {v1}, Lorg/apache/commons/fileupload/FileItemStream$ItemSkippedException;-><init>()V

    throw v1

    .line 900
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->available()I

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->makeAvailable()I

    move-result v1

    if-nez v1, :cond_2

    .line 901
    const/4 v0, -0x1

    .line 908
    :cond_1
    :goto_0
    return v0

    .line 903
    :cond_2
    iget-wide v1, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->total:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->total:J

    .line 904
    iget-object v1, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->this$0:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-static {v1}, Lorg/apache/commons/fileupload/MultipartStream;->access$300(Lorg/apache/commons/fileupload/MultipartStream;)[B

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->this$0:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-static {v2}, Lorg/apache/commons/fileupload/MultipartStream;->access$108(Lorg/apache/commons/fileupload/MultipartStream;)I

    move-result v2

    aget-byte v0, v1, v2

    .line 905
    .local v0, "b":I
    if-gez v0, :cond_1

    .line 908
    add-int/lit16 v0, v0, 0x100

    goto :goto_0
.end method

.method public read([BII)I
    .locals 5
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 923
    iget-boolean v1, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->closed:Z

    if-eqz v1, :cond_0

    .line 924
    new-instance v1, Lorg/apache/commons/fileupload/FileItemStream$ItemSkippedException;

    invoke-direct {v1}, Lorg/apache/commons/fileupload/FileItemStream$ItemSkippedException;-><init>()V

    throw v1

    .line 926
    :cond_0
    if-nez p3, :cond_1

    .line 927
    const/4 v0, 0x0

    .line 940
    :goto_0
    return v0

    .line 929
    :cond_1
    invoke-virtual {p0}, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->available()I

    move-result v0

    .line 930
    .local v0, "res":I
    if-nez v0, :cond_2

    .line 931
    invoke-direct {p0}, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->makeAvailable()I

    move-result v0

    .line 932
    if-nez v0, :cond_2

    .line 933
    const/4 v0, -0x1

    goto :goto_0

    .line 936
    :cond_2
    invoke-static {v0, p3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 937
    iget-object v1, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->this$0:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-static {v1}, Lorg/apache/commons/fileupload/MultipartStream;->access$300(Lorg/apache/commons/fileupload/MultipartStream;)[B

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->this$0:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-static {v2}, Lorg/apache/commons/fileupload/MultipartStream;->access$100(Lorg/apache/commons/fileupload/MultipartStream;)I

    move-result v2

    invoke-static {v1, v2, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 938
    iget-object v1, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->this$0:Lorg/apache/commons/fileupload/MultipartStream;

    iget-object v2, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->this$0:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-static {v2}, Lorg/apache/commons/fileupload/MultipartStream;->access$100(Lorg/apache/commons/fileupload/MultipartStream;)I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {v1, v2}, Lorg/apache/commons/fileupload/MultipartStream;->access$102(Lorg/apache/commons/fileupload/MultipartStream;I)I

    .line 939
    iget-wide v1, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->total:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->total:J

    goto :goto_0
.end method

.method public skip(J)J
    .locals 6
    .param p1, "bytes"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 992
    iget-boolean v3, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->closed:Z

    if-eqz v3, :cond_0

    .line 993
    new-instance v3, Lorg/apache/commons/fileupload/FileItemStream$ItemSkippedException;

    invoke-direct {v3}, Lorg/apache/commons/fileupload/FileItemStream$ItemSkippedException;-><init>()V

    throw v3

    .line 995
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->available()I

    move-result v0

    .line 996
    .local v0, "av":I
    if-nez v0, :cond_1

    .line 997
    invoke-direct {p0}, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->makeAvailable()I

    move-result v0

    .line 998
    if-nez v0, :cond_1

    .line 999
    const-wide/16 v1, 0x0

    .line 1004
    :goto_0
    return-wide v1

    .line 1002
    :cond_1
    int-to-long v3, v0

    invoke-static {v3, v4, p1, p2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 1003
    .local v1, "res":J
    iget-object v3, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->this$0:Lorg/apache/commons/fileupload/MultipartStream;

    iget-object v4, p0, Lorg/apache/commons/fileupload/MultipartStream$ItemInputStream;->this$0:Lorg/apache/commons/fileupload/MultipartStream;

    invoke-static {v4}, Lorg/apache/commons/fileupload/MultipartStream;->access$100(Lorg/apache/commons/fileupload/MultipartStream;)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v4, v1

    long-to-int v4, v4

    invoke-static {v3, v4}, Lorg/apache/commons/fileupload/MultipartStream;->access$102(Lorg/apache/commons/fileupload/MultipartStream;I)I

    goto :goto_0
.end method
