.class public final Lo/ContactSyncResponse;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private ICustomTabsCallback:Landroid/content/SharedPreferences;

.field private ICustomTabsCallback$Stub:Z

.field private ICustomTabsCallback$Stub$Proxy:J

.field private ICustomTabsService:J

.field private asBinder:Z

.field private asInterface:Ljava/lang/String;

.field private final extraCallback:Ljava/lang/Object;

.field private extraCommand:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private getInterfaceDescriptor:I

.field private mayLaunchUrl:Lorg/json/JSONObject;

.field private newSession:Ljava/lang/String;

.field private onMessageChannelReady:Lo/PaymentModeListResponseJsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/PaymentModeListResponseJsonAdapter<",
            "*>;"
        }
    .end annotation
.end field

.field private onNavigationEvent:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet<",
            "Lo/AuthProviderJsonAdapter;",
            ">;"
        }
    .end annotation
.end field

.field onPostMessage:Landroid/content/SharedPreferences$Editor;

.field private onRelationshipValidationResult:Z

.field private onTransact:Ljava/lang/String;

.field private postMessage:Z

.field private requestPostMessageChannel:I

.field private updateVisuals:Z

.field private warmup:J


# direct methods
.method public constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/ContactSyncResponse;->extraCallback:Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lo/ContactSyncResponse;->onNavigationEvent:Ljava/util/concurrent/CopyOnWriteArraySet;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ContactSyncResponse;->asBinder:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lo/ContactSyncResponse;->ICustomTabsCallback$Stub:Z

    iput-boolean v0, p0, Lo/ContactSyncResponse;->onRelationshipValidationResult:Z

    const-string v2, ""

    iput-object v2, p0, Lo/ContactSyncResponse;->newSession:Ljava/lang/String;

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lo/ContactSyncResponse;->ICustomTabsService:J

    iput-wide v2, p0, Lo/ContactSyncResponse;->ICustomTabsCallback$Stub$Proxy:J

    iput-wide v2, p0, Lo/ContactSyncResponse;->warmup:J

    const/4 v2, -0x1

    iput v2, p0, Lo/ContactSyncResponse;->getInterfaceDescriptor:I

    iput v0, p0, Lo/ContactSyncResponse;->requestPostMessageChannel:I

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lo/ContactSyncResponse;->extraCommand:Ljava/util/Set;

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Lo/ContactSyncResponse;->mayLaunchUrl:Lorg/json/JSONObject;

    iput-boolean v1, p0, Lo/ContactSyncResponse;->postMessage:Z

    iput-boolean v1, p0, Lo/ContactSyncResponse;->updateVisuals:Z

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/ContactSyncResponse;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lo/ContactSyncResponse;->extraCallback:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic ICustomTabsCallback(Lo/ContactSyncResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lo/ContactSyncResponse;->asInterface:Ljava/lang/String;

    return-object p1
.end method

.method private final ICustomTabsCallback(Landroid/os/Bundle;)V
    .locals 1

    new-instance v0, Lo/AmexLoginStatusJsonAdapter;

    invoke-direct {v0, p0, p1}, Lo/AmexLoginStatusJsonAdapter;-><init>(Lo/ContactSyncResponse;Landroid/os/Bundle;)V

    invoke-virtual {v0}, Lo/ContactReverseSyncResponse;->s_()Ljava/lang/Object;

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/ContactSyncResponse;Z)Z
    .locals 0

    iput-boolean p1, p0, Lo/ContactSyncResponse;->postMessage:Z

    return p1
.end method

.method static synthetic ICustomTabsCallback$Stub(Lo/ContactSyncResponse;)Z
    .locals 0

    iget-boolean p0, p0, Lo/ContactSyncResponse;->onRelationshipValidationResult:Z

    return p0
.end method

.method static synthetic ICustomTabsCallback$Stub$Proxy(Lo/ContactSyncResponse;)J
    .locals 2

    iget-wide v0, p0, Lo/ContactSyncResponse;->ICustomTabsCallback$Stub$Proxy:J

    return-wide v0
.end method

.method static synthetic ICustomTabsService(Lo/ContactSyncResponse;)I
    .locals 0

    iget p0, p0, Lo/ContactSyncResponse;->getInterfaceDescriptor:I

    return p0
.end method

