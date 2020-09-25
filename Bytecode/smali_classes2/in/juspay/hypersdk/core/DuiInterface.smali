.class public Lin/juspay/hypersdk/core/DuiInterface;
.super Lin/juspay/hypersdk/core/HyperJsInterface;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "DuiInterface"


# instance fields
.field private activity:Landroid/app/Activity;

.field protected browserFragment:Lin/juspay/hypersdk/HyperFragment;

.field private final context:Landroid/content/Context;

.field private final dynamicUI:Lin/juspay/mystique/DynamicUI;

.field private final juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

.field private lastFocusedEditView:I

.field protected listenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final remoteAssetService:Lin/juspay/hypersdk/services/RemoteAssetService;

.field private final sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

.field private final sessionInfo:Lin/juspay/hypersdk/data/SessionInfo;


# direct methods
.method public constructor <init>(Lin/juspay/hypersdk/core/JuspayServices;Landroid/app/Activity;Lin/juspay/hypersdk/HyperFragment;)V
    .locals 1

    invoke-direct {p0, p1, p3}, Lin/juspay/hypersdk/core/HyperJsInterface;-><init>(Lin/juspay/hypersdk/core/JuspayServices;Lin/juspay/hypersdk/HyperFragment;)V

    const/4 v0, -0x1

    iput v0, p0, Lin/juspay/hypersdk/core/DuiInterface;->lastFocusedEditView:I

    iput-object p1, p0, Lin/juspay/hypersdk/core/DuiInterface;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    iput-object p2, p0, Lin/juspay/hypersdk/core/DuiInterface;->activity:Landroid/app/Activity;

    invoke-virtual {p1}, Lin/juspay/hypersdk/core/JuspayServices;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lin/juspay/hypersdk/core/DuiInterface;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object p2

    iput-object p2, p0, Lin/juspay/hypersdk/core/DuiInterface;->sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

    invoke-virtual {p1}, Lin/juspay/hypersdk/core/JuspayServices;->getDynamicUI()Lin/juspay/mystique/DynamicUI;

    move-result-object p2

    iput-object p2, p0, Lin/juspay/hypersdk/core/DuiInterface;->dynamicUI:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {p1}, Lin/juspay/hypersdk/core/JuspayServices;->getSessionInfo()Lin/juspay/hypersdk/data/SessionInfo;

    move-result-object p2

    iput-object p2, p0, Lin/juspay/hypersdk/core/DuiInterface;->sessionInfo:Lin/juspay/hypersdk/data/SessionInfo;

    invoke-virtual {p1}, Lin/juspay/hypersdk/core/JuspayServices;->getRemoteAssetService()Lin/juspay/hypersdk/services/RemoteAssetService;

    move-result-object p1

    iput-object p1, p0, Lin/juspay/hypersdk/core/DuiInterface;->remoteAssetService:Lin/juspay/hypersdk/services/RemoteAssetService;

    iput-object p3, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lin/juspay/hypersdk/core/DuiInterface;->listenerMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lin/juspay/hypersdk/core/DuiInterface;)Landroid/app/Activity;
    .locals 0

    iget-object p0, p0, Lin/juspay/hypersdk/core/DuiInterface;->activity:Landroid/app/Activity;

    return-object p0
.end method

.method static synthetic access$100(Lin/juspay/hypersdk/core/DuiInterface;)Lin/juspay/hypersdk/core/SdkTracker;
    .locals 0

    iget-object p0, p0, Lin/juspay/hypersdk/core/DuiInterface;->sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

    return-object p0
.end method

.method static synthetic access$200(Lin/juspay/hypersdk/core/DuiInterface;)I
    .locals 0

    iget p0, p0, Lin/juspay/hypersdk/core/DuiInterface;->lastFocusedEditView:I

    return p0
.end method

.method static synthetic access$202(Lin/juspay/hypersdk/core/DuiInterface;I)I
    .locals 0

    iput p1, p0, Lin/juspay/hypersdk/core/DuiInterface;->lastFocusedEditView:I

    return p1
.end method


