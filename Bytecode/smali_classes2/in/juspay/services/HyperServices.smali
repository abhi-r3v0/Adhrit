.class public Lin/juspay/services/HyperServices;
.super Ljava/lang/Object;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "HyperServices"

.field private static final PREFETCH_TAG:Ljava/lang/String; = "PREFETCH_FRAGMENT"

.field private static duiInterface:Lin/juspay/hypersdk/core/DuiInterface;

.field private static preFetchJuspayServices:Lin/juspay/hypersdk/core/JuspayServices;

.field private static prefetchBundleParams:Lorg/json/JSONObject;


# instance fields
.field private activeTag:Ljava/lang/String;

.field protected activity:Lo/onSessionEvent;

.field protected container:Landroid/view/ViewGroup;

.field protected fragment:Lin/juspay/hypersdk/HyperFragment;

.field private fragmentAttachFailed:Z

.field private final fragmentTag:Ljava/lang/String;

.field private initiateCalled:Z

.field protected isDUIReady:Z

.field protected jpConsumingBackPress:Z

.field protected merchantCallback:Lin/juspay/hypersdk/ui/HyperPaymentsCallback;

.field private final queue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private requestId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lo/onSessionEvent;)V
    .locals 4
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {p0, p1, v0}, Lin/juspay/services/HyperServices;-><init>(Lo/onSessionEvent;Landroid/view/ViewGroup;)V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v0, "hypersdk"

    const-string v1, "info"

    const-string v2, "hyper_service"

    const-string v3, "view_group"

    invoke-static {v0, v1, v2, v3, p1}, Lin/juspay/hypersdk/core/SdkTracker;->trackBootLifecycle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Lo/onSessionEvent;Landroid/view/ViewGroup;)V
    .locals 3
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lin/juspay/services/HyperServices;->queue:Ljava/util/Queue;

    iput-object p1, p0, Lin/juspay/services/HyperServices;->activity:Lo/onSessionEvent;

    iput-object p2, p0, Lin/juspay/services/HyperServices;->container:Landroid/view/ViewGroup;

    const/4 p1, 0x0

    iput-object p1, p0, Lin/juspay/services/HyperServices;->activeTag:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lin/juspay/services/HyperServices;->jpConsumingBackPress:Z

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lin/juspay/services/HyperServices;->fragmentTag:Ljava/lang/String;

    const-string p1, "hypersdk"

    const-string p2, "info"

    const-string v0, "hyper_service"

    const-string v1, "sdk_create"

    const-string v2, "success"

    invoke-static {p1, p2, v0, v1, v2}, Lin/juspay/hypersdk/core/SdkTracker;->trackBootLifecycle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lin/juspay/services/HyperServices;Lorg/json/JSONObject;Lin/juspay/hypersdk/ui/HyperPaymentsCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lin/juspay/services/HyperServices;->createAndSetupFragment(Lorg/json/JSONObject;Lin/juspay/hypersdk/ui/HyperPaymentsCallback;)V

    return-void
.end method

