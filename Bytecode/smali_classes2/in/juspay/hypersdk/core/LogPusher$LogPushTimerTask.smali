.class Lin/juspay/hypersdk/core/LogPusher$LogPushTimerTask;
.super Ljava/util/TimerTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lin/juspay/hypersdk/core/LogPusher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LogPushTimerTask"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "LogPushTimerTask"

.field private static isExceptionTracked:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lin/juspay/hypersdk/core/LogPusher$1;)V
    .locals 0

    invoke-direct {p0}, Lin/juspay/hypersdk/core/LogPusher$LogPushTimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    invoke-static {}, Lin/juspay/hypersdk/core/LogPusher;->access$500()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lin/juspay/hypersdk/core/LogPusher;->access$800()Lorg/json/JSONArray;

    move-result-object v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_1
    const-string v2, "data"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v2, Lin/juspay/hypersdk/utils/network/NetUtils;

    const/16 v3, 0x2710

    invoke-direct {v2, v3, v3}, Lin/juspay/hypersdk/utils/network/NetUtils;-><init>(II)V

    invoke-static {}, Lin/juspay/hypersdk/core/LogPusher;->access$900()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v3, v0}, Lin/juspay/hypersdk/utils/network/NetUtils;->postZipEncrypted(Ljava/lang/String;Ljava/lang/String;)Lin/juspay/hypersdk/utils/network/JuspayHttpResponse;

    move-result-object v0

    iget v2, v0, Lin/juspay/hypersdk/utils/network/JuspayHttpResponse;->responseCode:I

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_0

    const-string v1, "system"

    const-string v2, "error"

    const-string v3, "log_pusher"

    const-string v4, "error_response"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v0, v0, Lin/juspay/hypersdk/utils/network/JuspayHttpResponse;->responseCode:I

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v2, v3, v4, v0}, Lin/juspay/hypersdk/core/SdkTracker;->trackBootAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v0

    invoke-static {v0}, Lin/juspay/hypersdk/core/LogPusher;->access$1000(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object v6, v0

    sget-boolean v0, Lin/juspay/hypersdk/core/LogPusher$LogPushTimerTask;->isExceptionTracked:Z

    if-nez v0, :cond_1

    const-string v1, "LogPushTimerTask"

    const-string v2, "action"

    const-string v3, "system"

    const-string v4, "log_pusher"

    const-string v5, "Error while creating the payload to post"

    invoke-static/range {v1 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogBootException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lin/juspay/hypersdk/core/LogPusher$LogPushTimerTask;->isExceptionTracked:Z

    :cond_2
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
