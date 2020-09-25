.class public final Lo/PaymentMode$$Parcelable;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field AudioAttributesCompatParcelizer:Z

.field private AudioAttributesImplBaseParcelizer:Z

.field final ICustomTabsCallback:Lo/GameCta;

.field public ICustomTabsCallback$Stub:Lo/setCurrentItem$default;

.field ICustomTabsCallback$Stub$Proxy:Lo/StatisticsItemJsonAdapter;

.field ICustomTabsService:Lo/ParentEntity;

.field ICustomTabsService$Stub:Lo/WinLuckyNumberResponseJsonAdapter;

.field ICustomTabsService$Stub$Proxy:Lo/fromMediaItemList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/fromMediaItemList<",
            "Ljava/lang/String;",
            "Lo/FabrikWebViewFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;",
            ">;"
        }
    .end annotation
.end field

.field INotificationSideChannel:Lo/getSignInMethods;

.field INotificationSideChannel$Default:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field INotificationSideChannel$Stub:Landroid/view/View;

.field public INotificationSideChannel$Stub$Proxy:Ljava/lang/String;

.field IPostMessageService:Lo/UserWinningStatisticsJsonAdapter;

.field IPostMessageService$Stub:Lo/activateCredProtect;

.field IPostMessageService$Stub$Proxy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private IconCompatParcelizer:I

.field private RemoteActionCompatParcelizer:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;",
            ">;"
        }
    .end annotation
.end field

.field public asBinder:Lo/ContactReverseSyncResponse;

.field public asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

.field cancel:Lo/CredProtectOptInFragment$observeAuthoriseThirdPartyResponse$$inlined$observe$1$lambda$1;

.field cancelAll:Lo/setStartingAngle;

.field private connect:Z

.field private disconnect:Z

.field final extraCallback:Ljava/lang/String;

.field extraCommand:Lo/FabrikWebViewFragment$MyJavascriptInterface$startFileUpload$1$$special$$inlined$executeOnResume$1;

.field public getDefaultImpl:Lo/GreetingCustomiseFragment$oneLinkObserver$1$$special$$inlined$let$lambda$1$1;

.field public getInterfaceDescriptor:Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;

.field mayLaunchUrl:Lo/SpinTheWheelResponseJsonAdapter;

.field public newSession:Lo/GreetingCampaignCodeRequest;

.field notify:Lo/CredProtectResponseJsonAdapter;

.field public final onMessageChannelReady:Lo/DataListJsonAdapter;

.field public onNavigationEvent:Ljava/lang/String;

.field public final onPostMessage:Landroid/content/Context;

.field public onRelationshipValidationResult:Lo/setSwipedDirection;

.field onTransact:Lo/PaymentModeListResponse;

.field postMessage:Lo/Actionable;

.field private read:I

.field requestPostMessageChannel:Lo/TemplatePropertiesMachineJsonAdapter;

.field public setDefaultImpl:I

.field updateVisuals:Lo/FabrikWebViewFragment$MyJavascriptInterface$copyTextToClipboard$1$$special$$inlined$executeOnResume$1;

.field validateRelationship:Lo/fromMediaItemList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/fromMediaItemList<",
            "Ljava/lang/String;",
            "Lo/MainActivity$onBackPressed$$inlined$executeOnResume$1;",
            ">;"
        }
    .end annotation
.end field

.field warmup:Lo/PendingUsers;

