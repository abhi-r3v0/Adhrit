.class public final Lo/isLayoutFrozen$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/findFirstReferenceChildPosition$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/isLayoutFrozen;
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
        "com/dreamplug/fabrik/ui/lifestyle/redemption/RedeemSliderPresenter$setupSlider$3",
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
.field private synthetic onMessageChannelReady:Lo/onChildrenLoaded$onPostMessage;

.field private synthetic onNavigationEvent:Lo/isLayoutFrozen;


# direct methods
.method constructor <init>(Lo/isLayoutFrozen;Lo/onChildrenLoaded$onPostMessage;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/onChildrenLoaded$onPostMessage;",
            ")V"
        }
    .end annotation

    .line 80
    iput-object p1, p0, Lo/isLayoutFrozen$onPostMessage;->onNavigationEvent:Lo/isLayoutFrozen;

    iput-object p2, p0, Lo/isLayoutFrozen$onPostMessage;->onMessageChannelReady:Lo/onChildrenLoaded$onPostMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(I)V
    .locals 13

    .line 82
    iget-object v0, p0, Lo/isLayoutFrozen$onPostMessage;->onMessageChannelReady:Lo/onChildrenLoaded$onPostMessage;

    int-to-float p1, p1

    iget-object v1, p0, Lo/isLayoutFrozen$onPostMessage;->onNavigationEvent:Lo/isLayoutFrozen;

    .line 1015
    iget-object v1, v1, Lo/isLayoutFrozen;->onTransact:Lo/findFirstReferenceChildPosition;

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

    .line 82
    iput v1, v0, Lo/onChildrenLoaded$onPostMessage;->cancelAll:F

    .line 83
    iget-object v0, p0, Lo/isLayoutFrozen$onPostMessage;->onNavigationEvent:Lo/isLayoutFrozen;

    .line 2015
    iget-object v0, v0, Lo/isLayoutFrozen;->ICustomTabsCallback$Stub:Landroid/view/View;

    const-string/jumbo v1, "seekBarAnchorView"

    .line 83
    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lo/isLayoutFrozen$onPostMessage;->onMessageChannelReady:Lo/onChildrenLoaded$onPostMessage;

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    iget-object v0, p0, Lo/isLayoutFrozen$onPostMessage;->onNavigationEvent:Lo/isLayoutFrozen;

    .line 3015
    iget-object v1, v0, Lo/isLayoutFrozen;->warmup:Ljava/util/List;

    if-nez v1, :cond_0

    const-string v3, "inputListData"

    invoke-static {v3}, Lo/access$3000;->onNavigationEvent(Ljava/lang/String;)V

    .line 4101
    :cond_0
    iget-wide v3, v0, Lo/isLayoutFrozen;->ICustomTabsCallback$Stub$Proxy:J

    long-to-float v3, v3

    mul-float v3, v3, p1

    iget-object p1, v0, Lo/isLayoutFrozen;->onTransact:Lo/findFirstReferenceChildPosition;

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

    .line 4101
    iget-wide v4, v0, Lo/isLayoutFrozen;->newSession:J

    long-to-float p1, v4

    add-float/2addr v3, p1

    .line 4106
    move-object p1, v1

    check-cast p1, Ljava/lang/Iterable;

    const/4 v2, 0x0

    .line 4156
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v4, 0x0

    move-object v5, v4

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v2, 0x1

    if-ltz v2, :cond_7

    check-cast v6, Lo/scrollStep;

    .line 6049
    iget-object v8, v6, Lo/scrollStep;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/models/Values;

    .line 6115
    iget-object v8, v8, Lcom/dreamplug/fabrik/ui/lifestyle/models/Values;->ICustomTabsCallback:Ljava/lang/Long;

    if-nez v8, :cond_1

    .line 4107
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_1
    invoke-virtual {v8}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    long-to-float v10, v8

    cmpl-float v11, v3, v10

    if-lez v11, :cond_5

    .line 4110
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    if-ge v2, v11, :cond_5

    .line 4111
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/scrollStep;

    .line 7049
    iget-object v2, v2, Lo/scrollStep;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/models/Values;

    .line 7115
    iget-object v2, v2, Lcom/dreamplug/fabrik/ui/lifestyle/models/Values;->ICustomTabsCallback:Ljava/lang/Long;

    if-nez v2, :cond_2

    .line 4111
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_2
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    move-result-wide v11

    long-to-float v2, v11

    cmpg-float v2, v3, v2

    if-gez v2, :cond_5

    sub-float v2, v3, v10

    .line 4113
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lo/scrollStep;

    .line 8049
    iget-object v5, v5, Lo/scrollStep;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/models/Values;

    .line 8115
    iget-object v5, v5, Lcom/dreamplug/fabrik/ui/lifestyle/models/Values;->ICustomTabsCallback:Ljava/lang/Long;

    if-nez v5, :cond_3

    .line 4113
    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_3
    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    move-result-wide v8

    long-to-float v5, v8

    sub-float/2addr v5, v3

    float-to-double v8, v2

    const-wide v10, 0x3fe6666666666666L    # 0.7

    mul-double v8, v8, v10

    float-to-double v10, v5

    cmpg-double v2, v8, v10

    if-gtz v2, :cond_4

    .line 9049
    iget-object v2, v6, Lo/scrollStep;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/models/Values;

    goto :goto_1

    .line 4117
    :cond_4
    invoke-interface {v1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/scrollStep;

    .line 10049
    iget-object v2, v2, Lo/scrollStep;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/models/Values;

    :goto_1
    move-object v5, v2

    goto :goto_2

    :cond_5
    float-to-long v10, v3

    cmp-long v2, v10, v8

    if-nez v2, :cond_6

    .line 11049
    iget-object v5, v6, Lo/scrollStep;->onMessageChannelReady:Lcom/dreamplug/fabrik/ui/lifestyle/models/Values;

    :cond_6
    :goto_2
    move v2, v7

    goto :goto_0

    .line 5441
    :cond_7
    new-instance p1, Ljava/lang/ArithmeticException;

    const-string v0, "Index overflow has happened."

    invoke-direct {p1, v0}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_8
    if-nez v5, :cond_9

    .line 4124
    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 12015
    :cond_9
    iput-object v5, v0, Lo/isLayoutFrozen;->getInterfaceDescriptor:Lcom/dreamplug/fabrik/ui/lifestyle/models/Values;

    .line 85
    iget-object p1, p0, Lo/isLayoutFrozen$onPostMessage;->onNavigationEvent:Lo/isLayoutFrozen;

    .line 13015
    iget-object p1, p1, Lo/isLayoutFrozen;->getInterfaceDescriptor:Lcom/dreamplug/fabrik/ui/lifestyle/models/Values;

    if-eqz p1, :cond_b

    .line 86
    iget-object v0, p0, Lo/isLayoutFrozen$onPostMessage;->onNavigationEvent:Lo/isLayoutFrozen;

    .line 14015
    iget-object v0, v0, Lo/isLayoutFrozen;->ICustomTabsCallback:Landroid/widget/TextView;

    const-string/jumbo v1, "sliderAmount"

    .line 86
    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14117
    iget-object v1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/Values;->extraCallback:Lo/getTargetScrollPosition;

    if-eqz v1, :cond_a

    .line 15000
    iget-object v1, v1, Lo/getTargetScrollPosition;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljava/lang/CharSequence;

    .line 86
    :cond_a
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Lo/isLayoutFrozen$onPostMessage;->onNavigationEvent:Lo/isLayoutFrozen;

    .line 15015
    iget-object v0, v0, Lo/isLayoutFrozen;->onMessageChannelReady:Landroid/widget/TextView;

    const-string v1, "currentText"

    .line 87
    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15113
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/Values;->onPostMessage:Ljava/lang/String;

    .line 87
    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_b
    return-void
.end method

.method public final onNavigationEvent()V
    .locals 1

    .line 93
    iget-object v0, p0, Lo/isLayoutFrozen$onPostMessage;->onNavigationEvent:Lo/isLayoutFrozen;

    .line 16015
    invoke-virtual {v0}, Lo/isLayoutFrozen;->onMessageChannelReady()V

    return-void
.end method

.method public final onPostMessage()V
    .locals 0

    return-void
.end method