# virtual methods
.method public addDataToSharedPrefs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-static {v0, p1, p2}, Lin/juspay/hypersdk/data/KeyValueStore;->write(Lin/juspay/hypersdk/core/JuspayServices;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public attach(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-virtual {p0, p1}, Lin/juspay/hypersdk/core/DuiInterface;->isHookSupported(Ljava/lang/String;)Z

    move-result p2

    const-string v0, "DuiInterface"

    if-nez p2, :cond_0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Unsupported hook: "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lin/juspay/hypersdk/core/JuspayLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 p2, 0x1

    :try_start_0
    new-array p2, p2, [Ljava/lang/String;

    const/4 v1, 0x0

    aput-object p1, p2, v1

    invoke-virtual {p0, p2}, Lin/juspay/hypersdk/core/DuiInterface;->detach([Ljava/lang/String;)V

    const/4 p2, 0x0

    const-string v1, "SMS_CONSENT"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p2, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-static {p2, p3}, Lin/juspay/hypersdk/core/PaymentUtils;->getSMSConsent(Lin/juspay/hypersdk/HyperFragment;Ljava/lang/String;)Lin/juspay/hypersdk/core/SmsReceiver;

    move-result-object p2

    goto :goto_0

    :cond_1
    const-string v1, "SMS_RECEIVE"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object p2, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-static {p2, p3}, Lin/juspay/hypersdk/core/PaymentUtils;->getSMSReceiver(Lin/juspay/hypersdk/HyperFragment;Ljava/lang/String;)Lin/juspay/hypersdk/core/SmsReceiver;

    move-result-object p2

    goto :goto_0

    :cond_2
    const-string v1, "CLIPBOARD"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object p2, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-static {p2, p3}, Lin/juspay/hypersdk/core/PaymentUtils;->getClipboardListener(Lin/juspay/hypersdk/HyperFragment;Ljava/lang/String;)Lin/juspay/hypersdk/core/ClipboardListener;

    move-result-object p2

    goto :goto_0

    :cond_3
    const-string v1, "NETWORK_STATUS"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object p2, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-static {p2, p3}, Lin/juspay/hypersdk/core/PaymentUtils;->getConnectivityReceiver(Lin/juspay/hypersdk/HyperFragment;Ljava/lang/String;)Lin/juspay/hypersdk/core/ConnectivityReceiver;

    move-result-object p2

    goto :goto_0

    :cond_4
    const-string v1, "SEND_SMS"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object p2, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-static {p2, p3}, Lin/juspay/hypersdk/core/PaymentUtils;->getSendSMSReceiver(Lin/juspay/hypersdk/HyperFragment;Ljava/lang/String;)Lin/juspay/hypersdk/core/JuspayDuiHook;

    move-result-object p2

    goto :goto_0

    :cond_5
    const-string p3, "DELIVER_SMS"

    invoke-virtual {p3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-static {}, Lin/juspay/hypersdk/core/PaymentUtils;->getDeliveredSMSReceiver()Lin/juspay/hypersdk/core/JuspayDuiHook;

    move-result-object p2

    goto :goto_0

    :cond_6
    iget-object p3, p0, Lin/juspay/hypersdk/core/DuiInterface;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    const-string v1, "Unknown Hook: "

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v0, v1}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-eqz p2, :cond_7

    iget-object p3, p0, Lin/juspay/hypersdk/core/DuiInterface;->activity:Landroid/app/Activity;

    if-eqz p3, :cond_7

    iget-object p3, p0, Lin/juspay/hypersdk/core/DuiInterface;->listenerMap:Ljava/util/Map;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lin/juspay/hypersdk/core/DuiInterface;->activity:Landroid/app/Activity;

    invoke-interface {p2, p1}, Lin/juspay/hypersdk/core/JuspayDuiHook;->attach(Landroid/app/Activity;)V

    return-void

    :cond_7
    iget-object p1, p0, Lin/juspay/hypersdk/core/DuiInterface;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    const-string p2, "Nothing to attach"

    invoke-virtual {p1, v0, p2}, Lin/juspay/hypersdk/core/JuspayServices;->sdkDebug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    move-object v6, p1

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface;->sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

    const-string v1, "DuiInterface"

    const-string v2, "action"

    const-string v3, "system"

    const-string v4, "jbridge"

    const-string v5, "Error while retrieving arguments"

    invoke-virtual/range {v0 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public attachMerchantView(ILjava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lin/juspay/hypersdk/HyperFragment;->getJuspayCallback()Lin/juspay/hypersdk/core/JuspayCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface;->activity:Landroid/app/Activity;

    new-instance v1, Lin/juspay/hypersdk/core/DuiInterface$1;

    invoke-direct {v1, p0, p1, p2}, Lin/juspay/hypersdk/core/DuiInterface$1;-><init>(Lin/juspay/hypersdk/core/DuiInterface;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public checkReadSMSPermission()Ljava/lang/String;
    .locals 12
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "android.permission.RECEIVE_SMS"

    const-string v1, ""

    const-string v2, "android.permission."

    const-string v3, "android.permission.READ_SMS"

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    invoke-virtual {v3, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lin/juspay/hypersdk/core/DuiInterface;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-static {v6, v3}, Lin/juspay/hypersdk/core/PaymentUtils;->checkIfGranted(Lin/juspay/hypersdk/core/JuspayServices;Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v4, v5, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lin/juspay/hypersdk/core/DuiInterface;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-static {v2, v0}, Lin/juspay/hypersdk/core/PaymentUtils;->checkIfGranted(Lin/juspay/hypersdk/core/JuspayServices;Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {v4, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v11, v0

    iget-object v5, p0, Lin/juspay/hypersdk/core/DuiInterface;->sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

    const-string v6, "DuiInterface"

    const-string v7, "action"

    const-string v8, "system"

    const-string v9, "read_sms_permission"

    const-string v10, "Error while inserting in json"

    invoke-virtual/range {v5 .. v11}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public closeBrowser(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-virtual {p0}, Lin/juspay/hypersdk/core/DuiInterface;->reset()V

    return-void
.end method

.method public detach([Ljava/lang/String;)V
    .locals 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p1, v1

    iget-object v3, p0, Lin/juspay/hypersdk/core/DuiInterface;->listenerMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lin/juspay/hypersdk/core/DuiInterface;->activity:Landroid/app/Activity;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lin/juspay/hypersdk/core/DuiInterface;->listenerMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lin/juspay/hypersdk/core/JuspayDuiHook;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lin/juspay/hypersdk/core/DuiInterface;->listenerMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lin/juspay/hypersdk/core/JuspayDuiHook;

    iget-object v4, p0, Lin/juspay/hypersdk/core/DuiInterface;->activity:Landroid/app/Activity;

    invoke-interface {v3, v4}, Lin/juspay/hypersdk/core/JuspayDuiHook;->detach(Landroid/app/Activity;)V

    :cond_0
    iget-object v3, p0, Lin/juspay/hypersdk/core/DuiInterface;->listenerMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public doHandShake(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "packageName"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string p1, "className"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string p1, "code"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string p1, "payload"

    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    move-object v6, p2

    invoke-static/range {v1 .. v6}, Lin/juspay/hypersdk/core/MPINUtil;->communicate(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Bundle;Lin/juspay/hypersdk/HyperFragment;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    move-object v6, p1

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface;->sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

    const-string v1, "DuiInterface"

    const-string v2, "action"

    const-string v3, "system"

    const-string v4, "jbridge"

    const-string v5, "Exception at doHandShake"

    invoke-virtual/range {v0 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public execute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lin/juspay/hypersdk/core/DuiInterface;->listenerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lin/juspay/hypersdk/core/DuiInterface;->activity:Landroid/app/Activity;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lin/juspay/hypersdk/core/DuiInterface;->listenerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lin/juspay/hypersdk/core/JuspayDuiHook;

    iget-object v1, p0, Lin/juspay/hypersdk/core/DuiInterface;->activity:Landroid/app/Activity;

    invoke-interface {p1, v1, p2, v0, p4}, Lin/juspay/hypersdk/core/JuspayDuiHook;->execute(Landroid/app/Activity;Ljava/lang/String;Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    move-object v6, p1

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface;->sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string p4, "Error while executing "

    invoke-direct {p1, p4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " with args "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v1, "DuiInterface"

    const-string v2, "action"

    const-string v3, "system"

    const-string v4, "jbridge"

    invoke-virtual/range {v0 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public fetchFromInbox(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lin/juspay/hypersdk/core/DuiInterface;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-static {v1, v0, p1}, Lin/juspay/hypersdk/core/PaymentUtils;->readSmsFromInbox(Lin/juspay/hypersdk/core/JuspayServices;Landroid/app/Activity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, ""

    return-object p1
.end method

.method public getClipboardItems()Ljava/lang/String;
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface;->context:Landroid/content/Context;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    if-nez v0, :cond_0

    iget-object v1, p0, Lin/juspay/hypersdk/core/DuiInterface;->sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

    const-string v2, "system"

    const-string v3, "error"

    const-string v4, "clip_board"

    const-string v5, "missing"

    const-string v6, "clipboardManager"

    invoke-virtual/range {v1 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v1, p0, Lin/juspay/hypersdk/core/DuiInterface;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-static {v0, v1}, Lin/juspay/hypersdk/core/ClipboardListener;->getClipboardItems(Landroid/content/ClipboardManager;Lin/juspay/hypersdk/core/JuspayServices;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v1}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    move-object v7, v0

    iget-object v1, p0, Lin/juspay/hypersdk/core/DuiInterface;->sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

    const-string v2, "DuiInterface"

    const-string v3, "action"

    const-string v4, "system"

    const-string v5, "clip_board"

    const-string v6, "Error while trying to get clipboard items"

    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "[]"

    return-object v0
.end method

.method public getConfigVariables()Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSessionInfo()Lin/juspay/hypersdk/data/SessionInfo;

    move-result-object v0

    invoke-static {v0}, Lin/juspay/hypersdk/core/PaymentUtils;->getConfigVariableDeclarations(Lin/juspay/hypersdk/data/SessionInfo;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, ""

    const-string v2, "DuiInterface"

    invoke-static {v2, v1, v0}, Lin/juspay/hypersdk/core/JuspayLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public getDataFromSharedPrefs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-static {v0, p1, p2}, Lin/juspay/hypersdk/data/KeyValueStore;->read(Lin/juspay/hypersdk/core/JuspayServices;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getIndexBundleHash(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, ".jsa"

    const-string v1, ".zip"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "/"

    invoke-virtual {p1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :try_start_0
    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface;->remoteAssetService:Lin/juspay/hypersdk/services/RemoteAssetService;

    invoke-virtual {v0, p1}, Lin/juspay/hypersdk/services/RemoteAssetService;->getMetadata(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "hashInDisk"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    move-object v6, p1

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface;->sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

    const-string v1, "DuiInterface"

    const-string v2, "action"

    const-string v3, "system"

    const-string v4, "jbridge"

    const-string v5, "exception during IndexBundleHash"

    invoke-virtual/range {v0 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getKeysInSharedPrefs()Ljava/lang/String;
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iget-object v1, p0, Lin/juspay/hypersdk/core/DuiInterface;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-static {v1}, Lin/juspay/hypersdk/data/KeyValueStore;->getAll(Lin/juspay/hypersdk/core/JuspayServices;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    move-object v7, v0

    iget-object v1, p0, Lin/juspay/hypersdk/core/DuiInterface;->sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

    const-string v2, "DuiInterface"

    const-string v3, "action"

    const-string v4, "system"

    const-string v5, "SharedPref"

    const-string v6, "Exception while getting all keys from shared prefs"

    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, "[]"

    return-object v0
.end method

.method public getNetworkType()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface;->sessionInfo:Lin/juspay/hypersdk/data/SessionInfo;

    invoke-virtual {v0}, Lin/juspay/hypersdk/data/SessionInfo;->getNetworkInfo()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPackageInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 9
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    const-string v1, "{}"

    if-eqz v0, :cond_0

    :try_start_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "packageName"

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "versionName"

    iget-object v3, p1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "versionCode"

    iget p1, p1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v0, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    move-object v8, p1

    iget-object v2, p0, Lin/juspay/hypersdk/core/DuiInterface;->sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

    const-string v3, "DuiInterface"

    const-string v4, "action"

    const-string v5, "system"

    const-string v6, "jbridge"

    const-string v7, "Exception at getPackageInfo"

    invoke-virtual/range {v2 .. v8}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-object v1
.end method

.method public getPaymentDetails()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v0}, Lin/juspay/hypersdk/HyperFragment;->getPaymentSessionInfo()Lin/juspay/hypersdk/data/PaymentSessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lin/juspay/hypersdk/data/PaymentSessionInfo;->getPaymentDetails()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPixels()F
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getResourceIdentifier(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-object v1, p0, Lin/juspay/hypersdk/core/DuiInterface;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    return p1
.end method

.method public getSessionAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lin/juspay/hypersdk/core/JsInterface;->getSessionAttribute(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSessionDetails()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v0}, Lin/juspay/hypersdk/HyperFragment;->getPaymentSessionInfo()Lin/juspay/hypersdk/data/PaymentSessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lin/juspay/hypersdk/data/PaymentSessionInfo;->getSessionDetails()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionInfo()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v0}, Lin/juspay/hypersdk/HyperFragment;->getPaymentSessionInfo()Lin/juspay/hypersdk/data/PaymentSessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lin/juspay/hypersdk/data/PaymentSessionInfo;->createSessionDataMap()V

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface;->sessionInfo:Lin/juspay/hypersdk/data/SessionInfo;

    invoke-virtual {v0}, Lin/juspay/hypersdk/data/SessionInfo;->getSessionData()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public invokeCallbackInACSWebview(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    const/4 v0, 0x2

    invoke-static {p2, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "window.__PROXY_FN[\'%s\'](atob(\'%s\'))"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lin/juspay/hypersdk/core/DuiInterface;->activity:Landroid/app/Activity;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lin/juspay/hypersdk/HyperFragment;->getWebView()Lin/juspay/hypersdk/ui/JuspayWebView;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lin/juspay/hypersdk/core/DuiInterface;->activity:Landroid/app/Activity;

    new-instance v0, Lin/juspay/hypersdk/core/DuiInterface$4;

    invoke-direct {v0, p0, p1}, Lin/juspay/hypersdk/core/DuiInterface$4;-><init>(Lin/juspay/hypersdk/core/DuiInterface;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public invokeCallbackInDUIWebview(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    const/4 v0, 0x2

    invoke-static {p2, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "window.callUICallback(\'%s\',atob(\'%s\'));"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lin/juspay/hypersdk/core/DuiInterface;->dynamicUI:Lin/juspay/mystique/DynamicUI;

    if-eqz p2, :cond_0

    invoke-virtual {p2, p1}, Lin/juspay/mystique/DynamicUI;->addJsToWebView(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public invokeCustomFnInDUIWebview(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface;->dynamicUI:Lin/juspay/mystique/DynamicUI;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lin/juspay/mystique/DynamicUI;->addJsToWebView(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public invokeFnInDUIWebview(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    const/4 v0, 0x2

    invoke-static {p2, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "window[\"onEvent\'\"](\'%s\',atob(\'%s\'))"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lin/juspay/hypersdk/core/DuiInterface;->dynamicUI:Lin/juspay/mystique/DynamicUI;

    invoke-virtual {p2, p1}, Lin/juspay/mystique/DynamicUI;->addJsToWebView(Ljava/lang/String;)V

    return-void
.end method

.method public invokeFnInDUIWebview(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lin/juspay/hypersdk/HyperFragment;->getAcsInterface()Lin/juspay/hypersdk/core/AcsInterface;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v0}, Lin/juspay/hypersdk/HyperFragment;->getAcsInterface()Lin/juspay/hypersdk/core/AcsInterface;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lin/juspay/hypersdk/core/AcsInterface;->invoke(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public invokeInACSWebview(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    const/4 v0, 0x2

    invoke-static {p2, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    aput-object p2, v0, p1

    const-string p1, "javascript:window.onAcsFunctionCalled(\'%s\',atob(\'%s\'))"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lin/juspay/hypersdk/core/DuiInterface;->activity:Landroid/app/Activity;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lin/juspay/hypersdk/HyperFragment;->getWebView()Lin/juspay/hypersdk/ui/JuspayWebView;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lin/juspay/hypersdk/core/DuiInterface;->activity:Landroid/app/Activity;

    new-instance v0, Lin/juspay/hypersdk/core/DuiInterface$3;

    invoke-direct {v0, p0, p1}, Lin/juspay/hypersdk/core/DuiInterface$3;-><init>(Lin/juspay/hypersdk/core/DuiInterface;Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public invokeInACSWebview(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-virtual {p2}, Ljava/lang/String;->getBytes()[B

    move-result-object p2

    const/4 v0, 0x2

    invoke-static {p2, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    aput-object p3, v1, v0

    const-string p1, "javascript:window.onAcsFunctionCalled(\'%s\',atob(\'%s\'),\'%s\')"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lin/juspay/hypersdk/HyperFragment;->getWebView()Lin/juspay/hypersdk/ui/JuspayWebView;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {p2}, Lin/juspay/hypersdk/HyperFragment;->getAttachedActivity()Landroid/app/Activity;

    move-result-object p2

    if-eqz p2, :cond_0

    iget-object p2, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {p2}, Lin/juspay/hypersdk/HyperFragment;->getAttachedActivity()Landroid/app/Activity;

    move-result-object p2

    new-instance p3, Lin/juspay/hypersdk/core/DuiInterface$2;

    invoke-direct {p3, p0, p1}, Lin/juspay/hypersdk/core/DuiInterface$2;-><init>(Lin/juspay/hypersdk/core/DuiInterface;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public isAppInstalled(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_0

    iget-object v2, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, v1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string p1, "true"

    return-object p1

    :cond_1
    const-string p1, "false"

    return-object p1
.end method

.method public isDeviceSecure()Ljava/lang/String;
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface;->context:Landroid/content/Context;

    const-string v1, "keyguard"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isDeviceSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "SECURE"

    return-object v0

    :cond_0
    const-string v0, "NOT_SECURE"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    move-object v7, v0

    iget-object v1, p0, Lin/juspay/hypersdk/core/DuiInterface;->sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

    const-string v2, "DuiInterface"

    const-string v3, "action"

    const-string v4, "system"

    const-string v5, "jbridge"

    const-string v6, "Exception while checking KeyguardManager.isDeviceSecure()"

    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    const-string v0, "UNKNOWN"

    return-object v0
.end method

.method public isHookSupported(Ljava/lang/String;)Z
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x5

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "SEND_SMS"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_1
    const-string v0, "DELIVER_SMS"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_1

    :sswitch_2
    const-string v0, "CLIPBOARD"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :sswitch_3
    const-string v0, "SMS_RECEIVE"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_4
    const-string v0, "SMS_CONSENT"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_5
    const-string v0, "NETWORK_STATUS"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    if-eqz p1, :cond_1

    if-eq p1, v6, :cond_1

    if-eq p1, v5, :cond_1

    if-eq p1, v4, :cond_1

    if-eq p1, v3, :cond_1

    if-eq p1, v2, :cond_1

    return v1

    :cond_1
    return v6

    nop

    :sswitch_data_0
    .sparse-switch
        -0x41ba70bd -> :sswitch_5
        -0x3d81150c -> :sswitch_4
        -0x35b56243 -> :sswitch_3
        0x46b3ed76 -> :sswitch_2
        0x47d7faff -> :sswitch_1
        0x79143402 -> :sswitch_0
    .end sparse-switch
.end method

.method public isOnline()Z
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public loadUrl(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v1, Lin/juspay/hypersdk/core/DuiInterface$9;

    invoke-direct {v1, p0, p1, p2}, Lin/juspay/hypersdk/core/DuiInterface$9;-><init>(Lin/juspay/hypersdk/core/DuiInterface;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface;->listenerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lin/juspay/hypersdk/core/ResultAwaitingDuiHook;

    if-eqz v2, :cond_0

    check-cast v1, Lin/juspay/hypersdk/core/ResultAwaitingDuiHook;

    invoke-interface {v1, p1, p2, p3}, Lin/juspay/hypersdk/core/ResultAwaitingDuiHook;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_1
    const-string v0, "\', \'"

    const-string v1, "window.onActivityResult(\'"

    if-eqz p3, :cond_2

    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    invoke-static {p3}, Lin/juspay/hypersdk/core/PaymentUtils;->toJSON(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object p3

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object p3

    const/4 v2, 0x2

    invoke-static {p3, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\', atob(\'"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'))"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {p0, p1}, Lin/juspay/hypersdk/core/HyperJsInterface;->invokeFnInDUIWebview(Ljava/lang/String;)V

    return-void

    :cond_2
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\', \'{}\')"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method public onDuiReady()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lin/juspay/hypersdk/HyperFragment;->onDuiReady()V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface;->listenerMap:Ljava/util/Map;

    const-string v1, "ReqPermi"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p2

    if-ge v2, v3, :cond_1

    aget-object v3, p2, v2

    const-string v4, "android.permission."

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    aget v4, p3, v2

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lin/juspay/hypersdk/core/DuiInterface;->invokeCallbackInDUIWebview(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_2
    instance-of p2, p1, Landroid/os/Handler$Callback;

    if-eqz p2, :cond_3

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object p2

    iput-object p3, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Handler$Callback;

    invoke-interface {p1, p2}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z

    return-void

    :cond_3
    const-string p1, "DuiInterface"

    const-string p2, "callback instance not understandable"

    invoke-static {p1, p2}, Lin/juspay/hypersdk/core/JuspayLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    move-object v6, p1

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface;->sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

    const-string v1, "DuiInterface"

    const-string v2, "action"

    const-string v3, "system"

    const-string v4, "on_request_permission_result"

    const-string v5, "Error while inserting in json"

    invoke-virtual/range {v0 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onWebViewReady(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {p2}, Landroid/webkit/URLUtil;->isValidUrl(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lin/juspay/hypersdk/core/DuiInterface;->onWebViewReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lin/juspay/hypersdk/core/DuiInterface;->sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

    sget-object v6, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "system"

    const-string v3, "error"

    const-string v4, "on_webview_ready"

    const-string v5, "valid_url"

    invoke-virtual/range {v1 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public onWebViewReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p3, p1}, Lin/juspay/hypersdk/HyperFragment;->onBrowserReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onWebViewReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    move-object/from16 v1, p0

    const-string v0, "base64"

    move-object/from16 v2, p4

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    move-object/from16 v4, p3

    :try_start_0
    invoke-static {v4, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    iget-object v2, v1, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    if-eqz v2, :cond_0

    iget-object v3, v1, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>([B)V

    const-string v6, "text/html"

    const-string v7, "UTF-8"

    const/4 v8, 0x0

    move-object/from16 v4, p2

    move-object/from16 v9, p1

    invoke-virtual/range {v3 .. v9}, Lin/juspay/hypersdk/HyperFragment;->onBrowserReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-void

    :catch_0
    move-exception v0

    move-object v15, v0

    iget-object v9, v1, Lin/juspay/hypersdk/core/DuiInterface;->sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

    const-string v10, "DuiInterface"

    const-string v11, "action"

    const-string v12, "system"

    const-string v13, "on_webview_ready"

    const-string v14, "Exception while trying to decode content"

    invoke-virtual/range {v9 .. v15}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_1
    move-object/from16 v4, p3

    iget-object v2, v1, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    if-eqz v2, :cond_2

    const/4 v7, 0x0

    const-string v5, "text/html"

    const-string v6, "UTF-8"

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v8, p1

    invoke-virtual/range {v2 .. v8}, Lin/juspay/hypersdk/HyperFragment;->onBrowserReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public onWebViewReleased()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lin/juspay/hypersdk/HyperFragment;->onDuiReleased()V

    :cond_0
    return-void
.end method

.method public openAppWithExplicitIntent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "data"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    if-ltz p5, :cond_0

    invoke-virtual {p3, p5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :cond_0
    invoke-virtual {p3, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    new-instance p5, Landroid/content/ComponentName;

    invoke-direct {p5, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p3, p5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    if-ltz p4, :cond_1

    iget-object p1, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {p1, p3, p4}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void

    :cond_1
    iget-object p1, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {p1, p3}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    move-object v6, p1

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface;->sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

    const-string v1, "DuiInterface"

    const-string v2, "action"

    const-string v3, "system"

    const-string v4, "jbridge"

    const-string v5, "on method openAppWithExplicitIntent: "

    invoke-virtual/range {v0 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public refreshPage()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-static {v0}, Lin/juspay/hypersdk/core/PaymentUtils;->refreshPage(Lin/juspay/hypersdk/HyperFragment;)V

    return-void
.end method

.method public requestKeyboardHide()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v1, Lin/juspay/hypersdk/core/DuiInterface$12;

    invoke-direct {v1, p0}, Lin/juspay/hypersdk/core/DuiInterface$12;-><init>(Lin/juspay/hypersdk/core/DuiInterface;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public requestKeyboardShow()V
    .locals 3
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    if-eqz v1, :cond_0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v1}, Lin/juspay/hypersdk/HyperFragment;->getWebView()Lin/juspay/hypersdk/ui/JuspayWebView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    :cond_0
    return-void
.end method

.method public requestKeyboardShow(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v1, Lin/juspay/hypersdk/core/DuiInterface$10;

    invoke-direct {v1, p0, p1}, Lin/juspay/hypersdk/core/DuiInterface$10;-><init>(Lin/juspay/hypersdk/core/DuiInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public requestPermission([Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler$Callback;)V
    .locals 2

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lin/juspay/hypersdk/HyperFragment;->requestPermissionsCheckingAllowed([Ljava/lang/String;I)V

    iget-object p1, p0, Lin/juspay/hypersdk/core/DuiInterface;->listenerMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "ReqPermi"

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public requestPermission([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lin/juspay/hypersdk/HyperFragment;->requestPermissionsCheckingAllowed([Ljava/lang/String;I)V

    iget-object p1, p0, Lin/juspay/hypersdk/core/DuiInterface;->listenerMap:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string v0, "ReqPermi"

    invoke-virtual {v0, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public requestSMSPermission(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "android.permission.READ_SMS"

    const-string v1, "android.permission.RECEIVE_SMS"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    const-string v1, "7"

    invoke-virtual {p0, v0, v1, p1}, Lin/juspay/hypersdk/core/DuiInterface;->requestPermission([Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public reset()V
    .locals 8

    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lin/juspay/hypersdk/core/DuiInterface;->listenerMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lin/juspay/hypersdk/core/DuiInterface;->listenerMap:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    instance-of v3, v3, Lin/juspay/hypersdk/core/JuspayDuiHook;

    if-eqz v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0}, Lin/juspay/hypersdk/core/DuiInterface;->detach([Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object v7, v0

    iget-object v1, p0, Lin/juspay/hypersdk/core/DuiInterface;->sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

    const-string v2, "DuiInterface"

    const-string v3, "action"

    const-string v4, "system"

    const-string v5, "jbridge"

    const-string v6, "Exception while removing Dui Hooks"

    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public runInJuspayBrowser(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "onStartWaitingDialogCreated"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :sswitch_1
    const-string v1, "onEvent"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_2
    const-string v1, "onError"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_3
    const-string v1, "onBundleLoaded"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, -0x1

    :goto_1
    if-eqz v1, :cond_9

    if-eq v1, v4, :cond_8

    if-eq v1, v3, :cond_6

    if-eq v1, v2, :cond_1

    const-string p2, "system"

    const-string p3, "error"

    const-string v0, "run_in_juspay_browser"

    const-string v1, "missing"

    invoke-static {p2, p3, v0, v1, p1}, Lin/juspay/hypersdk/core/SdkTracker;->trackBootAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_1
    iget-object p1, p0, Lin/juspay/hypersdk/core/DuiInterface;->activity:Landroid/app/Activity;

    const-string v1, "prefetch"

    const-string v2, "onJOSReady"

    const-string v3, "event"

    if-eqz p1, :cond_4

    iget-object p1, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    if-eqz p1, :cond_4

    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {p1}, Lin/juspay/hypersdk/HyperFragment;->getPreFetchMode()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    iget-object v2, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v2}, Lin/juspay/hypersdk/HyperFragment;->getBundleParameters()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lin/juspay/hypersdk/HyperFragment;->onMerchantEvent(Ljava/lang/String;Lorg/json/JSONObject;)Z

    return-void

    :cond_2
    iget-object p1, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    const-string v1, "initiate"

    iget-object v2, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v2}, Lin/juspay/hypersdk/HyperFragment;->getBundleParameters()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lin/juspay/hypersdk/HyperFragment;->onMerchantEvent(Ljava/lang/String;Lorg/json/JSONObject;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    move-object v7, p1

    const-string v2, "DuiInterface"

    const-string v3, "lifecycle"

    const-string v4, "hypersdk"

    const-string v5, "run_in_juspay_browser"

    const-string v6, "error while dealing with json onEvent"

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    iget-object p1, p0, Lin/juspay/hypersdk/core/DuiInterface;->activity:Landroid/app/Activity;

    new-instance v1, Lin/juspay/hypersdk/core/DuiInterface$6;

    invoke-direct {v1, p0, p2, p3, v0}, Lin/juspay/hypersdk/core/DuiInterface$6;-><init>(Lin/juspay/hypersdk/core/DuiInterface;Ljava/lang/String;Ljava/lang/String;Lin/juspay/hypersdk/core/SdkTracker;)V

    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void

    :cond_4
    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    invoke-static {v1}, Lin/juspay/services/HyperServices;->prefetchOnEvent(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_5
    return-void

    :catch_1
    move-exception p1

    move-object v7, p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "error while dealing with json onEvent "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v2, "DuiInterface"

    const-string v3, "lifecycle"

    const-string v4, "hypersdk"

    const-string v5, "run_in_juspay_browser"

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_6
    iget-object p1, p0, Lin/juspay/hypersdk/core/DuiInterface;->activity:Landroid/app/Activity;

    if-eqz p1, :cond_7

    iget-object p3, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    if-eqz p3, :cond_7

    new-instance p3, Lin/juspay/hypersdk/core/DuiInterface$5;

    invoke-direct {p3, p0, p2, v0}, Lin/juspay/hypersdk/core/DuiInterface$5;-><init>(Lin/juspay/hypersdk/core/DuiInterface;Ljava/lang/String;Lin/juspay/hypersdk/core/SdkTracker;)V

    invoke-virtual {p1, p3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_7
    :goto_2
    return-void

    :cond_8
    const-string p1, "loaded"

    invoke-virtual {p0, p2, p1}, Lin/juspay/hypersdk/core/DuiInterface;->updateLoaded(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_9
    const-string p1, "not_loaded"

    invoke-virtual {p0, p2, p1}, Lin/juspay/hypersdk/core/DuiInterface;->updateLoaded(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x701e115a -> :sswitch_3
        -0x50755897 -> :sswitch_2
        -0x5073b805 -> :sswitch_1
        -0xea39a6a -> :sswitch_0
    .end sparse-switch
.end method

.method public runInJuspayWebView(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v1, Lin/juspay/hypersdk/core/DuiInterface$7;

    invoke-direct {v1, p0, p1}, Lin/juspay/hypersdk/core/DuiInterface$7;-><init>(Lin/juspay/hypersdk/core/DuiInterface;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public runInJuspayWebView(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lin/juspay/hypersdk/HyperFragment;->getWebView()Lin/juspay/hypersdk/ui/JuspayWebView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface;->activity:Landroid/app/Activity;

    new-instance v1, Lin/juspay/hypersdk/core/DuiInterface$8;

    invoke-direct {v1, p0, p1, p2}, Lin/juspay/hypersdk/core/DuiInterface$8;-><init>(Lin/juspay/hypersdk/core/DuiInterface;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0

    iput-object p1, p0, Lin/juspay/hypersdk/core/DuiInterface;->activity:Landroid/app/Activity;

    return-void
.end method

.method public setCardBrand(Ljava/lang/String;)V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v0}, Lin/juspay/hypersdk/HyperFragment;->getPaymentSessionInfo()Lin/juspay/hypersdk/data/PaymentSessionInfo;

    move-result-object v0

    const-string v1, "card_brand"

    invoke-virtual {v0, v1, p1}, Lin/juspay/hypersdk/data/PaymentSessionInfo;->setPaymentDetails(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setConfig(Ljava/lang/String;)V
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget-object p1, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {p1, v0}, Lin/juspay/hypersdk/HyperFragment;->setConfig(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    move-object v6, p1

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface;->sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

    const-string v1, "DuiInterface"

    const-string v2, "action"

    const-string v3, "system"

    const-string v4, "jbridge"

    const-string v5, "Error while capturing config json"

    invoke-virtual/range {v0 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public setIsRupaySupportedAdded(Z)V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {p1}, Lin/juspay/hypersdk/core/PaymentUtils;->setIsRupaySupportedAdded(Z)V

    return-void
.end method

.method public setSessionDetails(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface;->browserFragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v0}, Lin/juspay/hypersdk/HyperFragment;->getPaymentSessionInfo()Lin/juspay/hypersdk/data/PaymentSessionInfo;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lin/juspay/hypersdk/data/PaymentSessionInfo;->addToSessionDetails(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setSessionInfo()V
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    return-void
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface;->activity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    move-object v6, p1

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface;->sdkTracker:Lin/juspay/hypersdk/core/SdkTracker;

    const-string v1, "DuiInterface"

    const-string v2, "action"

    const-string v3, "system"

    const-string v4, "permission"

    const-string v5, "Exception while checking shouldShowRequestPermissionRationale"

    invoke-virtual/range {v0 .. v6}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public storeCookies()V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Landroid/webkit/CookieSyncManager;->getInstance()Landroid/webkit/CookieSyncManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/CookieSyncManager;->sync()V

    return-void
.end method

.method public suppressKeyboard()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lin/juspay/hypersdk/core/DuiInterface;->activity:Landroid/app/Activity;

    if-eqz v0, :cond_0

    new-instance v1, Lin/juspay/hypersdk/core/DuiInterface$11;

    invoke-direct {v1, p0}, Lin/juspay/hypersdk/core/DuiInterface$11;-><init>(Lin/juspay/hypersdk/core/DuiInterface;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public updateLoaded(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "jp_hash_and_status"

    const-string v1, "fileName"

    iget-object v2, p0, Lin/juspay/hypersdk/core/DuiInterface;->juspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {v2}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v3

    const-string v2, ""

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    const-string p1, "{}"

    invoke-virtual {p0, v0, p1}, Lin/juspay/hypersdk/core/DuiInterface;->getDataFromSharedPrefs(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    goto :goto_0

    :cond_1
    const-string v4, "system"

    const-string v5, "critical"

    const-string v6, "auto_fallback"

    const-string v7, "loaded"

    const-string v8, "hash doesn\'t have a filename"

    invoke-static {v4, v5, v6, v7, v8}, Lin/juspay/hypersdk/core/SdkTracker;->trackBootAction(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    const-string v4, "status"

    invoke-virtual {p1, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lin/juspay/hypersdk/core/DuiInterface;->addDataToSharedPrefs(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "DuiInterface"

    const-string p2, "udpateLoaded: "

    invoke-static {p1, p2}, Lin/juspay/hypersdk/core/JuspayLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    move-object v9, p1

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "Exception while updating the loaded status for file "

    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v4, "DuiInterface"

    const-string v5, "lifecycle"

    const-string v6, "hypersdk"

    const-string v7, "auto_fallback"

    invoke-virtual/range {v3 .. v9}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
