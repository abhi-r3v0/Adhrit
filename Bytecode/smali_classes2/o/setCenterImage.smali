.class public abstract Lo/setCenterImage;
.super Ljava/lang/Object;

# interfaces
.implements Lo/setCardTypeIv;
.implements Lo/setSwipedDirection;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lo/setCardTypeIv;",
        "Lo/setSwipedDirection<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation

.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final extraCallback:Lo/StatJsonAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/StatJsonAdapter<",
            "Lo/setCardBackgroundView;",
            ">;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Lo/setCardTypeIv;

.field private final onNavigationEvent:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lo/StatJsonAdapter;Lo/setCardTypeIv;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/StatJsonAdapter<",
            "Lo/setCardBackgroundView;",
            ">;",
            "Lo/setCardTypeIv;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lo/setCenterImage;->onNavigationEvent:Ljava/lang/Object;

    iput-object p1, p0, Lo/setCenterImage;->extraCallback:Lo/StatJsonAdapter;

    iput-object p2, p0, Lo/setCenterImage;->onMessageChannelReady:Lo/setCardTypeIv;

    return-void
.end method


# virtual methods
.method public abstract extraCallback()Lo/Address;
.end method

.method public final onMessageChannelReady()V
    .locals 0

    invoke-virtual {p0}, Lo/setCenterImage;->onNavigationEvent()V

    return-void
.end method

.method public abstract onNavigationEvent()V
.end method

.method public final onPostMessage(Lo/setOnCtaClick;)V
    .locals 2

    iget-object v0, p0, Lo/setCenterImage;->onNavigationEvent:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lo/setCenterImage;->onMessageChannelReady:Lo/setCardTypeIv;

    invoke-interface {v1, p1}, Lo/setCardTypeIv;->onPostMessage(Lo/setOnCtaClick;)V

    invoke-virtual {p0}, Lo/setCenterImage;->onNavigationEvent()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method final onPostMessage(Lo/Address;Lo/setCardBackgroundView;)Z
    .locals 1

    :try_start_0
    new-instance v0, Lo/setUiTheme;

    invoke-direct {v0, p0}, Lo/setUiTheme;-><init>(Lo/setCardTypeIv;)V

    invoke-interface {p1, p2, v0}, Lo/Address;->extraCallback(Lo/setCardBackgroundView;Lo/LinkCampaignResponseJsonAdapter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    const-string p2, "Could not fetch ad response from ad request service due to an Exception."

    invoke-static {p2, p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object p2

    const-string v0, "AdRequestClientTask.getAdResponseFromService"

    invoke-virtual {p2, p1, v0}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->onMessageChannelReady(Ljava/lang/Throwable;Ljava/lang/String;)V

    iget-object p1, p0, Lo/setCenterImage;->onMessageChannelReady:Lo/setCardTypeIv;

    new-instance p2, Lo/setOnCtaClick;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lo/setOnCtaClick;-><init>(I)V

    invoke-interface {p1, p2}, Lo/setCardTypeIv;->onPostMessage(Lo/setOnCtaClick;)V

    return v0
.end method

.method public final synthetic s_()Ljava/lang/Object;
    .locals 4

    invoke-virtual {p0}, Lo/setCenterImage;->extraCallback()Lo/Address;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/setCenterImage;->onMessageChannelReady:Lo/setCardTypeIv;

    new-instance v2, Lo/setOnCtaClick;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lo/setOnCtaClick;-><init>(I)V

    invoke-interface {v0, v2}, Lo/setCardTypeIv;->onPostMessage(Lo/setOnCtaClick;)V

    invoke-virtual {p0}, Lo/setCenterImage;->onNavigationEvent()V

    return-object v1

    :cond_0
    iget-object v2, p0, Lo/setCenterImage;->extraCallback:Lo/StatJsonAdapter;

    new-instance v3, Lo/setCardBankLogo;

    invoke-direct {v3, p0, v0}, Lo/setCardBankLogo;-><init>(Lo/setCenterImage;Lo/Address;)V

    new-instance v0, Lo/setTotalCardCount;

    invoke-direct {v0, p0}, Lo/setTotalCardCount;-><init>(Lo/setCenterImage;)V

    invoke-interface {v2, v3, v0}, Lo/StatJsonAdapter;->ICustomTabsCallback(Lo/Supported$$Parcelable;Lo/SuggestedAmountJsonAdapter;)V

    return-object v1
.end method
