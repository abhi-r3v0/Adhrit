.class public final Lo/getAvailableCashLimit;
.super Landroid/widget/FrameLayout;


# instance fields
.field private final onNavigationEvent:Landroid/widget/FrameLayout;

.field private final onPostMessage:Lo/relaunch;


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

    iput-object v0, p0, Lo/getAvailableCashLimit;->onNavigationEvent:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lo/getAvailableCashLimit;->onPostMessage()Lo/relaunch;

    move-result-object p1

    iput-object p1, p0, Lo/getAvailableCashLimit;->onPostMessage:Lo/relaunch;

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

    iput-object p2, p0, Lo/getAvailableCashLimit;->onNavigationEvent:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lo/getAvailableCashLimit;->onPostMessage()Lo/relaunch;

    move-result-object p1

    iput-object p1, p0, Lo/getAvailableCashLimit;->onPostMessage:Lo/relaunch;

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

    iput-object p2, p0, Lo/getAvailableCashLimit;->onNavigationEvent:Landroid/widget/FrameLayout;

    invoke-direct {p0}, Lo/getAvailableCashLimit;->onPostMessage()Lo/relaunch;

    move-result-object p1

    iput-object p1, p0, Lo/getAvailableCashLimit;->onPostMessage:Lo/relaunch;

    return-void
.end method

.method private final onPostMessage()Lo/relaunch;
    .locals 3

    iget-object v0, p0, Lo/getAvailableCashLimit;->onNavigationEvent:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_1

    .line 15011
    invoke-virtual {p0}, Landroid/view/View;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {}, Lo/PayoutClaimResponseJsonAdapter;->ICustomTabsCallback()Lo/LiveCounter;

    move-result-object v0

    iget-object v1, p0, Lo/getAvailableCashLimit;->onNavigationEvent:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lo/getAvailableCashLimit;->onNavigationEvent:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1, p0, v2}, Lo/LiveCounter;->onNavigationEvent(Landroid/content/Context;Landroid/widget/FrameLayout;Landroid/widget/FrameLayout;)Lo/relaunch;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "createDelegate must be called after overlayFrame has been created"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lo/getAvailableCashLimit;->onNavigationEvent:Landroid/widget/FrameLayout;

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    return-void
.end method