.method static synthetic access$100(Lin/juspay/services/HyperServices;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lin/juspay/services/HyperServices;->logSafeEvents(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$200(Lin/juspay/services/HyperServices;)V
    .locals 0

    invoke-direct {p0}, Lin/juspay/services/HyperServices;->removeFragment()V

    return-void
.end method

.method static synthetic access$300(Lin/juspay/services/HyperServices;)V
    .locals 0

    invoke-direct {p0}, Lin/juspay/services/HyperServices;->addFragment()V

    return-void
.end method

.method static synthetic access$400(Lin/juspay/services/HyperServices;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0, p1}, Lin/juspay/services/HyperServices;->doProcess(Lorg/json/JSONObject;)V

    return-void
.end method

.method static synthetic access$502(Lin/juspay/services/HyperServices;Z)Z
    .locals 0

    iput-boolean p1, p0, Lin/juspay/services/HyperServices;->fragmentAttachFailed:Z

    return p1
.end method

.method static synthetic access$602(Lin/juspay/services/HyperServices;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lin/juspay/services/HyperServices;->activeTag:Ljava/lang/String;

    return-object p1
.end method

.method private addFragment()V
    .locals 5

    iget-object v0, p0, Lin/juspay/services/HyperServices;->activity:Lo/onSessionEvent;

    invoke-virtual {v0}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    .line 3464
    new-instance v1, Lo/binderDied;

    invoke-direct {v1, v0}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    iget-object v0, p0, Lin/juspay/services/HyperServices;->fragment:Lin/juspay/hypersdk/HyperFragment;

    iget-object v2, p0, Lin/juspay/services/HyperServices;->fragmentTag:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 4171
    invoke-virtual {v1, v3, v0, v2, v4}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 4172
    invoke-virtual {v1}, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback()V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lin/juspay/services/HyperServices;->container:Landroid/view/ViewGroup;

    new-instance v1, Lin/juspay/services/HyperServices$6;

    invoke-direct {v1, p0}, Lin/juspay/services/HyperServices$6;-><init>(Lin/juspay/services/HyperServices;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    :cond_0
    return-void
.end method

.method private declared-synchronized addToQueue(Lorg/json/JSONObject;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lin/juspay/services/HyperServices;->queue:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private createAndSetupFragment(Lorg/json/JSONObject;Lin/juspay/hypersdk/ui/HyperPaymentsCallback;)V
    .locals 6

    iput-object p2, p0, Lin/juspay/services/HyperServices;->merchantCallback:Lin/juspay/hypersdk/ui/HyperPaymentsCallback;

    invoke-virtual {p0}, Lin/juspay/services/HyperServices;->createFragment()Lin/juspay/hypersdk/HyperFragment;

    move-result-object p2

    iput-object p2, p0, Lin/juspay/services/HyperServices;->fragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {p0, p1}, Lin/juspay/services/HyperServices;->configureFragment(Lorg/json/JSONObject;)V

    iget-object p2, p0, Lin/juspay/services/HyperServices;->fragment:Lin/juspay/hypersdk/HyperFragment;

    new-instance v0, Lin/juspay/services/HyperServices$2;

    invoke-direct {v0, p0}, Lin/juspay/services/HyperServices$2;-><init>(Lin/juspay/services/HyperServices;)V

    invoke-virtual {p2, v0}, Lin/juspay/hypersdk/HyperFragment;->setCallback(Lin/juspay/hypersdk/ui/HyperPaymentsCallback;)V

    :try_start_0
    invoke-direct {p0}, Lin/juspay/services/HyperServices;->addFragment()V

    const-string p2, "hypersdk"

    const-string v0, "info"

    const-string v1, "initiate"

    const-string v2, "ended"

    invoke-static {p2, v0, v1, v2, p1}, Lin/juspay/hypersdk/core/SdkTracker;->trackBootLifecycle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    move-object v5, p1

    const/4 p1, 0x1

    iput-boolean p1, p0, Lin/juspay/services/HyperServices;->fragmentAttachFailed:Z

    const-string v0, "HyperServices"

    const-string v1, "lifecycle"

    const-string v2, "hypersdk"

    const-string v3, "initiate"

    const-string v4, "Failed to attach HyperFragment to activity"

    invoke-static/range {v0 .. v5}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogBootException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static createJuspayService(Landroid/content/Context;)Lin/juspay/hypersdk/core/JuspayServices;
    .locals 5

    sget v0, Lin/juspay/hypersdk/R$string;->godel_app_name:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v1, Lin/juspay/hypersdk/R$string;->godel_version:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lin/juspay/hypersdk/R$bool;->godel_debuggable:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lin/juspay/hypersdk/R$bool;->use_local_assets:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    new-instance v4, Lin/juspay/hypersdk/data/SdkInfo;

    invoke-direct {v4, v0, v1, v2, v3}, Lin/juspay/hypersdk/data/SdkInfo;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    new-instance v0, Lin/juspay/services/HyperServices$9;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p0, v4, v1, v2}, Lin/juspay/services/HyperServices$9;-><init>(Landroid/content/Context;Lin/juspay/hypersdk/data/SdkInfo;Lin/juspay/mystique/ErrorCallback;Z)V

    return-object v0
.end method

.method private declared-synchronized doProcess(Lorg/json/JSONObject;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "info"

    const-string v1, "process"

    const-string v2, "started"

    invoke-direct {p0, v0, v1, v2, p1}, Lin/juspay/services/HyperServices;->logSafeEvents(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "payload"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "merchant_root_view"

    iget-object v2, p0, Lin/juspay/services/HyperServices;->container:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "merchant_keyboard_mode"

    iget-object v2, p0, Lin/juspay/services/HyperServices;->activity:Lo/onSessionEvent;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "payload"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto/16 :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    const-string v0, "requestId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string p1, "error"

    const-string v0, "process"

    const-string v1, "request_id_present"

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p1, v0, v1, v2}, Lin/juspay/services/HyperServices;->logSafeEvents(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_2
    const-string v0, "requestId"

    const-string v1, "process"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lin/juspay/services/HyperServices;->requestId:Ljava/lang/String;

    iget-object v0, p0, Lin/juspay/services/HyperServices;->fragment:Lin/juspay/hypersdk/HyperFragment;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lin/juspay/services/HyperServices;->isDUIReady:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lin/juspay/services/HyperServices;->fragment:Lin/juspay/hypersdk/HyperFragment;

    const-string v1, "process"

    invoke-virtual {v0, v1, p1}, Lin/juspay/hypersdk/HyperFragment;->onMerchantEvent(Ljava/lang/String;Lorg/json/JSONObject;)Z

    iget-object p1, p0, Lin/juspay/services/HyperServices;->requestId:Ljava/lang/String;

    iput-object p1, p0, Lin/juspay/services/HyperServices;->activeTag:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_3
    iget-boolean v0, p0, Lin/juspay/services/HyperServices;->fragmentAttachFailed:Z

    if-eqz v0, :cond_2

    iget-object p1, p0, Lin/juspay/services/HyperServices;->merchantCallback:Lin/juspay/hypersdk/ui/HyperPaymentsCallback;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lin/juspay/services/HyperServices;->requestId:Ljava/lang/String;

    const-string v0, "JP500"

    const-string v1, "Fragment null or not attached"

    invoke-virtual {p0, p1, v0, v1}, Lin/juspay/services/HyperServices;->notifyMerchant(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_4
    iget-object v0, p0, Lin/juspay/services/HyperServices;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v0

    if-gtz v0, :cond_3

    invoke-direct {p0, p1}, Lin/juspay/services/HyperServices;->addToQueue(Lorg/json/JSONObject;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_5
    iget-object p1, p0, Lin/juspay/services/HyperServices;->queue:Ljava/util/Queue;

    invoke-interface {p1}, Ljava/util/Queue;->size()I

    move-result p1

    if-lez p1, :cond_4

    const-string p1, "error"

    const-string v0, "process"

    const-string v1, "process_already_running"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "The activeTag is: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lin/juspay/services/HyperServices;->activeTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lin/juspay/services/HyperServices;->logSafeEvents(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    :cond_4
    :try_start_6
    const-string p1, "error"

    const-string v0, "process"

    const-string v1, "fragment_not_attached"

    const-string v2, "There\'s a problem with attaching fragment"

    invoke-direct {p0, p1, v0, v1, v2}, Lin/juspay/services/HyperServices;->logSafeEvents(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :cond_5
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public static exitPreFetch(Lo/onSessionEvent;)V
    .locals 4

    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v0, "prefetch"

    const-string v1, "info"

    const-string v2, "hypersdk"

    const-string v3, "begin_exitPreFetch"

    invoke-static {v2, v1, v0, v3, p0}, Lin/juspay/hypersdk/core/SdkTracker;->trackBootLifecycle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    sget-object p0, Lin/juspay/services/HyperServices;->preFetchJuspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lin/juspay/hypersdk/core/JuspayServices;->destroy()V

    goto :goto_0

    :cond_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "juspayServices_is_null"

    invoke-static {v2, v1, v0, v3, p0}, Lin/juspay/hypersdk/core/SdkTracker;->trackBootLifecycle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :goto_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "completed"

    invoke-static {v2, v1, v0, v3, p0}, Lin/juspay/hypersdk/core/SdkTracker;->trackBootLifecycle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private logSafeEvents(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lin/juspay/services/HyperServices;->fragment:Lin/juspay/hypersdk/HyperFragment;

    const-string v1, "hypersdk"

    if-nez v0, :cond_0

    invoke-static {v1, p1, p2, p3, p4}, Lin/juspay/hypersdk/core/SdkTracker;->trackBootLifecycle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lin/juspay/hypersdk/HyperFragment;->getJuspayServices()Lin/juspay/hypersdk/core/JuspayServices;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v0

    :goto_0
    move-object v2, v0

    if-eqz v2, :cond_2

    const-string v3, "hypersdk"

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-virtual/range {v2 .. v7}, Lin/juspay/hypersdk/core/SdkTracker;->trackLifecycle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_2
    invoke-static {v1, p1, p2, p3, p4}, Lin/juspay/hypersdk/core/SdkTracker;->trackBootLifecycle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method private logSafeExceptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 9

    iget-object v0, p0, Lin/juspay/services/HyperServices;->fragment:Lin/juspay/hypersdk/HyperFragment;

    const-string v1, "lifecycle"

    if-nez v0, :cond_0

    invoke-static {v1, p1, p2, p3, p4}, Lin/juspay/hypersdk/core/SdkTracker;->trackBootException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    invoke-virtual {v0}, Lin/juspay/hypersdk/HyperFragment;->getJuspayServices()Lin/juspay/hypersdk/core/JuspayServices;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lin/juspay/hypersdk/core/JuspayServices;->getSdkTracker()Lin/juspay/hypersdk/core/SdkTracker;

    move-result-object v0

    :goto_0
    move-object v2, v0

    if-eqz v2, :cond_2

    const-string v3, "HyperServices"

    const-string v4, "lifecycle"

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v2 .. v8}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_2
    invoke-static {v1, p1, p2, p3, p4}, Lin/juspay/hypersdk/core/SdkTracker;->trackBootException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static preFetch(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    const-string v0, "client_id"

    const-string v1, "hypersdk"

    const-string v2, "info"

    const-string v3, "prefetch"

    invoke-static {v1, v2, v3, v0, p1}, Lin/juspay/hypersdk/core/SdkTracker;->trackBootLifecycle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "service"

    const-string v3, "in.juspay.hyperpay"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "payload"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v3, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "HyperServices"

    const-string v2, "Error writing to JSON"

    invoke-static {v0, v2, p1}, Lin/juspay/hypersdk/core/JuspayLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-static {p0, v1}, Lin/juspay/services/HyperServices;->preFetch(Landroid/content/Context;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static preFetch(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 6
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lin/juspay/services/HyperServices$1;

    invoke-direct {v1, p0, p1}, Lin/juspay/services/HyperServices$1;-><init>(Landroid/content/Context;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_0
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-gt v0, v1, :cond_1

    const-string p0, "hypersdk"

    const-string p1, "info"

    const-string v0, "prefetch"

    const-string v1, "skipping_prefetch"

    const-string v2, "app is running on KitKat"

    invoke-static {p0, p1, v0, v1, v2}, Lin/juspay/hypersdk/core/SdkTracker;->trackBootLifecycle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_1
    const-string v0, "pre_fetch"

    const-string v1, "true"

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sput-object p1, Lin/juspay/services/HyperServices;->prefetchBundleParams:Lorg/json/JSONObject;

    invoke-static {p0}, Lin/juspay/services/HyperServices;->createJuspayService(Landroid/content/Context;)Lin/juspay/hypersdk/core/JuspayServices;

    move-result-object p0

    sput-object p0, Lin/juspay/services/HyperServices;->preFetchJuspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {p0, p1}, Lin/juspay/hypersdk/core/JuspayServices;->start(Lorg/json/JSONObject;)V

    sget-object p0, Lin/juspay/services/HyperServices;->preFetchJuspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    invoke-virtual {p0}, Lin/juspay/hypersdk/core/JuspayServices;->getDynamicUI()Lin/juspay/mystique/DynamicUI;

    move-result-object p0

    new-instance p1, Lin/juspay/hypersdk/core/JBridge;

    sget-object v0, Lin/juspay/services/HyperServices;->preFetchJuspayServices:Lin/juspay/hypersdk/core/JuspayServices;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1, v1}, Lin/juspay/hypersdk/core/JBridge;-><init>(Lin/juspay/hypersdk/core/JuspayServices;Landroid/app/Activity;Lin/juspay/hypersdk/HyperFragment;)V

    sput-object p1, Lin/juspay/services/HyperServices;->duiInterface:Lin/juspay/hypersdk/core/DuiInterface;

    const-string v0, "JBridge"

    invoke-virtual {p0, p1, v0}, Lin/juspay/mystique/DynamicUI;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "file:///android_asset/base.html"

    invoke-virtual {p0, p1}, Lin/juspay/mystique/DynamicUI;->loadURL(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    move-object v5, p0

    const-string v0, "HyperServices"

    const-string v1, "lifecycle"

    const-string v2, "hypersdk"

    const-string v3, "prefetch"

    const-string v4, "Exception happened in PREFETCH"

    invoke-static/range {v0 .. v5}, Lin/juspay/hypersdk/core/SdkTracker;->trackAndLogBootException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static preFetch(Lo/onSessionEvent;Ljava/lang/String;)V
    .locals 4
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    const-string v0, "client_id"

    const-string v1, "hypersdk"

    const-string v2, "info"

    const-string v3, "prefetch"

    invoke-static {v1, v2, v3, v0, p1}, Lin/juspay/hypersdk/core/SdkTracker;->trackBootLifecycle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "service"

    const-string v3, "in.juspay.hyperpay"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "payload"

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {v3, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "HyperServices"

    const-string v2, "Error writing to JSON"

    invoke-static {v0, v2, p1}, Lin/juspay/hypersdk/core/JuspayLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-static {p0, v1}, Lin/juspay/services/HyperServices;->preFetch(Lo/onSessionEvent;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static preFetch(Lo/onSessionEvent;Lorg/json/JSONObject;)V
    .locals 0
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lin/juspay/services/HyperServices;->preFetch(Landroid/content/Context;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static prefetchOnEvent(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    sget-object p0, Lin/juspay/services/HyperServices;->prefetchBundleParams:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    aput-object p0, v1, v0

    const-string p0, "window.onMerchantEvent(\'%s\',atob(\'%s\'));"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    sget-object v0, Lin/juspay/services/HyperServices;->duiInterface:Lin/juspay/hypersdk/core/DuiInterface;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p0}, Lin/juspay/hypersdk/core/DuiInterface;->invokeCustomFnInDUIWebview(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p0, "HyperServices"

    const-string v0, "duiInterface not Found on Merchant Event"

    invoke-static {p0, v0}, Lin/juspay/hypersdk/core/JuspayLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private removeFragment()V
    .locals 2

    iget-object v0, p0, Lin/juspay/services/HyperServices;->activity:Lo/onSessionEvent;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    .line 1993
    iget-boolean v1, v0, Lo/requestExtraBinder;->postMessage:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lin/juspay/services/HyperServices;->fragmentTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/requestExtraBinder;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2464
    new-instance v1, Lo/binderDied;

    invoke-direct {v1, v0}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    iget-object v0, p0, Lin/juspay/services/HyperServices;->fragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v1, v0}, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback(Landroidx/fragment/app/Fragment;)Lo/MediaControllerCompat$MediaControllerImplApi23;

    move-result-object v0

    invoke-virtual {v0}, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback()V

    :cond_0
    return-void
.end method

.method private transformToNewPayload(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-string v0, "service"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    if-eqz p1, :cond_0

    :try_start_0
    const-string v2, "requestId"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    const-string p1, "payload"

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-object v1
.end method


# virtual methods
.method protected checkAndStartInitiate()V
    .locals 5

    iget-boolean v0, p0, Lin/juspay/services/HyperServices;->initiateCalled:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lin/juspay/services/HyperServices;->initiateCalled:Z

    const-string v0, "hypersdk"

    const-string v1, "info"

    const-string v2, "initiate"

    const-string v3, "started"

    const-string v4, "Started initiating the SDK"

    invoke-static {v0, v1, v2, v3, v4}, Lin/juspay/hypersdk/core/SdkTracker;->trackBootLifecycle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "initiate() can only be called once without terminate()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected configureFragment(Lorg/json/JSONObject;)V
    .locals 3

    :try_start_0
    const-string v0, "service_based"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "HyperServices"

    const-string v2, "Failed to write to JSON"

    invoke-static {v1, v2, v0}, Lin/juspay/hypersdk/core/JuspayLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object v0, p0, Lin/juspay/services/HyperServices;->fragment:Lin/juspay/hypersdk/HyperFragment;

    iget-object v1, p0, Lin/juspay/services/HyperServices;->activity:Lo/onSessionEvent;

    iget-object v2, p0, Lin/juspay/services/HyperServices;->container:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2}, Lin/juspay/hypersdk/HyperFragment;->setContainerAndActivity(Landroid/app/Activity;Landroid/view/ViewGroup;)V

    iget-object v0, p0, Lin/juspay/services/HyperServices;->fragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v0, p1}, Lin/juspay/hypersdk/HyperFragment;->setBundleParameters(Lorg/json/JSONObject;)V

    iget-object p1, p0, Lin/juspay/services/HyperServices;->fragment:Lin/juspay/hypersdk/HyperFragment;

    iget-object v0, p0, Lin/juspay/services/HyperServices;->activity:Lo/onSessionEvent;

    invoke-virtual {p1, v0}, Lin/juspay/hypersdk/HyperFragment;->setAssetManagementFlag(Landroid/app/Activity;)V

    return-void
.end method

.method protected createFragment()Lin/juspay/hypersdk/HyperFragment;
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    new-instance v0, Lin/juspay/hypersdk/HyperFragment;

    invoke-direct {v0}, Lin/juspay/hypersdk/HyperFragment;-><init>()V

    return-object v0
.end method

.method protected getFragment()Lin/juspay/hypersdk/HyperFragment;
    .locals 1

    iget-object v0, p0, Lin/juspay/services/HyperServices;->fragment:Lin/juspay/hypersdk/HyperFragment;

    return-object v0
.end method

.method public getJuspayServices()Lin/juspay/hypersdk/core/JuspayServices;
    .locals 1

    iget-object v0, p0, Lin/juspay/services/HyperServices;->fragment:Lin/juspay/hypersdk/HyperFragment;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-virtual {v0}, Lin/juspay/hypersdk/HyperFragment;->getJuspayServices()Lin/juspay/hypersdk/core/JuspayServices;

    move-result-object v0

    return-object v0
.end method

.method protected handleOnEvent(Lorg/json/JSONObject;)Z
    .locals 8

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "payload"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "event"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const v5, -0x7247da8c

    const-string v6, "jp_consuming_backpress"

    const/4 v7, 0x0

    if-eq v4, v5, :cond_1

    const v5, 0x2b93c43d

    if-eq v4, v5, :cond_0

    goto :goto_0

    :cond_0
    :try_start_1
    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    const-string v4, "onJOSReady"

    invoke-virtual {v2, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v2, :cond_2

    const/4 v3, 0x1

    :cond_2
    :goto_0
    if-eqz v3, :cond_5

    if-eq v3, v0, :cond_4

    const-string v2, ""

    if-eqz v1, :cond_3

    :try_start_2
    const-string v3, "requestId"

    const-string v4, "request_id"

    invoke-virtual {p1, v4, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "info"

    const-string v4, "process"

    const-string v5, "ended"

    invoke-direct {p0, v3, v4, v5, v1}, Lin/juspay/services/HyperServices;->logSafeEvents(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_3
    const-string v1, "action"

    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "DUI_READY"

    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iput-boolean v0, p0, Lin/juspay/services/HyperServices;->isDUIReady:Z

    invoke-virtual {p0}, Lin/juspay/services/HyperServices;->processQueue()V

    :cond_4
    return v7

    :cond_5
    if-nez v1, :cond_6

    iput-boolean v0, p0, Lin/juspay/services/HyperServices;->jpConsumingBackPress:Z

    goto :goto_1

    :cond_6
    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lin/juspay/services/HyperServices;->jpConsumingBackPress:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :goto_1
    return v7

    :catch_0
    move-exception p1

    const-string v1, "android"

    const-string v2, "on_event"

    const-string v3, "on_event_failed_during_evaluation"

    invoke-direct {p0, v1, v2, v3, p1}, Lin/juspay/services/HyperServices;->logSafeExceptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_7
    return v0
.end method

.method public initiate(Landroid/os/Bundle;Lin/juspay/hypersdk/ui/JuspayPaymentsCallback;)V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Lin/juspay/hypersdk/core/PaymentUtils;->toJSON(Landroid/os/Bundle;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lin/juspay/services/HyperServices;->transformToNewPayload(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p1

    invoke-static {p2}, Lin/juspay/hypersdk/ui/HyperPaymentsCallbackAdapter;->createJuspayPaymentsDelegate(Lin/juspay/hypersdk/ui/JuspayPaymentsCallback;)Lin/juspay/hypersdk/ui/HyperPaymentsCallbackAdapter;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lin/juspay/services/HyperServices;->initiate(Lorg/json/JSONObject;Lin/juspay/hypersdk/ui/HyperPaymentsCallback;)V

    return-void
.end method

.method public declared-synchronized initiate(Lo/onSessionEvent;Landroid/view/ViewGroup;Lorg/json/JSONObject;Lin/juspay/hypersdk/ui/HyperPaymentsCallback;)V
    .locals 3
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    monitor-enter p0

    :try_start_0
    iput-object p2, p0, Lin/juspay/services/HyperServices;->container:Landroid/view/ViewGroup;

    const-string p2, "hypersdk"

    const-string v0, "info"

    const-string v1, "initiate"

    const-string v2, "started"

    invoke-static {p2, v0, v1, v2, p3}, Lin/juspay/hypersdk/core/SdkTracker;->trackBootLifecycle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p3, p4}, Lin/juspay/services/HyperServices;->initiate(Lo/onSessionEvent;Lorg/json/JSONObject;Lin/juspay/hypersdk/ui/HyperPaymentsCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized initiate(Lo/onSessionEvent;Lorg/json/JSONObject;Lin/juspay/hypersdk/ui/HyperPaymentsCallback;)V
    .locals 5
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lin/juspay/services/HyperServices;->activity:Lo/onSessionEvent;

    if-eq v0, p1, :cond_0

    const-string v0, "hypersdk"

    const-string v1, "info"

    const-string v2, "initiate"

    const-string v3, "activity_changed"

    const-string v4, "true"

    invoke-static {v0, v1, v2, v3, v4}, Lin/juspay/hypersdk/core/SdkTracker;->trackBootLifecycle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    iput-object p1, p0, Lin/juspay/services/HyperServices;->activity:Lo/onSessionEvent;

    invoke-virtual {p0, p2, p3}, Lin/juspay/services/HyperServices;->initiate(Lorg/json/JSONObject;Lin/juspay/hypersdk/ui/HyperPaymentsCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized initiate(Lorg/json/JSONObject;Lin/juspay/hypersdk/ui/HyperPaymentsCallback;)V
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lin/juspay/services/HyperServices;->checkAndStartInitiate()V

    iget-object v0, p0, Lin/juspay/services/HyperServices;->activity:Lo/onSessionEvent;

    new-instance v1, Lin/juspay/services/HyperServices$3;

    invoke-direct {v1, p0, p1, p2}, Lin/juspay/services/HyperServices$3;-><init>(Lin/juspay/services/HyperServices;Lorg/json/JSONObject;Lin/juspay/hypersdk/ui/HyperPaymentsCallback;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isInitialised()Z
    .locals 5
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iget-boolean v0, p0, Lin/juspay/services/HyperServices;->initiateCalled:Z

    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "hypersdk"

    const-string v2, "info"

    const-string v3, "initiate"

    const-string v4, "isInitialised()"

    invoke-static {v1, v2, v3, v4, v0}, Lin/juspay/hypersdk/core/SdkTracker;->trackBootLifecycle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v0, p0, Lin/juspay/services/HyperServices;->initiateCalled:Z

    return v0
.end method

.method public notifyMerchant(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "request_id"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "event"

    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "error_code"

    invoke-virtual {p1, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "error_message"

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "status"

    const-string p3, "ERROR"

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "payload"

    invoke-virtual {v0, p2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "HyperServices"

    const-string p3, "Exception while constructing payload in notifyMerchant"

    invoke-static {p2, p3, p1}, Lin/juspay/hypersdk/core/JuspayLogger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    iget-object p1, p0, Lin/juspay/services/HyperServices;->merchantCallback:Lin/juspay/hypersdk/ui/HyperPaymentsCallback;

    new-instance p2, Lin/juspay/services/HyperServices$4;

    invoke-direct {p2, p0}, Lin/juspay/services/HyperServices$4;-><init>(Lin/juspay/services/HyperServices;)V

    invoke-interface {p1, v0, p2}, Lin/juspay/hypersdk/ui/HyperPaymentsCallback;->onEvent(Lorg/json/JSONObject;Lin/juspay/hypersdk/data/JuspayResponseHandler;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iget-object v0, p0, Lin/juspay/services/HyperServices;->fragment:Lin/juspay/hypersdk/HyperFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 5
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iget-boolean v0, p0, Lin/juspay/services/HyperServices;->jpConsumingBackPress:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const-string v1, "android"

    const-string v2, "info"

    const-string v3, "on_back_pressed"

    const-string v4, "consuming_backpress"

    invoke-static {v1, v2, v3, v4, v0}, Lin/juspay/hypersdk/core/SdkTracker;->trackBootLifecycle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lin/juspay/services/HyperServices;->fragment:Lin/juspay/hypersdk/HyperFragment;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lin/juspay/services/HyperServices;->isDUIReady:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lin/juspay/services/HyperServices;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lin/juspay/services/HyperServices;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    iget-object v0, p0, Lin/juspay/services/HyperServices;->requestId:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "backpressed"

    :cond_0
    iget-object v2, p0, Lin/juspay/services/HyperServices;->merchantCallback:Lin/juspay/hypersdk/ui/HyperPaymentsCallback;

    if-eqz v2, :cond_1

    const-string v2, "JP800"

    const-string v3, "User Aborted Transaction"

    invoke-virtual {p0, v0, v2, v3}, Lin/juspay/services/HyperServices;->notifyMerchant(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return v1

    :cond_2
    iget-object v0, p0, Lin/juspay/services/HyperServices;->fragment:Lin/juspay/hypersdk/HyperFragment;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lin/juspay/services/HyperServices;->jpConsumingBackPress:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lin/juspay/services/HyperServices;->fragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v0}, Lin/juspay/hypersdk/HyperFragment;->onBackPressed()V

    return v1

    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method public onMerchantEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iget-object v0, p0, Lin/juspay/services/HyperServices;->fragment:Lin/juspay/hypersdk/HyperFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lin/juspay/hypersdk/HyperFragment;->onMerchantEvent(Ljava/lang/String;Lorg/json/JSONObject;)Z

    :cond_0
    return-void
.end method

.method public onMerchantEvent(Lorg/json/JSONObject;)V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    iget-object v0, p0, Lin/juspay/services/HyperServices;->fragment:Lin/juspay/hypersdk/HyperFragment;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lin/juspay/hypersdk/HyperFragment;->onMerchantEvent(Lorg/json/JSONObject;)V

    :cond_0
    return-void
.end method

.method public process(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 3
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    :try_start_0
    invoke-direct {p0, p1, p2}, Lin/juspay/services/HyperServices;->transformToNewPayload(Ljava/lang/String;Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "hypersdk"

    const-string v1, "process"

    const-string v2, "Exception while inserting requestId in deprecated process"

    invoke-direct {p0, v0, v1, v2, p1}, Lin/juspay/services/HyperServices;->logSafeExceptions(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-virtual {p0, p2}, Lin/juspay/services/HyperServices;->process(Lorg/json/JSONObject;)V

    return-void
.end method

.method public declared-synchronized process(Lo/onSessionEvent;Landroid/view/ViewGroup;Lorg/json/JSONObject;)V
    .locals 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v0, Lin/juspay/services/HyperServices$5;

    invoke-direct {v0, p0, p1, p2, p3}, Lin/juspay/services/HyperServices$5;-><init>(Lin/juspay/services/HyperServices;Lo/onSessionEvent;Landroid/view/ViewGroup;Lorg/json/JSONObject;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized process(Lo/onSessionEvent;Lorg/json/JSONObject;)V
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020002

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p0, p1, v0, p2}, Lin/juspay/services/HyperServices;->process(Lo/onSessionEvent;Landroid/view/ViewGroup;Lorg/json/JSONObject;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized process(Lorg/json/JSONObject;)V
    .locals 2
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lin/juspay/services/HyperServices;->initiateCalled:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lin/juspay/services/HyperServices;->activity:Lo/onSessionEvent;

    new-instance v1, Lin/juspay/services/HyperServices$7;

    invoke-direct {v1, p0, p1}, Lin/juspay/services/HyperServices$7;-><init>(Lin/juspay/services/HyperServices;Lorg/json/JSONObject;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "initiate() must be called before calling process()"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected processQueue()V
    .locals 4

    iget-object v0, p0, Lin/juspay/services/HyperServices;->queue:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "info"

    const-string v2, "process_queue"

    const-string v3, "data"

    invoke-direct {p0, v1, v2, v3, v0}, Lin/juspay/services/HyperServices;->logSafeEvents(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iget-boolean v1, p0, Lin/juspay/services/HyperServices;->isDUIReady:Z

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lin/juspay/services/HyperServices;->fragment:Lin/juspay/hypersdk/HyperFragment;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lin/juspay/services/HyperServices;->process(Lorg/json/JSONObject;)V

    invoke-virtual {p0}, Lin/juspay/services/HyperServices;->processQueue()V

    :cond_0
    return-void
.end method

.method public resetActivity()V
    .locals 5
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    const-string v0, "hypersdk"

    const-string v1, "info"

    const-string v2, "terminate"

    const-string v3, "resetActivity()"

    const-string v4, "called"

    invoke-static {v0, v1, v2, v3, v4}, Lin/juspay/hypersdk/core/SdkTracker;->trackBootLifecycle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0}, Lin/juspay/services/HyperServices;->removeFragment()V

    const/4 v0, 0x0

    iput-object v0, p0, Lin/juspay/services/HyperServices;->activity:Lo/onSessionEvent;

    iput-object v0, p0, Lin/juspay/services/HyperServices;->container:Landroid/view/ViewGroup;

    iget-object v0, p0, Lin/juspay/services/HyperServices;->fragment:Lin/juspay/hypersdk/HyperFragment;

    invoke-virtual {v0}, Lin/juspay/hypersdk/HyperFragment;->removeActivityAndContainer()V

    return-void
.end method

.method public declared-synchronized terminate()V
    .locals 5
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lin/juspay/services/HyperServices;->initiateCalled:Z

    const-string v0, "hypersdk"

    const-string v1, "info"

    const-string v2, "terminate"

    const-string v3, "started"

    const-string v4, "Terminating the SDK"

    invoke-static {v0, v1, v2, v3, v4}, Lin/juspay/hypersdk/core/SdkTracker;->trackBootLifecycle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v0, p0, Lin/juspay/services/HyperServices;->activity:Lo/onSessionEvent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lin/juspay/services/HyperServices;->activity:Lo/onSessionEvent;

    new-instance v1, Lin/juspay/services/HyperServices$8;

    invoke-direct {v1, p0}, Lin/juspay/services/HyperServices$8;-><init>(Lin/juspay/services/HyperServices;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public terminate(Lorg/json/JSONObject;)V
    .locals 3

    const-string v0, "info"

    const-string v1, "terminate_process"

    const-string v2, "request"

    invoke-direct {p0, v0, v1, v2, p1}, Lin/juspay/services/HyperServices;->logSafeEvents(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    const-string v0, "terminate"

    invoke-virtual {p0, v0, p1}, Lin/juspay/services/HyperServices;->onMerchantEvent(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void
.end method
