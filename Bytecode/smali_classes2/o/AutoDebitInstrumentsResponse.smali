.class final Lo/AutoDebitInstrumentsResponse;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ICustomTabsCallback:Lo/setCardBackgroundView;

.field private final synthetic extraCallback:Lo/LinkCampaignResponseJsonAdapter;

.field private final synthetic onNavigationEvent:Lo/AutoDebitConfirmDialog$onViewCreated$10$onStateChanged$$inlined$executeOnResume$1;


# direct methods
.method constructor <init>(Lo/AutoDebitConfirmDialog$onViewCreated$10$onStateChanged$$inlined$executeOnResume$1;Lo/setCardBackgroundView;Lo/LinkCampaignResponseJsonAdapter;)V
    .locals 0

    iput-object p1, p0, Lo/AutoDebitInstrumentsResponse;->onNavigationEvent:Lo/AutoDebitConfirmDialog$onViewCreated$10$onStateChanged$$inlined$executeOnResume$1;

    iput-object p2, p0, Lo/AutoDebitInstrumentsResponse;->ICustomTabsCallback:Lo/setCardBackgroundView;

    iput-object p3, p0, Lo/AutoDebitInstrumentsResponse;->extraCallback:Lo/LinkCampaignResponseJsonAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lo/AutoDebitInstrumentsResponse;->onNavigationEvent:Lo/AutoDebitConfirmDialog$onViewCreated$10$onStateChanged$$inlined$executeOnResume$1;

    iget-object v1, p0, Lo/AutoDebitInstrumentsResponse;->ICustomTabsCallback:Lo/setCardBackgroundView;

    invoke-virtual {v0, v1}, Lo/AutoDebitConfirmDialog$onViewCreated$10$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsCallback(Lo/setCardBackgroundView;)Lo/setOnCtaClick;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object v1

    const-string v2, "AdRequestServiceImpl.loadAdAsync"

    invoke-virtual {v1, v0, v2}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->onMessageChannelReady(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v1, "Could not fetch ad response due to an Exception."

    invoke-static {v1, v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_0

    new-instance v0, Lo/setOnCtaClick;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lo/setOnCtaClick;-><init>(I)V

    :cond_0
    :try_start_1
    iget-object v1, p0, Lo/AutoDebitInstrumentsResponse;->extraCallback:Lo/LinkCampaignResponseJsonAdapter;

    invoke-interface {v1, v0}, Lo/LinkCampaignResponseJsonAdapter;->onPostMessage(Lo/setOnCtaClick;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    const-string v1, "Fail to forward ad response."

    invoke-static {v1, v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
