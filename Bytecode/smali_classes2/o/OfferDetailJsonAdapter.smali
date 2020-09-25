.class public final Lo/OfferDetailJsonAdapter;
.super Ljava/lang/Object;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/CardLinkSuccessResponseJsonAdapter;

.field private extraCallback:Lo/BankOfferRewardResponse;

.field private final onNavigationEvent:Landroid/view/ViewGroup;

.field private final onPostMessage:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lo/OfferDetailJsonAdapter;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lo/CardLinkSuccessResponseJsonAdapter;Lo/BankOfferRewardResponse;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lo/CardLinkSuccessResponseJsonAdapter;Lo/BankOfferRewardResponse;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p4

    if-eqz p4, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    :cond_0
    iput-object p1, p0, Lo/OfferDetailJsonAdapter;->onPostMessage:Landroid/content/Context;

    iput-object p2, p0, Lo/OfferDetailJsonAdapter;->onNavigationEvent:Landroid/view/ViewGroup;

    iput-object p3, p0, Lo/OfferDetailJsonAdapter;->ICustomTabsCallback:Lo/CardLinkSuccessResponseJsonAdapter;

    const/4 p1, 0x0

    iput-object p1, p0, Lo/OfferDetailJsonAdapter;->extraCallback:Lo/BankOfferRewardResponse;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 1

    const-string v0, "onPause must be called from the UI thread."

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    iget-object v0, p0, Lo/OfferDetailJsonAdapter;->extraCallback:Lo/BankOfferRewardResponse;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/BankOfferRewardResponse;->onRelationshipValidationResult()V

    :cond_0
    return-void
.end method

.method public final ICustomTabsCallback(IIII)V
    .locals 1

    const-string v0, "The underlay may only be modified from the UI thread."

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    iget-object v0, p0, Lo/OfferDetailJsonAdapter;->extraCallback:Lo/BankOfferRewardResponse;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3, p4}, Lo/BankOfferRewardResponse;->ICustomTabsCallback(IIII)V

    :cond_0
    return-void
.end method

.method public final extraCallback()Lo/BankOfferRewardResponse;
    .locals 1

    const-string v0, "getAdVideoUnderlay must be called from the UI thread."

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    iget-object v0, p0, Lo/OfferDetailJsonAdapter;->extraCallback:Lo/BankOfferRewardResponse;

    return-object v0
.end method

.method public final extraCallback(IIIIIZLo/getLinkingData;)V
    .locals 11

    move-object v0, p0

    iget-object v1, v0, Lo/OfferDetailJsonAdapter;->extraCallback:Lo/BankOfferRewardResponse;

    if-eqz v1, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lo/OfferDetailJsonAdapter;->ICustomTabsCallback:Lo/CardLinkSuccessResponseJsonAdapter;

    invoke-interface {v1}, Lo/CardLinkSuccessResponseJsonAdapter;->asInterface()Lo/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$1$lambda$1$1;

    move-result-object v1

    invoke-virtual {v1}, Lo/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$1$lambda$1$1;->extraCallback()Lo/setCanReverse;

    move-result-object v1

    iget-object v2, v0, Lo/OfferDetailJsonAdapter;->ICustomTabsCallback:Lo/CardLinkSuccessResponseJsonAdapter;

    invoke-interface {v2}, Lo/CardLinkSuccessResponseJsonAdapter;->extraCallback()Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;

    move-result-object v2

    const-string v3, "vpr2"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lo/setReelSymbols;->onNavigationEvent(Lo/setCanReverse;Lo/SpinTheWheelFragment$startFinalImageReveal$$inlined$executeOnResume$1;[Ljava/lang/String;)Z

    new-instance v1, Lo/BankOfferRewardResponse;

    iget-object v5, v0, Lo/OfferDetailJsonAdapter;->onPostMessage:Landroid/content/Context;

    iget-object v6, v0, Lo/OfferDetailJsonAdapter;->ICustomTabsCallback:Lo/CardLinkSuccessResponseJsonAdapter;

    invoke-interface {v6}, Lo/CardLinkSuccessResponseJsonAdapter;->asInterface()Lo/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$1$lambda$1$1;

    move-result-object v2

    invoke-virtual {v2}, Lo/SpinTheWheelFragment$startPointerAnimator$$inlined$executeOnResume$1$lambda$1$1;->extraCallback()Lo/setCanReverse;

    move-result-object v9

    move-object v4, v1

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v10, p7

    invoke-direct/range {v4 .. v10}, Lo/BankOfferRewardResponse;-><init>(Landroid/content/Context;Lo/CardLinkSuccessResponseJsonAdapter;IZLo/setCanReverse;Lo/getLinkingData;)V

    iput-object v1, v0, Lo/OfferDetailJsonAdapter;->extraCallback:Lo/BankOfferRewardResponse;

    iget-object v2, v0, Lo/OfferDetailJsonAdapter;->onNavigationEvent:Landroid/view/ViewGroup;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, v0, Lo/OfferDetailJsonAdapter;->extraCallback:Lo/BankOfferRewardResponse;

    move v2, p1

    move v3, p2

    move v5, p3

    move v6, p4

    invoke-virtual {v1, p1, p2, p3, p4}, Lo/BankOfferRewardResponse;->ICustomTabsCallback(IIII)V

    iget-object v1, v0, Lo/OfferDetailJsonAdapter;->ICustomTabsCallback:Lo/CardLinkSuccessResponseJsonAdapter;

    invoke-interface {v1, v4}, Lo/CardLinkSuccessResponseJsonAdapter;->ICustomTabsCallback(Z)V

    return-void
.end method

.method public final onPostMessage()V
    .locals 2

    const-string v0, "onDestroy must be called from the UI thread."

    invoke-static {v0}, Lo/extraCallback$onNavigationEvent;->ICustomTabsCallback(Ljava/lang/String;)V

    iget-object v0, p0, Lo/OfferDetailJsonAdapter;->extraCallback:Lo/BankOfferRewardResponse;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lo/BankOfferRewardResponse;->getInterfaceDescriptor()V

    iget-object v0, p0, Lo/OfferDetailJsonAdapter;->onNavigationEvent:Landroid/view/ViewGroup;

    iget-object v1, p0, Lo/OfferDetailJsonAdapter;->extraCallback:Lo/BankOfferRewardResponse;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lo/OfferDetailJsonAdapter;->extraCallback:Lo/BankOfferRewardResponse;

    :cond_0
    return-void
.end method
