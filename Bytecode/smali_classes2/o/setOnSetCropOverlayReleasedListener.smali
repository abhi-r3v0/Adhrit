.class public final Lo/setOnSetCropOverlayReleasedListener;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onMessageChannelReady(Landroid/content/Context;Lo/DeviceAttrResponse;Lo/GreetingCampaignCodeRequest;Lo/GameCta;Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;Lo/BankAccountData;Lo/setOnCropWindowChangedListener;Lo/setCanReverse;)Lo/setSwipedDirection;
    .locals 8

    iget-object v2, p2, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-boolean v4, v2, Lo/setOnCtaClick;->asInterface:Z

    if-eqz v4, :cond_0

    new-instance v7, Lo/setImageUriAsync;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p2

    move-object v3, p5

    move-object v4, p6

    move-object v5, p7

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lo/setImageUriAsync;-><init>(Landroid/content/Context;Lo/GreetingCampaignCodeRequest;Lo/BankAccountData;Lo/setOnCropWindowChangedListener;Lo/setCanReverse;Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;)V

    goto :goto_1

    :cond_0
    iget-boolean v4, v2, Lo/setOnCtaClick;->postMessage:Z

    if-nez v4, :cond_3

    instance-of v4, p1, Lo/setPanGiven;

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    sget-object v0, Lo/WinningTypes;->handleMessage:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v2

    invoke-virtual {v2, v0}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lo/component20;->onRelationshipValidationResult()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lo/component20;->asBinder()Z

    move-result v0

    if-nez v0, :cond_2

    if-eqz p4, :cond_2

    invoke-interface {p4}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsService$Stub()Lo/SizeFilterJsonAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lo/SizeFilterJsonAdapter;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v7, Lo/setAspectRatioX;

    invoke-direct {v7, p0, p2, p4, p6}, Lo/setAspectRatioX;-><init>(Landroid/content/Context;Lo/GreetingCampaignCodeRequest;Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;Lo/setOnCropWindowChangedListener;)V

    goto :goto_1

    :cond_2
    new-instance v7, Lo/setOnCropImageCompleteListener;

    invoke-direct {v7, p0, p2, p4, p6}, Lo/setOnCropImageCompleteListener;-><init>(Landroid/content/Context;Lo/GreetingCampaignCodeRequest;Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;Lo/setOnCropWindowChangedListener;)V

    goto :goto_1

    :cond_3
    :goto_0
    iget-boolean v2, v2, Lo/setOnCtaClick;->postMessage:Z

    if-eqz v2, :cond_4

    instance-of v2, p1, Lo/setPanGiven;

    if-eqz v2, :cond_4

    new-instance v7, Lo/setInitialAttributeValues;

    move-object v2, p1

    check-cast v2, Lo/setPanGiven;

    move-object v0, v7

    move-object v1, p0

    move-object v3, p2

    move-object v4, p3

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lo/setInitialAttributeValues;-><init>(Landroid/content/Context;Lo/setPanGiven;Lo/GreetingCampaignCodeRequest;Lo/GameCta;Lo/setOnCropWindowChangedListener;Lo/setCanReverse;)V

    goto :goto_1

    :cond_4
    new-instance v7, Lo/setBounds;

    invoke-direct {v7, p2, p6}, Lo/setBounds;-><init>(Lo/GreetingCampaignCodeRequest;Lo/setOnCropWindowChangedListener;)V

    :goto_1
    const-string v0, "AdRenderer: "

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_5
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_2
    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;)V

    invoke-interface {v7}, Lo/setSwipedDirection;->s_()Ljava/lang/Object;

    return-object v7
.end method
