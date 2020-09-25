.class public abstract Lo/DeviceAttrResponse;
.super Lo/SlotMachinePlayResponseJsonAdapter;

# interfaces
.implements Lo/getTxnCurrency;
.implements Lo/component8;
.implements Lo/CountJsonAdapter;
.implements Lo/setOnCropWindowChangedListener;
.implements Lo/Colors;
.implements Lo/GreetingCardResponseJsonAdapter;
.implements Lo/zzd;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field protected final ICustomTabsCallback:Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;

.field protected final ICustomTabsCallback$Stub:Lo/StatementPeriod;

.field private ICustomTabsCallback$Stub$Proxy:Z

.field private final ICustomTabsService:Landroid/os/Bundle;

.field private asBinder:Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;

.field protected final asInterface:Lo/Data;

.field protected extraCallback:Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;

.field protected onMessageChannelReady:Lo/setCanReverse;

.field protected onNavigationEvent:Z

.field protected final onPostMessage:Lo/PaymentMode$$Parcelable;

.field protected transient onRelationshipValidationResult:Lo/setLastItem;

.field protected onTransact:Lo/getEventName;


# direct methods
.method constructor <init>(Lo/PaymentMode$$Parcelable;Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;Lo/StatementPeriod;)V
    .locals 6

    invoke-direct {p0}, Lo/SlotMachinePlayResponseJsonAdapter;-><init>()V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lo/DeviceAttrResponse;->onNavigationEvent:Z

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lo/DeviceAttrResponse;->ICustomTabsService:Landroid/os/Bundle;

    iput-boolean p2, p0, Lo/DeviceAttrResponse;->ICustomTabsCallback$Stub$Proxy:Z

    iput-object p1, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    new-instance p1, Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;

    invoke-direct {p1, p0}, Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;-><init>(Lo/DeviceAttrResponse;)V

    iput-object p1, p0, Lo/DeviceAttrResponse;->ICustomTabsCallback:Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;

    iput-object p3, p0, Lo/DeviceAttrResponse;->ICustomTabsCallback$Stub:Lo/StatementPeriod;

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    move-result-object p1

    iget-object p2, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object p2, p2, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lo/AuthSupportedResponse$MetaData;->ICustomTabsCallback(Landroid/content/Context;)Z

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    move-result-object p1

    iget-object p2, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object p2, p2, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lo/AuthSupportedResponse$MetaData;->onPostMessage(Landroid/content/Context;)Z

    iget-object p1, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object p1, p1, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    invoke-static {p1}, Lo/ContactJsonAdapter;->onNavigationEvent(Landroid/content/Context;)V

    invoke-static {}, Lo/getParcel;->INotificationSideChannel()Lo/NotificationSeenAckRequestBodyJsonAdapter;

    move-result-object p1

    iget-object p2, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object p2, p2, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lo/NotificationSeenAckRequestBodyJsonAdapter;->onPostMessage(Landroid/content/Context;)V

    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object p1

    iget-object p2, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object p2, p2, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    iget-object p3, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object p3, p3, Lo/PaymentMode$$Parcelable;->onMessageChannelReady:Lo/DataListJsonAdapter;

    invoke-virtual {p1, p2, p3}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->onNavigationEvent(Landroid/content/Context;Lo/DataListJsonAdapter;)V

    invoke-static {}, Lo/getParcel;->warmup()Lo/ValuesJsonAdapter;

    move-result-object p1

    iget-object p2, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object p2, p2, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lo/ValuesJsonAdapter;->onNavigationEvent(Landroid/content/Context;)V

    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->asInterface()Lo/Data;

    move-result-object p1

    iput-object p1, p0, Lo/DeviceAttrResponse;->asInterface:Lo/Data;

    invoke-static {}, Lo/getParcel;->asInterface()Lo/RedeemRequestResponseJsonAdapter;

    move-result-object p1

    iget-object p2, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object p2, p2, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lo/RedeemRequestResponseJsonAdapter;->onPostMessage(Landroid/content/Context;)V

    invoke-static {}, Lo/getParcel;->getDefaultImpl()Lo/getListTransaction;

    move-result-object p1

    iget-object p2, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object p2, p2, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lo/getListTransaction;->onPostMessage(Landroid/content/Context;)V

    sget-object p1, Lo/WinningTypes;->MediaDescriptionCompatApi23$Builder:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance p1, Ljava/util/concurrent/CountDownLatch;

    sget-object p2, Lo/WinningTypes;->getText:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object p3

    invoke-virtual {p3, p2}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    new-instance v1, Lo/setBureau;

    invoke-direct {v1, p0, p1, v0}, Lo/setBureau;-><init>(Lo/DeviceAttrResponse;Ljava/util/concurrent/CountDownLatch;Ljava/util/Timer;)V

    const-wide/16 v2, 0x0

    sget-object p1, Lo/WinningTypes;->getRating:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object p2

    invoke-virtual {p2, p1}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    :cond_0
    return-void
.end method

.method private static extraCallback(Ljava/lang/String;)J
    .locals 3

    const-string v0, "ufe"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/16 v1, 0x2c

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    :cond_0
    add-int/lit8 v0, v0, 0x4

    :try_start_0
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    :goto_0
    const-string v0, ""

    invoke-static {v0, p0}, Lo/getText1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method protected static onMessageChannelReady(Lo/setLastItem;)Z
    .locals 1

    iget-object p0, p0, Lo/setLastItem;->getInterfaceDescriptor:Landroid/os/Bundle;

    const-string v0, "com.google.ads.mediation.admob.AdMobAdapter"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    if-eqz p0, :cond_1

    const-string v0, "gw"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final A_()Lo/StatementPeriod;
    .locals 1

    iget-object v0, p0, Lo/DeviceAttrResponse;->ICustomTabsCallback$Stub:Lo/StatementPeriod;

    return-object v0
.end method

.method public final ICustomTabsCallback(Ljava/lang/String;)V
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread.: setUserId"

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iput-object p1, v0, Lo/PaymentMode$$Parcelable;->INotificationSideChannel$Stub$Proxy:Ljava/lang/String;

    return-void
.end method

.method public final ICustomTabsCallback(Lo/CredProtectOptInFragment$observeAuthoriseThirdPartyResponse$$inlined$observe$1$lambda$1;)V
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread.: setRewardedAdSkuListener"

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iput-object p1, v0, Lo/PaymentMode$$Parcelable;->cancel:Lo/CredProtectOptInFragment$observeAuthoriseThirdPartyResponse$$inlined$observe$1$lambda$1;

    return-void
