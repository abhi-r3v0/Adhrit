.class public final Lo/GreetingCardCreativeJsonAdapter;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private ICustomTabsCallback:J

.field private ICustomTabsCallback$Stub:I

.field private final asInterface:Ljava/lang/Object;

.field extraCallback:I

.field private onMessageChannelReady:J

.field private onNavigationEvent:J

.field private onPostMessage:I

.field private onRelationshipValidationResult:I

.field private final onTransact:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lo/GreetingCardCreativeJsonAdapter;->onNavigationEvent:J

    iput-wide v0, p0, Lo/GreetingCardCreativeJsonAdapter;->ICustomTabsCallback:J

    const/4 v0, -0x1

    iput v0, p0, Lo/GreetingCardCreativeJsonAdapter;->onPostMessage:I

    iput v0, p0, Lo/GreetingCardCreativeJsonAdapter;->extraCallback:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lo/GreetingCardCreativeJsonAdapter;->onMessageChannelReady:J

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/GreetingCardCreativeJsonAdapter;->asInterface:Ljava/lang/Object;

    const/4 v0, 0x0

    iput v0, p0, Lo/GreetingCardCreativeJsonAdapter;->onRelationshipValidationResult:I

    iput v0, p0, Lo/GreetingCardCreativeJsonAdapter;->ICustomTabsCallback$Stub:I

    iput-object p1, p0, Lo/GreetingCardCreativeJsonAdapter;->onTransact:Ljava/lang/String;

    return-void
.end method

.method private static onNavigationEvent(Landroid/content/Context;)Z
    .locals 6

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "Theme.Translucent"

    const-string v2, "style"

    const-string v3, "android"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const-string v1, "Please set theme of AdActivity to @android:style/Theme.Translucent to enable transparent background interstitial ad."

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/String;)V

    return v2

    :cond_0
    new-instance v3, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.google.android.gms.ads.AdActivity"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v3, v2}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ActivityInfo;->theme:I

    if-ne v0, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-static {v1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return v2

    :catch_0
    const-string p0, "Fail to fetch AdActivity theme"

    invoke-static {p0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    invoke-static {v1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/String;)V

    return v2
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 5

    iget-object v0, p0, Lo/GreetingCardCreativeJsonAdapter;->asInterface:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "session_id"

    iget-object v3, p0, Lo/GreetingCardCreativeJsonAdapter;->onTransact:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "basets"

    iget-wide v3, p0, Lo/GreetingCardCreativeJsonAdapter;->ICustomTabsCallback:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "currts"

    iget-wide v3, p0, Lo/GreetingCardCreativeJsonAdapter;->onNavigationEvent:J

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v2, "seq_num"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "preqs"

    iget v2, p0, Lo/GreetingCardCreativeJsonAdapter;->onPostMessage:I

    invoke-virtual {v1, p2, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "preqs_in_session"

    iget v2, p0, Lo/GreetingCardCreativeJsonAdapter;->extraCallback:I

    invoke-virtual {v1, p2, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "time_in_session"

    iget-wide v2, p0, Lo/GreetingCardCreativeJsonAdapter;->onMessageChannelReady:J

    invoke-virtual {v1, p2, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string p2, "pclick"

    iget v2, p0, Lo/GreetingCardCreativeJsonAdapter;->onRelationshipValidationResult:I

    invoke-virtual {v1, p2, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "pimp"

    iget v2, p0, Lo/GreetingCardCreativeJsonAdapter;->ICustomTabsCallback$Stub:I

    invoke-virtual {v1, p2, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p2, "support_transparent_background"

    invoke-static {p1}, Lo/GreetingCardCreativeJsonAdapter;->onNavigationEvent(Landroid/content/Context;)Z

    move-result p1

    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onMessageChannelReady()V
    .locals 2

    iget-object v0, p0, Lo/GreetingCardCreativeJsonAdapter;->asInterface:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lo/GreetingCardCreativeJsonAdapter;->onRelationshipValidationResult:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lo/GreetingCardCreativeJsonAdapter;->onRelationshipValidationResult:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final onNavigationEvent()V
    .locals 2

    iget-object v0, p0, Lo/GreetingCardCreativeJsonAdapter;->asInterface:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lo/GreetingCardCreativeJsonAdapter;->ICustomTabsCallback$Stub:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lo/GreetingCardCreativeJsonAdapter;->ICustomTabsCallback$Stub:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final onNavigationEvent(Lo/setLastItem;J)V
    .locals 10

    iget-object v0, p0, Lo/GreetingCardCreativeJsonAdapter;->asInterface:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->getInterfaceDescriptor()Lo/ContactSyncResponse;

    move-result-object v1

    invoke-virtual {v1}, Lo/ContactSyncResponse;->asInterface()J

    move-result-wide v1

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback$Stub$Proxy()Lo/component15;

    move-result-object v3

    invoke-interface {v3}, Lo/component15;->ICustomTabsCallback()J

    move-result-wide v3

    iget-wide v5, p0, Lo/GreetingCardCreativeJsonAdapter;->ICustomTabsCallback:J

    const-wide/16 v7, -0x1

    cmp-long v9, v5, v7

    if-nez v9, :cond_1

    sub-long v1, v3, v1

    sget-object v5, Lo/WinningTypes;->MediaBrowserCompat$MediaBrowserImplApi21$5:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v6

    invoke-virtual {v6, v5}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v7, v1, v5

    if-lez v7, :cond_0

    const/4 v1, -0x1

    iput v1, p0, Lo/GreetingCardCreativeJsonAdapter;->extraCallback:I

    goto :goto_0

    :cond_0
    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->getInterfaceDescriptor()Lo/ContactSyncResponse;

    move-result-object v1

    invoke-virtual {v1}, Lo/ContactSyncResponse;->ICustomTabsCallback$Stub()I

    move-result v1

    iput v1, p0, Lo/GreetingCardCreativeJsonAdapter;->extraCallback:I

    :goto_0
    iput-wide p2, p0, Lo/GreetingCardCreativeJsonAdapter;->ICustomTabsCallback:J

    :cond_1
    iput-wide p2, p0, Lo/GreetingCardCreativeJsonAdapter;->onNavigationEvent:J

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    iget-object p3, p1, Lo/setLastItem;->extraCallback:Landroid/os/Bundle;

    if-eqz p3, :cond_2

    iget-object p1, p1, Lo/setLastItem;->extraCallback:Landroid/os/Bundle;

    const-string p3, "gw"

    const/4 v1, 0x2

    invoke-virtual {p1, p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    if-ne p1, p2, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    iget p1, p0, Lo/GreetingCardCreativeJsonAdapter;->onPostMessage:I

    add-int/2addr p1, p2

    iput p1, p0, Lo/GreetingCardCreativeJsonAdapter;->onPostMessage:I

    iget p1, p0, Lo/GreetingCardCreativeJsonAdapter;->extraCallback:I

    add-int/2addr p1, p2

    iput p1, p0, Lo/GreetingCardCreativeJsonAdapter;->extraCallback:I

    if-nez p1, :cond_3

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lo/GreetingCardCreativeJsonAdapter;->onMessageChannelReady:J

    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->getInterfaceDescriptor()Lo/ContactSyncResponse;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Lo/ContactSyncResponse;->extraCallback(J)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->getInterfaceDescriptor()Lo/ContactSyncResponse;

    move-result-object p1

    invoke-virtual {p1}, Lo/ContactSyncResponse;->warmup()J

    move-result-wide p1

    sub-long/2addr v3, p1

    iput-wide v3, p0, Lo/GreetingCardCreativeJsonAdapter;->onMessageChannelReady:J

    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
