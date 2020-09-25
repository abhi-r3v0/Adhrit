.class final Lo/CredCurrencyResponse;
.super Landroid/webkit/WebView;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/webkit/DownloadListener;
.implements Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private AudioAttributesCompatParcelizer:I

.field private final AudioAttributesImplApi21Parcelizer:Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;

.field private final ICustomTabsCallback:Lo/DataListJsonAdapter;

.field private ICustomTabsCallback$Stub:Z

.field private ICustomTabsCallback$Stub$Proxy:Z

.field private ICustomTabsService:Lo/SizeFilterJsonAdapter;

.field private ICustomTabsService$Stub:Z

.field private ICustomTabsService$Stub$Proxy:Ljava/lang/String;

.field private INotificationSideChannel:Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;

.field private INotificationSideChannel$Default:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private INotificationSideChannel$Stub:Z

.field private INotificationSideChannel$Stub$Proxy:Lo/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$1$lambda$1$1;

.field private IPostMessageService:Z

.field private IPostMessageService$Stub:Z

.field private IPostMessageService$Stub$Proxy:Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;

.field private IconCompatParcelizer:I

.field private final MediaBrowserCompat:Landroid/view/WindowManager;

.field private RemoteActionCompatParcelizer:I

.field private final asBinder:Landroid/util/DisplayMetrics;

.field private asInterface:Z

.field private cancel:Lo/openAmexWebView;

.field private cancelAll:I

.field private connect:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lo/InstrumentValidationSuccessRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final extraCallback:Lo/LoginResponse;

.field private extraCommand:I

.field private getDefaultImpl:Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;

.field private getInterfaceDescriptor:Z

.field private mayLaunchUrl:Z

.field private newSession:Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;

.field private notify:I

.field private final onMessageChannelReady:Lo/UploadFiltersJsonAdapter;

.field private final onNavigationEvent:Lo/StatementPeriod;

.field private final onPostMessage:Lo/GameCta;

.field private onRelationshipValidationResult:Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;

.field private final onTransact:F

.field private postMessage:Z

.field private read:I

.field private requestPostMessageChannel:Z

.field private setDefaultImpl:Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;

.field private updateVisuals:Ljava/lang/Boolean;

.field private validateRelationship:Lo/ClickReference$$Parcelable;

.field private warmup:Ljava/lang/String;

.field private write:Lo/getTxn_time;


