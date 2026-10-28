.class public Lcom/mifiservice/utils/JsonUtil;
.super Ljava/lang/Object;
.source "JsonUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildCommonResp(ILjava/lang/String;)Lcom/alibaba/fastjson/JSONObject;
    .locals 3
    .param p0, "code"    # I
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 10
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 11
    .local v0, "json":Lcom/alibaba/fastjson/JSONObject;
    const-string v1, "code"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    const-string v1, "msg"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    return-object v0
.end method

.method public static bytes2Json([B)Lcom/alibaba/fastjson/JSONObject;
    .locals 1
    .param p0, "bs"    # [B

    .prologue
    .line 17
    invoke-static {p0}, Lcom/mifiservice/utils/TextUtil;->isEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18
    const/4 v0, 0x0

    .line 20
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    goto :goto_0
.end method

.method public static bytes2JsonArray([B)Lcom/alibaba/fastjson/JSONArray;
    .locals 1
    .param p0, "bs"    # [B

    .prologue
    .line 24
    invoke-static {p0}, Lcom/mifiservice/utils/TextUtil;->isEmpty([B)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 27
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([B)V

    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    goto :goto_0
.end method

.method public static json2Bytes(Lcom/alibaba/fastjson/JSONArray;)[B
    .locals 1
    .param p0, "jsonArray"    # Lcom/alibaba/fastjson/JSONArray;

    .prologue
    .line 38
    if-nez p0, :cond_0

    .line 39
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 41
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONArray;->toJSONString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method

.method public static json2Bytes(Lcom/alibaba/fastjson/JSONObject;)[B
    .locals 1
    .param p0, "jsonObject"    # Lcom/alibaba/fastjson/JSONObject;

    .prologue
    .line 31
    if-nez p0, :cond_0

    .line 32
    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 34
    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/alibaba/fastjson/JSONObject;->toJSONString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    goto :goto_0
.end method
