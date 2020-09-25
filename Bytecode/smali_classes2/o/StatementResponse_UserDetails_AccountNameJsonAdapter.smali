.class public Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;
.super Lo/setCropShape;

# interfaces
.implements Lo/Count;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# static fields
.field private static final onMessageChannelReady:I


# instance fields
.field ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

.field private ICustomTabsCallback$Stub:Landroid/widget/FrameLayout;

.field private ICustomTabsCallback$Stub$Proxy:Lo/BrandIcon;

.field private ICustomTabsService:Z

.field private IPostMessageService$Stub:Z

.field private asBinder:Landroid/webkit/WebChromeClient$CustomViewCallback;

.field private asInterface:Lo/RewardCityModel;

.field extraCallback:I

.field private extraCommand:Z

.field private final getInterfaceDescriptor:Ljava/lang/Object;

.field private mayLaunchUrl:Ljava/lang/Runnable;

.field private newSession:Z

.field protected final onNavigationEvent:Landroid/app/Activity;

.field onPostMessage:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

.field private onRelationshipValidationResult:Lo/UiHandlerKt$postUiInternal$runnable$1$$special$$inlined$executeOnResume$1;

.field private onTransact:Z

.field private postMessage:Z

.field private requestPostMessageChannel:Z

.field private updateVisuals:Z

.field private warmup:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0, v0, v0, v0}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onMessageChannelReady:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    invoke-direct {p0}, Lo/setCropShape;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onTransact:Z

    iput-boolean v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->warmup:Z

    iput-boolean v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->newSession:Z

    iput-boolean v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->ICustomTabsService:Z

    iput v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->extraCallback:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->getInterfaceDescriptor:Ljava/lang/Object;

    iput-boolean v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->postMessage:Z

    iput-boolean v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->requestPostMessageChannel:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->IPostMessageService$Stub:Z

    iput-object p1, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onNavigationEvent:Landroid/app/Activity;

    return-void
.end method