.field private write:Lo/getColorSectionPos;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lo/setCurrentItem$default;Ljava/lang/String;Lo/DataListJsonAdapter;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lo/PaymentMode$$Parcelable;-><init>(Landroid/content/Context;Lo/setCurrentItem$default;Ljava/lang/String;Lo/DataListJsonAdapter;Lo/GameCta;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lo/setCurrentItem$default;Ljava/lang/String;Lo/DataListJsonAdapter;Lo/GameCta;)V
    .locals 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p5, 0x0

    iput-object p5, p0, Lo/PaymentMode$$Parcelable;->getDefaultImpl:Lo/GreetingCustomiseFragment$oneLinkObserver$1$$special$$inlined$let$lambda$1$1;

    iput-object p5, p0, Lo/PaymentMode$$Parcelable;->INotificationSideChannel$Stub:Landroid/view/View;

    const/4 v0, 0x0

    iput v0, p0, Lo/PaymentMode$$Parcelable;->setDefaultImpl:I

    iput-boolean v0, p0, Lo/PaymentMode$$Parcelable;->AudioAttributesCompatParcelizer:Z

    iput-object p5, p0, Lo/PaymentMode$$Parcelable;->RemoteActionCompatParcelizer:Ljava/util/HashSet;

    const/4 v1, -0x1

    iput v1, p0, Lo/PaymentMode$$Parcelable;->read:I

    iput v1, p0, Lo/PaymentMode$$Parcelable;->IconCompatParcelizer:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lo/PaymentMode$$Parcelable;->disconnect:Z

    iput-boolean v1, p0, Lo/PaymentMode$$Parcelable;->connect:Z

    iput-boolean v0, p0, Lo/PaymentMode$$Parcelable;->AudioAttributesImplBaseParcelizer:Z

    invoke-static {p1}, Lo/WinningTypes;->ICustomTabsCallback(Landroid/content/Context;)V

    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->onNavigationEvent()Lo/ZeroSpinsLeftMetaJsonAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lo/WinningTypes;->onMessageChannelReady()Ljava/util/List;

    move-result-object v0

    iget v1, p4, Lo/DataListJsonAdapter;->onPostMessage:I

    if-eqz v1, :cond_0

    iget v1, p4, Lo/DataListJsonAdapter;->onPostMessage:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->onNavigationEvent()Lo/ZeroSpinsLeftMetaJsonAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/ZeroSpinsLeftMetaJsonAdapter;->onNavigationEvent(Ljava/util/List;)V

    :cond_1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lo/PaymentMode$$Parcelable;->extraCallback:Ljava/lang/String;

    iget-boolean v0, p2, Lo/setCurrentItem$default;->extraCallback:Z

    if-nez v0, :cond_3

    iget-boolean v0, p2, Lo/setCurrentItem$default;->onRelationshipValidationResult:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    new-instance p5, Lo/PaymentModeListResponse;

    iget-object v4, p4, Lo/DataListJsonAdapter;->extraCallback:Ljava/lang/String;

    move-object v1, p5

    move-object v2, p1

    move-object v3, p3

    move-object v5, p0

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lo/PaymentModeListResponse;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    iput-object p5, p0, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    iget v0, p2, Lo/setCurrentItem$default;->onTransact:I

    invoke-virtual {p5, v0}, Lo/PaymentModeListResponse;->setMinimumWidth(I)V

    iget-object p5, p0, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    iget v0, p2, Lo/setCurrentItem$default;->onPostMessage:I

    invoke-virtual {p5, v0}, Lo/PaymentModeListResponse;->setMinimumHeight(I)V

    iget-object p5, p0, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    const/4 v0, 0x4

    invoke-virtual {p5, v0}, Lo/PaymentModeListResponse;->setVisibility(I)V

    goto :goto_1

    :cond_3
    :goto_0
    iput-object p5, p0, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    :goto_1
    iput-object p2, p0, Lo/PaymentMode$$Parcelable;->ICustomTabsCallback$Stub:Lo/setCurrentItem$default;

    iput-object p3, p0, Lo/PaymentMode$$Parcelable;->onNavigationEvent:Ljava/lang/String;

    iput-object p1, p0, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    iput-object p4, p0, Lo/PaymentMode$$Parcelable;->onMessageChannelReady:Lo/DataListJsonAdapter;

    new-instance p1, Lo/GameCta;

    new-instance p2, Lo/getDevice_external_id;

    invoke-direct {p2, p0}, Lo/getDevice_external_id;-><init>(Lo/PaymentMode$$Parcelable;)V

    invoke-direct {p1, p2}, Lo/GameCta;-><init>(Lo/getRefreshRate;)V

    iput-object p1, p0, Lo/PaymentMode$$Parcelable;->ICustomTabsCallback:Lo/GameCta;

    new-instance p1, Lo/getColorSectionPos;

    const-wide/16 p2, 0xc8

    invoke-direct {p1, p2, p3}, Lo/getColorSectionPos;-><init>(J)V

    iput-object p1, p0, Lo/PaymentMode$$Parcelable;->write:Lo/getColorSectionPos;

    new-instance p1, Lo/fromMediaItemList;

    invoke-direct {p1}, Lo/fromMediaItemList;-><init>()V

    iput-object p1, p0, Lo/PaymentMode$$Parcelable;->validateRelationship:Lo/fromMediaItemList;

    return-void
