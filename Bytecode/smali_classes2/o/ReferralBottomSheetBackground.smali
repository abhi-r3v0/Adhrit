.class final Lo/ReferralBottomSheetBackground;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# instance fields
.field private ICustomTabsCallback:Landroid/content/Context;

.field private final ICustomTabsCallback$Stub:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/RedeemRequestDataJsonAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private asBinder:Ljava/lang/Runnable;

.field private final asInterface:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/TimerJsonAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private extraCallback:Z

.field private final onMessageChannelReady:Ljava/lang/Object;

.field private onNavigationEvent:Z

.field private onPostMessage:Landroid/app/Activity;

.field private onRelationshipValidationResult:Z

.field private onTransact:J


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/ReferralBottomSheetBackground;->onMessageChannelReady:Ljava/lang/Object;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/ReferralBottomSheetBackground;->onNavigationEvent:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ReferralBottomSheetBackground;->extraCallback:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lo/ReferralBottomSheetBackground;->ICustomTabsCallback$Stub:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lo/ReferralBottomSheetBackground;->asInterface:Ljava/util/List;

    iput-boolean v0, p0, Lo/ReferralBottomSheetBackground;->onRelationshipValidationResult:Z

    return-void
.end method

.method static synthetic ICustomTabsCallback(Lo/ReferralBottomSheetBackground;)Z
    .locals 0

    iget-boolean p0, p0, Lo/ReferralBottomSheetBackground;->onNavigationEvent:Z

    return p0
.end method

.method private final extraCallback(Landroid/app/Activity;)V
    .locals 3

    iget-object v0, p0, Lo/ReferralBottomSheetBackground;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.google.android.gms.ads"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iput-object p1, p0, Lo/ReferralBottomSheetBackground;->onPostMessage:Landroid/app/Activity;

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