.end method

.method protected abstract ICustomTabsCallback(Lo/GreetingCampaignCodeRequest;Lo/setCanReverse;)V
.end method

.method public final ICustomTabsCallback(Lo/ParentEntity;)V
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread.: setAdClickListener"

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iput-object p1, v0, Lo/PaymentMode$$Parcelable;->ICustomTabsService:Lo/ParentEntity;

    return-void
.end method

.method public final ICustomTabsCallback(Lo/setCurrentItem$default;)V
    .locals 2

    const-string v0, "#008 Must be called on the main UI thread.: setAdSize"

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iput-object p1, v0, Lo/PaymentMode$$Parcelable;->ICustomTabsCallback$Stub:Lo/setCurrentItem$default;

    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget v0, v0, Lo/PaymentMode$$Parcelable;->setDefaultImpl:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-static {p1}, Lo/SizeFilterJsonAdapter;->onMessageChannelReady(Lo/setCurrentItem$default;)Lo/SizeFilterJsonAdapter;

    move-result-object v1

    invoke-interface {v0, v1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent(Lo/SizeFilterJsonAdapter;)V

    :cond_0
    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    invoke-virtual {v0}, Lo/PaymentModeListResponse;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    iget-object v1, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    invoke-virtual {v1}, Lo/PaymentModeListResponse;->getNextView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/PaymentModeListResponse;->removeView(Landroid/view/View;)V

    :cond_2
    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    iget v1, p1, Lo/setCurrentItem$default;->onTransact:I

    invoke-virtual {v0, v1}, Lo/PaymentModeListResponse;->setMinimumWidth(I)V

    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    iget p1, p1, Lo/setCurrentItem$default;->onPostMessage:I

    invoke-virtual {v0, p1}, Lo/PaymentModeListResponse;->setMinimumHeight(I)V

    iget-object p1, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object p1, p1, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    invoke-virtual {p1}, Lo/PaymentModeListResponse;->requestLayout()V

    return-void
.end method

.method public ICustomTabsCallback(Z)V
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "#005 Unexpected call to an abstract (unimplemented) method."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract ICustomTabsCallback(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)Z
.end method

.method public ICustomTabsCallback(Lo/setLastItem;)Z
    .locals 4

    const-string v0, "#008 Must be called on the main UI thread.: loadAd"

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    invoke-static {}, Lo/getParcel;->warmup()Lo/ValuesJsonAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lo/ValuesJsonAdapter;->onPostMessage()V

    iget-object v0, p0, Lo/DeviceAttrResponse;->ICustomTabsService:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/DeviceAttrResponse;->ICustomTabsCallback$Stub$Proxy:Z

    sget-object v1, Lo/WinningTypes;->isCurrent:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lo/setLastItem;->onNavigationEvent()Lo/setLastItem;

    move-result-object p1

    sget-object v1, Lo/WinningTypes;->forceCloseConnection:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lo/setLastItem;->extraCallback:Landroid/os/Bundle;

    const/4 v2, 0x1

    const-string v3, "_newBundle"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    iget-object v1, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    invoke-static {v1}, Lo/component17;->ICustomTabsCallback(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p1, Lo/setLastItem;->ICustomTabsCallback$Stub$Proxy:Landroid/location/Location;

    if-eqz v1, :cond_1

    new-instance v1, Lo/setViewAdapter;

    invoke-direct {v1, p1}, Lo/setViewAdapter;-><init>(Lo/setLastItem;)V

    invoke-virtual {v1, v2}, Lo/setViewAdapter;->onMessageChannelReady(Landroid/location/Location;)Lo/setViewAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lo/setViewAdapter;->ICustomTabsCallback()Lo/setLastItem;

    move-result-object p1

    :cond_1
    iget-object v1, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->asBinder:Lo/ContactReverseSyncResponse;

    if-nez v1, :cond_4

    iget-object v1, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->onRelationshipValidationResult:Lo/setSwipedDirection;

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "Starting ad request."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lo/DeviceAttrResponse;->onMessageChannelReady(Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;)V

    iget-object v0, p0, Lo/DeviceAttrResponse;->onMessageChannelReady:Lo/setCanReverse;

    invoke-virtual {v0}, Lo/setCanReverse;->onNavigationEvent()Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;

    move-result-object v0

    iput-object v0, p0, Lo/DeviceAttrResponse;->extraCallback:Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;

    iget-boolean v0, p1, Lo/setLastItem;->onTransact:Z

    if-eqz v0, :cond_3

    const-string v0, "This request is sent from a test device."

    goto :goto_0

    :cond_3
    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->extraCallback()Lo/ControlStatementRepo$TransactionItem;

    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    invoke-static {v0}, Lo/ControlStatementRepo$TransactionItem;->ICustomTabsCallback(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Use AdRequest.Builder.addTestDevice(\""

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\") to get test ads on this device."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/String;)V

    iget-object v0, p0, Lo/DeviceAttrResponse;->ICustomTabsCallback:Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;

    invoke-virtual {v0, p1}, Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->onPostMessage(Lo/setLastItem;)V

    iget-object v0, p0, Lo/DeviceAttrResponse;->onMessageChannelReady:Lo/setCanReverse;

    invoke-virtual {p0, p1, v0}, Lo/DeviceAttrResponse;->onNavigationEvent(Lo/setLastItem;Lo/setCanReverse;)Z

    move-result p1

    iput-boolean p1, p0, Lo/DeviceAttrResponse;->onNavigationEvent:Z

    return p1

    :cond_4
    :goto_1
    iget-object v1, p0, Lo/DeviceAttrResponse;->onRelationshipValidationResult:Lo/setLastItem;

    if-eqz v1, :cond_5

    const-string v1, "Aborting last ad request since another ad request is already in progress. The current request object will still be cached for future refreshes."

    goto :goto_2

    :cond_5
    const-string v1, "Loading already in progress, saving this object for future refreshes."

    :goto_2
    invoke-static {v1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    iput-object p1, p0, Lo/DeviceAttrResponse;->onRelationshipValidationResult:Lo/setLastItem;

    return v0
.end method

.method public final ICustomTabsCallback$Stub$Proxy()Lo/setCurrentItem$default;
    .locals 2

    const-string v0, "#008 Must be called on the main UI thread.: getAdSize"

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->ICustomTabsCallback$Stub:Lo/setCurrentItem$default;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lo/WinLuckyNumberCardJsonAdapter;

    iget-object v1, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->ICustomTabsCallback$Stub:Lo/setCurrentItem$default;

    invoke-direct {v0, v1}, Lo/WinLuckyNumberCardJsonAdapter;-><init>(Lo/setCurrentItem$default;)V

    return-object v0
.end method

.method public final ICustomTabsService()Lo/getEventName;
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread.: getAdFrame"

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    invoke-static {v0}, Lo/GetRatingResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getEventName;

    move-result-object v0

    return-object v0
.end method

.method public ICustomTabsService$Stub()V
    .locals 2

    const-string v0, "Ad closing."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->warmup:Lo/PendingUsers;

    const-string v1, "#007 Could not call remote method."

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->warmup:Lo/PendingUsers;

    invoke-interface {v0}, Lo/PendingUsers;->ICustomTabsCallback()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v1, v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->notify:Lo/CredProtectResponseJsonAdapter;

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->notify:Lo/CredProtectResponseJsonAdapter;

    invoke-interface {v0}, Lo/CredProtectResponseJsonAdapter;->onNavigationEvent()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    invoke-static {v1, v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public final ICustomTabsService$Stub$Proxy()V
    .locals 2

    const-string v0, "Ad opening."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->warmup:Lo/PendingUsers;

    const-string v1, "#007 Could not call remote method."

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->warmup:Lo/PendingUsers;

    invoke-interface {v0}, Lo/PendingUsers;->onNavigationEvent()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v1, v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->notify:Lo/CredProtectResponseJsonAdapter;

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->notify:Lo/CredProtectResponseJsonAdapter;

    invoke-interface {v0}, Lo/CredProtectResponseJsonAdapter;->onPostMessage()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    invoke-static {v1, v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public final INotificationSideChannel()V
    .locals 2

    const-string v0, "Ad clicked."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/String;)V

    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->warmup:Lo/PendingUsers;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->warmup:Lo/PendingUsers;

    invoke-interface {v0}, Lo/PendingUsers;->onMessageChannelReady()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final INotificationSideChannel$Default()Lo/PendingUsers;
    .locals 1

    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->warmup:Lo/PendingUsers;

    return-object v0
.end method

.method public final INotificationSideChannel$Stub()Lo/StatisticsItemJsonAdapter;
    .locals 1

    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->ICustomTabsCallback$Stub$Proxy:Lo/StatisticsItemJsonAdapter;

    return-object v0
.end method

.method public final INotificationSideChannel$Stub$Proxy()V
    .locals 2

    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->notify:Lo/CredProtectResponseJsonAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->notify:Lo/CredProtectResponseJsonAdapter;

    invoke-interface {v0}, Lo/CredProtectResponseJsonAdapter;->ICustomTabsCallback$Stub()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final IPostMessageService()Z
    .locals 1

    iget-boolean v0, p0, Lo/DeviceAttrResponse;->onNavigationEvent:Z

    return v0
.end method

.method public final IPostMessageService$Stub()V
    .locals 2

    const-string v0, "Ad leaving application."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->warmup:Lo/PendingUsers;

    const-string v1, "#007 Could not call remote method."

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->warmup:Lo/PendingUsers;

    invoke-interface {v0}, Lo/PendingUsers;->onPostMessage()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v1, v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->notify:Lo/CredProtectResponseJsonAdapter;

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->notify:Lo/CredProtectResponseJsonAdapter;

    invoke-interface {v0}, Lo/CredProtectResponseJsonAdapter;->onMessageChannelReady()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception v0

    invoke-static {v1, v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public final IPostMessageService$Stub$Proxy()V
    .locals 2

    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->notify:Lo/CredProtectResponseJsonAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->notify:Lo/CredProtectResponseJsonAdapter;

    invoke-interface {v0}, Lo/CredProtectResponseJsonAdapter;->ICustomTabsCallback()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final cancel()V
    .locals 2

    const-string v0, "Ad impression."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->ICustomTabsCallback(Ljava/lang/String;)V

    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->warmup:Lo/PendingUsers;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->warmup:Lo/PendingUsers;

    invoke-interface {v0}, Lo/PendingUsers;->onTransact()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method protected cancelAll()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo/DeviceAttrResponse;->onNavigationEvent(Z)V

    return-void
.end method

.method public extraCallback(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lo/DeviceAttrResponse;->onPostMessage(IZ)V

    return-void
.end method

.method public final extraCallback(Lo/CredProtectResponseJsonAdapter;)V
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread.: setRewardedVideoAdListener"

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iput-object p1, v0, Lo/PaymentMode$$Parcelable;->notify:Lo/CredProtectResponseJsonAdapter;

    return-void
.end method

.method public final extraCallback(Lo/StatisticsItemJsonAdapter;)V
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread.: setAppEventListener"

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iput-object p1, v0, Lo/PaymentMode$$Parcelable;->ICustomTabsCallback$Stub$Proxy:Lo/StatisticsItemJsonAdapter;

    return-void
.end method

.method public final extraCallback(Lo/WinLuckyNumberResponseJsonAdapter;)V
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread.: setVideoOptions"

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iput-object p1, v0, Lo/PaymentMode$$Parcelable;->ICustomTabsService$Stub:Lo/WinLuckyNumberResponseJsonAdapter;

    return-void
.end method

.method public extraCallback(Lo/setStartingAngle;)V
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "#005 Unexpected call to an abstract (unimplemented) method."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final extraCommand()Landroid/os/Bundle;
    .locals 1

    iget-boolean v0, p0, Lo/DeviceAttrResponse;->ICustomTabsCallback$Stub$Proxy:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/DeviceAttrResponse;->ICustomTabsService:Landroid/os/Bundle;

    return-object v0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public final getDefaultImpl()V
    .locals 6

    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    if-eqz v0, :cond_1

    iget-object v1, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->cancelAll:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->INotificationSideChannel$Stub$Proxy:Z

    if-nez v1, :cond_1

    invoke-static {}, Lo/getParcel;->ICustomTabsService()Lo/getSwipeActions;

    move-result-object v1

    invoke-virtual {v1}, Lo/getSwipeActions;->extraCallback()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "Sending troubleshooting signals to the server."

    invoke-static {v1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;)V

    invoke-static {}, Lo/getParcel;->ICustomTabsService()Lo/getSwipeActions;

    move-result-object v1

    iget-object v2, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v2, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    iget-object v3, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v3, v3, Lo/PaymentMode$$Parcelable;->onMessageChannelReady:Lo/DataListJsonAdapter;

    iget-object v3, v3, Lo/DataListJsonAdapter;->extraCallback:Ljava/lang/String;

    iget-object v4, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->cancelAll:Ljava/lang/String;

    iget-object v5, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v5, v5, Lo/PaymentMode$$Parcelable;->onNavigationEvent:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4, v5}, Lo/getSwipeActions;->ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x1

    iput-boolean v1, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->INotificationSideChannel$Stub$Proxy:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public mayLaunchUrl()V
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread.: pause"

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    return-void
.end method

.method public newSession()V
    .locals 3

    const-string v0, "#008 Must be called on the main UI thread.: destroy"

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    iget-object v0, p0, Lo/DeviceAttrResponse;->ICustomTabsCallback:Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;

    invoke-virtual {v0}, Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->onMessageChannelReady()V

    iget-object v0, p0, Lo/DeviceAttrResponse;->asInterface:Lo/Data;

    iget-object v1, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    invoke-virtual {v0, v1}, Lo/Data;->ICustomTabsCallback(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)V

    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v0, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    invoke-virtual {v1}, Lo/PaymentModeListResponse;->onNavigationEvent()V

    :cond_0
    const/4 v1, 0x0

    iput-object v1, v0, Lo/PaymentMode$$Parcelable;->warmup:Lo/PendingUsers;

    iput-object v1, v0, Lo/PaymentMode$$Parcelable;->mayLaunchUrl:Lo/SpinTheWheelResponseJsonAdapter;

    iput-object v1, v0, Lo/PaymentMode$$Parcelable;->ICustomTabsCallback$Stub$Proxy:Lo/StatisticsItemJsonAdapter;

    iput-object v1, v0, Lo/PaymentMode$$Parcelable;->cancelAll:Lo/setStartingAngle;

    iput-object v1, v0, Lo/PaymentMode$$Parcelable;->requestPostMessageChannel:Lo/TemplatePropertiesMachineJsonAdapter;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lo/PaymentMode$$Parcelable;->ICustomTabsCallback(Z)V

    iget-object v2, v0, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    invoke-virtual {v2}, Lo/PaymentModeListResponse;->removeAllViews()V

    :cond_1
    invoke-virtual {v0}, Lo/PaymentMode$$Parcelable;->ICustomTabsCallback()V

    invoke-virtual {v0}, Lo/PaymentMode$$Parcelable;->onNavigationEvent()V

    iput-object v1, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    return-void
.end method

.method public final onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->ICustomTabsCallback$Stub$Proxy:Lo/StatisticsItemJsonAdapter;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->ICustomTabsCallback$Stub$Proxy:Lo/StatisticsItemJsonAdapter;

    invoke-interface {v0, p1, p2}, Lo/StatisticsItemJsonAdapter;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    invoke-static {p2, p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final onMessageChannelReady(Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;)V
    .locals 4

    new-instance v0, Lo/setCanReverse;

    sget-object v1, Lo/WinningTypes;->AudioAttributesCompatParcelizer:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v2, Lo/PaymentMode$$Parcelable;->ICustomTabsCallback$Stub:Lo/setCurrentItem$default;

    iget-object v2, v2, Lo/setCurrentItem$default;->onMessageChannelReady:Ljava/lang/String;

    const-string v3, "load_ad"

    invoke-direct {v0, v1, v3, v2}, Lo/setCanReverse;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lo/DeviceAttrResponse;->onMessageChannelReady:Lo/setCanReverse;

    new-instance v0, Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;

    const-wide/16 v1, -0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3, v3}, Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;-><init>(JLjava/lang/String;Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;)V

    iput-object v0, p0, Lo/DeviceAttrResponse;->asBinder:Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;

    if-nez p1, :cond_0

    new-instance p1, Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;

    invoke-direct {p1, v1, v2, v3, v3}, Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;-><init>(JLjava/lang/String;Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;)V

    iput-object p1, p0, Lo/DeviceAttrResponse;->extraCallback:Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;

    return-void

    :cond_0
    new-instance v0, Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;

    invoke-virtual {p1}, Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;->ICustomTabsCallback()J

    move-result-wide v1

    invoke-virtual {p1}, Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;->onNavigationEvent()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;->onPostMessage()Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;

    move-result-object p1

    invoke-direct {v0, v1, v2, v3, p1}, Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;-><init>(JLjava/lang/String;Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;)V

    iput-object v0, p0, Lo/DeviceAttrResponse;->extraCallback:Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;

    return-void
.end method

.method public onMessageChannelReady(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)V
    .locals 5

    iget-object v0, p0, Lo/DeviceAttrResponse;->onMessageChannelReady:Lo/setCanReverse;

    iget-object v1, p0, Lo/DeviceAttrResponse;->asBinder:Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;

    const-string v2, "awr"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo/setCanReverse;->onMessageChannelReady(Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;[Ljava/lang/String;)Z

    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    const/4 v1, 0x0

    iput-object v1, v0, Lo/PaymentMode$$Parcelable;->onRelationshipValidationResult:Lo/setSwipedDirection;

    iget v0, p1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->onPostMessage:I

    const/4 v1, 0x3

    const/4 v2, -0x2

    if-eq v0, v2, :cond_0

    iget v0, p1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->onPostMessage:I

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    invoke-virtual {v0}, Lo/PaymentMode$$Parcelable;->onPostMessage()Ljava/util/HashSet;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lo/getParcel;->asBinder()Lo/GreetingCardResponse;

    move-result-object v0

    iget-object v3, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    invoke-virtual {v3}, Lo/PaymentMode$$Parcelable;->onPostMessage()Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v0, v3}, Lo/GreetingCardResponse;->onPostMessage(Ljava/util/HashSet;)V

    :cond_0
    iget v0, p1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->onPostMessage:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    const/4 p1, 0x0

    iput-boolean p1, p0, Lo/DeviceAttrResponse;->onNavigationEvent:Z

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lo/DeviceAttrResponse;->onNavigationEvent(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Ad refresh scheduled."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;)V

    :cond_2
    iget v0, p1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->onPostMessage:I

    if-eq v0, v2, :cond_4

    iget v0, p1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->onPostMessage:I

    if-ne v0, v1, :cond_3

    iget-object v0, p1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->write:Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;

    sget-object v1, Lo/RedeemUtils$redeemReward$1$onResponse$3$onResponse$2$$special$$inlined$executeOnResume$1$onNavigationEvent$extraCallback;->onNavigationEvent:Lo/RedeemUtils$redeemReward$1$onResponse$3$onResponse$2$$special$$inlined$executeOnResume$1$onNavigationEvent$extraCallback;

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->write:Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;

    sget-object v1, Lo/RedeemUtils$redeemReward$1$onResponse$3$onResponse$2$$special$$inlined$executeOnResume$1$onNavigationEvent$extraCallback;->onMessageChannelReady:Lo/RedeemUtils$redeemReward$1$onResponse$3$onResponse$2$$special$$inlined$executeOnResume$1$onNavigationEvent$extraCallback;

    :goto_0
    invoke-virtual {v0, v1}, Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;->extraCallback(Lo/RedeemUtils$redeemReward$1$onResponse$3$onResponse$2$$special$$inlined$executeOnResume$1$onNavigationEvent$extraCallback;)V

    iget p1, p1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->onPostMessage:I

    invoke-virtual {p0, p1}, Lo/DeviceAttrResponse;->extraCallback(I)V

    return-void

    :cond_4
    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->getDefaultImpl:Lo/GreetingCustomiseFragment$oneLinkObserver$1$$special$$inlined$let$lambda$1$1;

    if-nez v0, :cond_5

    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    new-instance v1, Lo/GreetingCustomiseFragment$oneLinkObserver$1$$special$$inlined$let$lambda$1$1;

    iget-object v2, v0, Lo/PaymentMode$$Parcelable;->onNavigationEvent:Ljava/lang/String;

    invoke-direct {v1, v2}, Lo/GreetingCustomiseFragment$oneLinkObserver$1$$special$$inlined$let$lambda$1$1;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lo/PaymentMode$$Parcelable;->getDefaultImpl:Lo/GreetingCustomiseFragment$oneLinkObserver$1$$special$$inlined$let$lambda$1$1;

    :cond_5
    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    invoke-virtual {v0}, Lo/PaymentModeListResponse;->ICustomTabsCallback()Lo/getTemplateIdentifierName;

    move-result-object v0

    iget-object v1, p1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->cancelAll:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/getTemplateIdentifierName;->extraCallback(Ljava/lang/String;)V

    :cond_6
    iget-object v0, p0, Lo/DeviceAttrResponse;->asInterface:Lo/Data;

    iget-object v1, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    invoke-virtual {v0, v1}, Lo/Data;->extraCallback(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)V

    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    invoke-virtual {p0, v0, p1}, Lo/DeviceAttrResponse;->ICustomTabsCallback(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iput-object p1, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v0, Lo/PaymentMode$$Parcelable;->getInterfaceDescriptor:Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;

    if-eqz v1, :cond_8

    iget-object v1, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    if-eqz v1, :cond_7

    iget-object v1, v0, Lo/PaymentMode$$Parcelable;->getInterfaceDescriptor:Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;

    iget-object v2, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-wide v2, v2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->validateRelationship:J

    invoke-virtual {v1, v2, v3}, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->ICustomTabsCallback(J)V

    iget-object v1, v0, Lo/PaymentMode$$Parcelable;->getInterfaceDescriptor:Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;

    iget-object v2, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-wide v2, v2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->INotificationSideChannel:J

    invoke-virtual {v1, v2, v3}, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->onPostMessage(J)V

    iget-object v1, v0, Lo/PaymentMode$$Parcelable;->getInterfaceDescriptor:Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;

    iget-object v2, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-boolean v2, v2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->warmup:Z

    invoke-virtual {v1, v2}, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->onMessageChannelReady(Z)V

    :cond_7
    iget-object v1, v0, Lo/PaymentMode$$Parcelable;->getInterfaceDescriptor:Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->ICustomTabsCallback$Stub:Lo/setCurrentItem$default;

    iget-boolean v0, v0, Lo/setCurrentItem$default;->extraCallback:Z

    invoke-virtual {v1, v0}, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->onNavigationEvent(Z)V

    :cond_8
    iget-object v0, p0, Lo/DeviceAttrResponse;->onMessageChannelReady:Lo/setCanReverse;

    iget-object v1, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    invoke-virtual {v1}, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->onNavigationEvent()Z

    move-result v1

    const-string v2, "1"

    const-string v3, "0"

    if-eqz v1, :cond_9

    move-object v1, v2

    goto :goto_1

    :cond_9
    move-object v1, v3

    :goto_1
    const-string v4, "is_mraid"

    invoke-virtual {v0, v4, v1}, Lo/setCanReverse;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lo/DeviceAttrResponse;->onMessageChannelReady:Lo/setCanReverse;

    iget-object v1, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-boolean v1, v1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->warmup:Z

    if-eqz v1, :cond_a

    move-object v1, v2

    goto :goto_2

    :cond_a
    move-object v1, v3

    :goto_2
    const-string v4, "is_mediation"

    invoke-virtual {v0, v4, v1}, Lo/setCanReverse;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->IPostMessageService$Stub()Lo/SizeFilter;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lo/DeviceAttrResponse;->onMessageChannelReady:Lo/setCanReverse;

    iget-object v1, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v1, v1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->IPostMessageService$Stub()Lo/SizeFilter;

    move-result-object v1

    invoke-interface {v1}, Lo/SizeFilter;->onTransact()Z

    move-result v1

    if-eqz v1, :cond_b

    goto :goto_3

    :cond_b
    move-object v2, v3

    :goto_3
    const-string v1, "is_delay_pl"

    invoke-virtual {v0, v1, v2}, Lo/setCanReverse;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    iget-object v0, p0, Lo/DeviceAttrResponse;->onMessageChannelReady:Lo/setCanReverse;

    iget-object v1, p0, Lo/DeviceAttrResponse;->extraCallback:Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;

    const-string v2, "ttc"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo/setCanReverse;->onMessageChannelReady(Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;[Ljava/lang/String;)Z

    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->onNavigationEvent()Lo/ZeroSpinsLeftMetaJsonAdapter;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->onNavigationEvent()Lo/ZeroSpinsLeftMetaJsonAdapter;

    move-result-object v0

    iget-object v1, p0, Lo/DeviceAttrResponse;->onMessageChannelReady:Lo/setCanReverse;

    invoke-virtual {v0, v1}, Lo/ZeroSpinsLeftMetaJsonAdapter;->onPostMessage(Lo/setCanReverse;)Z

    :cond_d
    invoke-virtual {p0}, Lo/DeviceAttrResponse;->getDefaultImpl()V

    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    invoke-virtual {v0}, Lo/PaymentMode$$Parcelable;->extraCallback()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lo/DeviceAttrResponse;->cancelAll()V

    :cond_e
    iget-object v0, p1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->AudioAttributesCompatParcelizer:Ljava/util/List;

    if-eqz v0, :cond_f

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    move-result-object v0

    iget-object v1, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    iget-object p1, p1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->AudioAttributesCompatParcelizer:Ljava/util/List;

    invoke-virtual {v0, v1, p1}, Lo/AuthSupportedResponse$MetaData;->ICustomTabsCallback(Landroid/content/Context;Ljava/util/List;)V

    :cond_f
    return-void
.end method

.method protected final onNavigationEvent(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v2, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    invoke-static {v1, v2}, Lo/TemplateProperties;->onNavigationEvent(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final onNavigationEvent(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    iget-object p1, p0, Lo/DeviceAttrResponse;->ICustomTabsService:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    iget-boolean p1, p0, Lo/DeviceAttrResponse;->ICustomTabsCallback$Stub$Proxy:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object p1, p1, Lo/PaymentMode$$Parcelable;->mayLaunchUrl:Lo/SpinTheWheelResponseJsonAdapter;

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object p1, p1, Lo/PaymentMode$$Parcelable;->mayLaunchUrl:Lo/SpinTheWheelResponseJsonAdapter;

    invoke-interface {p1}, Lo/SpinTheWheelResponseJsonAdapter;->ICustomTabsCallback()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "#007 Could not call remote method."

    invoke-static {p2, p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final onNavigationEvent(Lo/FooterActions;)V
    .locals 2

    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->notify:Lo/CredProtectResponseJsonAdapter;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, ""

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    iget-object v0, p1, Lo/FooterActions;->onNavigationEvent:Ljava/lang/String;

    iget v1, p1, Lo/FooterActions;->onMessageChannelReady:I

    :cond_1
    new-instance p1, Lo/NbJsonAdapter;

    invoke-direct {p1, v0, v1}, Lo/NbJsonAdapter;-><init>(Ljava/lang/String;I)V

    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->notify:Lo/CredProtectResponseJsonAdapter;

    invoke-interface {v0, p1}, Lo/CredProtectResponseJsonAdapter;->onPostMessage(Lo/BenefitsFragment$onViewCreated$$inlined$apply$lambda$1$1;)V

    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->cancel:Lo/CredProtectOptInFragment$observeAuthoriseThirdPartyResponse$$inlined$observe$1$lambda$1;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->cancel:Lo/CredProtectOptInFragment$observeAuthoriseThirdPartyResponse$$inlined$observe$1$lambda$1;

    iget-object v1, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->newSession:Lo/GreetingCampaignCodeRequest;

    iget-object v1, v1, Lo/GreetingCampaignCodeRequest;->onMessageChannelReady:Lo/setCardBackgroundView;

    iget-object v1, v1, Lo/setCardBackgroundView;->IPostMessageService:Ljava/lang/String;

    invoke-interface {v0, p1, v1}, Lo/CredProtectOptInFragment$observeAuthoriseThirdPartyResponse$$inlined$observe$1$lambda$1;->onPostMessage(Lo/BenefitsFragment$onViewCreated$$inlined$apply$lambda$1$1;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onNavigationEvent(Lo/TemplatePropertiesMachineJsonAdapter;)V
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread.: setCorrelationIdProvider"

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iput-object p1, v0, Lo/PaymentMode$$Parcelable;->requestPostMessageChannel:Lo/TemplatePropertiesMachineJsonAdapter;

    return-void
.end method

.method protected onNavigationEvent(Z)V
    .locals 1

    const-string v0, "Ad finished loading."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    iput-boolean p1, p0, Lo/DeviceAttrResponse;->onNavigationEvent:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lo/DeviceAttrResponse;->ICustomTabsCallback$Stub$Proxy:Z

    iget-object p1, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object p1, p1, Lo/PaymentMode$$Parcelable;->warmup:Lo/PendingUsers;

    const-string v0, "#007 Could not call remote method."

    if-eqz p1, :cond_0

    :try_start_0
    iget-object p1, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object p1, p1, Lo/PaymentMode$$Parcelable;->warmup:Lo/PendingUsers;

    invoke-interface {p1}, Lo/PendingUsers;->extraCallback()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {v0, p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iget-object p1, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object p1, p1, Lo/PaymentMode$$Parcelable;->notify:Lo/CredProtectResponseJsonAdapter;

    if-eqz p1, :cond_1

    :try_start_1
    iget-object p1, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object p1, p1, Lo/PaymentMode$$Parcelable;->notify:Lo/CredProtectResponseJsonAdapter;

    invoke-interface {p1}, Lo/CredProtectResponseJsonAdapter;->extraCallback()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    invoke-static {v0, p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    iget-object p1, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object p1, p1, Lo/PaymentMode$$Parcelable;->mayLaunchUrl:Lo/SpinTheWheelResponseJsonAdapter;

    if-eqz p1, :cond_2

    :try_start_2
    iget-object p1, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object p1, p1, Lo/PaymentMode$$Parcelable;->mayLaunchUrl:Lo/SpinTheWheelResponseJsonAdapter;

    invoke-interface {p1}, Lo/SpinTheWheelResponseJsonAdapter;->ICustomTabsCallback()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    return-void

    :catch_2
    move-exception p1

    invoke-static {v0, p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method onNavigationEvent(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected onNavigationEvent(Lo/setLastItem;)Z
    .locals 2

    iget-object p1, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object p1, p1, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object p1, p1, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    invoke-virtual {p1}, Lo/PaymentModeListResponse;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    instance-of v1, p1, Landroid/view/View;

    if-nez v1, :cond_1

    return v0

    :cond_1
    check-cast p1, Landroid/view/View;

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lo/AuthSupportedResponse$MetaData;->ICustomTabsCallback(Landroid/view/View;Landroid/content/Context;)Z

    move-result p1

    return p1
.end method

.method protected abstract onNavigationEvent(Lo/setLastItem;Lo/setCanReverse;)Z
.end method

.method protected final onPostMessage(Ljava/util/List;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v2, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    invoke-static {v1, v2}, Lo/TemplateProperties;->ICustomTabsCallback(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected onPostMessage(IZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x1e

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "Failed to load ad: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    iput-boolean p2, p0, Lo/DeviceAttrResponse;->onNavigationEvent:Z

    iget-object p2, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object p2, p2, Lo/PaymentMode$$Parcelable;->warmup:Lo/PendingUsers;

    const-string v0, "#007 Could not call remote method."

    if-eqz p2, :cond_0

    :try_start_0
    iget-object p2, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object p2, p2, Lo/PaymentMode$$Parcelable;->warmup:Lo/PendingUsers;

    invoke-interface {p2, p1}, Lo/PendingUsers;->onNavigationEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    invoke-static {v0, p2}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    iget-object p2, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object p2, p2, Lo/PaymentMode$$Parcelable;->notify:Lo/CredProtectResponseJsonAdapter;

    if-eqz p2, :cond_1

    :try_start_1
    iget-object p2, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object p2, p2, Lo/PaymentMode$$Parcelable;->notify:Lo/CredProtectResponseJsonAdapter;

    invoke-interface {p2, p1}, Lo/CredProtectResponseJsonAdapter;->onMessageChannelReady(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p1

    invoke-static {v0, p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method protected final onPostMessage(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    if-eqz v0, :cond_0

    invoke-static {}, Lo/getParcel;->onTransact()Lo/getAccount_number;

    move-result-object v1

    invoke-virtual {v1}, Lo/getAccount_number;->extraCallback()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lo/PaymentModeListResponse;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public final onPostMessage(Ljava/util/HashSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    invoke-virtual {v0, p1}, Lo/PaymentMode$$Parcelable;->onNavigationEvent(Ljava/util/HashSet;)V

    return-void
.end method

.method public final onPostMessage(Lo/GreetingCampaignCodeRequest;)V
    .locals 5

    iget-object v0, p1, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-wide v0, v0, Lo/setOnCtaClick;->getInterfaceDescriptor:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-object v0, p1, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-object v0, v0, Lo/setOnCtaClick;->validateRelationship:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-object v0, v0, Lo/setOnCtaClick;->validateRelationship:Ljava/lang/String;

    invoke-static {v0}, Lo/DeviceAttrResponse;->extraCallback(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    iget-object v2, p0, Lo/DeviceAttrResponse;->onMessageChannelReady:Lo/setCanReverse;

    iget-object v3, p1, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-wide v3, v3, Lo/setOnCtaClick;->getInterfaceDescriptor:J

    add-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Lo/setCanReverse;->onPostMessage(J)Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;

    move-result-object v0

    iget-object v1, p0, Lo/DeviceAttrResponse;->onMessageChannelReady:Lo/setCanReverse;

    const-string v2, "stc"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lo/setCanReverse;->onMessageChannelReady(Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;[Ljava/lang/String;)Z

    :cond_0
    iget-object v0, p0, Lo/DeviceAttrResponse;->onMessageChannelReady:Lo/setCanReverse;

    iget-object v1, p1, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-object v1, v1, Lo/setOnCtaClick;->validateRelationship:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lo/setCanReverse;->onMessageChannelReady(Ljava/lang/String;)V

    iget-object v0, p0, Lo/DeviceAttrResponse;->onMessageChannelReady:Lo/setCanReverse;

    iget-object v1, p0, Lo/DeviceAttrResponse;->extraCallback:Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;

    const-string v2, "arf"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lo/setCanReverse;->onMessageChannelReady(Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;[Ljava/lang/String;)Z

    iget-object v0, p0, Lo/DeviceAttrResponse;->onMessageChannelReady:Lo/setCanReverse;

    invoke-virtual {v0}, Lo/setCanReverse;->onNavigationEvent()Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;

    move-result-object v0

    iput-object v0, p0, Lo/DeviceAttrResponse;->asBinder:Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;

    iget-object v0, p0, Lo/DeviceAttrResponse;->onMessageChannelReady:Lo/setCanReverse;

    iget-object v1, p1, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-object v1, v1, Lo/setOnCtaClick;->ICustomTabsService$Stub:Ljava/lang/String;

    const-string v2, "gqi"

    invoke-virtual {v0, v2, v1}, Lo/setCanReverse;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    const/4 v1, 0x0

    iput-object v1, v0, Lo/PaymentMode$$Parcelable;->asBinder:Lo/ContactReverseSyncResponse;

    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iput-object p1, v0, Lo/PaymentMode$$Parcelable;->newSession:Lo/GreetingCampaignCodeRequest;

    iget-object v0, p1, Lo/GreetingCampaignCodeRequest;->onRelationshipValidationResult:Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;

    new-instance v1, Lo/isSame;

    invoke-direct {v1, p0, p1}, Lo/isSame;-><init>(Lo/DeviceAttrResponse;Lo/GreetingCampaignCodeRequest;)V

    invoke-virtual {v0, v1}, Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;->onNavigationEvent(Lo/RedeemUtils$redeemReward$1$onResponse$3$onResponse$1$$special$$inlined$executeOnResume$1;)V

    iget-object v0, p1, Lo/GreetingCampaignCodeRequest;->onRelationshipValidationResult:Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;

    sget-object v1, Lo/RedeemUtils$redeemReward$1$onResponse$3$onResponse$2$$special$$inlined$executeOnResume$1$onNavigationEvent$extraCallback;->onPostMessage:Lo/RedeemUtils$redeemReward$1$onResponse$3$onResponse$2$$special$$inlined$executeOnResume$1$onNavigationEvent$extraCallback;

    invoke-virtual {v0, v1}, Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;->extraCallback(Lo/RedeemUtils$redeemReward$1$onResponse$3$onResponse$2$$special$$inlined$executeOnResume$1$onNavigationEvent$extraCallback;)V

    iget-object v0, p0, Lo/DeviceAttrResponse;->onMessageChannelReady:Lo/setCanReverse;

    invoke-virtual {p0, p1, v0}, Lo/DeviceAttrResponse;->ICustomTabsCallback(Lo/GreetingCampaignCodeRequest;Lo/setCanReverse;)V

    return-void
.end method

.method public final onPostMessage(Lo/PendingUsers;)V
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread.: setAdListener"

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iput-object p1, v0, Lo/PaymentMode$$Parcelable;->warmup:Lo/PendingUsers;

    return-void
.end method

.method public final onPostMessage(Lo/SpinTheWheelResponseJsonAdapter;)V
    .locals 1

    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iput-object p1, v0, Lo/PaymentMode$$Parcelable;->mayLaunchUrl:Lo/SpinTheWheelResponseJsonAdapter;

    return-void
.end method

.method public final onPostMessage(Lo/UserWinningStatisticsJsonAdapter;)V
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread.: setIconAdOptions"

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iput-object p1, v0, Lo/PaymentMode$$Parcelable;->IPostMessageService:Lo/UserWinningStatisticsJsonAdapter;

    return-void
.end method

.method public final onPostMessage(Lo/setFlippedHorizontally;Ljava/lang/String;)V
    .locals 0

    const-string p1, "#006 Unexpected call to a deprecated method."

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    return-void
.end method

.method public onPostMessage(Lo/setMaxCropResultSize;)V
    .locals 0

    const-string p1, "#006 Unexpected call to a deprecated method."

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    return-void
.end method

.method public onPostMessage(Z)V
    .locals 0

    const-string p1, "Attempt to call setManualImpressionsEnabled for an unsupported ad type."

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    return-void
.end method

.method public postMessage()V
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread.: resume"

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    return-void
.end method

.method protected final read()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->newSession:Lo/GreetingCampaignCodeRequest;

    const-string v1, "javascript"

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget-object v2, v0, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    if-nez v2, :cond_1

    return-object v1

    :cond_1
    iget-object v0, v0, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-object v0, v0, Lo/setOnCtaClick;->isConnected:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_2
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "media_type"

    const/4 v3, -0x1

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_3

    const/4 v0, 0x0

    return-object v0

    :cond_3
    return-object v1

    :catch_0
    move-exception v0

    const-string v2, ""

    invoke-static {v2, v0}, Lo/getText1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public final requestPostMessageChannel()V
    .locals 2

    const-string v0, "#008 Must be called on the main UI thread.: stopLoading"

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/DeviceAttrResponse;->onNavigationEvent:Z

    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/PaymentMode$$Parcelable;->ICustomTabsCallback(Z)V

    return-void
.end method

.method public setDefaultImpl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->onNavigationEvent:Ljava/lang/String;

    return-object v0
.end method

.method public u_()V
    .locals 3

    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    if-nez v0, :cond_0

    const-string v0, "Ad state was null when trying to ping click URLs."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "Pinging click URLs."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;)V

    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->getInterfaceDescriptor:Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->getInterfaceDescriptor:Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;

    invoke-virtual {v0}, Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;->onPostMessage()V

    :cond_1
    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->onNavigationEvent:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    iget-object v1, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->onMessageChannelReady:Lo/DataListJsonAdapter;

    iget-object v1, v1, Lo/DataListJsonAdapter;->extraCallback:Ljava/lang/String;

    iget-object v2, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v2, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v2, v2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->onNavigationEvent:Ljava/util/List;

    invoke-virtual {p0, v2}, Lo/DeviceAttrResponse;->onNavigationEvent(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lo/AuthSupportedResponse$MetaData;->ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    :cond_2
    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->ICustomTabsService:Lo/ParentEntity;

    if-eqz v0, :cond_3

    :try_start_0
    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->ICustomTabsService:Lo/ParentEntity;

    invoke-interface {v0}, Lo/ParentEntity;->onNavigationEvent()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    return-void
.end method

.method public final updateVisuals()V
    .locals 3

    const-string v0, "#008 Must be called on the main UI thread.: recordManualImpression"

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    if-nez v0, :cond_0

    const-string v0, "Ad state was null when trying to ping manual tracking URLs."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v0, "Pinging manual tracking URLs."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;)V

    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-boolean v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->INotificationSideChannel$Stub:Z

    if-nez v0, :cond_4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v1, v1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->ICustomTabsCallback$Stub:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v1, v1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->ICustomTabsCallback$Stub:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    iget-object v1, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v1, v1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->getInterfaceDescriptor:Lo/TabConfigResponse;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v1, v1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->getInterfaceDescriptor:Lo/TabConfigResponse;

    iget-object v1, v1, Lo/TabConfigResponse;->asBinder:Ljava/util/List;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v1, v1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->getInterfaceDescriptor:Lo/TabConfigResponse;

    iget-object v1, v1, Lo/TabConfigResponse;->asBinder:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    return-void

    :cond_3
    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    iget-object v1, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    iget-object v2, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v2, Lo/PaymentMode$$Parcelable;->onMessageChannelReady:Lo/DataListJsonAdapter;

    iget-object v2, v2, Lo/DataListJsonAdapter;->extraCallback:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lo/AuthSupportedResponse$MetaData;->ICustomTabsCallback(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->INotificationSideChannel$Stub:Z

    :cond_4
    return-void
.end method

.method public validateRelationship()Lo/TrophySectionsResponseJsonAdapter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final warmup()Z
    .locals 1

    const-string v0, "#008 Must be called on the main UI thread.: isLoaded"

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asBinder:Lo/ContactReverseSyncResponse;

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->onRelationshipValidationResult:Lo/setSwipedDirection;

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/DeviceAttrResponse;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected final write()V
    .locals 2

    iget-object v0, p0, Lo/DeviceAttrResponse;->onTransact:Lo/getEventName;

    if-eqz v0, :cond_0

    invoke-static {}, Lo/getParcel;->IPostMessageService()Lo/getData;

    move-result-object v0

    iget-object v1, p0, Lo/DeviceAttrResponse;->onTransact:Lo/getEventName;

    invoke-virtual {v0, v1}, Lo/getData;->onPostMessage(Lo/getEventName;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lo/DeviceAttrResponse;->onTransact:Lo/getEventName;

    :cond_0
    return-void
.end method

.method public final y_()V
    .locals 0

    invoke-virtual {p0}, Lo/DeviceAttrResponse;->IPostMessageService$Stub()V

    return-void
.end method