.end method

.method private final extraCallback(Z)V
    .locals 5

    iget-object v0, p0, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->IPostMessageService$Stub()Lo/SizeFilter;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lo/PaymentMode$$Parcelable;->write:Lo/getColorSectionPos;

    invoke-virtual {v0}, Lo/getColorSectionPos;->onPostMessage()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->IPostMessageService$Stub()Lo/SizeFilter;

    move-result-object v0

    invoke-interface {v0}, Lo/SizeFilter;->extraCallback()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v2, p0, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    invoke-virtual {v2, v0}, Lo/PaymentModeListResponse;->getLocationOnScreen([I)V

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->extraCallback()Lo/ControlStatementRepo$TransactionItem;

    iget-object v2, p0, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    aget v3, v0, v1

    invoke-static {v2, v3}, Lo/ControlStatementRepo$TransactionItem;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v2

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->extraCallback()Lo/ControlStatementRepo$TransactionItem;

    iget-object v3, p0, Lo/PaymentMode$$Parcelable;->onPostMessage:Landroid/content/Context;

    const/4 v4, 0x1

    aget v0, v0, v4

    invoke-static {v3, v0}, Lo/ControlStatementRepo$TransactionItem;->onMessageChannelReady(Landroid/content/Context;I)I

    move-result v0

    iget v3, p0, Lo/PaymentMode$$Parcelable;->read:I

    if-ne v2, v3, :cond_2

    iget v3, p0, Lo/PaymentMode$$Parcelable;->IconCompatParcelizer:I

    if-eq v0, v3, :cond_3

    :cond_2
    iput v2, p0, Lo/PaymentMode$$Parcelable;->read:I

    iput v0, p0, Lo/PaymentMode$$Parcelable;->IconCompatParcelizer:I

    iget-object v0, p0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->IPostMessageService$Stub()Lo/SizeFilter;

    move-result-object v0

    iget v2, p0, Lo/PaymentMode$$Parcelable;->read:I

    iget v3, p0, Lo/PaymentMode$$Parcelable;->IconCompatParcelizer:I

    xor-int/2addr p1, v4

    invoke-interface {v0, v2, v3, p1}, Lo/SizeFilter;->onPostMessage(IIZ)V

    :cond_3
    iget-object p1, p0, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lo/PaymentModeListResponse;->getRootView()Landroid/view/View;

    move-result-object p1

    const v0, 0x1020002

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_5

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iget-object v3, p0, Lo/PaymentMode$$Parcelable;->onTransact:Lo/PaymentModeListResponse;

    invoke-virtual {v3, v0}, Lo/PaymentModeListResponse;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    invoke-virtual {p1, v2}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    iget p1, v0, Landroid/graphics/Rect;->top:I

    iget v3, v2, Landroid/graphics/Rect;->top:I

    if-eq p1, v3, :cond_4

    iput-boolean v1, p0, Lo/PaymentMode$$Parcelable;->disconnect:Z

    :cond_4
    iget p1, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v2, Landroid/graphics/Rect;->bottom:I

    if-eq p1, v0, :cond_5

    iput-boolean v1, p0, Lo/PaymentMode$$Parcelable;->connect:Z

    :cond_5
    :goto_0
    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 1

    iget-object v0, p0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->destroy()V

    :cond_0
    return-void
.end method

.method public final ICustomTabsCallback(Z)V
    .locals 1

    iget v0, p0, Lo/PaymentMode$$Parcelable;->setDefaultImpl:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->extraCallback:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v0}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->stopLoading()V

    :cond_0
    iget-object v0, p0, Lo/PaymentMode$$Parcelable;->asBinder:Lo/ContactReverseSyncResponse;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lo/ContactReverseSyncResponse;->onMessageChannelReady()V

    :cond_1
    iget-object v0, p0, Lo/PaymentMode$$Parcelable;->onRelationshipValidationResult:Lo/setSwipedDirection;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lo/setSwipedDirection;->onMessageChannelReady()V

    :cond_2
    if-eqz p1, :cond_3

    const/4 p1, 0x0

    iput-object p1, p0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    :cond_3
    return-void
