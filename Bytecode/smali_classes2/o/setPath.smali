.class public final Lo/setPath;
.super Lo/hideNavigationBar;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private ICustomTabsCallback:Lo/TrackBalanceConfigsJsonAdapter;

.field private ICustomTabsCallback$Stub:Ljava/lang/Object;

.field private asInterface:Z

.field private onMessageChannelReady:Lo/RawBankAccountJsonAdapter;

.field private onPostMessage:Lo/LiveCallbackWrapper;

.field private onRelationshipValidationResult:Lo/logout;

.field private final onTransact:Lo/openRewards;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/openRewards;Lo/GameCta;Lo/LiveCallbackWrapper;Lo/refreshAuth;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p5}, Lo/setPath;-><init>(Landroid/content/Context;Lo/openRewards;Lo/GameCta;Lo/refreshAuth;)V

    iput-object p4, p0, Lo/setPath;->onPostMessage:Lo/LiveCallbackWrapper;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/openRewards;Lo/GameCta;Lo/RawBankAccountJsonAdapter;Lo/refreshAuth;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p5}, Lo/setPath;-><init>(Landroid/content/Context;Lo/openRewards;Lo/GameCta;Lo/refreshAuth;)V

    iput-object p4, p0, Lo/setPath;->onMessageChannelReady:Lo/RawBankAccountJsonAdapter;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lo/openRewards;Lo/GameCta;Lo/TrackBalanceConfigsJsonAdapter;Lo/refreshAuth;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p5}, Lo/setPath;-><init>(Landroid/content/Context;Lo/openRewards;Lo/GameCta;Lo/refreshAuth;)V

    iput-object p4, p0, Lo/setPath;->ICustomTabsCallback:Lo/TrackBalanceConfigsJsonAdapter;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lo/openRewards;Lo/GameCta;Lo/refreshAuth;)V
    .locals 9

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v8}, Lo/hideNavigationBar;-><init>(Landroid/content/Context;Lo/openRewards;Lo/setIdentifier;Lo/GameCta;Lorg/json/JSONObject;Lo/refreshAuth;Lo/DataListJsonAdapter;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lo/setPath;->asInterface:Z

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setPath;->ICustomTabsCallback$Stub:Ljava/lang/Object;

    iput-object p2, p0, Lo/setPath;->onTransact:Lo/openRewards;

    return-void
.end method

.method private static onMessageChannelReady(Ljava/util/Map;)Ljava/util/HashMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    monitor-enter p0

    :try_start_0
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 2

    iget-object v0, p0, Lo/setPath;->ICustomTabsCallback$Stub:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/setPath;->onRelationshipValidationResult:Lo/logout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/setPath;->onRelationshipValidationResult:Lo/logout;

    invoke-interface {v1}, Lo/logout;->ICustomTabsCallback()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final ICustomTabsCallback(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lo/setPath;->ICustomTabsCallback$Stub:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/setPath;->onRelationshipValidationResult:Lo/logout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/setPath;->onRelationshipValidationResult:Lo/logout;

    invoke-interface {v1, p1}, Lo/logout;->ICustomTabsCallback(Landroid/view/View;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final ICustomTabsCallback(Landroid/view/View;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "recordImpression must be called on the main UI thread."

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    iget-object v0, p0, Lo/setPath;->ICustomTabsCallback$Stub:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lo/hideNavigationBar;->extraCallback:Z

    iget-object v1, p0, Lo/setPath;->onRelationshipValidationResult:Lo/logout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/setPath;->onRelationshipValidationResult:Lo/logout;

    invoke-interface {v1, p1, p2}, Lo/logout;->ICustomTabsCallback(Landroid/view/View;Ljava/util/Map;)V

    iget-object p1, p0, Lo/setPath;->onTransact:Lo/openRewards;

    invoke-interface {p1}, Lo/openRewards;->MediaBrowserCompat$ConnectionCallback()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_0
    :try_start_1
    iget-object p1, p0, Lo/setPath;->onPostMessage:Lo/LiveCallbackWrapper;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lo/setPath;->onPostMessage:Lo/LiveCallbackWrapper;

    invoke-interface {p1}, Lo/LiveCallbackWrapper;->requestPostMessageChannel()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lo/setPath;->onPostMessage:Lo/LiveCallbackWrapper;

    invoke-interface {p1}, Lo/LiveCallbackWrapper;->postMessage()V

    iget-object p1, p0, Lo/setPath;->onTransact:Lo/openRewards;

    :goto_0
    invoke-interface {p1}, Lo/openRewards;->MediaBrowserCompat$ConnectionCallback()V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Lo/setPath;->onMessageChannelReady:Lo/RawBankAccountJsonAdapter;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lo/setPath;->onMessageChannelReady:Lo/RawBankAccountJsonAdapter;

    invoke-interface {p1}, Lo/RawBankAccountJsonAdapter;->C_()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lo/setPath;->onMessageChannelReady:Lo/RawBankAccountJsonAdapter;

    invoke-interface {p1}, Lo/RawBankAccountJsonAdapter;->onRelationshipValidationResult()V

    iget-object p1, p0, Lo/setPath;->onTransact:Lo/openRewards;

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lo/setPath;->ICustomTabsCallback:Lo/TrackBalanceConfigsJsonAdapter;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lo/setPath;->ICustomTabsCallback:Lo/TrackBalanceConfigsJsonAdapter;

    invoke-interface {p1}, Lo/TrackBalanceConfigsJsonAdapter;->asInterface()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lo/setPath;->ICustomTabsCallback:Lo/TrackBalanceConfigsJsonAdapter;

    invoke-interface {p1}, Lo/TrackBalanceConfigsJsonAdapter;->onRelationshipValidationResult()V

    iget-object p1, p0, Lo/setPath;->onTransact:Lo/openRewards;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string p2, "Failed to call recordImpression"

    invoke-static {p2, p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final ICustomTabsCallback(Landroid/view/View;Ljava/util/Map;Ljava/util/Map;Landroid/view/View$OnTouchListener;Landroid/view/View$OnClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Landroid/view/View$OnTouchListener;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    iget-object p4, p0, Lo/setPath;->ICustomTabsCallback$Stub:Ljava/lang/Object;

    monitor-enter p4

    const/4 p5, 0x1

    :try_start_0
    iput-boolean p5, p0, Lo/setPath;->asInterface:Z

    invoke-static {p2}, Lo/setPath;->onMessageChannelReady(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object p2

    invoke-static {p3}, Lo/setPath;->onMessageChannelReady(Ljava/util/Map;)Ljava/util/HashMap;

    move-result-object p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p5, p0, Lo/setPath;->onPostMessage:Lo/LiveCallbackWrapper;

    if-eqz p5, :cond_0

    iget-object p5, p0, Lo/setPath;->onPostMessage:Lo/LiveCallbackWrapper;

    invoke-static {p1}, Lo/GetRatingResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getEventName;

    move-result-object p1

    invoke-static {p2}, Lo/GetRatingResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getEventName;

    move-result-object p2

    invoke-static {p3}, Lo/GetRatingResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getEventName;

    move-result-object p3

    invoke-interface {p5, p1, p2, p3}, Lo/LiveCallbackWrapper;->ICustomTabsCallback(Lo/getEventName;Lo/getEventName;Lo/getEventName;)V

    goto :goto_0

    :cond_0
    iget-object p5, p0, Lo/setPath;->onMessageChannelReady:Lo/RawBankAccountJsonAdapter;

    if-eqz p5, :cond_1

    iget-object p5, p0, Lo/setPath;->onMessageChannelReady:Lo/RawBankAccountJsonAdapter;

    invoke-static {p1}, Lo/GetRatingResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getEventName;

    move-result-object v0

    invoke-static {p2}, Lo/GetRatingResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getEventName;

    move-result-object p2

    invoke-static {p3}, Lo/GetRatingResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getEventName;

    move-result-object p3

    invoke-interface {p5, v0, p2, p3}, Lo/RawBankAccountJsonAdapter;->ICustomTabsCallback(Lo/getEventName;Lo/getEventName;Lo/getEventName;)V

    iget-object p2, p0, Lo/setPath;->onMessageChannelReady:Lo/RawBankAccountJsonAdapter;

    invoke-static {p1}, Lo/GetRatingResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getEventName;

    move-result-object p1

    invoke-interface {p2, p1}, Lo/RawBankAccountJsonAdapter;->onNavigationEvent(Lo/getEventName;)V

    goto :goto_0

    :cond_1
    iget-object p5, p0, Lo/setPath;->ICustomTabsCallback:Lo/TrackBalanceConfigsJsonAdapter;

    if-eqz p5, :cond_2

    iget-object p5, p0, Lo/setPath;->ICustomTabsCallback:Lo/TrackBalanceConfigsJsonAdapter;

    invoke-static {p1}, Lo/GetRatingResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getEventName;

    move-result-object v0

    invoke-static {p2}, Lo/GetRatingResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getEventName;

    move-result-object p2

    invoke-static {p3}, Lo/GetRatingResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getEventName;

    move-result-object p3

    invoke-interface {p5, v0, p2, p3}, Lo/TrackBalanceConfigsJsonAdapter;->onPostMessage(Lo/getEventName;Lo/getEventName;Lo/getEventName;)V

    iget-object p2, p0, Lo/setPath;->ICustomTabsCallback:Lo/TrackBalanceConfigsJsonAdapter;

    invoke-static {p1}, Lo/GetRatingResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getEventName;

    move-result-object p1

    invoke-interface {p2, p1}, Lo/TrackBalanceConfigsJsonAdapter;->ICustomTabsCallback(Lo/getEventName;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string p2, "Failed to call prepareAd"

    invoke-static {p2, p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lo/setPath;->asInterface:Z

    monitor-exit p4

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final ICustomTabsCallback$Stub()V
    .locals 0

    return-void
.end method

.method public final asBinder()Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final asInterface()Lo/logout;
    .locals 2

    iget-object v0, p0, Lo/setPath;->ICustomTabsCallback$Stub:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/setPath;->onRelationshipValidationResult:Lo/logout;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final extraCallback(Landroid/view/View;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;)V"
        }
    .end annotation

    iget-object p2, p0, Lo/setPath;->ICustomTabsCallback$Stub:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lo/setPath;->onPostMessage:Lo/LiveCallbackWrapper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/setPath;->onPostMessage:Lo/LiveCallbackWrapper;

    invoke-static {p1}, Lo/GetRatingResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getEventName;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/LiveCallbackWrapper;->ICustomTabsCallback(Lo/getEventName;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lo/setPath;->onMessageChannelReady:Lo/RawBankAccountJsonAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/setPath;->onMessageChannelReady:Lo/RawBankAccountJsonAdapter;

    invoke-static {p1}, Lo/GetRatingResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getEventName;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/RawBankAccountJsonAdapter;->onPostMessage(Lo/getEventName;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lo/setPath;->ICustomTabsCallback:Lo/TrackBalanceConfigsJsonAdapter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/setPath;->ICustomTabsCallback:Lo/TrackBalanceConfigsJsonAdapter;

    invoke-static {p1}, Lo/GetRatingResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getEventName;

    move-result-object p1

    invoke-interface {v0, p1}, Lo/TrackBalanceConfigsJsonAdapter;->onMessageChannelReady(Lo/getEventName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string v0, "Failed to call untrackView"

    invoke-static {v0, p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    monitor-exit p2

    return-void

    :goto_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final extraCallback(Lo/logout;)V
    .locals 1

    iget-object v0, p0, Lo/setPath;->ICustomTabsCallback$Stub:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lo/setPath;->onRelationshipValidationResult:Lo/logout;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final extraCallback()Z
    .locals 2

    iget-object v0, p0, Lo/setPath;->ICustomTabsCallback$Stub:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/setPath;->onRelationshipValidationResult:Lo/logout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/setPath;->onRelationshipValidationResult:Lo/logout;

    invoke-interface {v1}, Lo/logout;->extraCallback()Z

    move-result v1

    monitor-exit v0

    return v1

    :cond_0
    iget-object v1, p0, Lo/setPath;->onTransact:Lo/openRewards;

    invoke-interface {v1}, Lo/openRewards;->isConnected()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final onMessageChannelReady(Landroid/view/View$OnClickListener;Z)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lo/setPath;->ICustomTabsCallback$Stub:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/setPath;->onRelationshipValidationResult:Lo/logout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/setPath;->onRelationshipValidationResult:Lo/logout;

    invoke-interface {v1, p1, p2}, Lo/logout;->onMessageChannelReady(Landroid/view/View$OnClickListener;Z)Landroid/view/View;

    move-result-object p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :cond_0
    const/4 p1, 0x0

    :try_start_1
    iget-object p2, p0, Lo/setPath;->onPostMessage:Lo/LiveCallbackWrapper;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lo/setPath;->onPostMessage:Lo/LiveCallbackWrapper;

    invoke-interface {p2}, Lo/LiveCallbackWrapper;->E_()Lo/getEventName;

    move-result-object p2

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lo/setPath;->onMessageChannelReady:Lo/RawBankAccountJsonAdapter;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lo/setPath;->onMessageChannelReady:Lo/RawBankAccountJsonAdapter;

    invoke-interface {p2}, Lo/RawBankAccountJsonAdapter;->warmup()Lo/getEventName;

    move-result-object p2

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lo/setPath;->ICustomTabsCallback:Lo/TrackBalanceConfigsJsonAdapter;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lo/setPath;->ICustomTabsCallback:Lo/TrackBalanceConfigsJsonAdapter;

    invoke-interface {p2}, Lo/TrackBalanceConfigsJsonAdapter;->D_()Lo/getEventName;

    move-result-object p2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p2

    :try_start_2
    const-string v1, "Failed to call getAdChoicesContent"

    invoke-static {v1, p2}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    move-object p2, p1

    :goto_0
    if-eqz p2, :cond_4

    invoke-static {p2}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    monitor-exit v0

    return-object p1

    :cond_4
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final onMessageChannelReady()V
    .locals 2

    const-string v0, "recordDownloadedImpression must be called on main UI thread."

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    iget-object v0, p0, Lo/setPath;->ICustomTabsCallback$Stub:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lo/setPath;->onNavigationEvent:Z

    iget-object v1, p0, Lo/setPath;->onRelationshipValidationResult:Lo/logout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/setPath;->onRelationshipValidationResult:Lo/logout;

    invoke-interface {v1}, Lo/logout;->onMessageChannelReady()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final onNavigationEvent(Lo/ActionableJsonAdapter;)V
    .locals 2

    iget-object v0, p0, Lo/setPath;->ICustomTabsCallback$Stub:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/setPath;->onRelationshipValidationResult:Lo/logout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/setPath;->onRelationshipValidationResult:Lo/logout;

    invoke-interface {v1, p1}, Lo/logout;->onNavigationEvent(Lo/ActionableJsonAdapter;)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onNavigationEvent()Z
    .locals 2

    iget-object v0, p0, Lo/setPath;->ICustomTabsCallback$Stub:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/setPath;->onRelationshipValidationResult:Lo/logout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/setPath;->onRelationshipValidationResult:Lo/logout;

    invoke-interface {v1}, Lo/logout;->onNavigationEvent()Z

    move-result v1

    monitor-exit v0

    return v1

    :cond_0
    iget-object v1, p0, Lo/setPath;->onTransact:Lo/openRewards;

    invoke-interface {v1}, Lo/openRewards;->getRoot()Z

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final onPostMessage(Landroid/view/View;Ljava/util/Map;Landroid/os/Bundle;Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;>;",
            "Landroid/os/Bundle;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const-string v0, "performClick must be called on the main UI thread."

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    iget-object v0, p0, Lo/setPath;->ICustomTabsCallback$Stub:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/setPath;->onRelationshipValidationResult:Lo/logout;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/setPath;->onRelationshipValidationResult:Lo/logout;

    invoke-interface {v1, p1, p2, p3, p4}, Lo/logout;->onPostMessage(Landroid/view/View;Ljava/util/Map;Landroid/os/Bundle;Landroid/view/View;)V

    iget-object p1, p0, Lo/setPath;->onTransact:Lo/openRewards;

    invoke-interface {p1}, Lo/openRewards;->u_()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_0
    :try_start_1
    iget-object p2, p0, Lo/setPath;->onPostMessage:Lo/LiveCallbackWrapper;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lo/setPath;->onPostMessage:Lo/LiveCallbackWrapper;

    invoke-interface {p2}, Lo/LiveCallbackWrapper;->extraCommand()Z

    move-result p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lo/setPath;->onPostMessage:Lo/LiveCallbackWrapper;

    invoke-static {p1}, Lo/GetRatingResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getEventName;

    move-result-object p1

    invoke-interface {p2, p1}, Lo/LiveCallbackWrapper;->extraCallback(Lo/getEventName;)V

    iget-object p1, p0, Lo/setPath;->onTransact:Lo/openRewards;

    :goto_0
    invoke-interface {p1}, Lo/openRewards;->u_()V

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lo/setPath;->onMessageChannelReady:Lo/RawBankAccountJsonAdapter;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lo/setPath;->onMessageChannelReady:Lo/RawBankAccountJsonAdapter;

    invoke-interface {p2}, Lo/RawBankAccountJsonAdapter;->newSession()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lo/setPath;->onMessageChannelReady:Lo/RawBankAccountJsonAdapter;

    invoke-static {p1}, Lo/GetRatingResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getEventName;

    move-result-object p1

    invoke-interface {p2, p1}, Lo/RawBankAccountJsonAdapter;->onMessageChannelReady(Lo/getEventName;)V

    iget-object p1, p0, Lo/setPath;->onTransact:Lo/openRewards;

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lo/setPath;->ICustomTabsCallback:Lo/TrackBalanceConfigsJsonAdapter;

    if-eqz p2, :cond_3

    iget-object p2, p0, Lo/setPath;->ICustomTabsCallback:Lo/TrackBalanceConfigsJsonAdapter;

    invoke-interface {p2}, Lo/TrackBalanceConfigsJsonAdapter;->ICustomTabsCallback$Stub()Z

    move-result p2

    if-nez p2, :cond_3

    iget-object p2, p0, Lo/setPath;->ICustomTabsCallback:Lo/TrackBalanceConfigsJsonAdapter;

    invoke-static {p1}, Lo/GetRatingResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getEventName;

    move-result-object p1

    invoke-interface {p2, p1}, Lo/TrackBalanceConfigsJsonAdapter;->extraCallback(Lo/getEventName;)V

    iget-object p1, p0, Lo/setPath;->onTransact:Lo/openRewards;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string p2, "Failed to call performClick"

    invoke-static {p2, p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final onPostMessage()Z
    .locals 2

    iget-object v0, p0, Lo/setPath;->ICustomTabsCallback$Stub:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lo/setPath;->asInterface:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final onRelationshipValidationResult()V
    .locals 1

    iget-object v0, p0, Lo/setPath;->onRelationshipValidationResult:Lo/logout;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/logout;->onRelationshipValidationResult()V

    :cond_0
    return-void
.end method

.method public final onTransact()V
    .locals 0

    return-void
.end method

.method public final warmup()V
    .locals 1

    iget-object v0, p0, Lo/setPath;->onRelationshipValidationResult:Lo/logout;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/logout;->warmup()V

    :cond_0
    return-void
.end method
