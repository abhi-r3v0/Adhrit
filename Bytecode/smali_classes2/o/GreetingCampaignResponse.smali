.class final Lo/GreetingCampaignResponse;
.super Lo/ContactReverseSyncResponse;


# instance fields
.field private final synthetic onNavigationEvent:Lo/GreetingCampaignInvitesResponseJsonAdapter;


# direct methods
.method constructor <init>(Lo/GreetingCampaignInvitesResponseJsonAdapter;)V
    .locals 0

    iput-object p1, p0, Lo/GreetingCampaignResponse;->onNavigationEvent:Lo/GreetingCampaignInvitesResponseJsonAdapter;

    invoke-direct {p0}, Lo/ContactReverseSyncResponse;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 0

    return-void
.end method

.method public final onPostMessage()V
    .locals 3

    new-instance v0, Lo/ZeroSpinsLeftMeta;

    iget-object v1, p0, Lo/GreetingCampaignResponse;->onNavigationEvent:Lo/GreetingCampaignInvitesResponseJsonAdapter;

    invoke-static {v1}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->onNavigationEvent(Lo/GreetingCampaignInvitesResponseJsonAdapter;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lo/GreetingCampaignResponse;->onNavigationEvent:Lo/GreetingCampaignInvitesResponseJsonAdapter;

    invoke-static {v2}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->extraCallback(Lo/GreetingCampaignInvitesResponseJsonAdapter;)Lo/DataListJsonAdapter;

    move-result-object v2

    iget-object v2, v2, Lo/DataListJsonAdapter;->extraCallback:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lo/ZeroSpinsLeftMeta;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lo/GreetingCampaignResponse;->onNavigationEvent:Lo/GreetingCampaignInvitesResponseJsonAdapter;

    invoke-static {v1}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->ICustomTabsCallback(Lo/GreetingCampaignInvitesResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lo/getParcel;->getInterfaceDescriptor()Lo/SpinTheWheelFragment$reset$$inlined$executeOnResume$1;

    iget-object v2, p0, Lo/GreetingCampaignResponse;->onNavigationEvent:Lo/GreetingCampaignInvitesResponseJsonAdapter;

    invoke-static {v2}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->onPostMessage(Lo/GreetingCampaignInvitesResponseJsonAdapter;)Lo/ZeroSpinsLeftMetaJsonAdapter;

    move-result-object v2

    invoke-static {v2, v0}, Lo/SpinTheWheelFragment$reset$$inlined$executeOnResume$1;->extraCallback(Lo/ZeroSpinsLeftMetaJsonAdapter;Lo/ZeroSpinsLeftMeta;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "Cannot config CSI reporter."

    invoke-static {v2, v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
