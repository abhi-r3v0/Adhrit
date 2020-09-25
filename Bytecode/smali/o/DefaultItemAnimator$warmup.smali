.class final Lo/DefaultItemAnimator$warmup;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/DefaultItemAnimator;->onMessageChannelReady(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/addWrites;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/DefaultItemAnimator;


# direct methods
.method constructor <init>(Lo/DefaultItemAnimator;)V
    .locals 0

    iput-object p1, p0, Lo/DefaultItemAnimator$warmup;->onMessageChannelReady:Lo/DefaultItemAnimator;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 7

    .line 2386
    iget-object v0, p0, Lo/DefaultItemAnimator$warmup;->onMessageChannelReady:Lo/DefaultItemAnimator;

    invoke-static {v0}, Lo/DefaultItemAnimator;->asInterface(Lo/DefaultItemAnimator;)V

    .line 2387
    iget-object v0, p0, Lo/DefaultItemAnimator$warmup;->onMessageChannelReady:Lo/DefaultItemAnimator;

    invoke-static {v0}, Lo/DefaultItemAnimator;->onPostMessage(Lo/DefaultItemAnimator;)V

    .line 2388
    new-instance v0, Lo/MediaBrowserCompat$SubscriptionCallback;

    invoke-direct {v0}, Lo/MediaBrowserCompat$SubscriptionCallback;-><init>()V

    .line 2389
    iget-object v1, p0, Lo/DefaultItemAnimator$warmup;->onMessageChannelReady:Lo/DefaultItemAnimator;

    invoke-static {v1}, Lo/DefaultItemAnimator;->onMessageChannelReady(Lo/DefaultItemAnimator;)Landroid/view/View;

    move-result-object v1

    const-string/jumbo v2, "view"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->listContainer:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lo/onChildrenLoaded;

    invoke-virtual {v0, v1}, Lo/MediaBrowserCompat$SubscriptionCallback;->ICustomTabsCallback(Lo/onChildrenLoaded;)V

    const v1, 0x7f0b06bf

    const/4 v3, 0x3

    const/4 v4, 0x0

    .line 2390
    invoke-virtual {v0, v1, v3, v4}, Lo/MediaBrowserCompat$SubscriptionCallback;->onPostMessage(III)V

    .line 2392
    new-instance v1, Lo/MediaBrowserCompat$SubscriptionCallback;

    invoke-direct {v1}, Lo/MediaBrowserCompat$SubscriptionCallback;-><init>()V

    .line 2393
    iget-object v3, p0, Lo/DefaultItemAnimator$warmup;->onMessageChannelReady:Lo/DefaultItemAnimator;

    invoke-static {v3}, Lo/DefaultItemAnimator;->onMessageChannelReady(Lo/DefaultItemAnimator;)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->paymentStatusContainer:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lo/onChildrenLoaded;

    invoke-virtual {v1, v3}, Lo/MediaBrowserCompat$SubscriptionCallback;->ICustomTabsCallback(Lo/onChildrenLoaded;)V

    const v3, 0x7f0b030b

    .line 2528
    invoke-virtual {v1, v3}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object v3

    const/16 v4, 0x8

    iput v4, v3, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->RemoteActionCompatParcelizer:I

    .line 2396
    new-instance v3, Lo/sendQueueTitle;

    invoke-direct {v3}, Lo/sendQueueTitle;-><init>()V

    .line 2397
    new-instance v4, Landroid/view/animation/AnticipateOvershootInterpolator;

    const v5, 0x3f333333    # 0.7f

    const/high16 v6, 0x3fc00000    # 1.5f

    invoke-direct {v4, v5, v6}, Landroid/view/animation/AnticipateOvershootInterpolator;-><init>(FF)V

    check-cast v4, Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v4}, Lo/fromQueueItem;->onMessageChannelReady(Landroid/animation/TimeInterpolator;)Lo/fromQueueItem;

    const-wide/16 v4, 0x320

    .line 2398
    invoke-virtual {v3, v4, v5}, Lo/fromQueueItem;->onPostMessage(J)Lo/fromQueueItem;

    .line 2401
    iget-object v4, p0, Lo/DefaultItemAnimator$warmup;->onMessageChannelReady:Lo/DefaultItemAnimator;

    invoke-static {v4}, Lo/DefaultItemAnimator;->onMessageChannelReady(Lo/DefaultItemAnimator;)Landroid/view/View;

    move-result-object v4

    invoke-static {v4, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v5, Lo/getSwitchMinWidth$onPostMessage;->listContainer:I

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lo/onChildrenLoaded;

    check-cast v3, Lo/fromQueueItem;

    invoke-static {v4, v3}, Lo/MediaSessionCompat$QueueItem;->onPostMessage(Landroid/view/ViewGroup;Lo/fromQueueItem;)V

    .line 2402
    iget-object v3, p0, Lo/DefaultItemAnimator$warmup;->onMessageChannelReady:Lo/DefaultItemAnimator;

    invoke-static {v3}, Lo/DefaultItemAnimator;->onMessageChannelReady(Lo/DefaultItemAnimator;)Landroid/view/View;

    move-result-object v3

    invoke-static {v3, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->listContainer:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lo/onChildrenLoaded;

    invoke-virtual {v0, v3}, Lo/MediaBrowserCompat$SubscriptionCallback;->onNavigationEvent(Lo/onChildrenLoaded;)V

    .line 2404
    iget-object v0, p0, Lo/DefaultItemAnimator$warmup;->onMessageChannelReady:Lo/DefaultItemAnimator;

    invoke-static {v0}, Lo/DefaultItemAnimator;->onMessageChannelReady(Lo/DefaultItemAnimator;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->paymentStatusContainer:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onChildrenLoaded;

    invoke-static {v0}, Lo/MediaSessionCompat$QueueItem;->onNavigationEvent(Landroid/view/ViewGroup;)V

    .line 2405
    iget-object v0, p0, Lo/DefaultItemAnimator$warmup;->onMessageChannelReady:Lo/DefaultItemAnimator;

    invoke-static {v0}, Lo/DefaultItemAnimator;->onMessageChannelReady(Lo/DefaultItemAnimator;)Landroid/view/View;

    move-result-object v0

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->paymentStatusContainer:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onChildrenLoaded;

    invoke-virtual {v1, v0}, Lo/MediaBrowserCompat$SubscriptionCallback;->onNavigationEvent(Lo/onChildrenLoaded;)V

    .line 2406
    iget-object v0, p0, Lo/DefaultItemAnimator$warmup;->onMessageChannelReady:Lo/DefaultItemAnimator;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->toggleAnimation:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/setMinimumHeight;

    const/16 v1, 0x74

    invoke-virtual {v0, v1}, Lo/setMinimumHeight;->ICustomTabsCallback(I)V

    .line 53
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
