.class public Ljavax/servlet/ServletResponseWrapper;
.super Ljava/lang/Object;
.source "ServletResponseWrapper.java"

# interfaces
.implements Ljavax/servlet/ServletResponse;


# instance fields
.field private response:Ljavax/servlet/ServletResponse;


# direct methods
.method public constructor <init>(Ljavax/servlet/ServletResponse;)V
    .locals 2
    .param p1, "response"    # Ljavax/servlet/ServletResponse;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    if-nez p1, :cond_0

    .line 89
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Response cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_0
    iput-object p1, p0, Ljavax/servlet/ServletResponseWrapper;->response:Ljavax/servlet/ServletResponse;

    .line 92
    return-void
.end method


# virtual methods
.method public flushBuffer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Ljavax/servlet/ServletResponseWrapper;->response:Ljavax/servlet/ServletResponse;

    invoke-interface {v0}, Ljavax/servlet/ServletResponse;->flushBuffer()V

    .line 207
    return-void
.end method

.method public getBufferSize()I
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Ljavax/servlet/ServletResponseWrapper;->response:Ljavax/servlet/ServletResponse;

    invoke-interface {v0}, Ljavax/servlet/ServletResponse;->getBufferSize()I

    move-result v0

    return v0
.end method

.method public getCharacterEncoding()Ljava/lang/String;
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Ljavax/servlet/ServletResponseWrapper;->response:Ljavax/servlet/ServletResponse;

    invoke-interface {v0}, Ljavax/servlet/ServletResponse;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Ljavax/servlet/ServletResponseWrapper;->response:Ljavax/servlet/ServletResponse;

    invoke-interface {v0}, Ljavax/servlet/ServletResponse;->getContentType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Ljavax/servlet/ServletResponseWrapper;->response:Ljavax/servlet/ServletResponse;

    invoke-interface {v0}, Ljavax/servlet/ServletResponse;->getLocale()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public getOutputStream()Ljavax/servlet/ServletOutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 142
    iget-object v0, p0, Ljavax/servlet/ServletResponseWrapper;->response:Ljavax/servlet/ServletResponse;

    invoke-interface {v0}, Ljavax/servlet/ServletResponse;->getOutputStream()Ljavax/servlet/ServletOutputStream;

    move-result-object v0

    return-object v0
.end method

.method public getResponse()Ljavax/servlet/ServletResponse;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Ljavax/servlet/ServletResponseWrapper;->response:Ljavax/servlet/ServletResponse;

    return-object v0
.end method

.method public getWriter()Ljava/io/PrintWriter;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    iget-object v0, p0, Ljavax/servlet/ServletResponseWrapper;->response:Ljavax/servlet/ServletResponse;

    invoke-interface {v0}, Ljavax/servlet/ServletResponse;->getWriter()Ljava/io/PrintWriter;

    move-result-object v0

    return-object v0
.end method

.method public isCommitted()Z
    .locals 1

    .prologue
    .line 214
    iget-object v0, p0, Ljavax/servlet/ServletResponseWrapper;->response:Ljavax/servlet/ServletResponse;

    invoke-interface {v0}, Ljavax/servlet/ServletResponse;->isCommitted()Z

    move-result v0

    return v0
.end method

