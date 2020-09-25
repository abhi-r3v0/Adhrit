.class public final Lo/getLastPaymentReceived;
.super Landroid/widget/FrameLayout;


# instance fields
.field private final onMessageChannelReady:Lo/relaunch;

.field private final onNavigationEvent:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 1000
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object v0, p0, Lo/getLastPaymentReceived;->onNavigationEvent:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lo/getLastPaymentReceived;->extraCallback()Lo/relaunch;

    move-result-object p1

    iput-object p1, p0, Lo/getLastPaymentReceived;->onMessageChannelReady:Lo/relaunch;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2000
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object p2, p0, Lo/getLastPaymentReceived;->onNavigationEvent:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lo/getLastPaymentReceived;->extraCallback()Lo/relaunch;

    move-result-object p1

    iput-object p1, p0, Lo/getLastPaymentReceived;->onMessageChannelReady:Lo/relaunch;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3000
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p3, -0x1

    invoke-direct {p1, p3, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iput-object p2, p0, Lo/getLastPaymentReceived;->onNavigationEvent:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lo/getLastPaymentReceived;->extraCallback()Lo/relaunch;

    move-result-object p1

    iput-object p1, p0, Lo/getLastPaymentReceived;->onMessageChannelReady:Lo/relaunch;

    return-void
.end method

.method private final extraCallback()Lo/relaunch;
    .locals 3

    iget-object v0, p0, Lo/getLastPaymentReceived;->onNavigationEvent:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 4011
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback()Lo/LiveCounter;

    move-result-object v0

    iget-object v1, p0, Lo/getLastPaymentReceived;->onNavigationEvent:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lo/getLastPaymentReceived;->onNavigationEvent:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, p0, v2}, Lo/LiveCounter;->onNavigationEvent(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)Lo/relaunch;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "createDelegate must be called after mOverlayFrame has been created"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lo/getLastPaymentReceived;->onNavigationEvent:Landroid/widget/FrameLayout;

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    return-void
.end method

.method public final bringChildToFront(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    iget-object v0, p0, Lo/getLastPaymentReceived;->onNavigationEvent:Landroid/widget/FrameLayout;

    if-eq v0, p1, :cond_0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    iget-object v0, p0, Lo/getLastPaymentReceived;->onMessageChannelReady:Lo/relaunch;

    if-eqz v0, :cond_0

    .line 5004
    :try_start_0
    new-instance v1, Lo/GetRatingResponseJsonAdapter;

    invoke-direct {v1, p1}, Lo/GetRatingResponseJsonAdapter;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1, p2}, Lo/relaunch;->onNavigationEvent(Lo/getEventName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string p2, "Unable to call onVisibilityChanged on delegate"

    invoke-static {p2, p1}, Lo/getText1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public final removeAllViews()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    iget-object v0, p0, Lo/getLastPaymentReceived;->onNavigationEvent:Landroid/widget/FrameLayout;

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final removeView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lo/getLastPaymentReceived;->onNavigationEvent:Landroid/widget/FrameLayout;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public final setAdChoicesView(Lo/getPastDues;)V
    .locals 3

    const-string v0, "1098"

    .line 4000
    :try_start_0
    iget-object v1, p0, Lo/getLastPaymentReceived;->onMessageChannelReady:Lo/relaunch;

    .line 4004
    new-instance v2, Lo/GetRatingResponseJsonAdapter;

    invoke-direct {v2, p1}, Lo/GetRatingResponseJsonAdapter;-><init>(Ljava/lang/Object;)V

    .line 4000
    invoke-interface {v1, v0, v2}, Lo/relaunch;->extraCallback(Ljava/lang/String;Lo/getEventName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Unable to call setAssetView on delegate"

    invoke-static {v0, p1}, Lo/getText1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setNativeAd(Lo/getFinanceCharges;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lo/getLastPaymentReceived;->onMessageChannelReady:Lo/relaunch;

    invoke-virtual {p1}, Lo/getFinanceCharges;->onNavigationEvent()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/getEventName;

    invoke-interface {v0, p1}, Lo/relaunch;->onPostMessage(Lo/getEventName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Unable to call setNativeAd on delegate"

    invoke-static {v0, p1}, Lo/getText1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
