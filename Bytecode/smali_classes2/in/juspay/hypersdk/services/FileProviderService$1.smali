.class Lin/juspay/hypersdk/services/FileProviderService$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lin/juspay/hypersdk/services/FileProviderService;->initialiseHashAndStatus(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lin/juspay/hypersdk/services/FileProviderService;

.field final synthetic val$fileName:Ljava/lang/String;

.field final synthetic val$maxSecondsToLoad:I


# direct methods
.method constructor <init>(Lin/juspay/hypersdk/services/FileProviderService;ILjava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/services/FileProviderService$1;->this$0:Lin/juspay/hypersdk/services/FileProviderService;

    iput p2, p0, Lin/juspay/hypersdk/services/FileProviderService$1;->val$maxSecondsToLoad:I

    iput-object p3, p0, Lin/juspay/hypersdk/services/FileProviderService$1;->val$fileName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    const-string v0, "jp_blocked_hash"

    const-string v1, "not_loaded"

    const-string v2, "hashLoaded"

    const-string v3, "{}"

    const-string v4, "jp_hash_and_status"

    const-string v5, "status"

    :try_start_0
    iget v6, p0, Lin/juspay/hypersdk/services/FileProviderService$1;->val$maxSecondsToLoad:I

    mul-int/lit16 v6, v6, 0x3e8

    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V

    iget-object v6, p0, Lin/juspay/hypersdk/services/FileProviderService$1;->this$0:Lin/juspay/hypersdk/services/FileProviderService;

    invoke-static {v6}, Lin/juspay/hypersdk/services/FileProviderService;->access$000(Lin/juspay/hypersdk/services/FileProviderService;)Lin/juspay/hypersdk/core/JuspayServices;

    move-result-object v6

    invoke-static {v6, v4, v3}, Lin/juspay/hypersdk/data/KeyValueStore;->read(Lin/juspay/hypersdk/core/JuspayServices;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Lorg/json/JSONObject;

    invoke-direct {v7, v6}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lin/juspay/hypersdk/services/FileProviderService$1;->val$fileName:Ljava/lang/String;

    invoke-virtual {v7, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "in_progress"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lin/juspay/hypersdk/services/FileProviderService$1;->this$0:Lin/juspay/hypersdk/services/FileProviderService;

    invoke-static {v8}, Lin/juspay/hypersdk/services/FileProviderService;->access$000(Lin/juspay/hypersdk/services/FileProviderService;)Lin/juspay/hypersdk/core/JuspayServices;

    move-result-object v8

    invoke-virtual {v8}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v9

    const-string v10, "system"

    const-string v11, "critical"

    const-string v12, "auto_fallback"

    const-string v13, "blocked_filename"

    iget-object v14, p0, Lin/juspay/hypersdk/services/FileProviderService$1;->val$fileName:Ljava/lang/String;

    invoke-virtual/range {v9 .. v14}, Lin/juspay/hypersdk/core/SdkTracker;->trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v8, p0, Lin/juspay/hypersdk/services/FileProviderService$1;->this$0:Lin/juspay/hypersdk/services/FileProviderService;

    invoke-static {v8}, Lin/juspay/hypersdk/services/FileProviderService;->access$000(Lin/juspay/hypersdk/services/FileProviderService;)Lin/juspay/hypersdk/core/JuspayServices;

    move-result-object v8

    invoke-virtual {v8}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v9

    const-string v10, "system"

    const-string v11, "critical"

    const-string v12, "auto_fallback"

    const-string v13, "blocked_hash"

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    invoke-virtual/range {v9 .. v14}, Lin/juspay/hypersdk/core/SdkTracker;->trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v8, p0, Lin/juspay/hypersdk/services/FileProviderService$1;->this$0:Lin/juspay/hypersdk/services/FileProviderService;

    invoke-static {v8}, Lin/juspay/hypersdk/services/FileProviderService;->access$000(Lin/juspay/hypersdk/services/FileProviderService;)Lin/juspay/hypersdk/core/JuspayServices;

    move-result-object v8

    const-string v9, "jp_asset_manage"

    const-string v10, "false"

    invoke-static {v8, v9, v10}, Lin/juspay/hypersdk/data/KeyValueStore;->read(Lin/juspay/hypersdk/core/JuspayServices;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "true"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {v6, v5, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v8, p0, Lin/juspay/hypersdk/services/FileProviderService$1;->val$fileName:Ljava/lang/String;

    invoke-virtual {v7, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v8, p0, Lin/juspay/hypersdk/services/FileProviderService$1;->this$0:Lin/juspay/hypersdk/services/FileProviderService;

    invoke-static {v8}, Lin/juspay/hypersdk/services/FileProviderService;->access$000(Lin/juspay/hypersdk/services/FileProviderService;)Lin/juspay/hypersdk/core/JuspayServices;

    move-result-object v8

    invoke-virtual {v7}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v4, v7}, Lin/juspay/hypersdk/data/KeyValueStore;->write(Lin/juspay/hypersdk/core/JuspayServices;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lin/juspay/hypersdk/services/FileProviderService$1;->this$0:Lin/juspay/hypersdk/services/FileProviderService;

    invoke-static {v4}, Lin/juspay/hypersdk/services/FileProviderService;->access$000(Lin/juspay/hypersdk/services/FileProviderService;)Lin/juspay/hypersdk/core/JuspayServices;

    move-result-object v4

    invoke-static {v4, v0, v3}, Lin/juspay/hypersdk/data/KeyValueStore;->read(Lin/juspay/hypersdk/core/JuspayServices;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lin/juspay/hypersdk/services/FileProviderService$1;->val$fileName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lin/juspay/hypersdk/services/FileProviderService$1;->val$fileName:Ljava/lang/String;

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    goto :goto_0

    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "used"

    invoke-virtual {v6, v5}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "_hash"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v2}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lin/juspay/hypersdk/services/FileProviderService$1;->val$fileName:Ljava/lang/String;

    invoke-virtual {v4, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    iget-object v1, p0, Lin/juspay/hypersdk/services/FileProviderService$1;->this$0:Lin/juspay/hypersdk/services/FileProviderService;

    invoke-static {v1}, Lin/juspay/hypersdk/services/FileProviderService;->access$000(Lin/juspay/hypersdk/services/FileProviderService;)Lin/juspay/hypersdk/core/JuspayServices;

    move-result-object v1

    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lin/juspay/hypersdk/data/KeyValueStore;->write(Lin/juspay/hypersdk/core/JuspayServices;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "window.onMerchantEvent(\'%s\',atob(\'%s\'));"

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "respawn"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lin/juspay/hypersdk/services/FileProviderService$1;->val$fileName:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4, v1}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lin/juspay/hypersdk/services/FileProviderService$1;->this$0:Lin/juspay/hypersdk/services/FileProviderService;

    invoke-static {v1}, Lin/juspay/hypersdk/services/FileProviderService;->access$000(Lin/juspay/hypersdk/services/FileProviderService;)Lin/juspay/hypersdk/core/JuspayServices;

    move-result-object v1

    invoke-virtual {v1}, Lin/juspay/hypersdk/core/JuspayServices;->getDynamicUI()Lin/juspay/mystique/DynamicUI;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lin/juspay/hypersdk/services/FileProviderService$1;->this$0:Lin/juspay/hypersdk/services/FileProviderService;

    invoke-static {v1}, Lin/juspay/hypersdk/services/FileProviderService;->access$000(Lin/juspay/hypersdk/services/FileProviderService;)Lin/juspay/hypersdk/core/JuspayServices;

    move-result-object v1

    invoke-virtual {v1}, Lin/juspay/hypersdk/core/JuspayServices;->getDynamicUI()Lin/juspay/mystique/DynamicUI;

    move-result-object v1

    invoke-virtual {v1, v0}, Lin/juspay/mystique/DynamicUI;->addJsToWebView(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
