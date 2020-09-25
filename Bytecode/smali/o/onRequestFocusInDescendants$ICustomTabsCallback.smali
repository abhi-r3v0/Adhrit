.class public final Lo/onRequestFocusInDescendants$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/findFirstReferenceChildPosition$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onRequestFocusInDescendants;
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
        "\u0000-\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\"\u0010\u0008\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fH\u0016J\u0012\u0010\u0010\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u0012\u0010\u0011\u001a\u00020\t2\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016R\u001c\u0010\u0002\u001a\u0004\u0018\u00010\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0004\u0010\u0005\"\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0012"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lifestyle/store/StorePaymentSliderPresenter$handleSliderUpdates$1",
        "Lcom/dreamplug/widget/Slider$OnSliderChangeListener;",
        "intermediateValue",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;",
        "getIntermediateValue",
        "()Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;",
        "setIntermediateValue",
        "(Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;)V",
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
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/onChildrenLoaded$onPostMessage;

.field private extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;

.field private synthetic onNavigationEvent:Lo/onRequestFocusInDescendants;


# direct methods
.method public constructor <init>(Lo/onRequestFocusInDescendants;Lo/onChildrenLoaded$onPostMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onChildrenLoaded$onPostMessage;",
            ")V"
        }
    .end annotation

    .line 219
    iput-object p1, p0, Lo/onRequestFocusInDescendants$ICustomTabsCallback;->onNavigationEvent:Lo/onRequestFocusInDescendants;

    iput-object p2, p0, Lo/onRequestFocusInDescendants$ICustomTabsCallback;->ICustomTabsCallback:Lo/onChildrenLoaded$onPostMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(I)V
    .locals 11

    .line 222
    iget-object v0, p0, Lo/onRequestFocusInDescendants$ICustomTabsCallback;->ICustomTabsCallback:Lo/onChildrenLoaded$onPostMessage;

    int-to-float p1, p1

    iget-object v1, p0, Lo/onRequestFocusInDescendants$ICustomTabsCallback;->onNavigationEvent:Lo/onRequestFocusInDescendants;

    .line 1031
    iget-object v1, v1, Lo/onRequestFocusInDescendants;->onRelationshipValidationResult:Lo/findFirstReferenceChildPosition;

    .line 1073
    sget v2, Lo/preferLastSpan$ICustomTabsCallback;->seekBar:I

    invoke-virtual {v1, v2}, Lo/findFirstReferenceChildPosition;->extraCallback(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/SeekBar;

    const-string/jumbo v2, "seekBar"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getMax()I

    move-result v1

    int-to-float v1, v1

    div-float v1, p1, v1

    .line 222
    iput v1, v0, Lo/onChildrenLoaded$onPostMessage;->cancelAll:F

    .line 223
    iget-object v0, p0, Lo/onRequestFocusInDescendants$ICustomTabsCallback;->onNavigationEvent:Lo/onRequestFocusInDescendants;

    .line 2031
    iget-object v0, v0, Lo/onRequestFocusInDescendants;->asInterface:Landroid/view/View;

    const-string/jumbo v1, "seekBarAnchorView"

    .line 223
    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lo/onRequestFocusInDescendants$ICustomTabsCallback;->ICustomTabsCallback:Lo/onChildrenLoaded$onPostMessage;

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 224
    iget-object v0, p0, Lo/onRequestFocusInDescendants$ICustomTabsCallback;->onNavigationEvent:Lo/onRequestFocusInDescendants;

    .line 3031
    iget-object v1, v0, Lo/onRequestFocusInDescendants;->IPostMessageService$Stub:Ljava/util/List;

    if-nez v1, :cond_0

    const-string v3, "inputListData"

    invoke-static {v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 4275
    :cond_0
    iget-wide v3, v0, Lo/onRequestFocusInDescendants;->validateRelationship:J

    long-to-float v3, v3

    mul-float v3, v3, p1

    iget-object p1, v0, Lo/onRequestFocusInDescendants;->onRelationshipValidationResult:Lo/findFirstReferenceChildPosition;

    .line 5073
    sget v4, Lo/preferLastSpan$ICustomTabsCallback;->seekBar:I

    invoke-virtual {p1, v4}, Lo/findFirstReferenceChildPosition;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    invoke-static {p1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getMax()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr v3, p1

    .line 4275
    iget-wide v4, v0, Lo/onRequestFocusInDescendants;->requestPostMessageChannel:J

    long-to-float p1, v4

    add-float/2addr v3, p1

    const/4 p1, 0x0

    .line 4278
    move-object v0, v1

    check-cast v0, Ljava/lang/Iterable;

    const/4 v2, 0x0

    .line 4353
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v5, v2, 0x1

    if-ltz v2, :cond_4

    check-cast v4, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;

    .line 6034
    iget-wide v6, v4, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->onPostMessage:J

    long-to-float v8, v6

    cmpl-float v9, v3, v8

    if-lez v9, :cond_2

    .line 4282
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    if-ge v2, v9, :cond_2

    .line 4283
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;

    .line 7034
    iget-wide v9, v2, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->onPostMessage:J

    long-to-float v2, v9

    cmpg-float v2, v3, v2

    if-gez v2, :cond_2

    sub-float p1, v3, v8

    .line 4285
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;

    .line 8034
    iget-wide v6, v2, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->onPostMessage:J

    long-to-float v2, v6

    sub-float/2addr v2, v3

    float-to-double v6, p1

    const-wide v8, 0x3fe6666666666666L    # 0.7

    mul-double v6, v6, v8

    float-to-double v8, v2

    cmpg-double p1, v6, v8

    if-gtz p1, :cond_1

    goto :goto_1

    .line 4289
    :cond_1
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;

    goto :goto_2

    :cond_2
    float-to-long v8, v3

    cmp-long v2, v8, v6

    if-nez v2, :cond_3

    :goto_1
    move-object p1, v4

    :cond_3
    :goto_2
    move v2, v5

    goto :goto_0

    .line 5441
    :cond_4
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string v0, "Index overflow has happened."

    invoke-direct {p1, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_5
    if-nez p1, :cond_6

    .line 4295
    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 224
    :cond_6
    iput-object p1, p0, Lo/onRequestFocusInDescendants$ICustomTabsCallback;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;

    if-eqz p1, :cond_7

    .line 226
    iget-object v0, p0, Lo/onRequestFocusInDescendants$ICustomTabsCallback;->onNavigationEvent:Lo/onRequestFocusInDescendants;

    .line 9031
    invoke-virtual {v0, p1}, Lo/onRequestFocusInDescendants;->onMessageChannelReady(Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;)V

    :cond_7
    return-void
.end method

.method public final onNavigationEvent()V
    .locals 2

    .line 236
    iget-object v0, p0, Lo/onRequestFocusInDescendants$ICustomTabsCallback;->onNavigationEvent:Lo/onRequestFocusInDescendants;

    .line 11031
    iget-object v0, v0, Lo/onRequestFocusInDescendants;->mayLaunchUrl:Lo/setActive;

    .line 236
    iget-object v1, p0, Lo/onRequestFocusInDescendants$ICustomTabsCallback;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    return-void
.end method

.method public final onPostMessage()V
    .locals 3

    .line 231
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 10000
    sget-object v0, Lo/setTrackTintMode;->onConnectionFailed:Lo/setTitleTextColor;

    sget-object v1, Lo/setTrackTintMode;->onPostMessage:[Lo/applyUserOverwrite;

    const/16 v2, 0x3e

    aget-object v1, v1, v2

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lo/ensureLogoView;->extraCallback(Lo/applyUserOverwrite;Ljava/lang/Object;)V

    .line 232
    iget-object v0, p0, Lo/onRequestFocusInDescendants$ICustomTabsCallback;->onNavigationEvent:Lo/onRequestFocusInDescendants;

    const/4 v1, 0x1

    .line 10031
    iput-boolean v1, v0, Lo/onRequestFocusInDescendants;->cancelAll:Z

    return-void
.end method
