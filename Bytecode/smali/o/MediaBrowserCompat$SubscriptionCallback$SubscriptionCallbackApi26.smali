.class public Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;
.super Lo/getCallbacks;
.source ""


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lo/getCallbacks;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2}, Lo/getCallbacks;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lo/getCallbacks;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected final ICustomTabsCallback(Landroid/util/AttributeSet;)V
    .locals 0

    .line 55
    invoke-super {p0, p1}, Lo/getCallbacks;->ICustomTabsCallback(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public final onMessageChannelReady(Lo/onChildrenLoaded;)V
    .locals 7

    .line 65
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result v0

    .line 67
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    const/4 v3, 0x0

    if-lt v1, v2, :cond_0

    .line 68
    invoke-virtual {p0}, Lo/MediaBrowserCompat$SubscriptionCallback$SubscriptionCallbackApi26;->getElevation()F

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/4 v4, 0x0

    .line 70
    :goto_1
    iget v5, p0, Lo/getCallbacks;->onNavigationEvent:I

    if-ge v4, v5, :cond_2

    .line 71
    iget-object v5, p0, Lo/getCallbacks;->extraCallback:[I

    aget v5, v5, v4

    .line 3015
    iget-object v6, p1, Lo/onChildrenLoaded;->extraCallback:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    if-eqz v5, :cond_1

    .line 74
    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    cmpl-float v6, v1, v3

    if-lez v6, :cond_1

    .line 75
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v2, :cond_1

    .line 76
    invoke-virtual {v5, v1}, Landroid/view/View;->setElevation(F)V

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method public final onNavigationEvent()V
    .locals 3

    .line 88
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lo/onChildrenLoaded$onPostMessage;

    .line 89
    iget-object v1, v0, Lo/onChildrenLoaded$onPostMessage;->onConnectionSuspended:Lo/removeSubscription;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lo/removeSubscription;->onNavigationEvent(I)V

    .line 90
    iget-object v0, v0, Lo/onChildrenLoaded$onPostMessage;->onConnectionSuspended:Lo/removeSubscription;

    invoke-virtual {v0, v2}, Lo/removeSubscription;->onPostMessage(I)V

    return-void
.end method
