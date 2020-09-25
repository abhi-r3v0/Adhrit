.class Lin/juspay/hypersdk/core/LogPusher$QueueFileIterableJsonWrapper$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/hypersdk/core/LogPusher$QueueFileIterableJsonWrapper;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "[B>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lin/juspay/hypersdk/core/LogPusher$QueueFileIterableJsonWrapper;


# direct methods
.method constructor <init>(Lin/juspay/hypersdk/core/LogPusher$QueueFileIterableJsonWrapper;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/core/LogPusher$QueueFileIterableJsonWrapper$1;->this$0:Lin/juspay/hypersdk/core/LogPusher$QueueFileIterableJsonWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object p1, p0, Lin/juspay/hypersdk/core/LogPusher$QueueFileIterableJsonWrapper$1;->this$0:Lin/juspay/hypersdk/core/LogPusher$QueueFileIterableJsonWrapper;

    invoke-static {p1}, Lin/juspay/hypersdk/core/LogPusher$QueueFileIterableJsonWrapper;->access$200(Lin/juspay/hypersdk/core/LogPusher$QueueFileIterableJsonWrapper;)Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lin/juspay/hypersdk/core/LogPusher$QueueFileIterableJsonWrapper$1;->iterator:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    iget-object v0, p0, Lin/juspay/hypersdk/core/LogPusher$QueueFileIterableJsonWrapper$1;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lin/juspay/hypersdk/core/LogPusher$QueueFileIterableJsonWrapper$1;->next()Lorg/json/JSONObject;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/json/JSONObject;
    .locals 7

    iget-object v0, p0, Lin/juspay/hypersdk/core/LogPusher$QueueFileIterableJsonWrapper$1;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    move-object v6, v0

    invoke-static {}, Lin/juspay/hypersdk/core/LogPusher;->access$308()I

    invoke-static {}, Lin/juspay/hypersdk/core/LogPusher;->access$300()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_0

    const-string v1, "LogPusher"

    const-string v2, "action"

    const-string v3, "system"

    const-string v4, "log_pusher"

    const-string v5, "Bad JSON while reading the Persisted Queue for Logs"

    invoke-static/range {v1 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogBootException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    const-string v0, "LogPusher"

    const-string v1, "Bad JSON while reading the Persisted Queue for Logs"

    invoke-static {v0, v1, v6}, Lin/juspay/hypersdk/core/JuspayLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public remove()V
    .locals 1

    iget-object v0, p0, Lin/juspay/hypersdk/core/LogPusher$QueueFileIterableJsonWrapper$1;->iterator:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    return-void
.end method
