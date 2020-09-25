.class public final Lo/installDefaultInflateDelegates$notify;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/findFirstReferenceChildPosition$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/installDefaultInflateDelegates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000%\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\"\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0012\u0010\n\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u000b\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u000c"
    }
    d2 = {
        "com/cred/pay/ui/checkout/instrumentlist/recommendation/CheckoutRecommendationFragment$setupSeekbar$1",
        "Lcom/dreamplug/widget/Slider$OnSliderChangeListener;",
        "onProgressChanged",
        "",
        "seekBar",
        "Landroid/widget/SeekBar;",
        "progress",
        "",
        "fromUser",
        "",
        "onStartTrackingTouch",
        "onStopTrackingTouch",
        "credpayui_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Ljava/util/List;

.field private synthetic onNavigationEvent:Lo/onChildrenLoaded$onPostMessage;

.field private synthetic onPostMessage:Lo/installDefaultInflateDelegates;


# direct methods
.method constructor <init>(Lo/installDefaultInflateDelegates;Lo/onChildrenLoaded$onPostMessage;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onChildrenLoaded$onPostMessage;",
            "Ljava/util/List;",
            ")V"
        }
    .end annotation

    .line 262
    iput-object p1, p0, Lo/installDefaultInflateDelegates$notify;->onPostMessage:Lo/installDefaultInflateDelegates;

    iput-object p2, p0, Lo/installDefaultInflateDelegates$notify;->onNavigationEvent:Lo/onChildrenLoaded$onPostMessage;

    iput-object p3, p0, Lo/installDefaultInflateDelegates$notify;->ICustomTabsCallback:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(I)V
    .locals 4

    .line 264
    iget-object v0, p0, Lo/installDefaultInflateDelegates$notify;->onNavigationEvent:Lo/onChildrenLoaded$onPostMessage;

    int-to-float v1, p1

    iget-object v2, p0, Lo/installDefaultInflateDelegates$notify;->onPostMessage:Lo/installDefaultInflateDelegates;

    sget v3, Lo/onItemHoverEnter$onNavigationEvent;->slider:I

    invoke-virtual {v2, v3}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/findFirstReferenceChildPosition;

    .line 1073
    sget v3, Lo/preferLastSpan$ICustomTabsCallback;->seekBar:I

    invoke-virtual {v2, v3}, Lo/findFirstReferenceChildPosition;->extraCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/SeekBar;

    const-string/jumbo v3, "seekBar"

    invoke-static {v2, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/ProgressBar;->getMax()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 264
    iput v1, v0, Lo/onChildrenLoaded$onPostMessage;->cancelAll:F

    .line 265
    iget-object v0, p0, Lo/installDefaultInflateDelegates$notify;->onPostMessage:Lo/installDefaultInflateDelegates;

    sget v1, Lo/onItemHoverEnter$onNavigationEvent;->storeSeekBarAnchorView:I

    invoke-virtual {v0, v1}, Lo/findLastVisibleItemPositions;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v0

    const-string/jumbo v1, "storeSeekBarAnchorView"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lo/installDefaultInflateDelegates$notify;->onNavigationEvent:Lo/onChildrenLoaded$onPostMessage;

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    iget-object v0, p0, Lo/installDefaultInflateDelegates$notify;->onPostMessage:Lo/installDefaultInflateDelegates;

    iget-object v1, p0, Lo/installDefaultInflateDelegates$notify;->ICustomTabsCallback:Ljava/util/List;

    invoke-static {v0, p1, v1}, Lo/installDefaultInflateDelegates;->ICustomTabsCallback(Lo/installDefaultInflateDelegates;ILjava/util/List;)Lcom/cred/pay/repository/models/checkout/OfferSlab;

    move-result-object p1

    invoke-static {v0, p1}, Lo/installDefaultInflateDelegates;->ICustomTabsCallback(Lo/installDefaultInflateDelegates;Lcom/cred/pay/repository/models/checkout/OfferSlab;)V

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 2

    .line 275
    iget-object v0, p0, Lo/installDefaultInflateDelegates$notify;->onPostMessage:Lo/installDefaultInflateDelegates;

    invoke-static {v0}, Lo/installDefaultInflateDelegates;->extraCallback(Lo/installDefaultInflateDelegates;)V

    .line 276
    iget-object v0, p0, Lo/installDefaultInflateDelegates$notify;->onPostMessage:Lo/installDefaultInflateDelegates;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lo/installDefaultInflateDelegates;->onNavigationEvent(Z)V

    return-void
.end method

.method public final onPostMessage()V
    .locals 2

    .line 270
    iget-object v0, p0, Lo/installDefaultInflateDelegates$notify;->onPostMessage:Lo/installDefaultInflateDelegates;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lo/installDefaultInflateDelegates;->onNavigationEvent(Z)V

    return-void
.end method
