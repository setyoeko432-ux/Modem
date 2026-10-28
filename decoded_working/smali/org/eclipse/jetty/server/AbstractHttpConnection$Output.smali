.class public Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;
.super Lorg/eclipse/jetty/server/HttpOutput;
.source "AbstractHttpConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/eclipse/jetty/server/AbstractHttpConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Output"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;


# direct methods
.method constructor <init>(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V
    .locals 0

    .prologue
    .line 1091
    iput-object p1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    .line 1092
    invoke-direct {p0, p1}, Lorg/eclipse/jetty/server/HttpOutput;-><init>(Lorg/eclipse/jetty/server/AbstractHttpConnection;)V

    .line 1093
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1102
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1111
    :goto_0
    return-void

    .line 1105
    :cond_0
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->isIncluding()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/AbstractGenerator;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1106
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->commitResponse(Z)V

    .line 1110
    :goto_1
    invoke-super {p0}, Lorg/eclipse/jetty/server/HttpOutput;->close()V

    goto :goto_0

    .line 1108
    :cond_1
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    invoke-virtual {v0}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->flushResponse()V

    goto :goto_1
.end method

.method public flush()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1121
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    invoke-virtual {v0}, Lorg/eclipse/jetty/http/AbstractGenerator;->isCommitted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1122
    iget-object v0, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->commitResponse(Z)V

    .line 1123
    :cond_0
    invoke-super {p0}, Lorg/eclipse/jetty/server/HttpOutput;->flush()V

    .line 1124
    return-void
.end method

.method public print(Ljava/lang/String;)V
    .locals 3
    .param p1, "s"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1133
    invoke-virtual {p0}, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->isClosed()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1134
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1135
    :cond_0
    iget-object v1, p0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->getPrintWriter(Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object v0

    .line 1136
    .local v0, "writer":Ljava/io/PrintWriter;
    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1137
    return-void
.end method

.method public sendContent(Ljava/lang/Object;)V
    .locals 21
    .param p1, "content"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1148
    const/16 v16, 0x0

    .line 1150
    .local v16, "resource":Lorg/eclipse/jetty/util/resource/Resource;
    invoke-virtual/range {p0 .. p0}, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->isClosed()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 1151
    new-instance v17, Ljava/io/IOException;

    const-string v18, "Closed"

    invoke-direct/range {v17 .. v18}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 1153
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/http/AbstractGenerator;->isWritten()Z

    move-result v17

    if-eqz v17, :cond_1

    .line 1154
    new-instance v17, Ljava/lang/IllegalStateException;

    const-string v18, "!empty"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v17

    .line 1157
    :cond_1
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/eclipse/jetty/http/HttpContent;

    move/from16 v17, v0

    if-eqz v17, :cond_d

    move-object/from16 v9, p1

    .line 1159
    check-cast v9, Lorg/eclipse/jetty/http/HttpContent;

    .line 1160
    .local v9, "httpContent":Lorg/eclipse/jetty/http/HttpContent;
    invoke-interface {v9}, Lorg/eclipse/jetty/http/HttpContent;->getContentType()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v4

    .line 1161
    .local v4, "contentType":Lorg/eclipse/jetty/io/Buffer;
    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    move-object/from16 v17, v0

    sget-object v18, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual/range {v17 .. v18}, Lorg/eclipse/jetty/http/HttpFields;->containsKey(Lorg/eclipse/jetty/io/Buffer;)Z

    move-result v17

    if-nez v17, :cond_2

    .line 1163
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_response:Lorg/eclipse/jetty/server/Response;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/server/Response;->getSetCharacterEncoding()Ljava/lang/String;

    move-result-object v7

    .line 1164
    .local v7, "enc":Ljava/lang/String;
    if-nez v7, :cond_7

    .line 1165
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    move-object/from16 v17, v0

    sget-object v18, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v4}, Lorg/eclipse/jetty/http/HttpFields;->add(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 1186
    .end local v7    # "enc":Ljava/lang/String;
    :cond_2
    :goto_0
    invoke-interface {v9}, Lorg/eclipse/jetty/http/HttpContent;->getContentLength()J

    move-result-wide v17

    const-wide/16 v19, 0x0

    cmp-long v17, v17, v19

    if-lez v17, :cond_3

    .line 1187
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    move-object/from16 v17, v0

    sget-object v18, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_LENGTH_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-interface {v9}, Lorg/eclipse/jetty/http/HttpContent;->getContentLength()J

    move-result-wide v19

    invoke-virtual/range {v17 .. v20}, Lorg/eclipse/jetty/http/HttpFields;->putLongField(Lorg/eclipse/jetty/io/Buffer;J)V

    .line 1188
    :cond_3
    invoke-interface {v9}, Lorg/eclipse/jetty/http/HttpContent;->getLastModified()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v12

    .line 1189
    .local v12, "lm":Lorg/eclipse/jetty/io/Buffer;
    invoke-interface {v9}, Lorg/eclipse/jetty/http/HttpContent;->getResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/util/resource/Resource;->lastModified()J

    move-result-wide v13

    .line 1190
    .local v13, "lml":J
    if-eqz v12, :cond_a

    .line 1192
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    move-object/from16 v17, v0

    sget-object v18, Lorg/eclipse/jetty/http/HttpHeaders;->LAST_MODIFIED_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v12}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 1200
    :cond_4
    :goto_1
    invoke-interface {v9}, Lorg/eclipse/jetty/http/HttpContent;->getETag()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v8

    .line 1201
    .local v8, "etag":Lorg/eclipse/jetty/io/Buffer;
    if-eqz v8, :cond_5

    .line 1202
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    move-object/from16 v17, v0

    sget-object v18, Lorg/eclipse/jetty/http/HttpHeaders;->ETAG_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v8}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    .line 1205
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_connector:Lorg/eclipse/jetty/server/Connector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Lorg/eclipse/jetty/server/nio/NIOConnector;

    move/from16 v17, v0

    if-eqz v17, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_connector:Lorg/eclipse/jetty/server/Connector;

    move-object/from16 v17, v0

    check-cast v17, Lorg/eclipse/jetty/server/nio/NIOConnector;

    invoke-interface/range {v17 .. v17}, Lorg/eclipse/jetty/server/nio/NIOConnector;->getUseDirectBuffers()Z

    move-result v17

    if-eqz v17, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_connector:Lorg/eclipse/jetty/server/Connector;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    instance-of v0, v0, Lorg/eclipse/jetty/server/ssl/SslConnector;

    move/from16 v17, v0

    if-nez v17, :cond_b

    const/4 v6, 0x1

    .line 1206
    .local v6, "direct":Z
    :goto_2
    if-eqz v6, :cond_c

    invoke-interface {v9}, Lorg/eclipse/jetty/http/HttpContent;->getDirectBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object p1

    .line 1207
    .local p1, "content":Lorg/eclipse/jetty/io/Buffer;
    :goto_3
    if-nez p1, :cond_6

    .line 1208
    invoke-interface {v9}, Lorg/eclipse/jetty/http/HttpContent;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .end local p1    # "content":Lorg/eclipse/jetty/io/Buffer;
    :cond_6
    move-object/from16 v17, p1

    .line 1218
    .end local v4    # "contentType":Lorg/eclipse/jetty/io/Buffer;
    .end local v6    # "direct":Z
    .end local v8    # "etag":Lorg/eclipse/jetty/io/Buffer;
    .end local v9    # "httpContent":Lorg/eclipse/jetty/http/HttpContent;
    .end local v12    # "lm":Lorg/eclipse/jetty/io/Buffer;
    .end local v13    # "lml":J
    :goto_4
    move-object/from16 v0, v17

    instance-of v0, v0, Lorg/eclipse/jetty/io/Buffer;

    move/from16 v18, v0

    if-eqz v18, :cond_e

    .line 1220
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    move-object/from16 v18, v0

    check-cast v17, Lorg/eclipse/jetty/io/Buffer;

    const/16 v19, 0x1

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lorg/eclipse/jetty/http/AbstractGenerator;->addContent(Lorg/eclipse/jetty/io/Buffer;Z)V

    .line 1221
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Lorg/eclipse/jetty/server/AbstractHttpConnection;->commitResponse(Z)V

    .line 1258
    :goto_5
    return-void

    .line 1168
    .restart local v4    # "contentType":Lorg/eclipse/jetty/io/Buffer;
    .restart local v7    # "enc":Ljava/lang/String;
    .restart local v9    # "httpContent":Lorg/eclipse/jetty/http/HttpContent;
    .local p1, "content":Ljava/lang/Object;
    :cond_7
    instance-of v0, v4, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move/from16 v17, v0

    if-eqz v17, :cond_9

    move-object/from16 v17, v4

    .line 1170
    check-cast v17, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;->getAssociate(Ljava/lang/Object;)Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;

    move-result-object v5

    .line 1171
    .local v5, "content_type":Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;
    if-eqz v5, :cond_8

    .line 1172
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    move-object/from16 v17, v0

    sget-object v18, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v5}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Lorg/eclipse/jetty/io/Buffer;)V

    goto/16 :goto_0

    .line 1175
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    move-object/from16 v17, v0

    sget-object v18, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ";charset="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ";= "

    move-object/from16 v0, v20

    invoke-static {v7, v0}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1181
    .end local v5    # "content_type":Lorg/eclipse/jetty/io/BufferCache$CachedBuffer;
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    move-object/from16 v17, v0

    sget-object v18, Lorg/eclipse/jetty/http/HttpHeaders;->CONTENT_TYPE_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ";charset="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ";= "

    move-object/from16 v0, v20

    invoke-static {v7, v0}, Lorg/eclipse/jetty/util/QuotedStringTokenizer;->quoteIfNeeded(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lorg/eclipse/jetty/http/HttpFields;->put(Lorg/eclipse/jetty/io/Buffer;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1194
    .end local v7    # "enc":Ljava/lang/String;
    .restart local v12    # "lm":Lorg/eclipse/jetty/io/Buffer;
    .restart local v13    # "lml":J
    :cond_a
    invoke-interface {v9}, Lorg/eclipse/jetty/http/HttpContent;->getResource()Lorg/eclipse/jetty/util/resource/Resource;

    move-result-object v17

    if-eqz v17, :cond_4

    .line 1196
    const-wide/16 v17, -0x1

    cmp-long v17, v13, v17

    if-eqz v17, :cond_4

    .line 1197
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    move-object/from16 v17, v0

    sget-object v18, Lorg/eclipse/jetty/http/HttpHeaders;->LAST_MODIFIED_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v13, v14}, Lorg/eclipse/jetty/http/HttpFields;->putDateField(Lorg/eclipse/jetty/io/Buffer;J)V

    goto/16 :goto_1

    .line 1205
    .restart local v8    # "etag":Lorg/eclipse/jetty/io/Buffer;
    :cond_b
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 1206
    .restart local v6    # "direct":Z
    :cond_c
    invoke-interface {v9}, Lorg/eclipse/jetty/http/HttpContent;->getIndirectBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object p1

    goto/16 :goto_3

    .line 1210
    .end local v4    # "contentType":Lorg/eclipse/jetty/io/Buffer;
    .end local v6    # "direct":Z
    .end local v8    # "etag":Lorg/eclipse/jetty/io/Buffer;
    .end local v9    # "httpContent":Lorg/eclipse/jetty/http/HttpContent;
    .end local v12    # "lm":Lorg/eclipse/jetty/io/Buffer;
    .end local v13    # "lml":J
    :cond_d
    move-object/from16 v0, p1

    instance-of v0, v0, Lorg/eclipse/jetty/util/resource/Resource;

    move/from16 v17, v0

    if-eqz v17, :cond_13

    move-object/from16 v16, p1

    .line 1212
    check-cast v16, Lorg/eclipse/jetty/util/resource/Resource;

    .line 1213
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_responseFields:Lorg/eclipse/jetty/http/HttpFields;

    move-object/from16 v17, v0

    sget-object v18, Lorg/eclipse/jetty/http/HttpHeaders;->LAST_MODIFIED_BUFFER:Lorg/eclipse/jetty/io/Buffer;

    invoke-virtual/range {v16 .. v16}, Lorg/eclipse/jetty/util/resource/Resource;->lastModified()J

    move-result-wide v19

    invoke-virtual/range {v17 .. v20}, Lorg/eclipse/jetty/http/HttpFields;->putDateField(Lorg/eclipse/jetty/io/Buffer;J)V

    .line 1214
    invoke-virtual/range {v16 .. v16}, Lorg/eclipse/jetty/util/resource/Resource;->getInputStream()Ljava/io/InputStream;

    move-result-object p1

    .local p1, "content":Ljava/io/InputStream;
    move-object/from16 v17, p1

    goto/16 :goto_4

    .line 1223
    .end local p1    # "content":Ljava/io/InputStream;
    :cond_e
    move-object/from16 v0, v17

    instance-of v0, v0, Ljava/io/InputStream;

    move/from16 v18, v0

    if-eqz v18, :cond_12

    move-object/from16 v10, v17

    .line 1225
    check-cast v10, Ljava/io/InputStream;

    .line 1229
    .local v10, "in":Ljava/io/InputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/http/AbstractGenerator;->prepareUncheckedAddContent()I

    move-result v15

    .line 1230
    .local v15, "max":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/http/AbstractGenerator;->getUncheckedBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v3

    .line 1232
    .local v3, "buffer":Lorg/eclipse/jetty/io/Buffer;
    invoke-interface {v3, v10, v15}, Lorg/eclipse/jetty/io/Buffer;->readFrom(Ljava/io/InputStream;I)I

    move-result v11

    .line 1234
    .local v11, "len":I
    :goto_6
    if-ltz v11, :cond_f

    .line 1236
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/http/AbstractGenerator;->completeUncheckedAddContent()V

    .line 1237
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_out:Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->flush()V

    .line 1239
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/http/AbstractGenerator;->prepareUncheckedAddContent()I

    move-result v15

    .line 1240
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/http/AbstractGenerator;->getUncheckedBuffer()Lorg/eclipse/jetty/io/Buffer;

    move-result-object v3

    .line 1241
    invoke-interface {v3, v10, v15}, Lorg/eclipse/jetty/io/Buffer;->readFrom(Ljava/io/InputStream;I)I

    move-result v11

    goto :goto_6

    .line 1243
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/http/AbstractGenerator;->completeUncheckedAddContent()V

    .line 1244
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->this$0:Lorg/eclipse/jetty/server/AbstractHttpConnection;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lorg/eclipse/jetty/server/AbstractHttpConnection;->_out:Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lorg/eclipse/jetty/server/AbstractHttpConnection$Output;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1248
    if-eqz v16, :cond_10

    .line 1249
    invoke-virtual/range {v16 .. v16}, Lorg/eclipse/jetty/util/resource/Resource;->release()V

    goto/16 :goto_5

    .line 1251
    :cond_10
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    goto/16 :goto_5

    .line 1248
    .end local v3    # "buffer":Lorg/eclipse/jetty/io/Buffer;
    .end local v11    # "len":I
    .end local v15    # "max":I
    :catchall_0
    move-exception v17

    if-eqz v16, :cond_11

    .line 1249
    invoke-virtual/range {v16 .. v16}, Lorg/eclipse/jetty/util/resource/Resource;->release()V

    .line 1251
    :goto_7
    throw v17

    :cond_11
    invoke-virtual {v10}, Ljava/io/InputStream;->close()V

    goto :goto_7

    .line 1255
    .end local v10    # "in":Ljava/io/InputStream;
    :cond_12
    new-instance v17, Ljava/lang/IllegalArgumentException;

    const-string v18, "unknown content type?"

    invoke-direct/range {v17 .. v18}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v17

    .local p1, "content":Ljava/lang/Object;
    :cond_13
    move-object/from16 v17, p1

    goto/16 :goto_4
.end method

.method public sendResponse(Lorg/eclipse/jetty/io/Buffer;)V
    .locals 1
    .param p1, "response"    # Lorg/eclipse/jetty/io/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1142
    iget-object v0, p0, Lorg/eclipse/jetty/server/HttpOutput;->_generator:Lorg/eclipse/jetty/http/AbstractGenerator;

    check-cast v0, Lorg/eclipse/jetty/http/HttpGenerator;

    invoke-virtual {v0, p1}, Lorg/eclipse/jetty/http/HttpGenerator;->sendResponse(Lorg/eclipse/jetty/io/Buffer;)V

    .line 1143
    return-void
.end method
