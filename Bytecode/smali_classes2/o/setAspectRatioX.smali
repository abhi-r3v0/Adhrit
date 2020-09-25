.class public final Lo/setAspectRatioX;
.super Lo/setOnCropImageCompleteListener;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private ICustomTabsCallback:Landroid/widget/PopupWindow;

.field private asBinder:Z

.field private onMessageChannelReady:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/content/Context;Lo/GreetingCampaignCodeRequest;Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;Lo/setOnCropWindowChangedListener;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lo/setOnCropImageCompleteListener;-><init>(Landroid/content/Context;Lo/GreetingCampaignCodeRequest;Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;Lo/setOnCropWindowChangedListener;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setAspectRatioX;->onMessageChannelReady:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lo/setAspectRatioX;->asBinder:Z

    return-void
.end method

.method private final ICustomTabsCallback()V
    .locals 3

    iget-object v0, p0, Lo/setAspectRatioX;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lo/setAspectRatioX;->asBinder:Z

    iget-object v1, p0, Lo/setAspectRatioX;->extraCallback:Landroid/content/Context;

    instance-of v1, v1, Landroid/app/Activity;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/setAspectRatioX;->extraCallback:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    iput-object v2, p0, Lo/setAspectRatioX;->ICustomTabsCallback:Landroid/widget/PopupWindow;

    :cond_0
    iget-object v1, p0, Lo/setAspectRatioX;->ICustomTabsCallback:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lo/setAspectRatioX;->ICustomTabsCallback:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lo/setAspectRatioX;->ICustomTabsCallback:Landroid/widget/PopupWindow;

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_1
    iput-object v2, p0, Lo/setAspectRatioX;->ICustomTabsCallback:Landroid/widget/PopupWindow;

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method protected final extraCallback()V
    .locals 8

    iget-object v0, p0, Lo/setAspectRatioX;->extraCallback:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lo/setAspectRatioX;->extraCallback:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    iget-object v2, p0, Lo/setAspectRatioX;->extraCallback:Landroid/content/Context;

    check-cast v2, Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->isDestroyed()Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    new-instance v2, Landroid/widget/FrameLayout;

    iget-object v3, p0, Lo/setAspectRatioX;->extraCallback:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lo/setAspectRatioX;->onNavigationEvent:Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;

    invoke-interface {v3}, Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;->newSession()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3, v4, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    iget-object v3, p0, Lo/setAspectRatioX;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-boolean v5, p0, Lo/setAspectRatioX;->asBinder:Z

    if-eqz v5, :cond_3

    monitor-exit v3

    return-void

    :cond_3
    new-instance v5, Landroid/widget/PopupWindow;

    const/4 v6, 0x0

    const/4 v7, 0x1

    invoke-direct {v5, v2, v7, v7, v6}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V

    iput-object v5, p0, Lo/setAspectRatioX;->ICustomTabsCallback:Landroid/widget/PopupWindow;

    invoke-virtual {v5, v7}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    iget-object v2, p0, Lo/setAspectRatioX;->ICustomTabsCallback:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v6}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    const-string v2, "Displaying the 1x1 popup off the screen."

    invoke-static {v2}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onMessageChannelReady(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lo/setAspectRatioX;->ICustomTabsCallback:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v2, v0, v6, v4, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    :try_start_2
    iput-object v1, p0, Lo/setAspectRatioX;->ICustomTabsCallback:Landroid/widget/PopupWindow;

    :goto_1
    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :cond_4
    :goto_2
    return-void
.end method

.method public final onMessageChannelReady()V
    .locals 0

    invoke-direct {p0}, Lo/setAspectRatioX;->ICustomTabsCallback()V

    invoke-super {p0}, Lo/setOnCropImageCompleteListener;->onMessageChannelReady()V

    return-void
.end method

.method protected final onMessageChannelReady(I)V
    .locals 0

    invoke-direct {p0}, Lo/setAspectRatioX;->ICustomTabsCallback()V

    invoke-super {p0, p1}, Lo/setOnCropImageCompleteListener;->onMessageChannelReady(I)V

    return-void
.end method
