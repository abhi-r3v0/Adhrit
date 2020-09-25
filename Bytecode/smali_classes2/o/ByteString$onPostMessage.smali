.class public Lo/ByteString$onPostMessage;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "onPostMessage"
.end annotation


# instance fields
.field private builderAbtExperiments:Lorg/json/JSONArray;

.field private builderConfigsJson:Lorg/json/JSONObject;

.field private builderFetchTime:Ljava/util/Date;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lo/ByteString$onPostMessage;->builderConfigsJson:Lorg/json/JSONObject;

    .line 138
    invoke-static {}, Lo/ByteString;->access$000()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lo/ByteString$onPostMessage;->builderFetchTime:Ljava/util/Date;

    .line 139
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lo/ByteString$onPostMessage;->builderAbtExperiments:Lorg/json/JSONArray;

    return-void
.end method

.method synthetic constructor <init>(Lo/ByteString$1;)V
    .locals 0

    .line 131
    invoke-direct {p0}, Lo/ByteString$onPostMessage;-><init>()V

    return-void
.end method

.method public constructor <init>(Lo/ByteString;)V
    .locals 1

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    invoke-virtual {p1}, Lo/ByteString;->getConfigs()Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lo/ByteString$onPostMessage;->builderConfigsJson:Lorg/json/JSONObject;

    .line 144
    invoke-virtual {p1}, Lo/ByteString;->getFetchTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lo/ByteString$onPostMessage;->builderFetchTime:Ljava/util/Date;

    .line 145
    invoke-virtual {p1}, Lo/ByteString;->getAbtExperiments()Lorg/json/JSONArray;

    move-result-object p1

    iput-object p1, p0, Lo/ByteString$onPostMessage;->builderAbtExperiments:Lorg/json/JSONArray;

    return-void
.end method


# virtual methods
.method public build()Lo/ByteString;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 184
    new-instance v0, Lo/ByteString;

    iget-object v1, p0, Lo/ByteString$onPostMessage;->builderConfigsJson:Lorg/json/JSONObject;

    iget-object v2, p0, Lo/ByteString$onPostMessage;->builderFetchTime:Ljava/util/Date;

    iget-object v3, p0, Lo/ByteString$onPostMessage;->builderAbtExperiments:Lorg/json/JSONArray;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lo/ByteString;-><init>(Lorg/json/JSONObject;Ljava/util/Date;Lorg/json/JSONArray;Lo/ByteString$1;)V

    return-object v0
.end method

.method public replaceConfigsWith(Ljava/util/Map;)Lo/ByteString$onPostMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lo/ByteString$onPostMessage;"
        }
    .end annotation

    .line 149
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    iput-object v0, p0, Lo/ByteString$onPostMessage;->builderConfigsJson:Lorg/json/JSONObject;

    return-object p0
.end method

.method public replaceConfigsWith(Lorg/json/JSONObject;)Lo/ByteString$onPostMessage;
    .locals 1

    .line 155
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lo/ByteString$onPostMessage;->builderConfigsJson:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method public withAbtExperiments(Lorg/json/JSONArray;)Lo/ByteString$onPostMessage;
    .locals 1

    .line 172
    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-virtual {p1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lo/ByteString$onPostMessage;->builderAbtExperiments:Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-object p0
.end method

.method public withFetchTime(Ljava/util/Date;)Lo/ByteString$onPostMessage;
    .locals 0

    .line 166
    iput-object p1, p0, Lo/ByteString$onPostMessage;->builderFetchTime:Ljava/util/Date;

    return-object p0
.end method
