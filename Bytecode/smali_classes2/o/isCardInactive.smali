.class public Lo/isCardInactive;
.super Lo/isCardHidden;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lo/isCardHidden;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/net/Uri;)Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/net/Uri;->getQueryParameterNames()Ljava/util/Set;

    move-result-object p1

    return-object p1
.end method

.method public ICustomTabsCallback(Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;Z)Lo/BottomPaymentFabrikDialogFragment$startPaymentFlow$$inlined$executeOnResume$1;
    .locals 1

    new-instance v0, Lo/DigestFragment$digestStoryListener$1$storyPaused$$inlined$executeOnResume$1;

    invoke-direct {v0, p1, p2}, Lo/DigestFragment$digestStoryListener$1$storyPaused$$inlined$executeOnResume$1;-><init>(Lo/BottomPaymentFabrikDialogFragment$onViewCreated$5$onStateChanged$$inlined$executeOnResume$1;Z)V

    return-object v0
.end method

.method public final extraCallback(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final onNavigationEvent(Landroid/app/DownloadManager$Request;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    return v0
.end method

.method public final onNavigationEvent(Landroid/view/View;)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    return v0
.end method

.method public onPostMessage(Landroid/content/Context;Landroid/webkit/WebSettings;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Lo/isCardHidden;->onPostMessage(Landroid/content/Context;Landroid/webkit/WebSettings;)Z

    new-instance v0, Lo/getTemplate;

    invoke-direct {v0, p0, p1, p2}, Lo/getTemplate;-><init>(Lo/isCardInactive;Landroid/content/Context;Landroid/webkit/WebSettings;)V

    invoke-static {p1, v0}, Lo/getCategorised;->onPostMessage(Landroid/content/Context;Ljava/util/concurrent/Callable;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final onPostMessage(Landroid/view/Window;)Z
    .locals 1

    const/high16 v0, 0x1000000

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    const/4 p1, 0x1

    return p1
.end method
