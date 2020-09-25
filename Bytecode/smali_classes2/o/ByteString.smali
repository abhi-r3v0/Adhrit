.class public Lo/ByteString;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/ByteString$onPostMessage;
    }
.end annotation


# static fields
.field private static final ABT_EXPERIMENTS_KEY:Ljava/lang/String; = "abt_experiments_key"

.field private static final CONFIGS_KEY:Ljava/lang/String; = "configs_key"

.field private static final DEFAULTS_FETCH_TIME:Ljava/util/Date;

.field private static final FETCH_TIME_KEY:Ljava/lang/String; = "fetch_time_key"


# instance fields
.field private abtExperiments:Lorg/json/JSONArray;

.field private configsJson:Lorg/json/JSONObject;

.field private containerJson:Lorg/json/JSONObject;

.field private fetchTime:Ljava/util/Date;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 34
    new-instance v0, Ljava/util/Date;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    sput-object v0, Lo/ByteString;->DEFAULTS_FETCH_TIME:Ljava/util/Date;

    return-void
.end method

.method private constructor <init>(Lorg/json/JSONObject;Ljava/util/Date;Lorg/json/JSONArray;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "configs_key"

    .line 63
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 64
    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-string v3, "fetch_time_key"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "abt_experiments_key"

    .line 65
    invoke-virtual {v0, v1, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 67
    iput-object p1, p0, Lo/ByteString;->configsJson:Lorg/json/JSONObject;

    .line 68
    iput-object p2, p0, Lo/ByteString;->fetchTime:Ljava/util/Date;

    .line 69
    iput-object p3, p0, Lo/ByteString;->abtExperiments:Lorg/json/JSONArray;

    .line 71
    iput-object v0, p0, Lo/ByteString;->containerJson:Lorg/json/JSONObject;

    return-void
.end method

.method synthetic constructor <init>(Lorg/json/JSONObject;Ljava/util/Date;Lorg/json/JSONArray;Lo/ByteString$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 29
    invoke-direct {p0, p1, p2, p3}, Lo/ByteString;-><init>(Lorg/json/JSONObject;Ljava/util/Date;Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Date;
    .locals 1

    .line 29
    sget-object v0, Lo/ByteString;->DEFAULTS_FETCH_TIME:Ljava/util/Date;

    return-object v0
.end method

.method static copyOf(Lorg/json/JSONObject;)Lo/ByteString;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 80
    new-instance v0, Lo/ByteString;

    const-string v1, "configs_key"

    .line 81
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    const-string v3, "fetch_time_key"

    .line 82
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v3

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    const-string v3, "abt_experiments_key"

    .line 83
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-direct {v0, v1, v2, p0}, Lo/ByteString;-><init>(Lorg/json/JSONObject;Ljava/util/Date;Lorg/json/JSONArray;)V

    return-object v0
.end method

.method public static newBuilder()Lo/ByteString$onPostMessage;
    .locals 2

    .line 189
    new-instance v0, Lo/ByteString$onPostMessage;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/ByteString$onPostMessage;-><init>(Lo/ByteString$1;)V

    return-object v0
.end method

.method public static newBuilder(Lo/ByteString;)Lo/ByteString$onPostMessage;
    .locals 1

    .line 193
    new-instance v0, Lo/ByteString$onPostMessage;

    invoke-direct {v0, p0}, Lo/ByteString$onPostMessage;-><init>(Lo/ByteString;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 117
    :cond_0
    instance-of v0, p1, Lo/ByteString;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 120
    :cond_1
    check-cast p1, Lo/ByteString;

    .line 122
    iget-object v0, p0, Lo/ByteString;->containerJson:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getAbtExperiments()Lorg/json/JSONArray;
    .locals 1

    .line 104
    iget-object v0, p0, Lo/ByteString;->abtExperiments:Lorg/json/JSONArray;

    return-object v0
.end method

.method public getConfigs()Lorg/json/JSONObject;
    .locals 1

    .line 92
    iget-object v0, p0, Lo/ByteString;->configsJson:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getFetchTime()Ljava/util/Date;
    .locals 1

    .line 100
    iget-object v0, p0, Lo/ByteString;->fetchTime:Ljava/util/Date;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 127
    iget-object v0, p0, Lo/ByteString;->containerJson:Lorg/json/JSONObject;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lo/ByteString;->containerJson:Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
