.class final Lo/CardAmountLimitJsonAdapter;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic onNavigationEvent:Lo/getBank_code;


# direct methods
.method constructor <init>(Lo/getBank_code;)V
    .locals 0

    iput-object p1, p0, Lo/CardAmountLimitJsonAdapter;->onNavigationEvent:Lo/getBank_code;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Lo/CardAmountLimitJsonAdapter;->onNavigationEvent:Lo/getBank_code;

    iget-object v0, v0, Lo/getBank_code;->onMessageChannelReady:Lo/BankDetailsResponse$BanksDetail;

    new-instance v10, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v1, p0, Lo/CardAmountLimitJsonAdapter;->onNavigationEvent:Lo/getBank_code;

    iget-object v2, v1, Lo/getBank_code;->onNavigationEvent:Lo/GreetingCampaignCodeRequest;

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