.method private final ICustomTabsService()V
    .locals 4

    iget-object v0, p0, Lo/ContactSyncResponse;->onMessageChannelReady:Lo/PaymentModeListResponseJsonAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {v0}, Lo/PaymentModeListResponseJsonAdapter;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lo/ContactSyncResponse;->onMessageChannelReady:Lo/PaymentModeListResponseJsonAdapter;

    const-wide/16 v1, 0x1

    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Lo/PaymentModeListResponseJsonAdapter;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_0
    const-string v1, "Fail to initialize AdSharedPreferenceManager."

    invoke-static {v1, v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :catch_3
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    const-string v1, "Interrupted while waiting for preferences loaded."

    invoke-static {v1, v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method static synthetic asBinder(Lo/ContactSyncResponse;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lo/ContactSyncResponse;->asInterface:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic asInterface(Lo/ContactSyncResponse;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lo/ContactSyncResponse;->onTransact:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic extraCallback(Lo/ContactSyncResponse;I)I
    .locals 0

    iput p1, p0, Lo/ContactSyncResponse;->requestPostMessageChannel:I

    return p1
.end method

.method static synthetic extraCallback(Lo/ContactSyncResponse;J)J
    .locals 0

    iput-wide p1, p0, Lo/ContactSyncResponse;->ICustomTabsService:J

    return-wide p1
.end method

.method static synthetic extraCallback(Lo/ContactSyncResponse;Ljava/util/Set;)Ljava/util/Set;
    .locals 0

    iput-object p1, p0, Lo/ContactSyncResponse;->extraCommand:Ljava/util/Set;

    return-object p1
.end method

.method static synthetic extraCallback(Lo/ContactSyncResponse;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .locals 0

    iput-object p1, p0, Lo/ContactSyncResponse;->mayLaunchUrl:Lorg/json/JSONObject;

    return-object p1
.end method

.method static synthetic extraCallback(Lo/ContactSyncResponse;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/ContactSyncResponse;->ICustomTabsCallback(Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic extraCallback(Lo/ContactSyncResponse;)Z
    .locals 0

    iget-boolean p0, p0, Lo/ContactSyncResponse;->ICustomTabsCallback$Stub:Z

    return p0
.end method

.method static synthetic extraCallback(Lo/ContactSyncResponse;Z)Z
    .locals 0

    iput-boolean p1, p0, Lo/ContactSyncResponse;->onRelationshipValidationResult:Z

    return p1
.end method

.method static synthetic getInterfaceDescriptor(Lo/ContactSyncResponse;)J
    .locals 2

    iget-wide v0, p0, Lo/ContactSyncResponse;->warmup:J

    return-wide v0
.end method

.method static synthetic mayLaunchUrl(Lo/ContactSyncResponse;)Ljava/util/Set;
    .locals 0

    iget-object p0, p0, Lo/ContactSyncResponse;->extraCommand:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic newSession(Lo/ContactSyncResponse;)J
    .locals 2

    iget-wide v0, p0, Lo/ContactSyncResponse;->ICustomTabsService:J

    return-wide v0
.end method

.method private static newSession()Z
    .locals 1

    invoke-static {}, Lo/component20;->asInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/NetworkSecurityPolicy;->isCleartextTrafficPermitted()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic onMessageChannelReady(Lo/ContactSyncResponse;J)J
    .locals 0

    iput-wide p1, p0, Lo/ContactSyncResponse;->ICustomTabsCallback$Stub$Proxy:J

    return-wide p1
.end method

.method static synthetic onMessageChannelReady(Lo/ContactSyncResponse;Landroid/content/SharedPreferences;)Landroid/content/SharedPreferences;
    .locals 0

    iput-object p1, p0, Lo/ContactSyncResponse;->ICustomTabsCallback:Landroid/content/SharedPreferences;

    return-object p1
.end method

.method static synthetic onMessageChannelReady(Lo/ContactSyncResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lo/ContactSyncResponse;->newSession:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic onMessageChannelReady(Lo/ContactSyncResponse;)Z
    .locals 0

    iget-boolean p0, p0, Lo/ContactSyncResponse;->postMessage:Z

    return p0
.end method

.method static synthetic onMessageChannelReady(Lo/ContactSyncResponse;Z)Z
    .locals 0

    iput-boolean p1, p0, Lo/ContactSyncResponse;->updateVisuals:Z

    return p1
.end method

.method static synthetic onNavigationEvent(Lo/ContactSyncResponse;J)J
    .locals 0

    iput-wide p1, p0, Lo/ContactSyncResponse;->warmup:J

    return-wide p1
.end method

.method static synthetic onNavigationEvent(Lo/ContactSyncResponse;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lo/ContactSyncResponse;->onTransact:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic onNavigationEvent(Lo/ContactSyncResponse;)Z
    .locals 0

    invoke-static {}, Lo/ContactSyncResponse;->newSession()Z

    move-result p0

    return p0
.end method

.method static synthetic onNavigationEvent(Lo/ContactSyncResponse;Z)Z
    .locals 0

    iput-boolean p1, p0, Lo/ContactSyncResponse;->asBinder:Z

    return p1
.end method

.method static synthetic onPostMessage(Lo/ContactSyncResponse;I)I
    .locals 0

    iput p1, p0, Lo/ContactSyncResponse;->getInterfaceDescriptor:I

    return p1
.end method

.method static synthetic onPostMessage(Lo/ContactSyncResponse;)Landroid/content/SharedPreferences;
    .locals 0

    iget-object p0, p0, Lo/ContactSyncResponse;->ICustomTabsCallback:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static synthetic onPostMessage(Lo/ContactSyncResponse;Z)Z
    .locals 0

    iput-boolean p1, p0, Lo/ContactSyncResponse;->ICustomTabsCallback$Stub:Z

    return p1
.end method

.method static synthetic onRelationshipValidationResult(Lo/ContactSyncResponse;)I
    .locals 0

    iget p0, p0, Lo/ContactSyncResponse;->requestPostMessageChannel:I

    return p0
.end method

.method static synthetic onTransact(Lo/ContactSyncResponse;)Z
    .locals 0

    iget-boolean p0, p0, Lo/ContactSyncResponse;->updateVisuals:Z

    return p0
.end method

.method static synthetic requestPostMessageChannel(Lo/ContactSyncResponse;)Ljava/util/concurrent/CopyOnWriteArraySet;
    .locals 0

    iget-object p0, p0, Lo/ContactSyncResponse;->onNavigationEvent:Ljava/util/concurrent/CopyOnWriteArraySet;

    return-object p0
.end method

.method private final updateVisuals()Landroid/os/Bundle;
    .locals 5

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "listener_registration_bundle"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v1, p0, Lo/ContactSyncResponse;->extraCallback:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    const-string v2, "use_https"

    iget-boolean v3, p0, Lo/ContactSyncResponse;->ICustomTabsCallback$Stub:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "content_url_opted_out"

    iget-boolean v3, p0, Lo/ContactSyncResponse;->postMessage:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "content_vertical_opted_out"

    iget-boolean v3, p0, Lo/ContactSyncResponse;->updateVisuals:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "auto_collect_location"

    iget-boolean v3, p0, Lo/ContactSyncResponse;->onRelationshipValidationResult:Z

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v2, "version_code"

    iget v3, p0, Lo/ContactSyncResponse;->requestPostMessageChannel:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "never_pool_slots"

    iget-object v3, p0, Lo/ContactSyncResponse;->extraCommand:Ljava/util/Set;

    iget-object v4, p0, Lo/ContactSyncResponse;->extraCommand:Ljava/util/Set;

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    const-string v2, "app_settings_json"

    iget-object v3, p0, Lo/ContactSyncResponse;->newSession:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "app_settings_last_update_ms"

    iget-wide v3, p0, Lo/ContactSyncResponse;->ICustomTabsService:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "app_last_background_time_ms"

    iget-wide v3, p0, Lo/ContactSyncResponse;->ICustomTabsCallback$Stub$Proxy:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "request_in_session_count"

    iget v3, p0, Lo/ContactSyncResponse;->getInterfaceDescriptor:I

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "first_ad_req_time_ms"

    iget-wide v3, p0, Lo/ContactSyncResponse;->warmup:J

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "native_advanced_settings"

    iget-object v3, p0, Lo/ContactSyncResponse;->mayLaunchUrl:Lorg/json/JSONObject;

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lo/ContactSyncResponse;->asInterface:Ljava/lang/String;

    if-eqz v2, :cond_0

    const-string v2, "content_url_hashes"

    iget-object v3, p0, Lo/ContactSyncResponse;->asInterface:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v2, p0, Lo/ContactSyncResponse;->onTransact:Ljava/lang/String;

    if-eqz v2, :cond_1

    const-string v2, "content_vertical_hashes"

    iget-object v3, p0, Lo/ContactSyncResponse;->onTransact:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic updateVisuals(Lo/ContactSyncResponse;)Landroid/os/Bundle;
    .locals 0

    invoke-direct {p0}, Lo/ContactSyncResponse;->updateVisuals()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic warmup(Lo/ContactSyncResponse;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lo/ContactSyncResponse;->newSession:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback(I)V
    .locals 3

    invoke-direct {p0}, Lo/ContactSyncResponse;->ICustomTabsService()V

    iget-object v0, p0, Lo/ContactSyncResponse;->extraCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lo/ContactSyncResponse;->getInterfaceDescriptor:I

    if-ne v1, p1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iput p1, p0, Lo/ContactSyncResponse;->getInterfaceDescriptor:I

    iget-object v1, p0, Lo/ContactSyncResponse;->onPostMessage:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/ContactSyncResponse;->onPostMessage:Landroid/content/SharedPreferences$Editor;

    const-string v2, "request_in_session_count"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lo/ContactSyncResponse;->onPostMessage:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "request_in_session_count"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Lo/ContactSyncResponse;->ICustomTabsCallback(Landroid/os/Bundle;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final ICustomTabsCallback(J)V
    .locals 4

    invoke-direct {p0}, Lo/ContactSyncResponse;->ICustomTabsService()V

    iget-object v0, p0, Lo/ContactSyncResponse;->extraCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lo/ContactSyncResponse;->ICustomTabsCallback$Stub$Proxy:J

    cmp-long v3, v1, p1

    if-nez v3, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iput-wide p1, p0, Lo/ContactSyncResponse;->ICustomTabsCallback$Stub$Proxy:J

    iget-object v1, p0, Lo/ContactSyncResponse;->onPostMessage:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/ContactSyncResponse;->onPostMessage:Landroid/content/SharedPreferences$Editor;

    const-string v2, "app_last_background_time_ms"

    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lo/ContactSyncResponse;->onPostMessage:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "app_last_background_time_ms"

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-direct {p0, v1}, Lo/ContactSyncResponse;->ICustomTabsCallback(Landroid/os/Bundle;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final ICustomTabsCallback(Landroid/content/Context;)V
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :goto_0
    new-instance v0, Lo/ContactSyncResponseJsonAdapter;

    invoke-direct {v0, p0, p1}, Lo/ContactSyncResponseJsonAdapter;-><init>(Lo/ContactSyncResponse;Landroid/content/Context;)V

    invoke-virtual {v0}, Lo/ContactReverseSyncResponse;->s_()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/PaymentModeListResponseJsonAdapter;

    iput-object p1, p0, Lo/ContactSyncResponse;->onMessageChannelReady:Lo/PaymentModeListResponseJsonAdapter;

    return-void
.end method

.method public final ICustomTabsCallback(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lo/ContactSyncResponse;->ICustomTabsService()V

    iget-object v0, p0, Lo/ContactSyncResponse;->extraCallback:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_2

    :try_start_0
    iget-object v1, p0, Lo/ContactSyncResponse;->asInterface:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lo/ContactSyncResponse;->asInterface:Ljava/lang/String;

    iget-object v1, p0, Lo/ContactSyncResponse;->onPostMessage:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/ContactSyncResponse;->onPostMessage:Landroid/content/SharedPreferences$Editor;

    const-string v2, "content_url_hashes"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lo/ContactSyncResponse;->onPostMessage:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "content_url_hashes"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lo/ContactSyncResponse;->ICustomTabsCallback(Landroid/os/Bundle;)V

    monitor-exit v0

    return-void

    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final ICustomTabsCallback(Z)V
    .locals 3

    invoke-direct {p0}, Lo/ContactSyncResponse;->ICustomTabsService()V

    iget-object v0, p0, Lo/ContactSyncResponse;->extraCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lo/ContactSyncResponse;->updateVisuals:Z

    if-ne v1, p1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iput-boolean p1, p0, Lo/ContactSyncResponse;->updateVisuals:Z

    iget-object v1, p0, Lo/ContactSyncResponse;->onPostMessage:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/ContactSyncResponse;->onPostMessage:Landroid/content/SharedPreferences$Editor;

    const-string v2, "content_vertical_opted_out"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lo/ContactSyncResponse;->onPostMessage:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "content_url_opted_out"

    iget-boolean v2, p0, Lo/ContactSyncResponse;->postMessage:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "content_vertical_opted_out"

    iget-boolean v2, p0, Lo/ContactSyncResponse;->updateVisuals:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-direct {p0, p1}, Lo/ContactSyncResponse;->ICustomTabsCallback(Landroid/os/Bundle;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final ICustomTabsCallback()Z
    .locals 2

    invoke-direct {p0}, Lo/ContactSyncResponse;->ICustomTabsService()V

    iget-object v0, p0, Lo/ContactSyncResponse;->extraCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lo/ContactSyncResponse;->postMessage:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final ICustomTabsCallback$Stub()I
    .locals 2

    invoke-direct {p0}, Lo/ContactSyncResponse;->ICustomTabsService()V

    iget-object v0, p0, Lo/ContactSyncResponse;->extraCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lo/ContactSyncResponse;->getInterfaceDescriptor:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final ICustomTabsCallback$Stub$Proxy()V
    .locals 4

    invoke-direct {p0}, Lo/ContactSyncResponse;->ICustomTabsService()V

    iget-object v0, p0, Lo/ContactSyncResponse;->extraCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    iput-object v1, p0, Lo/ContactSyncResponse;->mayLaunchUrl:Lorg/json/JSONObject;

    iget-object v1, p0, Lo/ContactSyncResponse;->onPostMessage:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/ContactSyncResponse;->onPostMessage:Landroid/content/SharedPreferences$Editor;

    const-string v2, "native_advanced_settings"

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lo/ContactSyncResponse;->onPostMessage:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "native_advanced_settings"

    const-string v3, "{}"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lo/ContactSyncResponse;->ICustomTabsCallback(Landroid/os/Bundle;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final asBinder()Lo/GreetingCampaignCodeRequestJsonAdapter;
    .locals 5

    invoke-direct {p0}, Lo/ContactSyncResponse;->ICustomTabsService()V

    iget-object v0, p0, Lo/ContactSyncResponse;->extraCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lo/GreetingCampaignCodeRequestJsonAdapter;

    iget-object v2, p0, Lo/ContactSyncResponse;->newSession:Ljava/lang/String;

    iget-wide v3, p0, Lo/ContactSyncResponse;->ICustomTabsService:J

    invoke-direct {v1, v2, v3, v4}, Lo/GreetingCampaignCodeRequestJsonAdapter;-><init>(Ljava/lang/String;J)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final asInterface()J
    .locals 3

    invoke-direct {p0}, Lo/ContactSyncResponse;->ICustomTabsService()V

    iget-object v0, p0, Lo/ContactSyncResponse;->extraCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lo/ContactSyncResponse;->ICustomTabsCallback$Stub$Proxy:J

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final extraCallback(J)V
    .locals 4

    invoke-direct {p0}, Lo/ContactSyncResponse;->ICustomTabsService()V

    iget-object v0, p0, Lo/ContactSyncResponse;->extraCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lo/ContactSyncResponse;->warmup:J

    cmp-long v3, v1, p1

    if-nez v3, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iput-wide p1, p0, Lo/ContactSyncResponse;->warmup:J

    iget-object v1, p0, Lo/ContactSyncResponse;->onPostMessage:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/ContactSyncResponse;->onPostMessage:Landroid/content/SharedPreferences$Editor;

    const-string v2, "first_ad_req_time_ms"

    invoke-interface {v1, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lo/ContactSyncResponse;->onPostMessage:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "first_ad_req_time_ms"

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-direct {p0, v1}, Lo/ContactSyncResponse;->ICustomTabsCallback(Landroid/os/Bundle;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final extraCallback(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0}, Lo/ContactSyncResponse;->ICustomTabsService()V

    iget-object v0, p0, Lo/ContactSyncResponse;->extraCallback:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_2

    :try_start_0
    iget-object v1, p0, Lo/ContactSyncResponse;->onTransact:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lo/ContactSyncResponse;->onTransact:Ljava/lang/String;

    iget-object v1, p0, Lo/ContactSyncResponse;->onPostMessage:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/ContactSyncResponse;->onPostMessage:Landroid/content/SharedPreferences$Editor;

    const-string v2, "content_vertical_hashes"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lo/ContactSyncResponse;->onPostMessage:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "content_vertical_hashes"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lo/ContactSyncResponse;->ICustomTabsCallback(Landroid/os/Bundle;)V

    monitor-exit v0

    return-void

    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final extraCallback(Z)V
    .locals 3

    invoke-direct {p0}, Lo/ContactSyncResponse;->ICustomTabsService()V

    iget-object v0, p0, Lo/ContactSyncResponse;->extraCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lo/ContactSyncResponse;->postMessage:Z

    if-ne v1, p1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iput-boolean p1, p0, Lo/ContactSyncResponse;->postMessage:Z

    iget-object v1, p0, Lo/ContactSyncResponse;->onPostMessage:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/ContactSyncResponse;->onPostMessage:Landroid/content/SharedPreferences$Editor;

    const-string v2, "content_url_opted_out"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lo/ContactSyncResponse;->onPostMessage:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "content_url_opted_out"

    iget-boolean v2, p0, Lo/ContactSyncResponse;->postMessage:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "content_vertical_opted_out"

    iget-boolean v2, p0, Lo/ContactSyncResponse;->updateVisuals:Z

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-direct {p0, p1}, Lo/ContactSyncResponse;->ICustomTabsCallback(Landroid/os/Bundle;)V

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

    invoke-direct {p0}, Lo/ContactSyncResponse;->ICustomTabsService()V

    iget-object v0, p0, Lo/ContactSyncResponse;->extraCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lo/ContactSyncResponse;->ICustomTabsCallback$Stub:Z

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lo/ContactSyncResponse;->asBinder:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final getInterfaceDescriptor()Lorg/json/JSONObject;
    .locals 2

    invoke-direct {p0}, Lo/ContactSyncResponse;->ICustomTabsService()V

    iget-object v0, p0, Lo/ContactSyncResponse;->extraCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/ContactSyncResponse;->mayLaunchUrl:Lorg/json/JSONObject;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final onMessageChannelReady()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lo/ContactSyncResponse;->ICustomTabsService()V

    iget-object v0, p0, Lo/ContactSyncResponse;->extraCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/ContactSyncResponse;->onTransact:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final onMessageChannelReady(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Lo/ContactSyncResponse;->ICustomTabsService()V

    iget-object v0, p0, Lo/ContactSyncResponse;->extraCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/ContactSyncResponse;->extraCommand:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lo/ContactSyncResponse;->extraCommand:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lo/ContactSyncResponse;->onPostMessage:Landroid/content/SharedPreferences$Editor;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lo/ContactSyncResponse;->onPostMessage:Landroid/content/SharedPreferences$Editor;

    const-string v1, "never_pool_slots"

    iget-object v2, p0, Lo/ContactSyncResponse;->extraCommand:Ljava/util/Set;

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lo/ContactSyncResponse;->onPostMessage:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "never_pool_slots"

    iget-object v2, p0, Lo/ContactSyncResponse;->extraCommand:Ljava/util/Set;

    iget-object v3, p0, Lo/ContactSyncResponse;->extraCommand:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lo/ContactSyncResponse;->ICustomTabsCallback(Landroid/os/Bundle;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onMessageChannelReady(Z)V
    .locals 3

    invoke-direct {p0}, Lo/ContactSyncResponse;->ICustomTabsService()V

    iget-object v0, p0, Lo/ContactSyncResponse;->extraCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lo/ContactSyncResponse;->ICustomTabsCallback$Stub:Z

    if-ne v1, p1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iput-boolean p1, p0, Lo/ContactSyncResponse;->ICustomTabsCallback$Stub:Z

    iget-object v1, p0, Lo/ContactSyncResponse;->onPostMessage:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/ContactSyncResponse;->onPostMessage:Landroid/content/SharedPreferences$Editor;

    const-string v2, "use_https"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lo/ContactSyncResponse;->onPostMessage:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    iget-boolean v1, p0, Lo/ContactSyncResponse;->asBinder:Z

    if-nez v1, :cond_2

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "use_https"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-direct {p0, v1}, Lo/ContactSyncResponse;->ICustomTabsCallback(Landroid/os/Bundle;)V

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onNavigationEvent()Ljava/lang/String;
    .locals 2

    invoke-direct {p0}, Lo/ContactSyncResponse;->ICustomTabsService()V

    iget-object v0, p0, Lo/ContactSyncResponse;->extraCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/ContactSyncResponse;->asInterface:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final onNavigationEvent(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0}, Lo/ContactSyncResponse;->ICustomTabsService()V

    iget-object v0, p0, Lo/ContactSyncResponse;->extraCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/ContactSyncResponse;->extraCommand:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lo/ContactSyncResponse;->extraCommand:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lo/ContactSyncResponse;->onPostMessage:Landroid/content/SharedPreferences$Editor;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lo/ContactSyncResponse;->onPostMessage:Landroid/content/SharedPreferences$Editor;

    const-string v1, "never_pool_slots"

    iget-object v2, p0, Lo/ContactSyncResponse;->extraCommand:Ljava/util/Set;

    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lo/ContactSyncResponse;->onPostMessage:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v1, "never_pool_slots"

    iget-object v2, p0, Lo/ContactSyncResponse;->extraCommand:Ljava/util/Set;

    iget-object v3, p0, Lo/ContactSyncResponse;->extraCommand:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lo/ContactSyncResponse;->ICustomTabsCallback(Landroid/os/Bundle;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onNavigationEvent(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 7

    invoke-direct {p0}, Lo/ContactSyncResponse;->ICustomTabsService()V

    iget-object v0, p0, Lo/ContactSyncResponse;->extraCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/ContactSyncResponse;->mayLaunchUrl:Lorg/json/JSONObject;

    invoke-virtual {v1, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_4

    invoke-virtual {v1, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    if-nez v5, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    const-string v6, "template_id"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    const/4 v2, 0x1

    if-ne p3, v2, :cond_2

    const-string v2, "uses_media_view"

    invoke-virtual {v5, v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-ne v2, p3, :cond_2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    :try_start_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "template_id"

    invoke-virtual {v3, v4, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p2, "uses_media_view"

    invoke-virtual {v3, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p2, "timestamp_ms"

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object p3

    invoke-interface {p3}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide v4

    invoke-virtual {v3, p2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONArray;->put(ILjava/lang/Object;)Lorg/json/JSONArray;

    iget-object p2, p0, Lo/ContactSyncResponse;->mayLaunchUrl:Lorg/json/JSONObject;

    invoke-virtual {p2, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_2
    const-string p2, "Could not update native advanced settings"

    invoke-static {p2, p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    iget-object p1, p0, Lo/ContactSyncResponse;->onPostMessage:Landroid/content/SharedPreferences$Editor;

    if-eqz p1, :cond_5

    iget-object p1, p0, Lo/ContactSyncResponse;->onPostMessage:Landroid/content/SharedPreferences$Editor;

    const-string p2, "native_advanced_settings"

    iget-object p3, p0, Lo/ContactSyncResponse;->mayLaunchUrl:Lorg/json/JSONObject;

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object p1, p0, Lo/ContactSyncResponse;->onPostMessage:Landroid/content/SharedPreferences$Editor;

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_5
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "native_advanced_settings"

    iget-object p3, p0, Lo/ContactSyncResponse;->mayLaunchUrl:Lorg/json/JSONObject;

    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lo/ContactSyncResponse;->ICustomTabsCallback(Landroid/os/Bundle;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final onNavigationEvent(Lo/AuthProviderJsonAdapter;)V
    .locals 2

    iget-object v0, p0, Lo/ContactSyncResponse;->extraCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/ContactSyncResponse;->onMessageChannelReady:Lo/PaymentModeListResponseJsonAdapter;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/ContactSyncResponse;->onMessageChannelReady:Lo/PaymentModeListResponseJsonAdapter;

    invoke-interface {v1}, Lo/PaymentModeListResponseJsonAdapter;->isDone()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lo/ContactSyncResponse;->updateVisuals()Landroid/os/Bundle;

    move-result-object v1

    invoke-interface {p1, v1}, Lo/AuthProviderJsonAdapter;->onNavigationEvent(Landroid/os/Bundle;)V

    :cond_0
    iget-object v1, p0, Lo/ContactSyncResponse;->onNavigationEvent:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onPostMessage(I)V
    .locals 3

    invoke-direct {p0}, Lo/ContactSyncResponse;->ICustomTabsService()V

    iget-object v0, p0, Lo/ContactSyncResponse;->extraCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lo/ContactSyncResponse;->requestPostMessageChannel:I

    if-ne v1, p1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iput p1, p0, Lo/ContactSyncResponse;->requestPostMessageChannel:I

    iget-object v1, p0, Lo/ContactSyncResponse;->onPostMessage:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/ContactSyncResponse;->onPostMessage:Landroid/content/SharedPreferences$Editor;

    const-string v2, "version_code"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lo/ContactSyncResponse;->onPostMessage:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "version_code"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-direct {p0, v1}, Lo/ContactSyncResponse;->ICustomTabsCallback(Landroid/os/Bundle;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onPostMessage(Z)V
    .locals 3

    invoke-direct {p0}, Lo/ContactSyncResponse;->ICustomTabsService()V

    iget-object v0, p0, Lo/ContactSyncResponse;->extraCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lo/ContactSyncResponse;->onRelationshipValidationResult:Z

    if-ne v1, p1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iput-boolean p1, p0, Lo/ContactSyncResponse;->onRelationshipValidationResult:Z

    iget-object v1, p0, Lo/ContactSyncResponse;->onPostMessage:Landroid/content/SharedPreferences$Editor;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/ContactSyncResponse;->onPostMessage:Landroid/content/SharedPreferences$Editor;

    const-string v2, "auto_collect_location"

    invoke-interface {v1, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    iget-object v1, p0, Lo/ContactSyncResponse;->onPostMessage:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "auto_collect_location"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-direct {p0, v1}, Lo/ContactSyncResponse;->ICustomTabsCallback(Landroid/os/Bundle;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onPostMessage()Z
    .locals 2

    invoke-direct {p0}, Lo/ContactSyncResponse;->ICustomTabsService()V

    iget-object v0, p0, Lo/ContactSyncResponse;->extraCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lo/ContactSyncResponse;->updateVisuals:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final onPostMessage(Ljava/lang/String;)Z
    .locals 2

    invoke-direct {p0}, Lo/ContactSyncResponse;->ICustomTabsService()V

    iget-object v0, p0, Lo/ContactSyncResponse;->extraCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/ContactSyncResponse;->extraCommand:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onRelationshipValidationResult(Ljava/lang/String;)V
    .locals 5

    invoke-direct {p0}, Lo/ContactSyncResponse;->ICustomTabsService()V

    iget-object v0, p0, Lo/ContactSyncResponse;->extraCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lo/getParcel;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v1

    invoke-interface {v1}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide v1

    iput-wide v1, p0, Lo/ContactSyncResponse;->ICustomTabsService:J

    if-eqz p1, :cond_2

    iget-object v3, p0, Lo/ContactSyncResponse;->newSession:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lo/ContactSyncResponse;->newSession:Ljava/lang/String;

    iget-object v3, p0, Lo/ContactSyncResponse;->onPostMessage:Landroid/content/SharedPreferences$Editor;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lo/ContactSyncResponse;->onPostMessage:Landroid/content/SharedPreferences$Editor;

    const-string v4, "app_settings_json"

    invoke-interface {v3, v4, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Lo/ContactSyncResponse;->onPostMessage:Landroid/content/SharedPreferences$Editor;

    const-string v4, "app_settings_last_update_ms"

    invoke-interface {v3, v4, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    iget-object v3, p0, Lo/ContactSyncResponse;->onPostMessage:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_1
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "app_settings_json"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "app_settings_last_update_ms"

    invoke-virtual {v3, p1, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-direct {p0, v3}, Lo/ContactSyncResponse;->ICustomTabsCallback(Landroid/os/Bundle;)V

    monitor-exit v0

    return-void

    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onRelationshipValidationResult()Z
    .locals 2

    invoke-direct {p0}, Lo/ContactSyncResponse;->ICustomTabsService()V

    iget-object v0, p0, Lo/ContactSyncResponse;->extraCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lo/ContactSyncResponse;->onRelationshipValidationResult:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final onTransact()I
    .locals 2

    invoke-direct {p0}, Lo/ContactSyncResponse;->ICustomTabsService()V

    iget-object v0, p0, Lo/ContactSyncResponse;->extraCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lo/ContactSyncResponse;->requestPostMessageChannel:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final warmup()J
    .locals 3

    invoke-direct {p0}, Lo/ContactSyncResponse;->ICustomTabsService()V

    iget-object v0, p0, Lo/ContactSyncResponse;->extraCallback:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lo/ContactSyncResponse;->warmup:J

    monitor-exit v0

    return-wide v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