.method private final ICustomTabsCallback(Z)V
    .locals 17
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lo/CampaignBenefitJsonAdapter;
        }
    .end annotation

    move-object/from16 v1, p0

    iget-boolean v0, v1, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->updateVisuals:Z

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, v1, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onNavigationEvent:Landroid/app/Activity;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->requestWindowFeature(I)Z

    :cond_0
    iget-object v0, v1, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onNavigationEvent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-static {}, Lo/component20;->ICustomTabsCallback$Stub$Proxy()Z

    move-result v3

    if-eqz v3, :cond_1

    sget-object v3, Lo/WinningTypes;->fromRating:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v4

    invoke-virtual {v4, v3}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    iget-object v3, v1, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onNavigationEvent:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-static {v3, v4}, Lo/AuthSupportedResponse$MetaData;->onMessageChannelReady(Landroid/app/Activity;Landroid/content/res/Configuration;)Z

    move-result v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    :goto_0
    iget-object v4, v1, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onPostMessage:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->ICustomTabsService:Lo/setStatus;

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    iget-object v4, v1, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onPostMessage:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->ICustomTabsService:Lo/setStatus;

    iget-boolean v4, v4, Lo/setStatus;->extraCallback:Z

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    iget-boolean v6, v1, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->newSession:Z

    if-eqz v6, :cond_3

    if-eqz v4, :cond_4

    :cond_3
    if-eqz v3, :cond_4

    const/16 v3, 0x400

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    sget-object v3, Lo/WinningTypes;->dump:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v4

    invoke-virtual {v4, v3}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-static {}, Lo/component20;->onRelationshipValidationResult()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, v1, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onPostMessage:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->ICustomTabsService:Lo/setStatus;

    if-eqz v3, :cond_4

    iget-object v3, v1, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onPostMessage:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->ICustomTabsService:Lo/setStatus;

    iget-boolean v3, v3, Lo/setStatus;->ICustomTabsCallback$Stub:Z

    if-eqz v3, :cond_4

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x1002

    invoke-virtual {v3, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_4
    iget-object v3, v1, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onPostMessage:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    const/4 v4, 0x0

    if-eqz v3, :cond_5

    iget-object v3, v1, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onPostMessage:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v3}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->IPostMessageService$Stub()Lo/SizeFilter;

    move-result-object v3

    goto :goto_2

    :cond_5
    move-object v3, v4

    :goto_2
    if-eqz v3, :cond_6

    invoke-interface {v3}, Lo/SizeFilter;->extraCallback()Z

    move-result v3

    goto :goto_3

    :cond_6
    const/4 v3, 0x0

    :goto_3
    iput-boolean v5, v1, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->ICustomTabsService:Z

    if-eqz v3, :cond_9

    iget-object v6, v1, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onPostMessage:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v6, v6, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->onTransact:I

    invoke-static {}, Lo/getParcel;->onTransact()Lo/getAccount_number;

    move-result-object v7

    invoke-virtual {v7}, Lo/getAccount_number;->ICustomTabsCallback()I

    move-result v7

    if-ne v6, v7, :cond_8

    iget-object v6, v1, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onNavigationEvent:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    if-ne v6, v2, :cond_7

    :goto_4
    const/4 v5, 0x1

    :cond_7
    iput-boolean v5, v1, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->ICustomTabsService:Z

    goto :goto_5

    :cond_8
    iget-object v6, v1, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onPostMessage:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v6, v6, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->onTransact:I

    invoke-static {}, Lo/getParcel;->onTransact()Lo/getAccount_number;

    move-result-object v7

    invoke-virtual {v7}, Lo/getAccount_number;->onMessageChannelReady()I

    move-result v7

    if-ne v6, v7, :cond_9

    iget-object v6, v1, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onNavigationEvent:Landroid/app/Activity;

    invoke-virtual {v6}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    iget v6, v6, Landroid/content/res/Configuration;->orientation:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_7

    goto :goto_4

    :cond_9
    :goto_5
    iget-boolean v5, v1, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->ICustomTabsService:Z

    const/16 v6, 0x2e

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v6, "Delay onShow to next orientation change: "

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;)V

    iget-object v5, v1, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onPostMessage:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget v5, v5, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->onTransact:I

    invoke-virtual {v1, v5}, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onPostMessage(I)V

    invoke-static {}, Lo/getParcel;->onTransact()Lo/getAccount_number;

    move-result-object v5

    invoke-virtual {v5, v0}, Lo/getAccount_number;->onPostMessage(Landroid/view/Window;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "Hardware acceleration on the AdActivity window enabled."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;)V

    :cond_a
    iget-boolean v0, v1, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->newSession:Z

    if-nez v0, :cond_b

    iget-object v0, v1, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Lo/BrandIcon;

    const/high16 v5, -0x1000000

    goto :goto_6

    :cond_b
    iget-object v0, v1, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Lo/BrandIcon;

    sget v5, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onMessageChannelReady:I

    :goto_6
    invoke-virtual {v0, v5}, Lo/BrandIcon;->setBackgroundColor(I)V

    iget-object v0, v1, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onNavigationEvent:Landroid/app/Activity;

    iget-object v5, v1, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Lo/BrandIcon;

    invoke-virtual {v0, v5}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    iput-boolean v2, v1, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->updateVisuals:Z

    if-eqz p1, :cond_12

    :try_start_0
    invoke-static {}, Lo/getParcel;->ICustomTabsCallback$Stub()Lo/setCtaState$default;

    iget-object v6, v1, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onNavigationEvent:Landroid/app/Activity;

    iget-object v0, v1, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onPostMessage:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    if-eqz v0, :cond_c

    iget-object v0, v1, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onPostMessage:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsService$Stub()Lo/SizeFilterJsonAdapter;

    move-result-object v0

    move-object v7, v0

    goto :goto_7

    :cond_c
    move-object v7, v4

    :goto_7
    iget-object v0, v1, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onPostMessage:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    if-eqz v0, :cond_d

    iget-object v0, v1, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onPostMessage:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->IPostMessageService()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_8

    :cond_d
    move-object v8, v4

    :goto_8
    const/4 v9, 0x1

    const/4 v11, 0x0

    iget-object v0, v1, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onPostMessage:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v12, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->ICustomTabsCallback$Stub$Proxy:Lo/DataListJsonAdapter;

    const/4 v13, 0x0

    const/4 v14, 0x0

    iget-object v0, v1, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onPostMessage:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    if-eqz v0, :cond_e

    iget-object v0, v1, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onPostMessage:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onPostMessage()Lo/StatementPeriod;

    move-result-object v0

    move-object v15, v0

    goto :goto_9

    :cond_e
    move-object v15, v4

    :goto_9
    invoke-static {}, Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;->onPostMessage()Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;

    move-result-object v16

    move v10, v3

    invoke-static/range {v6 .. v16}, Lo/setCtaState$default;->ICustomTabsCallback(Landroid/content/Context;Lo/SizeFilterJsonAdapter;Ljava/lang/String;ZZLo/GameCta;Lo/DataListJsonAdapter;Lo/setCanReverse;Lo/LoginResponse;Lo/StatementPeriod;Lo/RedeemDialogPresenter$storePaymentStatusObserver$1$$special$$inlined$executeOnResume$3$lambda$2;)Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    move-result-object v0

    iput-object v0, v1, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->IPostMessageService$Stub()Lo/SizeFilter;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v0, v1, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onPostMessage:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v7, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->mayLaunchUrl:Lo/getTxnCurrency;

    const/4 v8, 0x0

    iget-object v0, v1, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onPostMessage:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v9, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->onPostMessage:Lo/component8;

    iget-object v0, v1, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onPostMessage:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v10, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->asInterface:Lo/CountJsonAdapter;

    const/4 v11, 0x1

    const/4 v12, 0x0

    iget-object v0, v1, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onPostMessage:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    if-eqz v0, :cond_f

    iget-object v0, v1, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onPostMessage:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->IPostMessageService$Stub()Lo/SizeFilter;

    move-result-object v0

    invoke-interface {v0}, Lo/SizeFilter;->onMessageChannelReady()Lo/RecentOrder;

    move-result-object v4

    :cond_f
    move-object v13, v4

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-interface/range {v5 .. v15}, Lo/SizeFilter;->ICustomTabsCallback(Lo/zzd;Lo/getTxnCurrency;Lo/GemIntroDetails;Lo/component8;Lo/CountJsonAdapter;ZLo/StatementResponse_UserDetailsJsonAdapter;Lo/RecentOrder;Lo/isCompressed;Lo/StatementDetailsRequestJsonAdapter;)V

    iget-object v0, v1, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->IPostMessageService$Stub()Lo/SizeFilter;

    move-result-object v0

    new-instance v4, Lo/BrandIconJsonAdapter;

    invoke-direct {v4, v1}, Lo/BrandIconJsonAdapter;-><init>(Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;)V

    invoke-interface {v0, v4}, Lo/SizeFilter;->extraCallback(Lo/FileUploadConfigJsonAdapter;)V

    iget-object v0, v1, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onPostMessage:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->warmup:Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, v1, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    iget-object v4, v1, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onPostMessage:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->warmup:Ljava/lang/String;

    invoke-interface {v0, v4}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->loadUrl(Ljava/lang/String;)V

    goto :goto_a

    :cond_10
    iget-object v0, v1, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onPostMessage:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->onRelationshipValidationResult:Ljava/lang/String;

    if-eqz v0, :cond_11

    iget-object v4, v1, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    iget-object v0, v1, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onPostMessage:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v5, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->asBinder:Ljava/lang/String;

    iget-object v0, v1, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onPostMessage:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v6, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->onRelationshipValidationResult:Ljava/lang/String;

    const/4 v9, 0x0

    const-string v7, "text/html"

    const-string v8, "UTF-8"

    invoke-interface/range {v4 .. v9}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_a
    iget-object v0, v1, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onPostMessage:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    if-eqz v0, :cond_13

    iget-object v0, v1, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onPostMessage:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0, v1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onPostMessage(Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;)V

    goto :goto_b

    :cond_11
    new-instance v0, Lo/CampaignBenefitJsonAdapter;

    const-string v2, "No URL or HTML to display in ad overlay."

    invoke-direct {v0, v2}, Lo/CampaignBenefitJsonAdapter;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v0

    const-string v2, "Error obtaining webview."

    invoke-static {v2, v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Lo/CampaignBenefitJsonAdapter;

    const-string v2, "Could not obtain webview for the overlay."

    invoke-direct {v0, v2}, Lo/CampaignBenefitJsonAdapter;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    iget-object v0, v1, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onPostMessage:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    iput-object v0, v1, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    iget-object v4, v1, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onNavigationEvent:Landroid/app/Activity;

    invoke-interface {v0, v4}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onMessageChannelReady(Landroid/content/Context;)V

    :cond_13
    :goto_b
    iget-object v0, v1, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0, v1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->ICustomTabsCallback(Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;)V

    iget-object v0, v1, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_14

    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_14

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v4, v1, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v4}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->newSession()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_14
    iget-boolean v0, v1, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->newSession:Z

    if-eqz v0, :cond_15

    iget-object v0, v1, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->IconCompatParcelizer()V

    :cond_15
    iget-object v0, v1, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Lo/BrandIcon;

    iget-object v4, v1, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v4}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->newSession()Landroid/view/View;

    move-result-object v4

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5, v5}, Lo/BrandIcon;->addView(Landroid/view/View;II)V

    if-nez p1, :cond_16

    iget-boolean v0, v1, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->ICustomTabsService:Z

    if-nez v0, :cond_16

    invoke-direct/range {p0 .. p0}, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->IPostMessageService$Stub()V

    :cond_16
    invoke-direct {v1, v3}, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onPostMessage(Z)V

    iget-object v0, v1, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->IPostMessageService$Stub$Proxy()Z

    move-result v0

    if-eqz v0, :cond_17

    invoke-virtual {v1, v3, v2}, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->extraCallback(ZZ)V

    :cond_17
    return-void

    :cond_18
    new-instance v0, Lo/CampaignBenefitJsonAdapter;

    const-string v2, "Invalid activity, no window available."

    invoke-direct {v0, v2}, Lo/CampaignBenefitJsonAdapter;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final IPostMessageService$Stub()V
    .locals 1

    iget-object v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->mayLaunchUrl()V

    return-void