.method static synthetic onMessageChannelReady(Lo/ReferralBottomSheetBackground;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lo/ReferralBottomSheetBackground;->ICustomTabsCallback$Stub:Ljava/util/List;

    return-object p0
.end method

.method static synthetic onNavigationEvent(Lo/ReferralBottomSheetBackground;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lo/ReferralBottomSheetBackground;->onMessageChannelReady:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic onPostMessage(Lo/ReferralBottomSheetBackground;)Z
    .locals 0

    iget-boolean p0, p0, Lo/ReferralBottomSheetBackground;->extraCallback:Z

    return p0
.end method

.method static synthetic onPostMessage(Lo/ReferralBottomSheetBackground;Z)Z
    .locals 0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lo/ReferralBottomSheetBackground;->onNavigationEvent:Z

    return p1
.end method


# virtual methods
.method public final ICustomTabsCallback()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lo/ReferralBottomSheetBackground;->ICustomTabsCallback:Landroid/content/Context;

    return-object v0
.end method

.method public final extraCallback(Landroid/app/Application;Landroid/content/Context;)V
    .locals 1

    iget-boolean v0, p0, Lo/ReferralBottomSheetBackground;->onRelationshipValidationResult:Z

    if-nez v0, :cond_1

    invoke-virtual {p1, p0}, Landroid/app/Application;->registerActivityLifecycleCallbacks(Landroid/app/Application$ActivityLifecycleCallbacks;)V

    instance-of v0, p2, Landroid/app/Activity;

    if-eqz v0, :cond_0

    check-cast p2, Landroid/app/Activity;

    invoke-direct {p0, p2}, Lo/ReferralBottomSheetBackground;->extraCallback(Landroid/app/Activity;)V

    :cond_0
    iput-object p1, p0, Lo/ReferralBottomSheetBackground;->ICustomTabsCallback:Landroid/content/Context;

    sget-object p1, Lo/WinningTypes;->MediaBrowserCompat$MediaBrowserImplApi26:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iput-wide p1, p0, Lo/ReferralBottomSheetBackground;->onTransact:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Lo/ReferralBottomSheetBackground;->onRelationshipValidationResult:Z

    :cond_1
    return-void
.end method

.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 5

    iget-object v0, p0, Lo/ReferralBottomSheetBackground;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/ReferralBottomSheetBackground;->onPostMessage:Landroid/app/Activity;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lo/ReferralBottomSheetBackground;->onPostMessage:Landroid/app/Activity;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-object v1, p0, Lo/ReferralBottomSheetBackground;->onPostMessage:Landroid/app/Activity;

    :cond_1
    iget-object v1, p0, Lo/ReferralBottomSheetBackground;->asInterface:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/TimerJsonAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v2, p1}, Lo/TimerJsonAdapter;->extraCallback(Landroid/app/Activity;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object v3

    const-string v4, "AppActivityTracker.ActivityListener.onActivityDestroyed"

    invoke-virtual {v3, v2, v4}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->onMessageChannelReady(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v3, ""

    invoke-static {v3, v2}, Lo/getText1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 5

    invoke-direct {p0, p1}, Lo/ReferralBottomSheetBackground;->extraCallback(Landroid/app/Activity;)V

    iget-object v0, p0, Lo/ReferralBottomSheetBackground;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/ReferralBottomSheetBackground;->asInterface:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/TimerJsonAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v2, p1}, Lo/TimerJsonAdapter;->ICustomTabsCallback(Landroid/app/Activity;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_2
    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object v3

    const-string v4, "AppActivityTracker.ActivityListener.onActivityPaused"

    invoke-virtual {v3, v2, v4}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->onMessageChannelReady(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v3, ""

    invoke-static {v3, v2}, Lo/getText1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lo/ReferralBottomSheetBackground;->extraCallback:Z

    iget-object p1, p0, Lo/ReferralBottomSheetBackground;->asBinder:Ljava/lang/Runnable;

    if-eqz p1, :cond_1

    sget-object p1, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    iget-object v0, p0, Lo/ReferralBottomSheetBackground;->asBinder:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    sget-object p1, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    new-instance v0, Lo/RedeemRequestResponse;

    invoke-direct {v0, p0}, Lo/RedeemRequestResponse;-><init>(Lo/ReferralBottomSheetBackground;)V

    iput-object v0, p0, Lo/ReferralBottomSheetBackground;->asBinder:Ljava/lang/Runnable;

    iget-wide v1, p0, Lo/ReferralBottomSheetBackground;->onTransact:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 7

    invoke-direct {p0, p1}, Lo/ReferralBottomSheetBackground;->extraCallback(Landroid/app/Activity;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/ReferralBottomSheetBackground;->extraCallback:Z

    iget-boolean v0, p0, Lo/ReferralBottomSheetBackground;->onNavigationEvent:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    iput-boolean v1, p0, Lo/ReferralBottomSheetBackground;->onNavigationEvent:Z

    iget-object v2, p0, Lo/ReferralBottomSheetBackground;->asBinder:Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    sget-object v2, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    iget-object v3, p0, Lo/ReferralBottomSheetBackground;->asBinder:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object v2, p0, Lo/ReferralBottomSheetBackground;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lo/ReferralBottomSheetBackground;->asInterface:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/TimerJsonAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v4, p1}, Lo/TimerJsonAdapter;->onMessageChannelReady(Landroid/app/Activity;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_2
    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object v5

    const-string v6, "AppActivityTracker.ActivityListener.onActivityResumed"

    invoke-virtual {v5, v4, v6}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->onMessageChannelReady(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v5, ""

    invoke-static {v5, v4}, Lo/getText1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    iget-object p1, p0, Lo/ReferralBottomSheetBackground;->ICustomTabsCallback$Stub:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/RedeemRequestDataJsonAdapter;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-interface {v0, v1}, Lo/RedeemRequestDataJsonAdapter;->onNavigationEvent(Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    :try_start_4
    const-string v3, ""

    invoke-static {v3, v0}, Lo/getText1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    const-string p1, "App is still foreground."

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;)V

    :cond_3
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p1
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/ReferralBottomSheetBackground;->extraCallback(Landroid/app/Activity;)V

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onMessageChannelReady(Lo/RedeemRequestDataJsonAdapter;)V
    .locals 2

    iget-object v0, p0, Lo/ReferralBottomSheetBackground;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/ReferralBottomSheetBackground;->ICustomTabsCallback$Stub:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onPostMessage()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lo/ReferralBottomSheetBackground;->onPostMessage:Landroid/app/Activity;

    return-object v0
.end method
