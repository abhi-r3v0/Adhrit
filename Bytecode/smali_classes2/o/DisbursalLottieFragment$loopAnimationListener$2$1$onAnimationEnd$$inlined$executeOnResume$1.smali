.class public Lo/DisbursalLottieFragment$loopAnimationListener$2$1$onAnimationEnd$$inlined$executeOnResume$1;
.super Lo/CreateLoanPayRequestJsonAdapter;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field private onNavigationEvent:Z

.field private onPostMessage:Z


# direct methods
.method public constructor <init>(Lo/UploadFiltersJsonAdapter;)V
    .locals 0

    invoke-direct {p0, p1}, Lo/CreateLoanPayRequestJsonAdapter;-><init>(Lo/UploadFiltersJsonAdapter;)V

    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->onTransact()V

    return-void
.end method

.method private final declared-synchronized extraCallback()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lo/DisbursalLottieFragment$loopAnimationListener$2$1$onAnimationEnd$$inlined$executeOnResume$1;->onNavigationEvent:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lo/DisbursalLottieFragment$loopAnimationListener$2$1$onAnimationEnd$$inlined$executeOnResume$1;->onNavigationEvent:Z

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


# virtual methods
.method protected ICustomTabsCallback$Stub(Z)V
    .locals 0

    return-void
.end method

.method public final declared-synchronized INotificationSideChannel$Stub$Proxy()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lo/DisbursalLottieFragment$loopAnimationListener$2$1$onAnimationEnd$$inlined$executeOnResume$1;->onPostMessage:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final synthetic MediaBrowserCompat()V
    .locals 0

    invoke-super {p0}, Lo/CreateLoanPayRequestJsonAdapter;->destroy()V

    return-void
.end method

.method public declared-synchronized destroy()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lo/DisbursalLottieFragment$loopAnimationListener$2$1$onAnimationEnd$$inlined$executeOnResume$1;->onPostMessage:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Lo/DisbursalLottieFragment$loopAnimationListener$2$1$onAnimationEnd$$inlined$executeOnResume$1;->onPostMessage:Z

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lo/DisbursalLottieFragment$loopAnimationListener$2$1$onAnimationEnd$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub(Z)V

    const-string v0, "Initiating WebView self destruct sequence in 3..."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    const-string v0, "Loading blank page in WebView, 2..."

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string v0, "about:blank"

    invoke-super {p0, v0}, Lo/CreateLoanPayRequestJsonAdapter;->loadUrl(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catch_0
    move-exception v0

    :try_start_3
    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object v1

    const-string v2, "AdWebViewImpl.loadUrlUnsafe"

    invoke-virtual {v1, v0, v2}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->onMessageChannelReady(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v1, "#007 Could not call remote method."

    invoke-static {v1, v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
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
    invoke-virtual {p0}, Lo/DisbursalLottieFragment$loopAnimationListener$2$1$onAnimationEnd$$inlined$executeOnResume$1;->INotificationSideChannel$Stub$Proxy()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "#004 The webview is destroyed. Ignoring action."

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;)V

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
    invoke-super {p0, p1, p2}, Lo/CreateLoanPayRequestJsonAdapter;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized extraCallback(Lo/LendingCkycConfirmationFragment$realDismiss$$inlined$executeOnResume$1;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lo/DisbursalLottieFragment$loopAnimationListener$2$1$onAnimationEnd$$inlined$executeOnResume$1;->INotificationSideChannel$Stub$Proxy()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "Blank page loaded, 1..."

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    invoke-virtual {p0}, Lo/DisbursalLottieFragment$loopAnimationListener$2$1$onAnimationEnd$$inlined$executeOnResume$1;->setDefaultImpl()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-super {p0, p1}, Lo/CreateLoanPayRequestJsonAdapter;->extraCallback(Lo/LendingCkycConfirmationFragment$realDismiss$$inlined$executeOnResume$1;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected finalize()V
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
    invoke-virtual {p0}, Lo/DisbursalLottieFragment$loopAnimationListener$2$1$onAnimationEnd$$inlined$executeOnResume$1;->INotificationSideChannel$Stub$Proxy()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lo/DisbursalLottieFragment$loopAnimationListener$2$1$onAnimationEnd$$inlined$executeOnResume$1;->ICustomTabsCallback$Stub(Z)V

    :cond_0
    invoke-direct {p0}, Lo/DisbursalLottieFragment$loopAnimationListener$2$1$onAnimationEnd$$inlined$executeOnResume$1;->extraCallback()V

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

.method public declared-synchronized loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lo/DisbursalLottieFragment$loopAnimationListener$2$1$onAnimationEnd$$inlined$executeOnResume$1;->INotificationSideChannel$Stub$Proxy()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Lo/CreateLoanPayRequestJsonAdapter;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

.method public declared-synchronized loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lo/DisbursalLottieFragment$loopAnimationListener$2$1$onAnimationEnd$$inlined$executeOnResume$1;->INotificationSideChannel$Stub$Proxy()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super/range {p0 .. p5}, Lo/CreateLoanPayRequestJsonAdapter;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
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

.method public declared-synchronized loadUrl(Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lo/DisbursalLottieFragment$loopAnimationListener$2$1$onAnimationEnd$$inlined$executeOnResume$1;->INotificationSideChannel$Stub$Proxy()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lo/CreateLoanPayRequestJsonAdapter;->loadUrl(Ljava/lang/String;)V
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

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    invoke-virtual {p0}, Lo/DisbursalLottieFragment$loopAnimationListener$2$1$onAnimationEnd$$inlined$executeOnResume$1;->INotificationSideChannel$Stub$Proxy()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0, p1}, Lo/CreateLoanPayRequestJsonAdapter;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-virtual {p0}, Lo/DisbursalLottieFragment$loopAnimationListener$2$1$onAnimationEnd$$inlined$executeOnResume$1;->INotificationSideChannel$Stub$Proxy()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Lo/CreateLoanPayRequestJsonAdapter;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-virtual {p0}, Lo/DisbursalLottieFragment$loopAnimationListener$2$1$onAnimationEnd$$inlined$executeOnResume$1;->INotificationSideChannel$Stub$Proxy()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Lo/CreateLoanPayRequestJsonAdapter;->onResume()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p0}, Lo/DisbursalLottieFragment$loopAnimationListener$2$1$onAnimationEnd$$inlined$executeOnResume$1;->INotificationSideChannel$Stub$Proxy()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Lo/CreateLoanPayRequestJsonAdapter;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final declared-synchronized setDefaultImpl()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "Destroying WebView!"

    invoke-static {v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    invoke-direct {p0}, Lo/DisbursalLottieFragment$loopAnimationListener$2$1$onAnimationEnd$$inlined$executeOnResume$1;->extraCallback()V

    sget-object v0, Lo/Properties;->extraCallback:Ljava/util/concurrent/Executor;

    new-instance v1, Lo/CreateLoanPayRequest_TagJsonAdapter;

    invoke-direct {v1, p0}, Lo/CreateLoanPayRequest_TagJsonAdapter;-><init>(Lo/DisbursalLottieFragment$loopAnimationListener$2$1$onAnimationEnd$$inlined$executeOnResume$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public stopLoading()V
    .locals 1

    invoke-virtual {p0}, Lo/DisbursalLottieFragment$loopAnimationListener$2$1$onAnimationEnd$$inlined$executeOnResume$1;->INotificationSideChannel$Stub$Proxy()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-super {p0}, Lo/CreateLoanPayRequestJsonAdapter;->stopLoading()V

    return-void
.end method