.end method

.method private final mayLaunchUrl()V
    .locals 5

    iget-object v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onNavigationEvent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->postMessage:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->postMessage:Z

    iget-object v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    if-eqz v0, :cond_2

    iget v1, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->extraCallback:I

    invoke-interface {v0, v1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onNavigationEvent(I)V

    iget-object v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->getInterfaceDescriptor:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->extraCommand:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v1}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->getDefaultImpl()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lo/CampaignBenefit;

    invoke-direct {v1, p0}, Lo/CampaignBenefit;-><init>(Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;)V

    iput-object v1, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->mayLaunchUrl:Ljava/lang/Runnable;

    sget-object v1, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    iget-object v2, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->mayLaunchUrl:Ljava/lang/Runnable;

    sget-object v3, Lo/WinningTypes;->getStateLabel:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v4

    invoke-virtual {v4, v3}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    monitor-exit v0

    return-void

    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->updateVisuals()V

    :cond_3
    :goto_1
    return-void
.end method

.method private final onPostMessage(Z)V
    .locals 4

    sget-object v0, Lo/WinningTypes;->RatingCompat$1:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v1, Lo/FeatureResponseModel;

    invoke-direct {v1}, Lo/FeatureResponseModel;-><init>()V

    const/16 v2, 0x32

    iput v2, v1, Lo/FeatureResponseModel;->onNavigationEvent:I

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    move v3, v0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput v3, v1, Lo/FeatureResponseModel;->onMessageChannelReady:I

    if-eqz p1, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    move v3, v0

    :goto_1
    iput v3, v1, Lo/FeatureResponseModel;->extraCallback:I

    iput v2, v1, Lo/FeatureResponseModel;->ICustomTabsCallback:I

    iput v0, v1, Lo/FeatureResponseModel;->onPostMessage:I

    new-instance v0, Lo/RewardCityModel;

    iget-object v2, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onNavigationEvent:Landroid/app/Activity;

    invoke-direct {v0, v2, v1, p0}, Lo/RewardCityModel;-><init>(Landroid/content/Context;Lo/FeatureResponseModel;Lo/Count;)V

    iput-object v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->asInterface:Lo/RewardCityModel;

    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    if-eqz p1, :cond_2

    const/16 v1, 0xb

    goto :goto_2

    :cond_2
    const/16 v1, 0x9

    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    iget-object v1, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onPostMessage:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-boolean v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->ICustomTabsCallback$Stub:Z

    invoke-virtual {p0, p1, v1}, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->extraCallback(ZZ)V

    iget-object p1, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Lo/BrandIcon;

    iget-object v1, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->asInterface:Lo/RewardCityModel;

    invoke-virtual {p1, v1, v0}, Lo/BrandIcon;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->extraCallback:I

    return-void
