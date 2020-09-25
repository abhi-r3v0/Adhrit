.class public final Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;
.super Lo/BankDetailsResponse$BanksDetail;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private ICustomTabsService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private newSession:Z

.field private warmup:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/setCurrentItem$default;Ljava/lang/String;Lo/BankAccountData;Lo/DataListJsonAdapter;Lo/StatementPeriod;)V
    .locals 0

    invoke-direct/range {p0 .. p6}, Lo/BankDetailsResponse$BanksDetail;-><init>(Landroid/content/Context;Lo/setCurrentItem$default;Ljava/lang/String;Lo/BankAccountData;Lo/DataListJsonAdapter;Lo/StatementPeriod;)V

    new-instance p1, Ljava/lang/ref/WeakReference;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->ICustomTabsService:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method private final extraCallback(Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;)V
    .locals 7

    invoke-virtual {p0}, Lo/BankDetailsResponse$BanksDetail;->connect()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsService()Landroid/webkit/WebView;

    move-result-object v3

    if-nez v3, :cond_1

    return-void

    :cond_1
    invoke-interface {p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->newSession()Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lo/getParcel;->IPostMessageService()Lo/getData;

    move-result-object v0

    iget-object v1, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lo/getData;->onNavigationEvent(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->onMessageChannelReady:Lo/DataListJsonAdapter;

    iget v0, v0, Lo/DataListJsonAdapter;->onPostMessage:I

    iget-object v1, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->onMessageChannelReady:Lo/DataListJsonAdapter;

    iget v1, v1, Lo/DataListJsonAdapter;->onMessageChannelReady:I

    const/16 v2, 0x17

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "."

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lo/getParcel;->IPostMessageService()Lo/getData;

    move-result-object v1

    invoke-virtual {p0}, Lo/DeviceAttrResponse;->read()Ljava/lang/String;

    move-result-object v6

    const-string v4, ""

    const-string v5, "javascript"

    invoke-virtual/range {v1 .. v6}, Lo/getData;->onNavigationEvent(Ljava/lang/String;Landroid/webkit/WebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lo/getEventName;

    move-result-object v0

    iput-object v0, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onTransact:Lo/getEventName;

    iget-object v0, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onTransact:Lo/getEventName;

    if-eqz v0, :cond_4

    invoke-static {}, Lo/getParcel;->IPostMessageService()Lo/getData;

    move-result-object v0

    iget-object v1, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onTransact:Lo/getEventName;

    invoke-virtual {v0, v1, p1}, Lo/getData;->extraCallback(Lo/getEventName;Landroid/view/View;)V

    invoke-static {}, Lo/getParcel;->IPostMessageService()Lo/getData;

    move-result-object p1

    iget-object v0, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onTransact:Lo/getEventName;

    invoke-virtual {p1, v0}, Lo/getData;->onNavigationEvent(Lo/getEventName;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->newSession:Z

    :cond_4
    return-void
.end method

.method private final onMessageChannelReady(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)Z
    .locals 6

    iget-boolean v0, p2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->warmup:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    invoke-static {p2}, Lo/setCreditScoreExist;->onMessageChannelReady(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p1, "Could not get mediation view"

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    return v1

    :cond_0
    iget-object v2, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v2, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    invoke-virtual {v2}, Lo/PaymentModeListResponse;->getNextView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    instance-of v3, v2, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v3}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->destroy()V

    :cond_1
    iget-object v3, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v3, v3, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    invoke-virtual {v3, v2}, Lo/PaymentModeListResponse;->removeView(Landroid/view/View;)V

    :cond_2
    invoke-static {p2}, Lo/setCreditScoreExist;->extraCallback(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)Z

    move-result v2

    if-nez v2, :cond_6

    :try_start_0
    invoke-static {}, Lo/getParcel;->cancel()Lo/Template;

    move-result-object v2

    iget-object v3, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v3, v3, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    invoke-virtual {v2, v3}, Lo/Template;->ICustomTabsCallback(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    new-instance v2, Lo/LifestyleComponentAsset;

    iget-object v3, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v3, v3, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lo/LifestyleComponentAsset;-><init>(Landroid/content/Context;Landroid/view/View;)V

    new-instance v3, Lo/SummaryBankPropertiesJsonAdapter;

    iget-object v4, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v4, v4, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    iget-object v5, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v5, v5, Lo/PaymentMode$$Parcelable;->onNavigationEvent:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Lo/SummaryBankPropertiesJsonAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lo/LifestyleComponentAsset;->extraCallback(Lo/LifestyleTemplateProperties;)V

    :cond_3
    iget-object v2, p2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->ICustomTabsService$Stub:Lo/setCurrentItem$default;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v2, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    iget-object v3, p2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->ICustomTabsService$Stub:Lo/setCurrentItem$default;

    iget v3, v3, Lo/setCurrentItem$default;->onTransact:I

    invoke-virtual {v2, v3}, Lo/PaymentModeListResponse;->setMinimumWidth(I)V

    iget-object v2, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v2, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    iget-object p2, p2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->ICustomTabsService$Stub:Lo/setCurrentItem$default;

    iget p2, p2, Lo/setCurrentItem$default;->onPostMessage:I

    invoke-virtual {v2, p2}, Lo/PaymentModeListResponse;->setMinimumHeight(I)V

    :cond_4
    invoke-virtual {p0, v0}, Lo/DeviceAttrResponse;->onPostMessage(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object p2

    const-string v0, "BannerAdManager.swapViews"

    invoke-virtual {p2, p1, v0}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->onMessageChannelReady(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string p2, "Could not add mediation view to view hierarchy."

    invoke-static {p2, p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1

    :cond_5
    iget-object v0, p2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->ICustomTabsService$Stub:Lo/setCurrentItem$default;

    if-eqz v0, :cond_6

    iget-object v0, p2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    if-eqz v0, :cond_6

    iget-object v0, p2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    iget-object v2, p2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->ICustomTabsService$Stub:Lo/setCurrentItem$default;

    invoke-static {v2}, Lo/SizeFilterJsonAdapter;->onMessageChannelReady(Lo/setCurrentItem$default;)Lo/SizeFilterJsonAdapter;

    move-result-object v2

    invoke-interface {v0, v2}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent(Lo/SizeFilterJsonAdapter;)V

    iget-object v0, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    invoke-virtual {v0}, Lo/PaymentModeListResponse;->removeAllViews()V

    iget-object v0, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    iget-object v2, p2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->ICustomTabsService$Stub:Lo/setCurrentItem$default;

    iget v2, v2, Lo/setCurrentItem$default;->onTransact:I

    invoke-virtual {v0, v2}, Lo/PaymentModeListResponse;->setMinimumWidth(I)V

    iget-object v0, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    iget-object v2, p2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->ICustomTabsService$Stub:Lo/setCurrentItem$default;

    iget v2, v2, Lo/setCurrentItem$default;->onPostMessage:I

    invoke-virtual {v0, v2}, Lo/PaymentModeListResponse;->setMinimumHeight(I)V

    iget-object p2, p2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {p2}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->newSession()Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p2}, Lo/DeviceAttrResponse;->onPostMessage(Landroid/view/View;)V

    :cond_6
    :goto_0
    iget-object p2, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object p2, p2, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    invoke-virtual {p2}, Lo/PaymentModeListResponse;->getChildCount()I

    move-result p2

    const/4 v0, 0x1

    if-le p2, v0, :cond_7

    iget-object p2, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object p2, p2, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    invoke-virtual {p2}, Lo/PaymentModeListResponse;->showNext()V

    :cond_7
    if-eqz p1, :cond_a

    iget-object p1, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object p1, p1, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    invoke-virtual {p1}, Lo/PaymentModeListResponse;->getNextView()Landroid/view/View;

    move-result-object p1

    instance-of p2, p1, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    if-eqz p2, :cond_8

    check-cast p1, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->destroy()V

    goto :goto_1

    :cond_8
    if-eqz p1, :cond_9

    iget-object p2, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object p2, p2, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    invoke-virtual {p2, p1}, Lo/PaymentModeListResponse;->removeView(Landroid/view/View;)V

    :cond_9
    :goto_1
    iget-object p1, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    invoke-virtual {p1}, Lo/PaymentMode$$Parcelable;->onNavigationEvent()V

    :cond_a
    iget-object p1, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object p1, p1, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    invoke-virtual {p1, v1}, Lo/PaymentModeListResponse;->setVisibility(I)V

    return v0
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)Z
    .locals 4

    invoke-super {p0, p1, p2}, Lo/BankDetailsResponse$BanksDetail;->ICustomTabsCallback(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    invoke-virtual {v0}, Lo/PaymentMode$$Parcelable;->extraCallback()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p1, p2}, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onMessageChannelReady(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->write:Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;

    if-eqz p1, :cond_1

    iget-object p1, p2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->write:Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;

    sget-object p2, Lo/RedeemUtils$redeemReward$1$onResponse$3$onResponse$2$$special$$inlined$executeOnResume$1$onNavigationEvent$extraCallback;->onMessageChannelReady:Lo/RedeemUtils$redeemReward$1$onResponse$3$onResponse$2$$special$$inlined$executeOnResume$1$onNavigationEvent$extraCallback;

    invoke-virtual {p1, p2}, Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;->extraCallback(Lo/RedeemUtils$redeemReward$1$onResponse$3$onResponse$2$$special$$inlined$executeOnResume$1$onNavigationEvent$extraCallback;)V

    :cond_1
    invoke-virtual {p0, v1}, Lo/DeviceAttrResponse;->extraCallback(I)V

    return v1

    :cond_2
    invoke-virtual {p0, p2, v1}, Lo/clone;->ICustomTabsCallback(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Z)V

    iget-boolean p1, p2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->ICustomTabsService:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p0, p2}, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)V

    invoke-static {}, Lo/getParcel;->IPostMessageService$Stub$Proxy()Lo/getCtas;

    iget-object p1, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object p1, p1, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    invoke-static {p1, p0}, Lo/getCtas;->onPostMessage(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-static {}, Lo/getParcel;->IPostMessageService$Stub$Proxy()Lo/getCtas;

    iget-object p1, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object p1, p1, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    invoke-static {p1, p0}, Lo/getCtas;->onMessageChannelReady(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iget-boolean p1, p2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->ICustomTabsCallback$Stub$Proxy:Z

    if-nez p1, :cond_6

    new-instance p1, Lo/RecentCountJsonAdapter;

    invoke-direct {p1, p0}, Lo/RecentCountJsonAdapter;-><init>(Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;)V

    iget-object v1, p2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    if-eqz v1, :cond_3

    iget-object v1, p2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->IPostMessageService$Stub()Lo/SizeFilter;

    move-result-object v1

    goto :goto_0

    :cond_3
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_6

    new-instance v2, Lo/PaymentProcessingDialog$dismiss$$inlined$executeOnResume$1;

    invoke-direct {v2, p2, p1}, Lo/PaymentProcessingDialog$dismiss$$inlined$executeOnResume$1;-><init>(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Ljava/lang/Runnable;)V

    invoke-interface {v1, v2}, Lo/SizeFilter;->onMessageChannelReady(Lo/InterstitialContainer$$special$$inlined$executeOnResume$1;)V

    goto :goto_1

    :cond_4
    iget-object p1, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    invoke-virtual {p1}, Lo/PaymentMode$$Parcelable;->onMessageChannelReady()Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lo/WinningTypes;->fromMediaDescription:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v2

    invoke-virtual {v2, p1}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    :cond_5
    invoke-virtual {p0, p2, v1}, Lo/clone;->extraCallback(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Z)V

    :cond_6
    :goto_1
    iget-object p1, p2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    if-eqz p1, :cond_8

    iget-object p1, p2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent()Lo/ClickReference$$Parcelable;

    move-result-object p1

    iget-object v1, p2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->IPostMessageService$Stub()Lo/SizeFilter;

    move-result-object v1

    if-eqz v1, :cond_7

    invoke-interface {v1}, Lo/SizeFilter;->asBinder()V

    :cond_7
    iget-object v1, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->ICustomTabsService$Stub:Lo/WinLuckyNumberResponseJsonAdapter;

    if-eqz v1, :cond_8

    if-eqz p1, :cond_8

    iget-object v1, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->ICustomTabsService$Stub:Lo/WinLuckyNumberResponseJsonAdapter;

    invoke-virtual {p1, v1}, Lo/ClickReference$$Parcelable;->extraCallback(Lo/WinLuckyNumberResponseJsonAdapter;)V

    :cond_8
    invoke-static {}, Lo/component20;->extraCallback()Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    invoke-virtual {p1}, Lo/PaymentMode$$Parcelable;->extraCallback()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, p2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    if-eqz p1, :cond_d

    iget-object p1, p2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->newSession:Lorg/json/JSONObject;

    if-eqz p1, :cond_9

    iget-object p1, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->asInterface:Lo/Data;

    iget-object v0, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->ICustomTabsCallback$Stub:Lo/setCurrentItem$default;

    invoke-virtual {p1, v0, p2}, Lo/Data;->onNavigationEvent(Lo/setCurrentItem$default;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)V

    :cond_9
    iget-object p1, p2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->newSession()Landroid/view/View;

    move-result-object v0

    new-instance p1, Lo/LifestyleComponentAsset;

    iget-object v1, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    invoke-direct {p1, v1, v0}, Lo/LifestyleComponentAsset;-><init>(Landroid/content/Context;Landroid/view/View;)V

    invoke-static {}, Lo/getParcel;->cancel()Lo/Template;

    move-result-object v1

    iget-object v2, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v2, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lo/Template;->ICustomTabsCallback(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->ICustomTabsCallback:Lo/setLastItem;

    invoke-static {v1}, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onMessageChannelReady(Lo/setLastItem;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->onNavigationEvent:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    new-instance v1, Lo/SummaryBankPropertiesJsonAdapter;

    iget-object v2, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v2, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    iget-object v3, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v3, v3, Lo/PaymentMode$$Parcelable;->onNavigationEvent:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lo/SummaryBankPropertiesJsonAdapter;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lo/LifestyleComponentAsset;->extraCallback(Lo/LifestyleTemplateProperties;)V

    :cond_a
    invoke-virtual {p2}, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->onNavigationEvent()Z

    move-result v1

    if-eqz v1, :cond_b

    iget-object v1, p2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-virtual {p1, v1}, Lo/LifestyleComponentAsset;->extraCallback(Lo/LifestyleTemplateProperties;)V

    goto :goto_2

    :cond_b
    iget-object v1, p2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->IPostMessageService$Stub()Lo/SizeFilter;

    move-result-object v1

    new-instance v2, Lo/RewardCountModel;

    invoke-direct {v2, p1, p2}, Lo/RewardCountModel;-><init>(Lo/LifestyleComponentAsset;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)V

    invoke-interface {v1, v2}, Lo/SizeFilter;->onNavigationEvent(Lo/UploadFilters;)V

    goto :goto_2

    :cond_c
    iget-object p1, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object p1, p1, Lo/PaymentMode$$Parcelable;->INotificationSideChannel$Stub:Landroid/view/View;

    if-eqz p1, :cond_d

    iget-object p1, p2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->newSession:Lorg/json/JSONObject;

    if-eqz p1, :cond_d

    iget-object p1, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->asInterface:Lo/Data;

    iget-object v0, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->ICustomTabsCallback$Stub:Lo/setCurrentItem$default;

    iget-object v1, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->INotificationSideChannel$Stub:Landroid/view/View;

    invoke-virtual {p1, v0, p2, v1}, Lo/Data;->extraCallback(Lo/setCurrentItem$default;Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Landroid/view/View;)V

    iget-object p1, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, p1, Lo/PaymentMode$$Parcelable;->INotificationSideChannel$Stub:Landroid/view/View;

    :cond_d
    :goto_2
    iget-boolean p1, p2, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->warmup:Z

    if-nez p1, :cond_e

    iget-object p1, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    invoke-virtual {p1, v0}, Lo/PaymentMode$$Parcelable;->onNavigationEvent(Landroid/view/View;)V

    :cond_e
    const/4 p1, 0x1

    return p1
.end method

.method public final ICustomTabsCallback(Lo/setLastItem;)Z
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-boolean v2, v1, Lo/setLastItem;->onRelationshipValidationResult:Z

    iget-boolean v3, v0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->warmup:Z

    if-ne v2, v3, :cond_0

    goto :goto_2

    :cond_0
    new-instance v2, Lo/setLastItem;

    iget v5, v1, Lo/setLastItem;->onMessageChannelReady:I

    iget-wide v6, v1, Lo/setLastItem;->ICustomTabsCallback:J

    iget-object v8, v1, Lo/setLastItem;->extraCallback:Landroid/os/Bundle;

    iget v9, v1, Lo/setLastItem;->onPostMessage:I

    iget-object v10, v1, Lo/setLastItem;->onNavigationEvent:Ljava/util/List;

    iget-boolean v11, v1, Lo/setLastItem;->onTransact:Z

    iget v12, v1, Lo/setLastItem;->asBinder:I

    iget-boolean v3, v1, Lo/setLastItem;->onRelationshipValidationResult:Z

    if-nez v3, :cond_2

    iget-boolean v3, v0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->warmup:Z

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    const/4 v13, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v3, 0x1

    const/4 v13, 0x1

    :goto_1
    iget-object v14, v1, Lo/setLastItem;->ICustomTabsCallback$Stub:Ljava/lang/String;

    iget-object v15, v1, Lo/setLastItem;->asInterface:Lo/WinLuckyNumberClaim;

    iget-object v3, v1, Lo/setLastItem;->ICustomTabsCallback$Stub$Proxy:Landroid/location/Location;

    move-object/from16 v16, v3

    iget-object v3, v1, Lo/setLastItem;->ICustomTabsService:Ljava/lang/String;

    move-object/from16 v17, v3

    iget-object v3, v1, Lo/setLastItem;->getInterfaceDescriptor:Landroid/os/Bundle;

    move-object/from16 v18, v3

    iget-object v3, v1, Lo/setLastItem;->newSession:Landroid/os/Bundle;

    move-object/from16 v19, v3

    iget-object v3, v1, Lo/setLastItem;->warmup:Ljava/util/List;

    move-object/from16 v20, v3

    iget-object v3, v1, Lo/setLastItem;->extraCommand:Ljava/lang/String;

    move-object/from16 v21, v3

    iget-object v3, v1, Lo/setLastItem;->postMessage:Ljava/lang/String;

    move-object/from16 v22, v3

    iget-boolean v1, v1, Lo/setLastItem;->mayLaunchUrl:Z

    move/from16 v23, v1

    move-object v4, v2

    invoke-direct/range {v4 .. v23}, Lo/setLastItem;-><init>(IJLandroid/os/Bundle;ILjava/util/List;ZIZLjava/lang/String;Lo/WinLuckyNumberClaim;Landroid/location/Location;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Z)V

    move-object v1, v2

    :goto_2
    invoke-super {v0, v1}, Lo/BankDetailsResponse$BanksDetail;->ICustomTabsCallback(Lo/setLastItem;)Z

    move-result v1

    return v1
.end method

.method public final IconCompatParcelizer()V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Interstitial is NOT supported by BannerAdManager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final MediaBrowserCompat()V
    .locals 1

    iget-object v0, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->ICustomTabsCallback:Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;

    invoke-virtual {v0}, Lo/NewOnboardAddCardViewManager$showCardNumber$3$onAnimationEnd$$inlined$executeOnResume$1;->onPostMessage()V

    return-void
.end method

.method protected final cancelAll()V
    .locals 2

    iget-object v0, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->newSession:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->extraCallback(Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;)V

    :cond_1
    invoke-super {p0}, Lo/BankDetailsResponse$BanksDetail;->cancelAll()V

    return-void
.end method

.method protected final extraCallback(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Z)V
    .locals 7

    invoke-virtual {p0}, Lo/BankDetailsResponse$BanksDetail;->connect()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_0

    iget-object v0, p1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_2

    iget-boolean v2, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->newSession:Z

    if-nez v2, :cond_1

    invoke-direct {p0, v0}, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->extraCallback(Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;)V

    :cond_1
    iget-object v2, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onTransact:Lo/getEventName;

    if-eqz v2, :cond_2

    new-instance v2, Lo/postOrRun;

    invoke-direct {v2}, Lo/postOrRun;-><init>()V

    const-string v3, "onSdkImpression"

    invoke-interface {v0, v3, v2}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;Ljava/util/Map;)V

    :cond_2
    invoke-super {p0, p1, p2}, Lo/BankDetailsResponse$BanksDetail;->extraCallback(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Z)V

    invoke-static {p1}, Lo/setCreditScoreExist;->extraCallback(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)Z

    move-result p2

    if-eqz p2, :cond_e

    new-instance p2, Lo/getCounts;

    invoke-direct {p2, p0}, Lo/getCounts;-><init>(Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;)V

    if-eqz p1, :cond_e

    invoke-static {p1}, Lo/setCreditScoreExist;->extraCallback(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->newSession()Landroid/view/View;

    move-result-object v2

    goto :goto_1

    :cond_3
    move-object v2, v1

    :goto_1
    if-nez v2, :cond_4

    const-string p1, "AdWebView is null"

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    return-void

    :cond_4
    :try_start_0
    iget-object v3, p1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->getInterfaceDescriptor:Lo/TabConfigResponse;

    if-eqz v3, :cond_5

    iget-object v3, p1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->getInterfaceDescriptor:Lo/TabConfigResponse;

    iget-object v3, v3, Lo/TabConfigResponse;->extraCommand:Ljava/util/List;

    goto :goto_2

    :cond_5
    move-object v3, v1

    :goto_2
    if-eqz v3, :cond_d

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_5

    :cond_6
    iget-object v4, p1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->requestPostMessageChannel:Lo/Info;

    if-eqz v4, :cond_7

    iget-object v4, p1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->requestPostMessageChannel:Lo/Info;

    invoke-interface {v4}, Lo/Info;->ICustomTabsCallback$Stub()Lo/RawBankAccountJsonAdapter;

    move-result-object v4

    goto :goto_3

    :cond_7
    move-object v4, v1

    :goto_3
    iget-object v5, p1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->requestPostMessageChannel:Lo/Info;

    if-eqz v5, :cond_8

    iget-object p1, p1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->requestPostMessageChannel:Lo/Info;

    invoke-interface {p1}, Lo/Info;->asInterface()Lo/TrackBalanceConfigsJsonAdapter;

    move-result-object p1

    goto :goto_4

    :cond_8
    move-object p1, v1

    :goto_4
    const-string v5, "2"

    invoke-interface {v3, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "/nativeExpressViewClicked"

    if-eqz v5, :cond_a

    if-eqz v4, :cond_a

    :try_start_1
    invoke-static {v2}, Lo/GetRatingResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getEventName;

    move-result-object p1

    invoke-interface {v4, p1}, Lo/RawBankAccountJsonAdapter;->onNavigationEvent(Lo/getEventName;)V

    invoke-interface {v4}, Lo/RawBankAccountJsonAdapter;->C_()Z

    move-result p1

    if-nez p1, :cond_9

    invoke-interface {v4}, Lo/RawBankAccountJsonAdapter;->onRelationshipValidationResult()V

    :cond_9
    invoke-static {v4, v1, p2}, Lo/setCreditScoreExist;->extraCallback(Lo/RawBankAccountJsonAdapter;Lo/TrackBalanceConfigsJsonAdapter;Lo/getCounts;)Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    move-result-object p1

    invoke-interface {v0, v6, p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    return-void

    :cond_a
    const-string v4, "1"

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    if-eqz p1, :cond_c

    invoke-static {v2}, Lo/GetRatingResponseJsonAdapter;->ICustomTabsCallback(Ljava/lang/Object;)Lo/getEventName;

    move-result-object v2

    invoke-interface {p1, v2}, Lo/TrackBalanceConfigsJsonAdapter;->ICustomTabsCallback(Lo/getEventName;)V

    invoke-interface {p1}, Lo/TrackBalanceConfigsJsonAdapter;->asInterface()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-interface {p1}, Lo/TrackBalanceConfigsJsonAdapter;->onRelationshipValidationResult()V

    :cond_b
    invoke-static {v1, p1, p2}, Lo/setCreditScoreExist;->extraCallback(Lo/RawBankAccountJsonAdapter;Lo/TrackBalanceConfigsJsonAdapter;Lo/getCounts;)Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;

    move-result-object p1

    invoke-interface {v0, v6, p1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    return-void

    :cond_c
    const-string p1, "No matching template id and mapper"

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    return-void

    :cond_d
    :goto_5
    const-string p1, "No template ids present in mediation response"

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Error occurred while recording impression and registering for clicks"

    invoke-static {p2, p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_e
    return-void
.end method

.method public final onGlobalLayout()V
    .locals 1

    iget-object v0, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    invoke-virtual {p0, v0}, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)V

    return-void
.end method

.method protected final onNavigationEvent(Lo/GreetingCampaignCodeRequest;Lo/RecentOrder;Lo/StatementDetailsRequestJsonAdapter;)Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/internal/ads/zzarg;
        }
    .end annotation

    iget-object v0, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->ICustomTabsCallback$Stub:Lo/setCurrentItem$default;

    iget-object v0, v0, Lo/setCurrentItem$default;->asInterface:[Lo/setCurrentItem$default;

    if-nez v0, :cond_2

    iget-object v0, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->ICustomTabsCallback$Stub:Lo/setCurrentItem$default;

    iget-boolean v0, v0, Lo/setCurrentItem$default;->ICustomTabsCallback$Stub:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, p1, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-boolean v1, v1, Lo/setOnCtaClick;->IPostMessageService$Stub:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->ICustomTabsCallback$Stub:Lo/setCurrentItem$default;

    goto :goto_1

    :cond_0
    iget-object v1, p1, Lo/GreetingCampaignCodeRequest;->onPostMessage:Lo/setOnCtaClick;

    iget-object v1, v1, Lo/setOnCtaClick;->newSession:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v2, "[xX]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v3, 0x1

    aget-object v4, v1, v3

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    aget-object v2, v1, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    aget-object v1, v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    new-instance v3, Lo/getRewardsExpired;

    invoke-direct {v3, v2, v1}, Lo/getRewardsExpired;-><init>(II)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->ICustomTabsCallback$Stub:Lo/setCurrentItem$default;

    invoke-virtual {v1}, Lo/setCurrentItem$default;->onNavigationEvent()Lo/getRewardsExpired;

    move-result-object v3

    :goto_0
    new-instance v1, Lo/setCurrentItem$default;

    iget-object v2, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v2, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    invoke-direct {v1, v2, v3}, Lo/setCurrentItem$default;-><init>(Landroid/content/Context;Lo/getRewardsExpired;)V

    :goto_1
    iput-object v1, v0, Lo/PaymentMode$$Parcelable;->ICustomTabsCallback$Stub:Lo/setCurrentItem$default;

    :cond_2
    invoke-super {p0, p1, p2, p3}, Lo/BankDetailsResponse$BanksDetail;->onNavigationEvent(Lo/GreetingCampaignCodeRequest;Lo/RecentOrder;Lo/StatementDetailsRequestJsonAdapter;)Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    move-result-object p1

    return-object p1
.end method

.method final onPostMessage(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->ICustomTabsCallback$Stub$Proxy:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    if-eqz v0, :cond_4

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    move-result-object v0

    iget-object v1, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v1, v1, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    iget-object v2, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v2, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lo/AuthSupportedResponse$MetaData;->ICustomTabsCallback(Landroid/view/View;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lo/PaymentModeListResponse;->getGlobalVisibleRect(Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    iget-object v0, p1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->IPostMessageService$Stub()Lo/SizeFilter;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->IPostMessageService$Stub()Lo/SizeFilter;

    move-result-object v0

    invoke-interface {v0, v2}, Lo/SizeFilter;->onMessageChannelReady(Lo/InterstitialContainer$$special$$inlined$executeOnResume$1;)V

    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lo/clone;->extraCallback(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;Z)V

    const/4 v0, 0x1

    iput-boolean v0, p1, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->ICustomTabsCallback$Stub$Proxy:Z

    :cond_4
    :goto_0
    return-void
.end method

.method public final onPostMessage(Z)V
    .locals 1

    const-string v0, "setManualImpressionsEnabled must be called from the main thread."

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    iput-boolean p1, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->warmup:Z

    return-void
.end method

.method public final onScrollChanged()V
    .locals 1

    iget-object v0, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    invoke-virtual {p0, v0}, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage(Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;)V

    return-void
.end method

.method protected final unsubscribe()Z
    .locals 6

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    iget-object v0, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    const-string v1, "android.permission.INTERNET"

    invoke-static {v0, v1}, Lo/AuthSupportedResponse$MetaData;->onMessageChannelReady(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->extraCallback()Lo/ControlStatementRepo$TransactionItem;

    move-result-object v0

    iget-object v2, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v2, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    iget-object v3, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v3, v3, Lo/PaymentMode$$Parcelable;->ICustomTabsCallback$Stub:Lo/setCurrentItem$default;

    const-string v4, "Missing internet permission in AndroidManifest.xml."

    const-string v5, "Missing internet permission in AndroidManifest.xml. You must have the following declaration: <uses-permission android:name=\"android.permission.INTERNET\" />"

    invoke-virtual {v0, v2, v3, v4, v5}, Lo/ControlStatementRepo$TransactionItem;->onMessageChannelReady(Landroid/view/ViewGroup;Lo/setCurrentItem$default;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    iget-object v2, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v2, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    invoke-static {v2}, Lo/AuthSupportedResponse$MetaData;->extraCallback(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->extraCallback()Lo/ControlStatementRepo$TransactionItem;

    move-result-object v0

    iget-object v2, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v2, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    iget-object v3, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v3, v3, Lo/PaymentMode$$Parcelable;->ICustomTabsCallback$Stub:Lo/setCurrentItem$default;

    const-string v4, "Missing AdActivity with android:configChanges in AndroidManifest.xml."

    const-string v5, "Missing AdActivity with android:configChanges in AndroidManifest.xml. You must have the following declaration within the <application> element: <activity android:name=\"com.google.android.gms.ads.AdActivity\" android:configChanges=\"keyboard|keyboardHidden|orientation|screenLayout|uiMode|screenSize|smallestScreenSize\" />"

    invoke-virtual {v0, v2, v3, v4, v5}, Lo/ControlStatementRepo$TransactionItem;->onMessageChannelReady(Landroid/view/ViewGroup;Lo/setCurrentItem$default;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    if-nez v0, :cond_2

    iget-object v2, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v2, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v2, v2, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    invoke-virtual {v2, v1}, Lo/PaymentModeListResponse;->setVisibility(I)V

    :cond_2
    return v0
.end method

.method public final validateRelationship()Lo/TrophySectionsResponseJsonAdapter;
    .locals 1

    const-string v0, "getVideoController must be called from the main thread."

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    iget-object v0, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/PaymentFulfilmentLro$showPaymentSuccess$$inlined$executeOnResume$1;->onPostMessage:Lo/PaymentMode$$Parcelable;

    iget-object v0, v0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent()Lo/ClickReference$$Parcelable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
