.class public Lo/CreateLoanPayRequestJsonAdapter;
.super Landroid/webkit/WebView;

# interfaces
.implements Lo/LendingWithdrawalFragment$ctaClicked$$inlined$executeOnResume$1;
.implements Lo/LendingWithdrawalFragment$onActivityResult$$inlined$executeOnResume$1;
.implements Lo/LoanManagementFragment$onActivityResult$$inlined$executeOnResume$1;
.implements Lo/LendingWithdrawalFragment$onOrderResponse$$inlined$executeOnResume$1;


# annotations
.annotation runtime Lo/AssetsResponse;
.end annotation


# instance fields
.field protected final ICustomTabsCallback:Landroid/webkit/WebViewClient;

.field private final extraCallback:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/LoanManagementFragment$onActivityResult$$inlined$executeOnResume$1;",
            ">;"
        }
    .end annotation
.end field

.field private final onMessageChannelReady:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/LendingWithdrawalFragment$ctaClicked$$inlined$executeOnResume$1;",
            ">;"
        }
    .end annotation
.end field

.field private final onNavigationEvent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/LendingWithdrawalFragment$onActivityResult$$inlined$executeOnResume$1;",
            ">;"
        }
    .end annotation
.end field

.field private final onPostMessage:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo/LendingWithdrawalFragment$onOrderResponse$$inlined$executeOnResume$1;",
            ">;"
        }
    .end annotation
.end field

.field private final onTransact:Lo/UploadFiltersJsonAdapter;