.end method

.method public final ICustomTabsCallback(IILandroid/content/Intent;)V
    .locals 0

    return-void
.end method

.method public final ICustomTabsCallback(Landroid/os/Bundle;)V
    .locals 2

    iget-boolean v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->warmup:Z

    const-string v1, "com.google.android.gms.ads.internal.overlay.hasResumed"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method public final ICustomTabsCallback$Stub()V
    .locals 2

    iget-object v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onPostMessage:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->onMessageChannelReady:Lo/GemIntroDetails;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onPostMessage:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->onMessageChannelReady:Lo/GemIntroDetails;

    invoke-interface {v0}, Lo/GemIntroDetails;->onTransact()V

    :cond_0
    sget-object v0, Lo/WinningTypes;->getPercentRating:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->INotificationSideChannel$Stub$Proxy()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lo/getParcel;->onTransact()Lo/getAccount_number;

    iget-object v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-static {v0}, Lo/getAccount_number;->ICustomTabsCallback(Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;)Z

    return-void

    :cond_1
    const-string v0, "The webview does not exist. Ignoring action."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public final ICustomTabsCallback$Stub$Proxy()V
    .locals 2

    iget-object v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Lo/BrandIcon;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->newSession()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lo/BrandIcon;->removeView(Landroid/view/View;)V

    :cond_0
    invoke-direct {p0}, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->mayLaunchUrl()V

    return-void