.method public final bringChildToFront(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    iget-object v0, p0, Lo/getAvailableCashLimit;->onNavigationEvent:Landroid/widget/FrameLayout;

    if-eq v0, p1, :cond_0

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->bringChildToFront(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final onVisibilityChanged(Landroid/view/View;I)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    iget-object v0, p0, Lo/getAvailableCashLimit;->onPostMessage:Lo/relaunch;

    if-eqz v0, :cond_0

    .line 16004
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

    iget-object v0, p0, Lo/getAvailableCashLimit;->onNavigationEvent:Landroid/widget/FrameLayout;

    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public final removeView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lo/getAvailableCashLimit;->onNavigationEvent:Landroid/widget/FrameLayout;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public final setAdChoicesView(Lo/getPastDues;)V
    .locals 3

    const-string v0, "3011"

    .line 15000
    :try_start_0
    iget-object v1, p0, Lo/getAvailableCashLimit;->onPostMessage:Lo/relaunch;

    .line 15004
    new-instance v2, Lo/GetRatingResponseJsonAdapter;

    invoke-direct {v2, p1}, Lo/GetRatingResponseJsonAdapter;-><init>(Ljava/lang/Object;)V

    .line 15000
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

.method public final setAdvertiserView(Landroid/view/View;)V
    .locals 3

    const-string v0, "3005"

    .line 8000
    :try_start_0
    iget-object v1, p0, Lo/getAvailableCashLimit;->onPostMessage:Lo/relaunch;

    .line 8004
    new-instance v2, Lo/GetRatingResponseJsonAdapter;

    invoke-direct {v2, p1}, Lo/GetRatingResponseJsonAdapter;-><init>(Ljava/lang/Object;)V

    .line 8000
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

.method public final setBodyView(Landroid/view/View;)V
    .locals 3

    const-string v0, "3004"

    .line 7000
    :try_start_0
    iget-object v1, p0, Lo/getAvailableCashLimit;->onPostMessage:Lo/relaunch;

    .line 7004
    new-instance v2, Lo/GetRatingResponseJsonAdapter;

    invoke-direct {v2, p1}, Lo/GetRatingResponseJsonAdapter;-><init>(Ljava/lang/Object;)V

    .line 7000
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

.method public final setCallToActionView(Landroid/view/View;)V
    .locals 3

    const-string v0, "3002"

    .line 5000
    :try_start_0
    iget-object v1, p0, Lo/getAvailableCashLimit;->onPostMessage:Lo/relaunch;

    .line 5004
    new-instance v2, Lo/GetRatingResponseJsonAdapter;

    invoke-direct {v2, p1}, Lo/GetRatingResponseJsonAdapter;-><init>(Ljava/lang/Object;)V

    .line 5000
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

.method public final setClickConfirmingView(Landroid/view/View;)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lo/getAvailableCashLimit;->onPostMessage:Lo/relaunch;

    .line 10004
    new-instance v1, Lo/GetRatingResponseJsonAdapter;

    invoke-direct {v1, p1}, Lo/GetRatingResponseJsonAdapter;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Lo/relaunch;->onMessageChannelReady(Lo/getEventName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "Unable to call setClickConfirmingView on delegate"

    invoke-static {v0, p1}, Lo/getText1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final setHeadlineView(Landroid/view/View;)V
    .locals 3

    const-string v0, "3001"

    .line 4000
    :try_start_0
    iget-object v1, p0, Lo/getAvailableCashLimit;->onPostMessage:Lo/relaunch;

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

.method public final setIconView(Landroid/view/View;)V
    .locals 3

    const-string v0, "3003"

    .line 6000
    :try_start_0
    iget-object v1, p0, Lo/getAvailableCashLimit;->onPostMessage:Lo/relaunch;

    .line 6004
    new-instance v2, Lo/GetRatingResponseJsonAdapter;

    invoke-direct {v2, p1}, Lo/GetRatingResponseJsonAdapter;-><init>(Ljava/lang/Object;)V

    .line 6000
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

.method public final setImageView(Landroid/view/View;)V
    .locals 3

    const-string v0, "3008"

    .line 12000
    :try_start_0
    iget-object v1, p0, Lo/getAvailableCashLimit;->onPostMessage:Lo/relaunch;

    .line 12004
    new-instance v2, Lo/GetRatingResponseJsonAdapter;

    invoke-direct {v2, p1}, Lo/GetRatingResponseJsonAdapter;-><init>(Ljava/lang/Object;)V

    .line 12000
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

.method public final setMediaView(Lo/getAccountSummary;)V
    .locals 3

    const-string v0, "3010"

    .line 14000
    :try_start_0
    iget-object v1, p0, Lo/getAvailableCashLimit;->onPostMessage:Lo/relaunch;

    .line 14004
    new-instance v2, Lo/GetRatingResponseJsonAdapter;

    invoke-direct {v2, p1}, Lo/GetRatingResponseJsonAdapter;-><init>(Ljava/lang/Object;)V

    .line 14000
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

.method public final setNativeAd(Lo/getTotalCreditLimit;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lo/getAvailableCashLimit;->onPostMessage:Lo/relaunch;

    invoke-virtual {p1}, Lo/getTotalCreditLimit;->warmup()Ljava/lang/Object;

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

.method public final setPriceView(Landroid/view/View;)V
    .locals 3

    const-string v0, "3007"

    .line 11000
    :try_start_0
    iget-object v1, p0, Lo/getAvailableCashLimit;->onPostMessage:Lo/relaunch;

    .line 11004
    new-instance v2, Lo/GetRatingResponseJsonAdapter;

    invoke-direct {v2, p1}, Lo/GetRatingResponseJsonAdapter;-><init>(Ljava/lang/Object;)V

    .line 11000
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

.method public final setStarRatingView(Landroid/view/View;)V
    .locals 3

    const-string v0, "3009"

    .line 13000
    :try_start_0
    iget-object v1, p0, Lo/getAvailableCashLimit;->onPostMessage:Lo/relaunch;

    .line 13004
    new-instance v2, Lo/GetRatingResponseJsonAdapter;

    invoke-direct {v2, p1}, Lo/GetRatingResponseJsonAdapter;-><init>(Ljava/lang/Object;)V

    .line 13000
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

.method public final setStoreView(Landroid/view/View;)V
    .locals 3

    const-string v0, "3006"

    .line 9000
    :try_start_0
    iget-object v1, p0, Lo/getAvailableCashLimit;->onPostMessage:Lo/relaunch;

    .line 9004
    new-instance v2, Lo/GetRatingResponseJsonAdapter;

    invoke-direct {v2, p1}, Lo/GetRatingResponseJsonAdapter;-><init>(Ljava/lang/Object;)V

    .line 9000
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