.method public isWrapperFor(Ljava/lang/Class;)Z
    .locals 3
    .param p1, "wrappedType"    # Ljava/lang/Class;

    .prologue
    .line 291
    const-class v0, Ljavax/servlet/ServletResponse;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 292
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Given class "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " not a subinterface of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Ljavax/servlet/ServletResponse;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 296
    :cond_0
    iget-object v0, p0, Ljavax/servlet/ServletResponseWrapper;->response:Ljavax/servlet/ServletResponse;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 297
    const/4 v0, 0x1

    .line 301
    :goto_0
    return v0

    .line 298
    :cond_1
    iget-object v0, p0, Ljavax/servlet/ServletResponseWrapper;->response:Ljavax/servlet/ServletResponse;

    instance-of v0, v0, Ljavax/servlet/ServletResponseWrapper;

    if-eqz v0, :cond_2

    .line 299
    iget-object v0, p0, Ljavax/servlet/ServletResponseWrapper;->response:Ljavax/servlet/ServletResponse;

    check-cast v0, Ljavax/servlet/ServletResponseWrapper;

    invoke-virtual {v0, p1}, Ljavax/servlet/ServletResponseWrapper;->isWrapperFor(Ljava/lang/Class;)Z

    move-result v0

    goto :goto_0

    .line 301
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWrapperFor(Ljavax/servlet/ServletResponse;)Z
    .locals 1
    .param p1, "wrapped"    # Ljavax/servlet/ServletResponse;

    .prologue
    .line 265
    iget-object v0, p0, Ljavax/servlet/ServletResponseWrapper;->response:Ljavax/servlet/ServletResponse;

    if-ne v0, p1, :cond_0

    .line 266
    const/4 v0, 0x1

    .line 270
    :goto_0
    return v0

    .line 267
    :cond_0
    iget-object v0, p0, Ljavax/servlet/ServletResponseWrapper;->response:Ljavax/servlet/ServletResponse;

    instance-of v0, v0, Ljavax/servlet/ServletResponseWrapper;

    if-eqz v0, :cond_1

    .line 268
    iget-object v0, p0, Ljavax/servlet/ServletResponseWrapper;->response:Ljavax/servlet/ServletResponse;

    check-cast v0, Ljavax/servlet/ServletResponseWrapper;

    invoke-virtual {v0, p1}, Ljavax/servlet/ServletResponseWrapper;->isWrapperFor(Ljavax/servlet/ServletResponse;)Z

    move-result v0

    goto :goto_0

    .line 270
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Ljavax/servlet/ServletResponseWrapper;->response:Ljavax/servlet/ServletResponse;

    invoke-interface {v0}, Ljavax/servlet/ServletResponse;->reset()V

    .line 224
    return-void
.end method

.method public resetBuffer()V
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Ljavax/servlet/ServletResponseWrapper;->response:Ljavax/servlet/ServletResponse;

    invoke-interface {v0}, Ljavax/servlet/ServletResponse;->resetBuffer()V

    .line 233
    return-void
.end method

.method public setBufferSize(I)V
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 189
    iget-object v0, p0, Ljavax/servlet/ServletResponseWrapper;->response:Ljavax/servlet/ServletResponse;

    invoke-interface {v0, p1}, Ljavax/servlet/ServletResponse;->setBufferSize(I)V

    .line 190
    return-void
.end method

.method public setCharacterEncoding(Ljava/lang/String;)V
    .locals 1
    .param p1, "charset"    # Ljava/lang/String;

    .prologue
    .line 123
    iget-object v0, p0, Ljavax/servlet/ServletResponseWrapper;->response:Ljavax/servlet/ServletResponse;

    invoke-interface {v0, p1}, Ljavax/servlet/ServletResponse;->setCharacterEncoding(Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public setContentLength(I)V
    .locals 1
    .param p1, "len"    # I

    .prologue
    .line 161
    iget-object v0, p0, Ljavax/servlet/ServletResponseWrapper;->response:Ljavax/servlet/ServletResponse;

    invoke-interface {v0, p1}, Ljavax/servlet/ServletResponse;->setContentLength(I)V

    .line 162
    return-void
.end method

.method public setContentType(Ljava/lang/String;)V
    .locals 1
    .param p1, "type"    # Ljava/lang/String;

    .prologue
    .line 170
    iget-object v0, p0, Ljavax/servlet/ServletResponseWrapper;->response:Ljavax/servlet/ServletResponse;

    invoke-interface {v0, p1}, Ljavax/servlet/ServletResponse;->setContentType(Ljava/lang/String;)V

    .line 171
    return-void
.end method

.method public setLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "loc"    # Ljava/util/Locale;

    .prologue
    .line 241
    iget-object v0, p0, Ljavax/servlet/ServletResponseWrapper;->response:Ljavax/servlet/ServletResponse;

    invoke-interface {v0, p1}, Ljavax/servlet/ServletResponse;->setLocale(Ljava/util/Locale;)V

    .line 242
    return-void
.end method

.method public setResponse(Ljavax/servlet/ServletResponse;)V
    .locals 2
    .param p1, "response"    # Ljavax/servlet/ServletResponse;

    .prologue
    .line 109
    if-nez p1, :cond_0

    .line 110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Response cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_0
    iput-object p1, p0, Ljavax/servlet/ServletResponseWrapper;->response:Ljavax/servlet/ServletResponse;

    .line 113
    return-void
.end method
