.class final Lo/verifySession$2;
.super Lo/onActiveChanged;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/verifySession;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Landroid/view/View;

.field final synthetic extraCallback:Landroid/view/View;

.field final synthetic onMessageChannelReady:Landroid/view/ViewGroup;

.field final synthetic onNavigationEvent:Lo/verifySession;


# direct methods
.method constructor <init>(Lo/verifySession;Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 438
    iput-object p1, p0, Lo/verifySession$2;->onNavigationEvent:Lo/verifySession;

    iput-object p2, p0, Lo/verifySession$2;->onMessageChannelReady:Landroid/view/ViewGroup;

    iput-object p3, p0, Lo/verifySession$2;->ICustomTabsCallback:Landroid/view/View;

    iput-object p4, p0, Lo/verifySession$2;->extraCallback:Landroid/view/View;

    invoke-direct {p0}, Lo/onActiveChanged;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/fromQueueItem;)V
    .locals 3

    .line 456
    iget-object v0, p0, Lo/verifySession$2;->extraCallback:Landroid/view/View;

    sget v1, Lo/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub$extraCallback;->save_overlay_view:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 457
    iget-object v0, p0, Lo/verifySession$2;->onMessageChannelReady:Landroid/view/ViewGroup;

    invoke-static {v0}, Lo/getExtraBinder;->onNavigationEvent(Landroid/view/ViewGroup;)Lo/performClick$extraCallback;

    move-result-object v0

    iget-object v1, p0, Lo/verifySession$2;->ICustomTabsCallback:Landroid/view/View;

    invoke-interface {v0, v1}, Lo/performClick$extraCallback;->extraCallback(Landroid/view/View;)V

    .line 458
    invoke-virtual {p1, p0}, Lo/fromQueueItem;->onMessageChannelReady(Lo/fromQueueItem$onMessageChannelReady;)Lo/fromQueueItem;

    return-void
.end method

.method public final extraCallback(Lo/fromQueueItem;)V
    .locals 1

    .line 442
    iget-object p1, p0, Lo/verifySession$2;->onMessageChannelReady:Landroid/view/ViewGroup;

    invoke-static {p1}, Lo/getExtraBinder;->onNavigationEvent(Landroid/view/ViewGroup;)Lo/performClick$extraCallback;

    move-result-object p1

    iget-object v0, p0, Lo/verifySession$2;->ICustomTabsCallback:Landroid/view/View;

    invoke-interface {p1, v0}, Lo/performClick$extraCallback;->extraCallback(Landroid/view/View;)V

    return-void
.end method

.method public final onPostMessage(Lo/fromQueueItem;)V
    .locals 1

    .line 447
    iget-object p1, p0, Lo/verifySession$2;->ICustomTabsCallback:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_0

    .line 448
    iget-object p1, p0, Lo/verifySession$2;->onMessageChannelReady:Landroid/view/ViewGroup;

    invoke-static {p1}, Lo/getExtraBinder;->onNavigationEvent(Landroid/view/ViewGroup;)Lo/performClick$extraCallback;

    move-result-object p1

    iget-object v0, p0, Lo/verifySession$2;->ICustomTabsCallback:Landroid/view/View;

    invoke-interface {p1, v0}, Lo/performClick$extraCallback;->onNavigationEvent(Landroid/view/View;)V

    return-void

    .line 450
    :cond_0
    iget-object p1, p0, Lo/verifySession$2;->onNavigationEvent:Lo/verifySession;

    invoke-virtual {p1}, Lo/verifySession;->ICustomTabsCallback$Stub()V

    return-void
.end method