# direct methods
.method private constructor <init>(Lo/UploadFiltersJsonAdapter;Lo/SizeFilterJsonAdapter;Ljava/lang/String;ZZLo/GameCta;Lo/DataListJsonAdapter;Lo/setCanReverse;Lo/LoginResponse;Lo/StatementPeriod;Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    const/4 p5, 0x0

    iput-boolean p5, p0, Lo/CredCurrencyResponse;->asInterface:Z

    iput-boolean p5, p0, Lo/CredCurrencyResponse;->ICustomTabsCallback$Stub:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/CredCurrencyResponse;->mayLaunchUrl:Z

    iput-boolean p5, p0, Lo/CredCurrencyResponse;->IPostMessageService$Stub:Z

    const-string v1, ""

    iput-object v1, p0, Lo/CredCurrencyResponse;->ICustomTabsService$Stub$Proxy:Ljava/lang/String;

    const/4 v1, -0x1

    iput v1, p0, Lo/CredCurrencyResponse;->read:I

    iput v1, p0, Lo/CredCurrencyResponse;->AudioAttributesCompatParcelizer:I

    iput v1, p0, Lo/CredCurrencyResponse;->IconCompatParcelizer:I

    iput v1, p0, Lo/CredCurrencyResponse;->RemoteActionCompatParcelizer:I

    iput-object p1, p0, Lo/CredCurrencyResponse;->onMessageChannelReady:Lo/UploadFiltersJsonAdapter;

    iput-object p2, p0, Lo/CredCurrencyResponse;->ICustomTabsService:Lo/SizeFilterJsonAdapter;

    iput-object p3, p0, Lo/CredCurrencyResponse;->warmup:Ljava/lang/String;

    iput-boolean p4, p0, Lo/CredCurrencyResponse;->postMessage:Z

    iput v1, p0, Lo/CredCurrencyResponse;->extraCommand:I

    iput-object p6, p0, Lo/CredCurrencyResponse;->onPostMessage:Lo/GameCta;

    iput-object p7, p0, Lo/CredCurrencyResponse;->ICustomTabsCallback:Lo/DataListJsonAdapter;

    iput-object p9, p0, Lo/CredCurrencyResponse;->extraCallback:Lo/LoginResponse;

    iput-object p10, p0, Lo/CredCurrencyResponse;->onNavigationEvent:Lo/StatementPeriod;

    invoke-virtual {p0}, Lo/CredCurrencyResponse;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "window"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/WindowManager;

    iput-object p2, p0, Lo/CredCurrencyResponse;->MediaBrowserCompat:Landroid/view/WindowManager;

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    iget-object p2, p0, Lo/CredCurrencyResponse;->MediaBrowserCompat:Landroid/view/WindowManager;

    invoke-static {p2}, Lo/AuthSupportedResponse$MetaData;->ICustomTabsCallback(Landroid/view/WindowManager;)Landroid/util/DisplayMetrics;

    move-result-object p2

    iput-object p2, p0, Lo/CredCurrencyResponse;->asBinder:Landroid/util/DisplayMetrics;

    iget p2, p2, Landroid/util/DisplayMetrics;->density:F

    iput p2, p0, Lo/CredCurrencyResponse;->onTransact:F

    iput-object p11, p0, Lo/CredCurrencyResponse;->AudioAttributesImplApi21Parcelizer:Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;

    invoke-virtual {p0, p5}, Lo/CredCurrencyResponse;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lo/CredCurrencyResponse;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p2

    invoke-virtual {p2, p5}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    :try_start_0
    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    const-string p4, "Unable to enable Javascript."

    invoke-static {p4, p3}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    invoke-virtual {p2, p5}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    invoke-virtual {p2, v0}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x15

    if-lt p3, p4, :cond_0

    const/4 p3, 0x2

    invoke-virtual {p2, p3}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_0
    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    move-result-object p3

    iget-object p4, p7, Lo/DataListJsonAdapter;->extraCallback:Ljava/lang/String;

    invoke-virtual {p3, p1, p4, p2}, Lo/AuthSupportedResponse$MetaData;->onMessageChannelReady(Landroid/content/Context;Ljava/lang/String;Landroid/webkit/WebSettings;)V

    invoke-static {}, Lo/getParcel;->onTransact()Lo/getAccount_number;

    move-result-object p3

    invoke-virtual {p0}, Lo/CredCurrencyResponse;->getContext()Landroid/content/Context;

    move-result-object p4

    invoke-virtual {p3, p4, p2}, Lo/getAccount_number;->onPostMessage(Landroid/content/Context;Landroid/webkit/WebSettings;)Z

    invoke-virtual {p0, p0}, Lo/CredCurrencyResponse;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    invoke-direct {p0}, Lo/CredCurrencyResponse;->getServiceComponent()V

    invoke-static {}, Lo/component20;->ICustomTabsCallback()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p0}, Lo/CredCurrencySuggestedRewardResponseJsonAdapter;->onPostMessage(Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;)Lo/CredCurrencySuggestedRewardResponseJsonAdapter;

    move-result-object p2

    const-string p3, "googleAdsJsInterface"

    invoke-virtual {p0, p2, p3}, Lo/CredCurrencyResponse;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lo/component20;->onNavigationEvent()Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "accessibility"

    invoke-virtual {p0, p2}, Lo/CredCurrencyResponse;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string p2, "accessibilityTraversal"

    invoke-virtual {p0, p2}, Lo/CredCurrencyResponse;->removeJavascriptInterface(Ljava/lang/String;)V

    :cond_2
    new-instance p2, Lo/getTxn_time;

    iget-object p3, p0, Lo/CredCurrencyResponse;->onMessageChannelReady:Lo/UploadFiltersJsonAdapter;

    invoke-virtual {p3}, Lo/UploadFiltersJsonAdapter;->onNavigationEvent()Landroid/app/Activity;

    move-result-object p3

    const/4 p4, 0x0

    invoke-direct {p2, p3, p0, p0, p4}, Lo/getTxn_time;-><init>(Landroid/app/Activity;Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iput-object p2, p0, Lo/CredCurrencyResponse;->write:Lo/getTxn_time;

    invoke-direct {p0}, Lo/CredCurrencyResponse;->sendCustomAction()V

    new-instance p2, Lo/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$1$lambda$1$1;

    new-instance p3, Lo/setCanReverse;

    iget-object p5, p0, Lo/CredCurrencyResponse;->warmup:Ljava/lang/String;

    const-string p6, "make_wv"

    invoke-direct {p3, v0, p6, p5}, Lo/setCanReverse;-><init>(ZLjava/lang/String;Ljava/lang/String;)V

    invoke-direct {p2, p3}, Lo/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$1$lambda$1$1;-><init>(Lo/setCanReverse;)V

    iput-object p2, p0, Lo/CredCurrencyResponse;->INotificationSideChannel$Stub$Proxy:Lo/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$1$lambda$1$1;

    invoke-virtual {p2}, Lo/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$1$lambda$1$1;->extraCallback()Lo/setCanReverse;

    move-result-object p2

    invoke-virtual {p2, p8}, Lo/setCanReverse;->onPostMessage(Lo/setCanReverse;)V

    iget-object p2, p0, Lo/CredCurrencyResponse;->INotificationSideChannel$Stub$Proxy:Lo/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$1$lambda$1$1;

    invoke-virtual {p2}, Lo/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$1$lambda$1$1;->extraCallback()Lo/setCanReverse;

    move-result-object p2

    invoke-static {p2}, Lo/setReelSymbols;->onPostMessage(Lo/setCanReverse;)Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;

    move-result-object p2

    iput-object p2, p0, Lo/CredCurrencyResponse;->INotificationSideChannel:Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;

    iget-object p3, p0, Lo/CredCurrencyResponse;->INotificationSideChannel$Stub$Proxy:Lo/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$1$lambda$1$1;

    const-string p5, "native:view_create"

    invoke-virtual {p3, p5, p2}, Lo/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$1$lambda$1$1;->ICustomTabsCallback(Ljava/lang/String;Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;)V

    iput-object p4, p0, Lo/CredCurrencyResponse;->getDefaultImpl:Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;

    iput-object p4, p0, Lo/CredCurrencyResponse;->IPostMessageService$Stub$Proxy:Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;

    invoke-static {}, Lo/getParcel;->onTransact()Lo/getAccount_number;

    move-result-object p2

    invoke-virtual {p2, p1}, Lo/getAccount_number;->onMessageChannelReady(Landroid/content/Context;)V

    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->onTransact()V

    return-void
.end method

.method private final AudioAttributesImplApi21Parcelizer()Z
    .locals 10

    iget-object v0, p0, Lo/CredCurrencyResponse;->onRelationshipValidationResult:Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;

    check-cast v0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;

    invoke-virtual {v0}, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->extraCallback()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/CredCurrencyResponse;->onRelationshipValidationResult:Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;

    check-cast v0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;

    invoke-virtual {v0}, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->ICustomTabsCallback()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->extraCallback()Lo/ControlStatementRepo$TransactionItem;

    iget-object v0, p0, Lo/CredCurrencyResponse;->asBinder:Landroid/util/DisplayMetrics;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v0, v2}, Lo/ControlStatementRepo$TransactionItem;->onPostMessage(Landroid/util/DisplayMetrics;I)I

    move-result v4

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->extraCallback()Lo/ControlStatementRepo$TransactionItem;

    iget-object v0, p0, Lo/CredCurrencyResponse;->asBinder:Landroid/util/DisplayMetrics;

    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v0, v2}, Lo/ControlStatementRepo$TransactionItem;->onPostMessage(Landroid/util/DisplayMetrics;I)I

    move-result v5

    iget-object v0, p0, Lo/CredCurrencyResponse;->onMessageChannelReady:Lo/UploadFiltersJsonAdapter;

    invoke-virtual {v0}, Lo/UploadFiltersJsonAdapter;->onNavigationEvent()Landroid/app/Activity;

    move-result-object v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    invoke-static {v0}, Lo/AuthSupportedResponse$MetaData;->ICustomTabsCallback(Landroid/app/Activity;)[I

    move-result-object v0

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->extraCallback()Lo/ControlStatementRepo$TransactionItem;

    iget-object v3, p0, Lo/CredCurrencyResponse;->asBinder:Landroid/util/DisplayMetrics;

    aget v6, v0, v1

    invoke-static {v3, v6}, Lo/ControlStatementRepo$TransactionItem;->onPostMessage(Landroid/util/DisplayMetrics;I)I

    move-result v3

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->extraCallback()Lo/ControlStatementRepo$TransactionItem;

    iget-object v6, p0, Lo/CredCurrencyResponse;->asBinder:Landroid/util/DisplayMetrics;

    aget v0, v0, v2

    invoke-static {v6, v0}, Lo/ControlStatementRepo$TransactionItem;->onPostMessage(Landroid/util/DisplayMetrics;I)I

    move-result v0

    move v7, v0

    move v6, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v6, v4

    move v7, v5

    :goto_1
    iget v0, p0, Lo/CredCurrencyResponse;->AudioAttributesCompatParcelizer:I

    if-ne v0, v4, :cond_3

    iget v0, p0, Lo/CredCurrencyResponse;->read:I

    if-ne v0, v5, :cond_3

    iget v0, p0, Lo/CredCurrencyResponse;->IconCompatParcelizer:I

    if-ne v0, v6, :cond_3

    iget v0, p0, Lo/CredCurrencyResponse;->RemoteActionCompatParcelizer:I

    if-ne v0, v7, :cond_3

    return v1

    :cond_3
    iget v0, p0, Lo/CredCurrencyResponse;->AudioAttributesCompatParcelizer:I

    if-ne v0, v4, :cond_4

    iget v0, p0, Lo/CredCurrencyResponse;->read:I

    if-eq v0, v5, :cond_5

    :cond_4
    const/4 v1, 0x1

    :cond_5
    iput v4, p0, Lo/CredCurrencyResponse;->AudioAttributesCompatParcelizer:I

    iput v5, p0, Lo/CredCurrencyResponse;->read:I

    iput v6, p0, Lo/CredCurrencyResponse;->IconCompatParcelizer:I

    iput v7, p0, Lo/CredCurrencyResponse;->RemoteActionCompatParcelizer:I

    new-instance v3, Lo/getDataList;

    invoke-direct {v3, p0}, Lo/getDataList;-><init>(Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;)V

    iget-object v0, p0, Lo/CredCurrencyResponse;->asBinder:Landroid/util/DisplayMetrics;

    iget v8, v0, Landroid/util/DisplayMetrics;->density:F

    iget-object v0, p0, Lo/CredCurrencyResponse;->MediaBrowserCompat:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v9

    invoke-virtual/range {v3 .. v9}, Lo/getDataList;->onNavigationEvent(IIIIFI)V

    return v1
.end method

.method private final declared-synchronized AudioAttributesImplBaseParcelizer()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->onPostMessage()Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lo/CredCurrencyResponse;->updateVisuals:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    const-string v0, "(function(){})()"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lo/CredCurrencyResponse;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/CredCurrencyResponse;->extraCallback(Ljava/lang/Boolean;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    const/4 v0, 0x0

    :try_start_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {p0, v0}, Lo/CredCurrencyResponse;->extraCallback(Ljava/lang/Boolean;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final ICustomTabsCallback$Stub(Z)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    const-string v1, "isVisible"

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onAdVisibilityChanged"

    invoke-virtual {p0, p1, v0}, Lo/CredCurrencyResponse;->onPostMessage(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method private final declared-synchronized MediaBrowserCompat()Ljava/lang/Boolean;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lo/CredCurrencyResponse;->updateVisuals:Ljava/lang/Boolean;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final connect()V
    .locals 3

    iget-object v0, p0, Lo/CredCurrencyResponse;->INotificationSideChannel$Stub$Proxy:Lo/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$1$lambda$1$1;

    invoke-virtual {v0}, Lo/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$1$lambda$1$1;->extraCallback()Lo/setCanReverse;

    move-result-object v0

    iget-object v1, p0, Lo/CredCurrencyResponse;->INotificationSideChannel:Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;

    const-string v2, "aeh2"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lo/setReelSymbols;->onNavigationEvent(Lo/setCanReverse;Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;[Ljava/lang/String;)Z

    return-void
.end method

.method static synthetic extraCallback(Lo/CredCurrencyResponse;I)I
    .locals 0

    iput p1, p0, Lo/CredCurrencyResponse;->notify:I

    return p1
.end method

.method static extraCallback(Landroid/content/Context;Lo/SizeFilterJsonAdapter;Ljava/lang/String;ZZLo/GameCta;Lo/DataListJsonAdapter;Lo/setCanReverse;Lo/LoginResponse;Lo/StatementPeriod;Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;)Lo/CredCurrencyResponse;
    .locals 13

    new-instance v1, Lo/UploadFiltersJsonAdapter;

    move-object v0, p0

    invoke-direct {v1, p0}, Lo/UploadFiltersJsonAdapter;-><init>(Landroid/content/Context;)V

    new-instance v12, Lo/CredCurrencyResponse;

    move-object v0, v12

    move-object v2, p1

    move-object v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    invoke-direct/range {v0 .. v11}, Lo/CredCurrencyResponse;-><init>(Lo/UploadFiltersJsonAdapter;Lo/SizeFilterJsonAdapter;Ljava/lang/String;ZZLo/GameCta;Lo/DataListJsonAdapter;Lo/setCanReverse;Lo/LoginResponse;Lo/StatementPeriod;Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;)V

    return-object v12
.end method

.method private final extraCallback(Ljava/lang/Boolean;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lo/CredCurrencyResponse;->updateVisuals:Ljava/lang/Boolean;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->onNavigationEvent(Ljava/lang/Boolean;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private final extraCallback(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lo/component20;->onRelationshipValidationResult()Z

    move-result v0

    const-string v1, "javascript:"

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lo/CredCurrencyResponse;->MediaBrowserCompat()Ljava/lang/Boolean;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lo/CredCurrencyResponse;->AudioAttributesImplBaseParcelizer()V

    :cond_0
    invoke-direct {p0}, Lo/CredCurrencyResponse;->MediaBrowserCompat()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lo/CredCurrencyResponse;->extraCallback(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void

    :cond_1
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_2
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-direct {p0, p1}, Lo/CredCurrencyResponse;->onNavigationEvent(Ljava/lang/String;)V

    return-void

    :cond_3
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_4
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_1
    invoke-direct {p0, p1}, Lo/CredCurrencyResponse;->onNavigationEvent(Ljava/lang/String;)V

    return-void
.end method

.method private final declared-synchronized extraCallback(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lo/CredCurrencyResponse;->INotificationSideChannel$Stub$Proxy()Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lo/CredCurrencyResponse;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized getExtras()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lo/CredCurrencyResponse;->requestPostMessageChannel:Z

    if-nez v0, :cond_0

    invoke-static {}, Lo/getParcel;->onTransact()Lo/getAccount_number;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/getAccount_number;->onNavigationEvent(Landroid/view/View;)Z

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/CredCurrencyResponse;->requestPostMessageChannel:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized getRoot()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lo/CredCurrencyResponse;->INotificationSideChannel$Stub:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/CredCurrencyResponse;->INotificationSideChannel$Stub:Z

    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->onRelationshipValidationResult()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized getServiceComponent()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lo/CredCurrencyResponse;->postMessage:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lo/CredCurrencyResponse;->ICustomTabsService:Lo/SizeFilterJsonAdapter;

    invoke-virtual {v0}, Lo/SizeFilterJsonAdapter;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_1

    const-string v0, "Disabling hardware acceleration on an AdView."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;)V

    invoke-direct {p0}, Lo/CredCurrencyResponse;->getExtras()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string v0, "Enabling hardware acceleration on an AdView."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;)V

    invoke-direct {p0}, Lo/CredCurrencyResponse;->getSessionToken()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :goto_0
    :try_start_2
    const-string v0, "Enabling hardware acceleration on an overlay."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;)V

    invoke-direct {p0}, Lo/CredCurrencyResponse;->getSessionToken()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized getSessionToken()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lo/CredCurrencyResponse;->requestPostMessageChannel:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lo/getParcel;->onTransact()Lo/getAccount_number;

    move-result-object v0

    invoke-virtual {v0, p0}, Lo/getAccount_number;->extraCallback(Landroid/view/View;)Z

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/CredCurrencyResponse;->requestPostMessageChannel:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized isConnected()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lo/CredCurrencyResponse;->connect:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method static synthetic onMessageChannelReady(Lo/CredCurrencyResponse;)V
    .locals 0

    invoke-super {p0}, Landroid/webkit/WebView;->destroy()V

    return-void
.end method

.method static synthetic onNavigationEvent(Lo/CredCurrencyResponse;)I
    .locals 0

    iget p0, p0, Lo/CredCurrencyResponse;->notify:I

    return p0
.end method

.method private final declared-synchronized onNavigationEvent(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lo/CredCurrencyResponse;->INotificationSideChannel$Stub$Proxy()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lo/CredCurrencyResponse;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized onPostMessage(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    goto :goto_0

    :catch_3
    move-exception p1

    :goto_0
    :try_start_1
    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object v0

    const-string v1, "AdWebViewImpl.loadUrlUnsafe"

    invoke-virtual {v0, p1, v1}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->onMessageChannelReady(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v0, "Could not call loadUrl. "

    invoke-static {v0, p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method private final sendCustomAction()V
    .locals 2

    iget-object v0, p0, Lo/CredCurrencyResponse;->INotificationSideChannel$Stub$Proxy:Lo/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$1$lambda$1$1;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lo/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$1$lambda$1$1;->extraCallback()Lo/setCanReverse;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->onNavigationEvent()Lo/ZeroSpinsLeftMetaJsonAdapter;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->onNavigationEvent()Lo/ZeroSpinsLeftMetaJsonAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/ZeroSpinsLeftMetaJsonAdapter;->onPostMessage(Lo/setCanReverse;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method public final AudioAttributesCompatParcelizer()Landroid/view/View$OnClickListener;
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyResponse;->INotificationSideChannel$Default:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method public final ICustomTabsCallback()Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyResponse;->onMessageChannelReady:Lo/UploadFiltersJsonAdapter;

    invoke-virtual {v0}, Lo/UploadFiltersJsonAdapter;->onNavigationEvent()Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized ICustomTabsCallback(Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    const-string p1, ""

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :cond_0
    :goto_0
    iput-object p1, p0, Lo/CredCurrencyResponse;->ICustomTabsService$Stub$Proxy:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized ICustomTabsCallback(Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lo/CredCurrencyResponse;->newSession:Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized ICustomTabsCallback(Lo/openAmexWebView;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lo/CredCurrencyResponse;->cancel:Lo/openAmexWebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final ICustomTabsCallback(Z)V
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyResponse;->onRelationshipValidationResult:Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;

    check-cast v0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;

    invoke-virtual {v0, p1}, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onPostMessage(Z)V

    return-void
.end method

.method public final ICustomTabsCallback(ZI)V
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyResponse;->onRelationshipValidationResult:Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;

    invoke-virtual {v0, p1, p2}, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onMessageChannelReady(ZI)V

    return-void
.end method

.method public final ICustomTabsCallback(ZILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyResponse;->onRelationshipValidationResult:Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;

    invoke-virtual {v0, p1, p2, p3}, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->ICustomTabsCallback(ZILjava/lang/String;)V

    return-void
.end method

.method public final ICustomTabsCallback(ZILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyResponse;->onRelationshipValidationResult:Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;

    invoke-virtual {v0, p1, p2, p3, p4}, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->extraCallback(ZILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized ICustomTabsCallback$Stub()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lo/CredCurrencyResponse;->IPostMessageService$Stub:Z

    iget-object v0, p0, Lo/CredCurrencyResponse;->extraCallback:Lo/LoginResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/CredCurrencyResponse;->extraCallback:Lo/LoginResponse;

    invoke-interface {v0}, Lo/LoginResponse;->ICustomTabsCallback$Stub()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final ICustomTabsCallback$Stub$Proxy()Lo/DataListJsonAdapter;
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyResponse;->ICustomTabsCallback:Lo/DataListJsonAdapter;

    return-object v0
.end method

.method public final ICustomTabsService()Landroid/webkit/WebView;
    .locals 0

    return-object p0
.end method

.method public final declared-synchronized ICustomTabsService$Stub()Lo/SizeFilterJsonAdapter;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lo/CredCurrencyResponse;->ICustomTabsService:Lo/SizeFilterJsonAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized ICustomTabsService$Stub$Proxy()Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lo/CredCurrencyResponse;->setDefaultImpl:Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized INotificationSideChannel()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lo/CredCurrencyResponse;->postMessage:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized INotificationSideChannel$Default()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lo/CredCurrencyResponse;->mayLaunchUrl:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized INotificationSideChannel$Stub()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lo/CredCurrencyResponse;->IPostMessageService$Stub:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized INotificationSideChannel$Stub$Proxy()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lo/CredCurrencyResponse;->ICustomTabsCallback$Stub$Proxy:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized IPostMessageService()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lo/CredCurrencyResponse;->warmup:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final synthetic IPostMessageService$Stub()Lo/SizeFilter;
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyResponse;->onRelationshipValidationResult:Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;

    return-object v0
.end method

.method public final declared-synchronized IPostMessageService$Stub$Proxy()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lo/CredCurrencyResponse;->getInterfaceDescriptor:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final IconCompatParcelizer()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo/CredCurrencyResponse;->setBackgroundColor(I)V

    return-void
.end method

.method public final RemoteActionCompatParcelizer()V
    .locals 3

    iget-object v0, p0, Lo/CredCurrencyResponse;->getDefaultImpl:Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/CredCurrencyResponse;->INotificationSideChannel$Stub$Proxy:Lo/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$1$lambda$1$1;

    invoke-virtual {v0}, Lo/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$1$lambda$1$1;->extraCallback()Lo/setCanReverse;

    move-result-object v0

    invoke-static {v0}, Lo/setReelSymbols;->onPostMessage(Lo/setCanReverse;)Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;

    move-result-object v0

    iput-object v0, p0, Lo/CredCurrencyResponse;->getDefaultImpl:Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;

    iget-object v1, p0, Lo/CredCurrencyResponse;->INotificationSideChannel$Stub$Proxy:Lo/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$1$lambda$1$1;

    const-string v2, "native:view_load"

    invoke-virtual {v1, v2, v0}, Lo/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$1$lambda$1$1;->ICustomTabsCallback(Ljava/lang/String;Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;)V

    :cond_0
    return-void
.end method

.method public final asInterface()Lo/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$1$lambda$1$1;
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyResponse;->INotificationSideChannel$Stub$Proxy:Lo/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$1$lambda$1$1;

    return-object v0
.end method

.method public final cancel()Lo/GameCta;
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyResponse;->onPostMessage:Lo/GameCta;

    return-object v0
.end method

.method public final declared-synchronized cancelAll()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lo/CredCurrencyResponse;->extraCommand:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized destroy()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lo/CredCurrencyResponse;->sendCustomAction()V

    iget-object v0, p0, Lo/CredCurrencyResponse;->write:Lo/getTxn_time;

    invoke-virtual {v0}, Lo/getTxn_time;->onMessageChannelReady()V

    iget-object v0, p0, Lo/CredCurrencyResponse;->newSession:Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/CredCurrencyResponse;->newSession:Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;

    invoke-virtual {v0}, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onPostMessage()V

    iget-object v0, p0, Lo/CredCurrencyResponse;->newSession:Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;

    invoke-virtual {v0}, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->ICustomTabsCallback$Stub$Proxy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lo/CredCurrencyResponse;->newSession:Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;

    :cond_0
    iget-object v0, p0, Lo/CredCurrencyResponse;->onRelationshipValidationResult:Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;

    invoke-virtual {v0}, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub$Proxy()V

    iget-boolean v0, p0, Lo/CredCurrencyResponse;->ICustomTabsCallback$Stub$Proxy:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-static {}, Lo/getParcel;->cancelAll()Lo/FeaturePitchJsonAdapter;

    invoke-static {p0}, Lo/FeaturePitchJsonAdapter;->onNavigationEvent(Lo/CardLinkSuccessResponseJsonAdapter;)Z

    invoke-direct {p0}, Lo/CredCurrencyResponse;->isConnected()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/CredCurrencyResponse;->ICustomTabsCallback$Stub$Proxy:Z

    const-string v0, "Initiating WebView self destruct sequence in 3..."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    const-string v0, "Loading blank page in WebView, 2..."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    const-string v0, "about:blank"

    invoke-direct {p0, v0}, Lo/CredCurrencyResponse;->onPostMessage(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final disconnect()V
    .locals 1

    const-string v0, "Cannot add text view to inner AdWebView"

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/webkit/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lo/CredCurrencyResponse;->INotificationSideChannel$Stub$Proxy()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "#004 The webview is destroyed. Ignoring action."

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    invoke-interface {p2, p1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final extraCallback()Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyResponse;->INotificationSideChannel:Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;

    return-object v0
.end method

.method public final extraCallback(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    if-nez p2, :cond_0

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "(window.AFMA_ReceiveMessage || function() {})(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ","

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Dispatching AFMA event: "

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p2, Ljava/lang/String;

    invoke-direct {p2, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    move-object p1, p2

    :goto_0
    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/CredCurrencyResponse;->extraCallback(Ljava/lang/String;)V

    return-void
.end method

.method public final extraCallback(Lo/LifestyleResponseCard;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p1, Lo/LifestyleResponseCard;->onPostMessage:Z

    iput-boolean v0, p0, Lo/CredCurrencyResponse;->ICustomTabsService$Stub:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-boolean p1, p1, Lo/LifestyleResponseCard;->onPostMessage:Z

    invoke-direct {p0, p1}, Lo/CredCurrencyResponse;->ICustomTabsCallback$Stub(Z)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final declared-synchronized extraCallback(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lo/CredCurrencyResponse;->mayLaunchUrl:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final extraCommand()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyResponse;->onMessageChannelReady:Lo/UploadFiltersJsonAdapter;

    invoke-virtual {v0}, Lo/UploadFiltersJsonAdapter;->onMessageChannelReady()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected final finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-boolean v0, p0, Lo/CredCurrencyResponse;->ICustomTabsCallback$Stub$Proxy:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/CredCurrencyResponse;->onRelationshipValidationResult:Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;

    invoke-virtual {v0}, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub$Proxy()V

    invoke-static {}, Lo/getParcel;->cancelAll()Lo/FeaturePitchJsonAdapter;

    invoke-static {p0}, Lo/FeaturePitchJsonAdapter;->onNavigationEvent(Lo/CardLinkSuccessResponseJsonAdapter;)Z

    invoke-direct {p0}, Lo/CredCurrencyResponse;->isConnected()V

    invoke-direct {p0}, Lo/CredCurrencyResponse;->getRoot()V

    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public final declared-synchronized getDefaultImpl()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lo/CredCurrencyResponse;->cancelAll:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final getInterfaceDescriptor()I
    .locals 1

    invoke-virtual {p0}, Lo/CredCurrencyResponse;->getMeasuredWidth()I

    move-result v0

    return v0
.end method

.method public final declared-synchronized loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lo/CredCurrencyResponse;->INotificationSideChannel$Stub$Proxy()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lo/CredCurrencyResponse;->INotificationSideChannel$Stub$Proxy()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super/range {p0 .. p5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized loadUrl(Ljava/lang/String;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lo/CredCurrencyResponse;->INotificationSideChannel$Stub$Proxy()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :try_start_1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_0

    :catch_2
    move-exception p1

    :goto_0
    :try_start_2
    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object v0

    const-string v1, "AdWebViewImpl.loadUrl"

    invoke-virtual {v0, p1, v1}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->onMessageChannelReady(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v0, "Could not call loadUrl. "

    invoke-static {v0, p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_3
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final mayLaunchUrl()V
    .locals 3

    iget-object v0, p0, Lo/CredCurrencyResponse;->IPostMessageService$Stub$Proxy:Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/CredCurrencyResponse;->INotificationSideChannel$Stub$Proxy:Lo/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$1$lambda$1$1;

    invoke-virtual {v0}, Lo/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$1$lambda$1$1;->extraCallback()Lo/setCanReverse;

    move-result-object v0

    iget-object v1, p0, Lo/CredCurrencyResponse;->INotificationSideChannel:Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;

    const-string v2, "aes2"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lo/setReelSymbols;->onNavigationEvent(Lo/setCanReverse;Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;[Ljava/lang/String;)Z

    iget-object v0, p0, Lo/CredCurrencyResponse;->INotificationSideChannel$Stub$Proxy:Lo/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$1$lambda$1$1;

    invoke-virtual {v0}, Lo/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$1$lambda$1$1;->extraCallback()Lo/setCanReverse;

    move-result-object v0

    invoke-static {v0}, Lo/setReelSymbols;->onPostMessage(Lo/setCanReverse;)Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;

    move-result-object v0

    iput-object v0, p0, Lo/CredCurrencyResponse;->IPostMessageService$Stub$Proxy:Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;

    iget-object v1, p0, Lo/CredCurrencyResponse;->INotificationSideChannel$Stub$Proxy:Lo/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$1$lambda$1$1;

    const-string v2, "native:view_show"

    invoke-virtual {v1, v2, v0}, Lo/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$1$lambda$1$1;->ICustomTabsCallback(Ljava/lang/String;Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;)V

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iget-object v1, p0, Lo/CredCurrencyResponse;->ICustomTabsCallback:Lo/DataListJsonAdapter;

    iget-object v1, v1, Lo/DataListJsonAdapter;->extraCallback:Ljava/lang/String;

    const-string v2, "version"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onshow"

    invoke-virtual {p0, v1, v0}, Lo/CredCurrencyResponse;->onPostMessage(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final newSession()Landroid/view/View;
    .locals 0

    return-object p0
.end method

.method protected final declared-synchronized onAttachedToWindow()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lo/CredCurrencyResponse;->INotificationSideChannel$Stub$Proxy()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/CredCurrencyResponse;->write:Lo/getTxn_time;

    invoke-virtual {v0}, Lo/getTxn_time;->onPostMessage()V

    :cond_0
    iget-boolean v0, p0, Lo/CredCurrencyResponse;->ICustomTabsService$Stub:Z

    iget-object v1, p0, Lo/CredCurrencyResponse;->onRelationshipValidationResult:Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;

    check-cast v1, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lo/CredCurrencyResponse;->onRelationshipValidationResult:Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;

    check-cast v1, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;

    invoke-virtual {v1}, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->ICustomTabsCallback()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-boolean v0, p0, Lo/CredCurrencyResponse;->IPostMessageService:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lo/CredCurrencyResponse;->onRelationshipValidationResult:Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;

    check-cast v0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;

    invoke-virtual {v0}, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onNavigationEvent()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lo/getParcel;->IPostMessageService$Stub$Proxy()Lo/getCtas;

    invoke-static {p0, v0}, Lo/getCtas;->onPostMessage(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    iget-object v0, p0, Lo/CredCurrencyResponse;->onRelationshipValidationResult:Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;

    check-cast v0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;

    invoke-virtual {v0}, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onPostMessage()Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lo/getParcel;->IPostMessageService$Stub$Proxy()Lo/getCtas;

    invoke-static {p0, v0}, Lo/getCtas;->onMessageChannelReady(Landroid/view/View;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_2
    iput-boolean v2, p0, Lo/CredCurrencyResponse;->IPostMessageService:Z

    :cond_3
    invoke-direct {p0}, Lo/CredCurrencyResponse;->AudioAttributesImplApi21Parcelizer()Z

    const/4 v0, 0x1

    :cond_4
    invoke-direct {p0, v0}, Lo/CredCurrencyResponse;->ICustomTabsCallback$Stub(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final onDetachedFromWindow()V
    .locals 4

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lo/CredCurrencyResponse;->INotificationSideChannel$Stub$Proxy()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/CredCurrencyResponse;->write:Lo/getTxn_time;

    invoke-virtual {v0}, Lo/getTxn_time;->onNavigationEvent()V

    :cond_0
    invoke-super {p0}, Landroid/webkit/WebView;->onDetachedFromWindow()V

    iget-boolean v0, p0, Lo/CredCurrencyResponse;->IPostMessageService:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/CredCurrencyResponse;->onRelationshipValidationResult:Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;

    check-cast v0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/CredCurrencyResponse;->onRelationshipValidationResult:Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;

    check-cast v0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;

    invoke-virtual {v0}, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lo/CredCurrencyResponse;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lo/CredCurrencyResponse;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lo/CredCurrencyResponse;->onRelationshipValidationResult:Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;

    check-cast v0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;

    invoke-virtual {v0}, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onNavigationEvent()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lo/getParcel;->onTransact()Lo/getAccount_number;

    move-result-object v2

    invoke-virtual {p0}, Lo/CredCurrencyResponse;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lo/getAccount_number;->extraCallback(Landroid/view/ViewTreeObserver;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_1
    iget-object v0, p0, Lo/CredCurrencyResponse;->onRelationshipValidationResult:Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;

    check-cast v0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;

    invoke-virtual {v0}, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onPostMessage()Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lo/CredCurrencyResponse;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    :cond_2
    iput-boolean v1, p0, Lo/CredCurrencyResponse;->IPostMessageService:Z

    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, v1}, Lo/CredCurrencyResponse;->ICustomTabsCallback$Stub(Z)V

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public final onDownloadStart(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0

    :try_start_0
    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.intent.action.VIEW"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-virtual {p2, p3, p4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    invoke-virtual {p0}, Lo/CredCurrencyResponse;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3, p2}, Lo/AuthSupportedResponse$MetaData;->ICustomTabsCallback(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    add-int/lit8 p2, p2, 0x33

    invoke-static {p4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p2, p3

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3, p2}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p2, "Couldn\'t find an Activity to view url/mimetype: "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;)V

    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p0}, Lo/CredCurrencyResponse;->INotificationSideChannel$Stub$Proxy()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lo/CredCurrencyResponse;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    iget-object p1, p0, Lo/CredCurrencyResponse;->onRelationshipValidationResult:Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;

    move-object v0, p1

    check-cast v0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;

    if-eqz v0, :cond_2

    check-cast p1, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;

    invoke-virtual {p1}, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->warmup()Lo/InterstitialContainer$$special$$inlined$executeOnResume$1;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lo/CredCurrencyResponse;->onRelationshipValidationResult:Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;

    check-cast p1, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;

    invoke-virtual {p1}, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->warmup()Lo/InterstitialContainer$$special$$inlined$executeOnResume$1;

    move-result-object p1

    invoke-interface {p1}, Lo/InterstitialContainer$$special$$inlined$executeOnResume$1;->extraCallback()V

    :cond_2
    return-void
.end method

.method public final onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    sget-object v0, Lo/WinningTypes;->MediaBrowserCompat$MediaBrowserImplApi21:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x9

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    const/16 v1, 0xa

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    const/16 v3, 0x8

    if-ne v2, v3, :cond_4

    const/4 v2, -0x1

    const/4 v3, 0x0

    cmpl-float v4, v0, v3

    if-lez v4, :cond_0

    invoke-virtual {p0, v2}, Lo/CredCurrencyResponse;->canScrollVertically(I)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_0
    const/4 v4, 0x1

    cmpg-float v0, v0, v3

    if-gez v0, :cond_1

    invoke-virtual {p0, v4}, Lo/CredCurrencyResponse;->canScrollVertically(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    cmpl-float v0, v1, v3

    if-lez v0, :cond_2

    invoke-virtual {p0, v2}, Lo/CredCurrencyResponse;->canScrollHorizontally(I)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    cmpg-float v0, v1, v3

    if-gez v0, :cond_4

    invoke-virtual {p0, v4}, Lo/CredCurrencyResponse;->canScrollHorizontally(I)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    const/4 p1, 0x0

    return p1

    :cond_4
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final onGlobalLayout()V
    .locals 2

    invoke-direct {p0}, Lo/CredCurrencyResponse;->AudioAttributesImplApi21Parcelizer()Z

    move-result v0

    invoke-virtual {p0}, Lo/CredCurrencyResponse;->updateVisuals()Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->requestPostMessageChannel()V

    :cond_0
    return-void
.end method

.method protected final declared-synchronized onMeasure(II)V
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lo/CredCurrencyResponse;->INotificationSideChannel$Stub$Proxy()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v1, v1}, Lo/CredCurrencyResponse;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lo/CredCurrencyResponse;->isInEditMode()Z

    move-result v0

    if-nez v0, :cond_19

    iget-boolean v0, p0, Lo/CredCurrencyResponse;->postMessage:Z

    if-nez v0, :cond_19

    iget-object v0, p0, Lo/CredCurrencyResponse;->ICustomTabsService:Lo/SizeFilterJsonAdapter;

    invoke-virtual {v0}, Lo/SizeFilterJsonAdapter;->extraCallback()Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_9

    :cond_1
    iget-object v0, p0, Lo/CredCurrencyResponse;->ICustomTabsService:Lo/SizeFilterJsonAdapter;

    invoke-virtual {v0}, Lo/SizeFilterJsonAdapter;->asBinder()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p0}, Lo/CredCurrencyResponse;->onNavigationEvent()Lo/ClickReference$$Parcelable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lo/ClickReference$$Parcelable;->extraCallback()F

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    cmpl-float v1, v0, v1

    if-nez v1, :cond_3

    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_3
    :try_start_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    int-to-float v1, p2

    mul-float v1, v1, v0

    float-to-int v1, v1

    int-to-float v2, p1

    div-float/2addr v2, v0

    float-to-int v2, v2

    if-nez p2, :cond_4

    if-eqz v2, :cond_4

    int-to-float p2, v2

    mul-float p2, p2, v0

    float-to-int v1, p2

    move p2, v2

    goto :goto_1

    :cond_4
    if-nez p1, :cond_5

    if-eqz v1, :cond_5

    int-to-float p1, v1

    div-float/2addr p1, v0

    float-to-int v2, p1

    move p1, v1

    :cond_5
    :goto_1
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lo/CredCurrencyResponse;->setMeasuredDimension(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_6
    :try_start_3
    iget-object v0, p0, Lo/CredCurrencyResponse;->ICustomTabsService:Lo/SizeFilterJsonAdapter;

    invoke-virtual {v0}, Lo/SizeFilterJsonAdapter;->onMessageChannelReady()Z

    move-result v0

    if-eqz v0, :cond_a

    sget-object v0, Lo/WinningTypes;->MediaDescriptionCompatApi21$Builder:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Lo/component20;->ICustomTabsCallback()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_3

    :cond_7
    const-string v0, "/contentHeight"

    new-instance v1, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$3;

    invoke-direct {v1, p0}, Lo/CredCurrencyLedgerFragment$onItemClickListener$1$onClick$$inlined$executeOnResume$3;-><init>(Lo/CredCurrencyResponse;)V

    invoke-virtual {p0, v0, v1}, Lo/CredCurrencyResponse;->onNavigationEvent(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    const-string v0, "(function() {  var height = -1;  if (document.body) {    height = document.body.offsetHeight;  } else if (document.documentElement) {    height = document.documentElement.offsetHeight;  }  var url = \'gmsg://mobileads.google.com/contentHeight?\';  url += \'height=\' + height;  try {    window.googleAdsJsInterface.notify(url);  } catch (e) {    var frame = document.getElementById(\'afma-notify-fluid\');    if (!frame) {      frame = document.createElement(\'IFRAME\');      frame.id = \'afma-notify-fluid\';      frame.style.display = \'none\';      var body = document.body || document.documentElement;      body.appendChild(frame);    }    frame.src = url;  }})();"

    invoke-direct {p0, v0}, Lo/CredCurrencyResponse;->extraCallback(Ljava/lang/String;)V

    iget-object v0, p0, Lo/CredCurrencyResponse;->asBinder:Landroid/util/DisplayMetrics;

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget v1, p0, Lo/CredCurrencyResponse;->notify:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_8

    iget p2, p0, Lo/CredCurrencyResponse;->notify:I

    int-to-float p2, p2

    mul-float p2, p2, v0

    float-to-int p2, p2

    goto :goto_2

    :cond_8
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    :goto_2
    invoke-virtual {p0, p1, p2}, Lo/CredCurrencyResponse;->setMeasuredDimension(II)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :cond_9
    :goto_3
    :try_start_4
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    monitor-exit p0

    return-void

    :cond_a
    :try_start_5
    iget-object v0, p0, Lo/CredCurrencyResponse;->ICustomTabsService:Lo/SizeFilterJsonAdapter;

    invoke-virtual {v0}, Lo/SizeFilterJsonAdapter;->onPostMessage()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object p1, p0, Lo/CredCurrencyResponse;->asBinder:Landroid/util/DisplayMetrics;

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object p2, p0, Lo/CredCurrencyResponse;->asBinder:Landroid/util/DisplayMetrics;

    iget p2, p2, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {p0, p1, p2}, Lo/CredCurrencyResponse;->setMeasuredDimension(II)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    return-void

    :cond_b
    :try_start_6
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v4, -0x80000000

    const v5, 0x7fffffff

    if-eq v0, v4, :cond_d

    if-ne v0, v3, :cond_c

    goto :goto_4

    :cond_c
    const v0, 0x7fffffff

    goto :goto_5

    :cond_d
    :goto_4
    move v0, p1

    :goto_5
    if-eq v2, v4, :cond_e

    if-ne v2, v3, :cond_f

    :cond_e
    move v5, p2

    :cond_f
    iget-object v2, p0, Lo/CredCurrencyResponse;->ICustomTabsService:Lo/SizeFilterJsonAdapter;

    iget v2, v2, Lo/SizeFilterJsonAdapter;->onPostMessage:I

    const/4 v3, 0x1

    if-gt v2, v0, :cond_11

    iget-object v2, p0, Lo/CredCurrencyResponse;->ICustomTabsService:Lo/SizeFilterJsonAdapter;

    iget v2, v2, Lo/SizeFilterJsonAdapter;->onMessageChannelReady:I

    if-le v2, v5, :cond_10

    goto :goto_6

    :cond_10
    const/4 v2, 0x0

    goto :goto_7

    :cond_11
    :goto_6
    const/4 v2, 0x1

    :goto_7
    sget-object v4, Lo/WinningTypes;->onQueueChanged:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v6

    invoke-virtual {v6, v4}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_13

    iget-object v4, p0, Lo/CredCurrencyResponse;->ICustomTabsService:Lo/SizeFilterJsonAdapter;

    iget v4, v4, Lo/SizeFilterJsonAdapter;->onPostMessage:I

    int-to-float v4, v4

    iget v6, p0, Lo/CredCurrencyResponse;->onTransact:F

    div-float/2addr v4, v6

    int-to-float v0, v0

    iget v6, p0, Lo/CredCurrencyResponse;->onTransact:F

    div-float/2addr v0, v6

    cmpl-float v0, v4, v0

    if-gtz v0, :cond_12

    iget-object v0, p0, Lo/CredCurrencyResponse;->ICustomTabsService:Lo/SizeFilterJsonAdapter;

    iget v0, v0, Lo/SizeFilterJsonAdapter;->onMessageChannelReady:I

    int-to-float v0, v0

    iget v4, p0, Lo/CredCurrencyResponse;->onTransact:F

    div-float/2addr v0, v4

    int-to-float v4, v5

    iget v5, p0, Lo/CredCurrencyResponse;->onTransact:F

    div-float/2addr v4, v5

    cmpl-float v0, v0, v4

    if-gtz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_8

    :cond_12
    const/4 v0, 0x0

    :goto_8
    if-eqz v2, :cond_13

    move v2, v0

    :cond_13
    const/16 v0, 0x8

    if-eqz v2, :cond_15

    iget-object v2, p0, Lo/CredCurrencyResponse;->ICustomTabsService:Lo/SizeFilterJsonAdapter;

    iget v2, v2, Lo/SizeFilterJsonAdapter;->onPostMessage:I

    int-to-float v2, v2

    iget v4, p0, Lo/CredCurrencyResponse;->onTransact:F

    div-float/2addr v2, v4

    float-to-int v2, v2

    iget-object v4, p0, Lo/CredCurrencyResponse;->ICustomTabsService:Lo/SizeFilterJsonAdapter;

    iget v4, v4, Lo/SizeFilterJsonAdapter;->onMessageChannelReady:I

    int-to-float v4, v4

    iget v5, p0, Lo/CredCurrencyResponse;->onTransact:F

    div-float/2addr v4, v5

    float-to-int v4, v4

    int-to-float p1, p1

    iget v5, p0, Lo/CredCurrencyResponse;->onTransact:F

    div-float/2addr p1, v5

    float-to-int p1, p1

    int-to-float p2, p2

    iget v5, p0, Lo/CredCurrencyResponse;->onTransact:F

    div-float/2addr p2, v5

    float-to-int p2, p2

    const/16 v5, 0x67

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Not enough space to show ad. Needs "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " dp, but only has "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "x"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " dp."

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/CredCurrencyResponse;->getVisibility()I

    move-result p1

    if-eq p1, v0, :cond_14

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lo/CredCurrencyResponse;->setVisibility(I)V

    :cond_14
    invoke-virtual {p0, v1, v1}, Lo/CredCurrencyResponse;->setMeasuredDimension(II)V

    iget-boolean p1, p0, Lo/CredCurrencyResponse;->asInterface:Z

    if-nez p1, :cond_18

    iget-object p1, p0, Lo/CredCurrencyResponse;->AudioAttributesImplApi21Parcelizer:Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;

    sget-object p2, Lo/RedeemUtils$redeemReward$1$onResponse$3$onResponse$2$$special$$inlined$executeOnResume$1$onNavigationEvent$extraCallback;->asBinder:Lo/RedeemUtils$redeemReward$1$onResponse$3$onResponse$2$$special$$inlined$executeOnResume$1$onNavigationEvent$extraCallback;

    invoke-virtual {p1, p2}, Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;->extraCallback(Lo/RedeemUtils$redeemReward$1$onResponse$3$onResponse$2$$special$$inlined$executeOnResume$1$onNavigationEvent$extraCallback;)V

    iput-boolean v3, p0, Lo/CredCurrencyResponse;->asInterface:Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    return-void

    :cond_15
    :try_start_7
    invoke-virtual {p0}, Lo/CredCurrencyResponse;->getVisibility()I

    move-result p1

    if-eq p1, v0, :cond_16

    invoke-virtual {p0, v1}, Lo/CredCurrencyResponse;->setVisibility(I)V

    :cond_16
    iget-boolean p1, p0, Lo/CredCurrencyResponse;->ICustomTabsCallback$Stub:Z

    if-nez p1, :cond_17

    iget-object p1, p0, Lo/CredCurrencyResponse;->AudioAttributesImplApi21Parcelizer:Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;

    sget-object p2, Lo/RedeemUtils$redeemReward$1$onResponse$3$onResponse$2$$special$$inlined$executeOnResume$1$onNavigationEvent$extraCallback;->ICustomTabsCallback$Stub:Lo/RedeemUtils$redeemReward$1$onResponse$3$onResponse$2$$special$$inlined$executeOnResume$1$onNavigationEvent$extraCallback;

    invoke-virtual {p1, p2}, Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;->extraCallback(Lo/RedeemUtils$redeemReward$1$onResponse$3$onResponse$2$$special$$inlined$executeOnResume$1$onNavigationEvent$extraCallback;)V

    iput-boolean v3, p0, Lo/CredCurrencyResponse;->ICustomTabsCallback$Stub:Z

    :cond_17
    iget-object p1, p0, Lo/CredCurrencyResponse;->ICustomTabsService:Lo/SizeFilterJsonAdapter;

    iget p1, p1, Lo/SizeFilterJsonAdapter;->onPostMessage:I

    iget-object p2, p0, Lo/CredCurrencyResponse;->ICustomTabsService:Lo/SizeFilterJsonAdapter;

    iget p2, p2, Lo/SizeFilterJsonAdapter;->onMessageChannelReady:I

    invoke-virtual {p0, p1, p2}, Lo/CredCurrencyResponse;->setMeasuredDimension(II)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_18
    monitor-exit p0

    return-void

    :cond_19
    :goto_9
    :try_start_8
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onMeasure(II)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onMessageChannelReady()Lo/OfferDetailJsonAdapter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final onMessageChannelReady(Landroid/content/Context;)V
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyResponse;->onMessageChannelReady:Lo/UploadFiltersJsonAdapter;

    invoke-virtual {v0, p1}, Lo/UploadFiltersJsonAdapter;->setBaseContext(Landroid/content/Context;)V

    iget-object p1, p0, Lo/CredCurrencyResponse;->write:Lo/getTxn_time;

    iget-object v0, p0, Lo/CredCurrencyResponse;->onMessageChannelReady:Lo/UploadFiltersJsonAdapter;

    invoke-virtual {v0}, Lo/UploadFiltersJsonAdapter;->onNavigationEvent()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lo/getTxn_time;->onMessageChannelReady(Landroid/app/Activity;)V

    return-void
.end method

.method public final onMessageChannelReady(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/CredCurrencyResponse;->extraCallback(Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lo/CredCurrencyResponse;->INotificationSideChannel$Stub$Proxy()Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lo/WinningTypes;->onServiceConnected:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {}, Lo/DigestFragment$storySheetStateListener$1$onSlide$$inlined$executeOnResume$1;->onPostMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {p2, v0}, Lo/DigestFragment$storySheetStateListener$1$onSlide$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    move-object v2, p2

    const-string v3, "text/html"

    const-string v4, "UTF-8"

    move-object v0, p0

    move-object v1, p1

    move-object v5, p3

    invoke-super/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_1
    const-string p1, "#004 The webview is destroyed. Ignoring action."

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onMessageChannelReady(Ljava/lang/String;Lo/component21;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lo/component21<",
            "Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter<",
            "-",
            "Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;",
            ">;>;)V"
        }
    .end annotation

    iget-object v0, p0, Lo/CredCurrencyResponse;->onRelationshipValidationResult:Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;Lo/component21;)V

    :cond_0
    return-void
.end method

.method public final declared-synchronized onMessageChannelReady(Z)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lo/CredCurrencyResponse;->newSession:Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/CredCurrencyResponse;->newSession:Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;

    iget-object v1, p0, Lo/CredCurrencyResponse;->onRelationshipValidationResult:Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;

    invoke-virtual {v1}, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->extraCallback()Z

    move-result v1

    invoke-virtual {v0, v1, p1}, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->extraCallback(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iput-boolean p1, p0, Lo/CredCurrencyResponse;->getInterfaceDescriptor:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onNavigationEvent()Lo/ClickReference$$Parcelable;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lo/CredCurrencyResponse;->validateRelationship:Lo/ClickReference$$Parcelable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final onNavigationEvent(I)V
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, Lo/CredCurrencyResponse;->INotificationSideChannel$Stub$Proxy:Lo/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$1$lambda$1$1;

    invoke-virtual {v0}, Lo/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$1$lambda$1$1;->extraCallback()Lo/setCanReverse;

    move-result-object v0

    iget-object v1, p0, Lo/CredCurrencyResponse;->INotificationSideChannel:Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;

    const-string v2, "aebb2"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lo/setReelSymbols;->onNavigationEvent(Lo/setCanReverse;Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;[Ljava/lang/String;)Z

    :cond_0
    invoke-direct {p0}, Lo/CredCurrencyResponse;->connect()V

    iget-object v0, p0, Lo/CredCurrencyResponse;->INotificationSideChannel$Stub$Proxy:Lo/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$1$lambda$1$1;

    invoke-virtual {v0}, Lo/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$1$lambda$1$1;->extraCallback()Lo/setCanReverse;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/CredCurrencyResponse;->INotificationSideChannel$Stub$Proxy:Lo/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$1$lambda$1$1;

    invoke-virtual {v0}, Lo/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$1$lambda$1$1;->extraCallback()Lo/setCanReverse;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "close_type"

    invoke-virtual {v0, v2, v1}, Lo/setCanReverse;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "closetype"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lo/CredCurrencyResponse;->ICustomTabsCallback:Lo/DataListJsonAdapter;

    iget-object p1, p1, Lo/DataListJsonAdapter;->extraCallback:Ljava/lang/String;

    const-string v1, "version"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p1, "onhide"

    invoke-virtual {p0, p1, v0}, Lo/CredCurrencyResponse;->onPostMessage(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final onNavigationEvent(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter<",
            "-",
            "Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lo/CredCurrencyResponse;->onRelationshipValidationResult:Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    :cond_0
    return-void
.end method

.method public final onNavigationEvent(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 2

    if-nez p2, :cond_0

    new-instance p2, Lorg/json/JSONObject;

    invoke-direct {p2}, Lorg/json/JSONObject;-><init>()V

    :cond_0
    invoke-virtual {p2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "("

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ");"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lo/CredCurrencyResponse;->extraCallback(Ljava/lang/String;)V

    return-void
.end method

.method public final declared-synchronized onNavigationEvent(Lo/ClickReference$$Parcelable;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lo/CredCurrencyResponse;->validateRelationship:Lo/ClickReference$$Parcelable;

    if-eqz v0, :cond_0

    const-string p1, "Attempt to create multiple AdWebViewVideoControllers."

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iput-object p1, p0, Lo/CredCurrencyResponse;->validateRelationship:Lo/ClickReference$$Parcelable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onNavigationEvent(Lo/SizeFilterJsonAdapter;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lo/CredCurrencyResponse;->ICustomTabsService:Lo/SizeFilterJsonAdapter;

    invoke-virtual {p0}, Lo/CredCurrencyResponse;->requestLayout()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onNavigationEvent(Lo/StatementResponse_WaiverJsonAdapter;)V
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyResponse;->onRelationshipValidationResult:Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;

    invoke-virtual {v0, p1}, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onNavigationEvent(Lo/StatementResponse_WaiverJsonAdapter;)V

    return-void
.end method

.method public final declared-synchronized onNavigationEvent(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lo/CredCurrencyResponse;->cancelAll:I

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    add-int/2addr v0, p1

    iput v0, p0, Lo/CredCurrencyResponse;->cancelAll:I

    if-gtz v0, :cond_1

    iget-object p1, p0, Lo/CredCurrencyResponse;->newSession:Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lo/CredCurrencyResponse;->newSession:Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;

    invoke-virtual {p1}, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->postMessage()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onPause()V
    .locals 2

    invoke-virtual {p0}, Lo/CredCurrencyResponse;->INotificationSideChannel$Stub$Proxy()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lo/component20;->onNavigationEvent()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0}, Landroid/webkit/WebView;->onPause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not pause webview."

    invoke-static {v1, v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onPostMessage()Lo/StatementPeriod;
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyResponse;->onNavigationEvent:Lo/StatementPeriod;

    return-object v0
.end method

.method public final onPostMessage(Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;)V"
        }
    .end annotation

    :try_start_0
    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    move-result-object v0

    invoke-virtual {v0, p2}, Lo/AuthSupportedResponse$MetaData;->onMessageChannelReady(Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object p2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-virtual {p0, p1, p2}, Lo/CredCurrencyResponse;->extraCallback(Ljava/lang/String;Lorg/json/JSONObject;)V

    return-void

    :catch_0
    const-string p1, "Could not convert parameters to JSON."

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    return-void
.end method

.method public final onPostMessage(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter<",
            "-",
            "Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lo/CredCurrencyResponse;->onRelationshipValidationResult:Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;Lo/StatementResponse_StatementDetails_TransactionsJsonAdapter;)V

    :cond_0
    return-void
.end method

.method public final declared-synchronized onPostMessage(Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lo/CredCurrencyResponse;->setDefaultImpl:Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onPostMessage(Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lo/CredCurrencyResponse;->postMessage:Z

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean p1, p0, Lo/CredCurrencyResponse;->postMessage:Z

    invoke-direct {p0}, Lo/CredCurrencyResponse;->getServiceComponent()V

    if-eqz v0, :cond_2

    new-instance v0, Lo/getDataList;

    invoke-direct {v0, p0}, Lo/getDataList;-><init>(Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;)V

    if-eqz p1, :cond_1

    const-string p1, "expanded"

    goto :goto_1

    :cond_1
    const-string p1, "default"

    :goto_1
    invoke-virtual {v0, p1}, Lo/getDataList;->onNavigationEvent(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final onRelationshipValidationResult()V
    .locals 1

    invoke-virtual {p0}, Lo/CredCurrencyResponse;->updateVisuals()Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->extraCommand()V

    :cond_0
    return-void
.end method

.method public final onResume()V
    .locals 2

    invoke-virtual {p0}, Lo/CredCurrencyResponse;->INotificationSideChannel$Stub$Proxy()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Lo/component20;->onNavigationEvent()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-super {p0}, Landroid/webkit/WebView;->onResume()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not resume webview."

    invoke-static {v1, v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyResponse;->onRelationshipValidationResult:Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;

    check-cast v0, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;

    invoke-virtual {v0}, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lo/CredCurrencyResponse;->cancel:Lo/openAmexWebView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/CredCurrencyResponse;->cancel:Lo/openAmexWebView;

    invoke-interface {v0, p1}, Lo/openAmexWebView;->onMessageChannelReady(Landroid/view/MotionEvent;)V

    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    iget-object v0, p0, Lo/CredCurrencyResponse;->onPostMessage:Lo/GameCta;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lo/GameCta;->ICustomTabsCallback(Landroid/view/MotionEvent;)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lo/CredCurrencyResponse;->INotificationSideChannel$Stub$Proxy()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x0

    return p1

    :cond_3
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final declared-synchronized onTransact()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lo/CredCurrencyResponse;->ICustomTabsService$Stub$Proxy:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final postMessage()V
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    invoke-static {}, Lo/getParcel;->INotificationSideChannel$Stub()Lo/getSwipedDirection;

    move-result-object v1

    invoke-virtual {v1}, Lo/getSwipedDirection;->onMessageChannelReady()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_muted"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lo/getParcel;->INotificationSideChannel$Stub()Lo/getSwipedDirection;

    move-result-object v1

    invoke-virtual {v1}, Lo/getSwipedDirection;->onPostMessage()F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "app_volume"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lo/CredCurrencyResponse;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lo/getSwipedDirection;->onNavigationEvent(Landroid/content/Context;)F

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "device_volume"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "volume"

    invoke-virtual {p0, v1, v0}, Lo/CredCurrencyResponse;->onPostMessage(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final declared-synchronized read()Lo/openAmexWebView;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lo/CredCurrencyResponse;->cancel:Lo/openAmexWebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final requestPostMessageChannel()V
    .locals 3

    invoke-direct {p0}, Lo/CredCurrencyResponse;->connect()V

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iget-object v1, p0, Lo/CredCurrencyResponse;->ICustomTabsCallback:Lo/DataListJsonAdapter;

    iget-object v1, v1, Lo/DataListJsonAdapter;->extraCallback:Ljava/lang/String;

    const-string v2, "version"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onhide"

    invoke-virtual {p0, v1, v0}, Lo/CredCurrencyResponse;->onPostMessage(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public final declared-synchronized setDefaultImpl()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "Destroying WebView!"

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    invoke-direct {p0}, Lo/CredCurrencyResponse;->getRoot()V

    sget-object v0, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    new-instance v1, Lo/ClickReferenceJsonAdapter;

    invoke-direct {v1, p0}, Lo/ClickReferenceJsonAdapter;-><init>(Lo/CredCurrencyResponse;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lo/CredCurrencyResponse;->INotificationSideChannel$Default:Ljava/lang/ref/WeakReference;

    invoke-super {p0, p1}, Landroid/webkit/WebView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final declared-synchronized setRequestedOrientation(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lo/CredCurrencyResponse;->extraCommand:I

    iget-object v0, p0, Lo/CredCurrencyResponse;->newSession:Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/CredCurrencyResponse;->newSession:Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;

    invoke-virtual {v0, p1}, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onPostMessage(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    instance-of v0, p1, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;

    if-eqz v0, :cond_0

    check-cast p1, Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;

    iput-object p1, p0, Lo/CredCurrencyResponse;->onRelationshipValidationResult:Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;

    :cond_0
    return-void
.end method

.method public final stopLoading()V
    .locals 2

    invoke-virtual {p0}, Lo/CredCurrencyResponse;->INotificationSideChannel$Stub$Proxy()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->stopLoading()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "Could not stop loading webview."

    invoke-static {v1, v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final declared-synchronized updateVisuals()Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lo/CredCurrencyResponse;->newSession:Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final validateRelationship()Landroid/webkit/WebViewClient;
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyResponse;->onRelationshipValidationResult:Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;

    return-object v0
.end method

.method public final warmup()I
    .locals 1

    invoke-virtual {p0}, Lo/CredCurrencyResponse;->getMeasuredHeight()I

    move-result v0

    return v0
.end method

.method public final write()V
    .locals 1

    iget-object v0, p0, Lo/CredCurrencyResponse;->write:Lo/getTxn_time;

    invoke-virtual {v0}, Lo/getTxn_time;->ICustomTabsCallback()V

    return-void
.end method

.method public final declared-synchronized x_()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lo/CredCurrencyResponse;->IPostMessageService$Stub:Z

    iget-object v0, p0, Lo/CredCurrencyResponse;->extraCallback:Lo/LoginResponse;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/CredCurrencyResponse;->extraCallback:Lo/LoginResponse;

    invoke-interface {v0}, Lo/LoginResponse;->x_()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