# direct methods
.method public constructor <init>(Lo/UploadFiltersJsonAdapter;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lo/CreateLoanPayRequestJsonAdapter;->onMessageChannelReady:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lo/CreateLoanPayRequestJsonAdapter;->onPostMessage:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lo/CreateLoanPayRequestJsonAdapter;->onNavigationEvent:Ljava/util/List;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lo/CreateLoanPayRequestJsonAdapter;->extraCallback:Ljava/util/List;

    iput-object p1, p0, Lo/CreateLoanPayRequestJsonAdapter;->onTransact:Lo/UploadFiltersJsonAdapter;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lo/CreateLoanPayRequestJsonAdapter;->setBackgroundColor(I)V

    invoke-virtual {p0}, Lo/CreateLoanPayRequestJsonAdapter;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSavePassword(Z)V

    const/4 p1, 0x1

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSupportMultipleWindows(Z)V

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    :cond_0
    invoke-static {}, Lo/getParcel;->onTransact()Lo/getAccount_number;

    move-result-object v1

    invoke-virtual {p0}, Lo/CreateLoanPayRequestJsonAdapter;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lo/getAccount_number;->onPostMessage(Landroid/content/Context;Landroid/webkit/WebSettings;)Z

    const-string v0, "accessibility"

    invoke-virtual {p0, v0}, Lo/CreateLoanPayRequestJsonAdapter;->removeJavascriptInterface(Ljava/lang/String;)V

    const-string v0, "accessibilityTraversal"

    invoke-virtual {p0, v0}, Lo/CreateLoanPayRequestJsonAdapter;->removeJavascriptInterface(Ljava/lang/String;)V

    :try_start_0
    invoke-virtual {p0}, Lo/CreateLoanPayRequestJsonAdapter;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "Unable to enable Javascript."

    invoke-static {v1, v0}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->onNavigationEvent(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lo/CreateLoanPayRequestJsonAdapter;->setLayerType(ILandroid/graphics/Paint;)V

    new-instance p1, Lo/CreateLoanPayRequest$Tag;

    invoke-direct {p1, p0, p0, p0, p0}, Lo/CreateLoanPayRequest$Tag;-><init>(Lo/LendingWithdrawalFragment$ctaClicked$$inlined$executeOnResume$1;Lo/LendingWithdrawalFragment$onOrderResponse$$inlined$executeOnResume$1;Lo/LendingWithdrawalFragment$onActivityResult$$inlined$executeOnResume$1;Lo/LoanManagementFragment$onActivityResult$$inlined$executeOnResume$1;)V

    iput-object p1, p0, Lo/CreateLoanPayRequestJsonAdapter;->ICustomTabsCallback:Landroid/webkit/WebViewClient;

    invoke-super {p0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method


# virtual methods
.method protected final AudioAttributesImplBaseParcelizer()Lo/UploadFiltersJsonAdapter;
    .locals 1

    iget-object v0, p0, Lo/CreateLoanPayRequestJsonAdapter;->onTransact:Lo/UploadFiltersJsonAdapter;

    return-object v0
.end method

.method public final ICustomTabsCallback(Lo/LendingCkycConfirmationFragment$realDismiss$$inlined$executeOnResume$1;)Landroid/webkit/WebResourceResponse;
    .locals 2

    iget-object v0, p0, Lo/CreateLoanPayRequestJsonAdapter;->onPostMessage:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/LendingWithdrawalFragment$onOrderResponse$$inlined$executeOnResume$1;

    invoke-interface {v1, p1}, Lo/LendingWithdrawalFragment$onOrderResponse$$inlined$executeOnResume$1;->ICustomTabsCallback(Lo/LendingCkycConfirmationFragment$realDismiss$$inlined$executeOnResume$1;)Landroid/webkit/WebResourceResponse;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p1, "Ignore addJavascriptInterface due to low Android version."

    invoke-static {p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;)V

    return-void
.end method

.method public extraCallback(Lo/LendingCkycConfirmationFragment$realDismiss$$inlined$executeOnResume$1;)V
    .locals 2

    iget-object v0, p0, Lo/CreateLoanPayRequestJsonAdapter;->extraCallback:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/LoanManagementFragment$onActivityResult$$inlined$executeOnResume$1;

    invoke-interface {v1, p1}, Lo/LoanManagementFragment$onActivityResult$$inlined$executeOnResume$1;->extraCallback(Lo/LendingCkycConfirmationFragment$realDismiss$$inlined$executeOnResume$1;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_0

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
    invoke-static {}, Lo/getParcel;->onRelationshipValidationResult()Lo/GreetingCampaignInvitesResponseJsonAdapter;

    move-result-object v0

    const-string v1, "CoreWebView.loadUrl"

    invoke-virtual {v0, p1, v1}, Lo/GreetingCampaignInvitesResponseJsonAdapter;->onMessageChannelReady(Ljava/lang/Throwable;Ljava/lang/String;)V

    const-string v0, "#007 Could not call remote method."

    invoke-static {v0, p1}, Lo/ActivateCredProtectFragment$authorizeThirdParty$$inlined$executeOnResume$1;->extraCallback(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onMessageChannelReady(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lo/LendingStashSummaryFragment$realDismiss$$inlined$executeOnResume$1;->extraCallback(Landroid/webkit/WebView;Ljava/lang/String;)V

    return-void
.end method

.method public final onMessageChannelReady(Lo/LendingCkycConfirmationFragment$realDismiss$$inlined$executeOnResume$1;)Z
    .locals 2

    iget-object v0, p0, Lo/CreateLoanPayRequestJsonAdapter;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/LendingWithdrawalFragment$ctaClicked$$inlined$executeOnResume$1;

    invoke-interface {v1, p1}, Lo/LendingWithdrawalFragment$ctaClicked$$inlined$executeOnResume$1;->onMessageChannelReady(Lo/LendingCkycConfirmationFragment$realDismiss$$inlined$executeOnResume$1;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final onNavigationEvent(Lo/LendingWithdrawalFragment$onActivityResult$$inlined$executeOnResume$1;)V
    .locals 1

    iget-object v0, p0, Lo/CreateLoanPayRequestJsonAdapter;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onNavigationEvent(Lo/LoanManagementFragment$onActivityResult$$inlined$executeOnResume$1;)V
    .locals 1

    iget-object v0, p0, Lo/CreateLoanPayRequestJsonAdapter;->extraCallback:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onPostMessage(Lo/LendingCkycConfirmationFragment$realDismiss$$inlined$executeOnResume$1;)V
    .locals 2

    iget-object v0, p0, Lo/CreateLoanPayRequestJsonAdapter;->onNavigationEvent:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/LendingWithdrawalFragment$onActivityResult$$inlined$executeOnResume$1;

    invoke-interface {v1, p1}, Lo/LendingWithdrawalFragment$onActivityResult$$inlined$executeOnResume$1;->onPostMessage(Lo/LendingCkycConfirmationFragment$realDismiss$$inlined$executeOnResume$1;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onPostMessage(Lo/LendingWithdrawalFragment$ctaClicked$$inlined$executeOnResume$1;)V
    .locals 1

    iget-object v0, p0, Lo/CreateLoanPayRequestJsonAdapter;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final onPostMessage(Lo/LendingWithdrawalFragment$onOrderResponse$$inlined$executeOnResume$1;)V
    .locals 1

    iget-object v0, p0, Lo/CreateLoanPayRequestJsonAdapter;->onPostMessage:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 0

    return-void
.end method