.end method

.method public final ICustomTabsService()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->updateVisuals:Z

    return-void
.end method

.method public final asInterface()V
    .locals 2

    sget-object v0, Lo/WinningTypes;->getPercentRating:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->INotificationSideChannel$Stub$Proxy()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lo/getParcel;->onTransact()Lo/getAccount_number;

    iget-object v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-static {v0}, Lo/getAccount_number;->ICustomTabsCallback(Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;)Z

    return-void

    :cond_0
    const-string v0, "The webview does not exist. Ignoring action."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public final extraCallback()V
    .locals 3

    iget-object v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onPostMessage:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onTransact:Z

    if-eqz v1, :cond_0

    iget v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->onTransact:I

    invoke-virtual {p0, v0}, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onPostMessage(I)V

    :cond_0
    iget-object v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->ICustomTabsCallback$Stub:Landroid/widget/FrameLayout;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onNavigationEvent:Landroid/app/Activity;

    iget-object v2, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Lo/BrandIcon;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->updateVisuals:Z

    iget-object v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->ICustomTabsCallback$Stub:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iput-object v1, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->ICustomTabsCallback$Stub:Landroid/widget/FrameLayout;

    :cond_1
    iget-object v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->asBinder:Landroid/webkit/WebChromeClient$CustomViewCallback;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/webkit/WebChromeClient$CustomViewCallback;->onCustomViewHidden()V

    iput-object v1, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->asBinder:Landroid/webkit/WebChromeClient$CustomViewCallback;

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onTransact:Z

    return-void
.end method

.method public final extraCallback(Landroid/view/View;Landroid/webkit/WebChromeClient$CustomViewCallback;)V
    .locals 2

    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onNavigationEvent:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->ICustomTabsCallback$Stub:Landroid/widget/FrameLayout;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->ICustomTabsCallback$Stub:Landroid/widget/FrameLayout;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    iget-object p1, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onNavigationEvent:Landroid/app/Activity;

    iget-object v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->ICustomTabsCallback$Stub:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->updateVisuals:Z

    iput-object p2, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->asBinder:Landroid/webkit/WebChromeClient$CustomViewCallback;

    iput-boolean p1, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onTransact:Z

    return-void
.end method

.method public final extraCallback(ZZ)V
    .locals 6

    sget-object v0, Lo/WinningTypes;->MediaBrowserCompat$MediaBrowserImplBase$5:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onPostMessage:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->ICustomTabsService:Lo/setStatus;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onPostMessage:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->ICustomTabsService:Lo/setStatus;

    iget-boolean v0, v0, Lo/setStatus;->asBinder:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sget-object v3, Lo/WinningTypes;->MediaBrowserCompat$MediaBrowserImplBase$4:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v4

    invoke-virtual {v4, v3}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onPostMessage:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v3, :cond_1

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->ICustomTabsService:Lo/setStatus;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onPostMessage:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->ICustomTabsService:Lo/setStatus;

    iget-boolean v3, v3, Lo/setStatus;->asInterface:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-eqz v0, :cond_2

    if-nez v3, :cond_2

    new-instance p1, Lo/getDataList;

    iget-object v4, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    const-string v5, "useCustomClose"

    invoke-direct {p1, v4, v5}, Lo/getDataList;-><init>(Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;Ljava/lang/String;)V

    const-string v4, "Custom close has been disabled for interstitial ads in this ad slot."

    invoke-virtual {p1, v4}, Lo/getDataList;->onPostMessage(Ljava/lang/String;)V

    :cond_2
    iget-object p1, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->asInterface:Lo/RewardCityModel;

    if-eqz p1, :cond_5

    if-nez v3, :cond_4

    if-eqz p2, :cond_3

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    :cond_4
    :goto_2
    invoke-virtual {p1, v1}, Lo/RewardCityModel;->onPostMessage(Z)V

    :cond_5
    return-void