.end method

.method public final extraCallback()Z
    .locals 1

    iget v0, p0, Lo/PaymentMode$$Parcelable;->setDefaultImpl:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onGlobalLayout()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lo/PaymentMode$$Parcelable;->extraCallback(Z)V

    return-void
.end method

.method public final onMessageChannelReady()Z
    .locals 2

    iget v0, p0, Lo/PaymentMode$$Parcelable;->setDefaultImpl:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final onNavigationEvent()V
    .locals 1

    iget-object v0, p0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->requestPostMessageChannel:Lo/Info;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lo/PaymentMode$$Parcelable;->asInterface:Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;

    iget-object v0, v0, Lo/UnBilledFragment$onViewCreated$$inlined$apply$lambda$1$1;->requestPostMessageChannel:Lo/Info;

    invoke-interface {v0}, Lo/Info;->ICustomTabsCallback()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    const-string v0, "Could not destroy mediation adapter."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method final onNavigationEvent(Landroid/view/View;)V
    .locals 2

    sget-object v0, Lo/WinningTypes;->onChildrenLoaded:Lo/WinRaffleTicketResponseJsonAdapter;

    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback$Stub()Lo/WinningStatisticsResponseJsonAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lo/WinningStatisticsResponseJsonAdapter;->onMessageChannelReady(Lo/WinRaffleTicketResponseJsonAdapter;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lo/PaymentMode$$Parcelable;->ICustomTabsCallback:Lo/GameCta;

    invoke-virtual {v0}, Lo/GameCta;->extraCallback()Lo/getRefreshRate;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0, p1}, Lo/getRefreshRate;->ICustomTabsCallback(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public final onNavigationEvent(Ljava/util/HashSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lo/PaymentMode$$Parcelable;->RemoteActionCompatParcelizer:Ljava/util/HashSet;

    return-void
.end method

.method public final onPostMessage()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet<",
            "Lo/ContactsInviteFragment$onRequestPermissionsResult$$inlined$executeOnResume$1;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lo/PaymentMode$$Parcelable;->RemoteActionCompatParcelizer:Ljava/util/HashSet;

    return-object v0
.end method

.method public final onRelationshipValidationResult()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lo/PaymentMode$$Parcelable;->disconnect:Z

    const-string v1, ""

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/PaymentMode$$Parcelable;->connect:Z

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-boolean v0, p0, Lo/PaymentMode$$Parcelable;->disconnect:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lo/PaymentMode$$Parcelable;->AudioAttributesImplBaseParcelizer:Z

    if-eqz v0, :cond_1

    const-string v0, "top-scrollable"

    return-object v0

    :cond_1
    const-string v0, "top-locked"

    return-object v0

    :cond_2
    iget-boolean v0, p0, Lo/PaymentMode$$Parcelable;->connect:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lo/PaymentMode$$Parcelable;->AudioAttributesImplBaseParcelizer:Z

    if-eqz v0, :cond_3

    const-string v0, "bottom-scrollable"

    return-object v0

    :cond_3
    const-string v0, "bottom-locked"

    return-object v0

    :cond_4
    return-object v1
.end method

.method public final onScrollChanged()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lo/PaymentMode$$Parcelable;->extraCallback(Z)V

    iput-boolean v0, p0, Lo/PaymentMode$$Parcelable;->AudioAttributesImplBaseParcelizer:Z

    return-void
.end method
