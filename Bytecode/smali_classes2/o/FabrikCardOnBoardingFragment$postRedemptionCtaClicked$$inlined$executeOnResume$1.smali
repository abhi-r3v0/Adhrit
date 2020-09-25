.class final Lo/FabrikCardOnBoardingFragment$postRedemptionCtaClicked$$inlined$executeOnResume$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic ICustomTabsCallback:Lo/GreetingCampaignCodeRequest;

.field private final synthetic extraCallback:Lo/setPanGiven;


# direct methods
.method constructor <init>(Lo/setPanGiven;Lo/GreetingCampaignCodeRequest;)V
    .locals 0

    iput-object p1, p0, Lo/FabrikCardOnBoardingFragment$postRedemptionCtaClicked$$inlined$executeOnResume$1;->extraCallback:Lo/setPanGiven;

    iput-object p2, p0, Lo/FabrikCardOnBoardingFragment$postRedemptionCtaClicked$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/GreetingCampaignCodeRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Lo/FabrikCardOnBoardingFragment$postRedemptionCtaClicked$$inlined$executeOnResume$1;->extraCallback:Lo/setPanGiven;

    new-instance v10, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v2, p0, Lo/FabrikCardOnBoardingFragment$postRedemptionCtaClicked$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/GreetingCampaignCodeRequest;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;-><init>(Lo/GreetingCampaignCodeRequest;Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;Lo/TabConfigResponse;Lo/Info;Ljava/lang/String;Lo/TabConfigResponseJsonAdapter;Lo/refreshAuth;Ljava/lang/String;)V

    invoke-virtual {v0, v10}, Lo/DeviceAttrResponse;->onMessageChannelReady(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)V

    return-void
.end method