.end method

.method public final extraCommand()V
    .locals 2

    iget-object v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Lo/BrandIcon;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lo/BrandIcon;->extraCallback:Z

    return-void
.end method

.method public final newSession()V
    .locals 2

    sget-object v0, Lo/WinningTypes;->getPercentRating:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onNavigationEvent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onRelationshipValidationResult:Lo/UiHandlerKt$postUiInternal$runnable$1$$special$$inlined$executeOnResume$1;

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lo/getParcel;->onTransact()Lo/getAccount_number;

    iget-object v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-static {v0}, Lo/getAccount_number;->extraCallback(Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;)Z

    :cond_1
    invoke-direct {p0}, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->mayLaunchUrl()V

    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->extraCallback:I

    iget-object v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onNavigationEvent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onNavigationEvent(Landroid/os/Bundle;)V
    .locals 6

    iget-object v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onNavigationEvent:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->requestWindowFeature(I)Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v2, "com.google.android.gms.ads.internal.overlay.hasResumed"

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->warmup:Z

    const/4 v2, 0x3

    :try_start_0
    iget-object v3, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onNavigationEvent:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->onNavigationEvent(Landroid/content/Intent;)Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    move-result-object v3

    iput-object v3, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onPostMessage:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v3, :cond_a

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->ICustomTabsCallback$Stub$Proxy:Lo/DataListJsonAdapter;

    iget v3, v3, Lo/DataListJsonAdapter;->onMessageChannelReady:I

    const v4, 0x7270e0

    if-le v3, v4, :cond_1

    iput v2, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->extraCallback:I

    :cond_1
    iget-object v3, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onNavigationEvent:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onNavigationEvent:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "shouldCallOnOverlayOpened"

    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->IPostMessageService$Stub:Z

    :cond_2
    iget-object v3, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onPostMessage:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->ICustomTabsService:Lo/setStatus;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onPostMessage:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->ICustomTabsService:Lo/setStatus;

    iget-boolean v3, v3, Lo/setStatus;->onNavigationEvent:Z

    iput-boolean v3, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->newSession:Z

    goto :goto_1

    :cond_3
    iput-boolean v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->newSession:Z

    :goto_1
    sget-object v3, Lo/WinningTypes;->getTitle:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v4

    invoke-virtual {v4, v3}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->newSession:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onPostMessage:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v3, v3, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->ICustomTabsService:Lo/setStatus;

    iget v3, v3, Lo/setStatus;->onMessageChannelReady:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_4

    new-instance v3, Lo/CampaignImagesJsonAdapter;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lo/CampaignImagesJsonAdapter;-><init>(Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;Lo/CampaignBenefit;)V

    invoke-virtual {v3}, Lo/ContactReverseSyncResponse;->asBinder()Lo/PaymentModeListResponseJsonAdapter;

    :cond_4
    if-nez p1, :cond_6

    iget-object p1, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onPostMessage:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->onMessageChannelReady:Lo/GemIntroDetails;

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->IPostMessageService$Stub:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onPostMessage:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->onMessageChannelReady:Lo/GemIntroDetails;

    invoke-interface {p1}, Lo/GemIntroDetails;->onRelationshipValidationResult()V

    :cond_5
    iget-object p1, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onPostMessage:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->getInterfaceDescriptor:I

    if-eq p1, v1, :cond_6

    iget-object p1, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onPostMessage:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->onNavigationEvent:Lo/zzd;

    if-eqz p1, :cond_6

    iget-object p1, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onPostMessage:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->onNavigationEvent:Lo/zzd;

    invoke-interface {p1}, Lo/zzd;->u_()V

    :cond_6
    new-instance p1, Lo/BrandIcon;

    iget-object v3, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onNavigationEvent:Landroid/app/Activity;

    iget-object v4, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onPostMessage:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v4, v4, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->newSession:Ljava/lang/String;

    iget-object v5, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onPostMessage:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v5, v5, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->ICustomTabsCallback$Stub$Proxy:Lo/DataListJsonAdapter;

    iget-object v5, v5, Lo/DataListJsonAdapter;->extraCallback:Ljava/lang/String;

    invoke-direct {p1, v3, v4, v5}, Lo/BrandIcon;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Lo/BrandIcon;

    const/16 v3, 0x3e8

    invoke-virtual {p1, v3}, Lo/BrandIcon;->setId(I)V

    iget-object p1, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onPostMessage:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget p1, p1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->getInterfaceDescriptor:I

    if-eq p1, v1, :cond_9

    const/4 v3, 0x2

    if-eq p1, v3, :cond_8

    if-ne p1, v2, :cond_7

    invoke-direct {p0, v1}, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->ICustomTabsCallback(Z)V

    return-void

    :cond_7
    new-instance p1, Lo/CampaignBenefitJsonAdapter;

    const-string v0, "Could not determine ad overlay type."

    invoke-direct {p1, v0}, Lo/CampaignBenefitJsonAdapter;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance p1, Lo/UiHandlerKt$postUiInternal$runnable$1$$special$$inlined$executeOnResume$1;

    iget-object v1, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onPostMessage:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v1, v1, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-direct {p1, v1}, Lo/UiHandlerKt$postUiInternal$runnable$1$$special$$inlined$executeOnResume$1;-><init>(Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;)V

    iput-object p1, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onRelationshipValidationResult:Lo/UiHandlerKt$postUiInternal$runnable$1$$special$$inlined$executeOnResume$1;

    invoke-direct {p0, v0}, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->ICustomTabsCallback(Z)V

    return-void

    :cond_9
    invoke-direct {p0, v0}, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->ICustomTabsCallback(Z)V

    return-void

    :cond_a
    new-instance p1, Lo/CampaignBenefitJsonAdapter;

    const-string v0, "Could not get info for ad overlay."

    invoke-direct {p1, v0}, Lo/CampaignBenefitJsonAdapter;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Lo/CampaignBenefitJsonAdapter; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lo/CampaignBenefitJsonAdapter;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    iput v2, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->extraCallback:I

    iget-object p1, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onNavigationEvent:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onNavigationEvent()Z
    .locals 4

    const/4 v0, 0x0

    iput v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->extraCallback:I

    iget-object v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->INotificationSideChannel$Default()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    const-string v3, "onbackblocked"

    invoke-interface {v1, v3, v2}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onPostMessage(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    return v0
.end method

.method public final onPostMessage()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->extraCallback:I

    iget-object v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onNavigationEvent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public final onPostMessage(I)V
    .locals 3

    iget-object v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onNavigationEvent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    sget-object v1, Lo/WinningTypes;->onRepeatModeChanged:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onNavigationEvent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    sget-object v1, Lo/WinningTypes;->onShuffleModeChanged:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v1, Lo/WinningTypes;->onShuffleModeChangedRemoved:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sget-object v1, Lo/WinningTypes;->onVolumeInfoChanged:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v2

    invoke-virtual {v2, v1}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-gt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onNavigationEvent:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setRequestedOrientation(I)V

    return-void
.end method

.method public final onPostMessage(Lo/getEventName;)V
    .locals 2

    sget-object v0, Lo/WinningTypes;->fromRating:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lo/component20;->ICustomTabsCallback$Stub$Proxy()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1}, Lo/GetRatingResponseJsonAdapter;->extraCallback(Lo/getEventName;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/res/Configuration;

    invoke-static {}, Lo/getParcel;->ICustomTabsCallback()Lo/AuthSupportedResponse$MetaData;

    iget-object v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onNavigationEvent:Landroid/app/Activity;

    invoke-static {v0, p1}, Lo/AuthSupportedResponse$MetaData;->onMessageChannelReady(Landroid/app/Activity;Landroid/content/res/Configuration;)Z

    move-result p1

    const/16 v0, 0x400

    const/16 v1, 0x800

    if-eqz p1, :cond_0

    iget-object p1, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onNavigationEvent:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    iget-object p1, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onNavigationEvent:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->clearFlags(I)V

    return-void

    :cond_0
    iget-object p1, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onNavigationEvent:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/Window;->addFlags(I)V

    iget-object p1, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onNavigationEvent:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    :cond_1
    return-void
.end method

.method public final onRelationshipValidationResult()V
    .locals 2

    invoke-virtual {p0}, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->extraCallback()V

    iget-object v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onPostMessage:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->onMessageChannelReady:Lo/GemIntroDetails;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onPostMessage:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->onMessageChannelReady:Lo/GemIntroDetails;

    invoke-interface {v0}, Lo/GemIntroDetails;->v_()V

    :cond_0
    sget-object v0, Lo/WinningTypes;->getPercentRating:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onNavigationEvent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onRelationshipValidationResult:Lo/UiHandlerKt$postUiInternal$runnable$1$$special$$inlined$executeOnResume$1;

    if-nez v0, :cond_2

    :cond_1
    invoke-static {}, Lo/getParcel;->onTransact()Lo/getAccount_number;

    iget-object v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-static {v0}, Lo/getAccount_number;->extraCallback(Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;)Z

    :cond_2
    invoke-direct {p0}, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->mayLaunchUrl()V

    return-void
.end method

.method public final onTransact()V
    .locals 0

    return-void
.end method

.method public final postMessage()V
    .locals 3

    iget-object v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->getInterfaceDescriptor:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->extraCommand:Z

    iget-object v1, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->mayLaunchUrl:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    sget-object v1, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    iget-object v2, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->mayLaunchUrl:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    sget-object v1, Lo/AuthSupportedResponse$MetaData;->onNavigationEvent:Landroid/os/Handler;

    iget-object v2, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->mayLaunchUrl:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final requestPostMessageChannel()V
    .locals 1

    iget-boolean v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->ICustomTabsService:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->ICustomTabsService:Z

    invoke-direct {p0}, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->IPostMessageService$Stub()V

    :cond_0
    return-void
.end method

.method final updateVisuals()V
    .locals 5

    iget-boolean v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->requestPostMessageChannel:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->requestPostMessageChannel:Z

    iget-object v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Lo/BrandIcon;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->newSession()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Lo/BrandIcon;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onRelationshipValidationResult:Lo/UiHandlerKt$postUiInternal$runnable$1$$special$$inlined$executeOnResume$1;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    iget-object v0, v0, Lo/UiHandlerKt$postUiInternal$runnable$1$$special$$inlined$executeOnResume$1;->onNavigationEvent:Landroid/content/Context;

    invoke-interface {v2, v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onMessageChannelReady(Landroid/content/Context;)V

    iget-object v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onPostMessage(Z)V

    iget-object v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onRelationshipValidationResult:Lo/UiHandlerKt$postUiInternal$runnable$1$$special$$inlined$executeOnResume$1;

    iget-object v0, v0, Lo/UiHandlerKt$postUiInternal$runnable$1$$special$$inlined$executeOnResume$1;->onMessageChannelReady:Landroid/view/ViewGroup;

    iget-object v2, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v2}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->newSession()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onRelationshipValidationResult:Lo/UiHandlerKt$postUiInternal$runnable$1$$special$$inlined$executeOnResume$1;

    iget v3, v3, Lo/UiHandlerKt$postUiInternal$runnable$1$$special$$inlined$executeOnResume$1;->extraCallback:I

    iget-object v4, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onRelationshipValidationResult:Lo/UiHandlerKt$postUiInternal$runnable$1$$special$$inlined$executeOnResume$1;

    iget-object v4, v4, Lo/UiHandlerKt$postUiInternal$runnable$1$$special$$inlined$executeOnResume$1;->onPostMessage:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iput-object v1, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onRelationshipValidationResult:Lo/UiHandlerKt$postUiInternal$runnable$1$$special$$inlined$executeOnResume$1;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onNavigationEvent:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    iget-object v2, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onNavigationEvent:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0, v2}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->onMessageChannelReady(Landroid/content/Context;)V

    :cond_2
    :goto_0
    iput-object v1, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->ICustomTabsCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    :cond_3
    iget-object v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onPostMessage:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    if-eqz v0, :cond_4

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->onMessageChannelReady:Lo/GemIntroDetails;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onPostMessage:Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/overlay/AdOverlayInfoParcel;->onMessageChannelReady:Lo/GemIntroDetails;

    invoke-interface {v0}, Lo/GemIntroDetails;->z_()V

    :cond_4
    return-void
.end method

.method public final warmup()V
    .locals 2

    iget-object v0, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->ICustomTabsCallback$Stub$Proxy:Lo/BrandIcon;

    iget-object v1, p0, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->asInterface:Lo/RewardCityModel;

    invoke-virtual {v0, v1}, Lo/BrandIcon;->removeView(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lo/StatementResponse_UserDetails_AccountNameJsonAdapter;->onPostMessage(Z)V

    return-void
.end method
