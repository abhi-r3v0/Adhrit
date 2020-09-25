.class public final Lo/obtainVelocityTracker$asInterface;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/findFirstReferenceChildPosition$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/obtainVelocityTracker;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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
        "com/dreamplug/fabrik/ui/lending/dialog/CustomEmiSelectorDialog$onViewCreated$3",
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
.field private synthetic onNavigationEvent:Lo/obtainVelocityTracker;


# direct methods
.method constructor <init>(Lo/obtainVelocityTracker;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 148
    iput-object p1, p0, Lo/obtainVelocityTracker$asInterface;->onNavigationEvent:Lo/obtainVelocityTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(I)V
    .locals 4

    .line 150
    iget-object v0, p0, Lo/obtainVelocityTracker$asInterface;->onNavigationEvent:Lo/obtainVelocityTracker;

    invoke-static {v0}, Lo/obtainVelocityTracker;->asInterface(Lo/obtainVelocityTracker;)Lo/onChildrenLoaded$onPostMessage;

    move-result-object v0

    int-to-float v1, p1

    iget-object v2, p0, Lo/obtainVelocityTracker$asInterface;->onNavigationEvent:Lo/obtainVelocityTracker;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->slider:I

    invoke-virtual {v2, v3}, Lo/updateRemainingSpans;->onNavigationEvent(I)Landroid/view/View;

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

    .line 150
    iput v1, v0, Lo/onChildrenLoaded$onPostMessage;->cancelAll:F

    .line 151
    iget-object v0, p0, Lo/obtainVelocityTracker$asInterface;->onNavigationEvent:Lo/obtainVelocityTracker;

    invoke-static {v0}, Lo/obtainVelocityTracker;->asBinder(Lo/obtainVelocityTracker;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lo/obtainVelocityTracker$asInterface;->onNavigationEvent:Lo/obtainVelocityTracker;

    invoke-static {v1}, Lo/obtainVelocityTracker;->asInterface(Lo/obtainVelocityTracker;)Lo/onChildrenLoaded$onPostMessage;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    iget-object v0, p0, Lo/obtainVelocityTracker$asInterface;->onNavigationEvent:Lo/obtainVelocityTracker;

    invoke-static {v0}, Lo/obtainVelocityTracker;->extraCallback(Lo/obtainVelocityTracker;)Ljava/util/ArrayList;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, p1, v1}, Lo/obtainVelocityTracker;->onNavigationEvent(Lo/obtainVelocityTracker;ILjava/util/List;)Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Data;

    move-result-object v0

    iget-object v1, p0, Lo/obtainVelocityTracker$asInterface;->onNavigationEvent:Lo/obtainVelocityTracker;

    invoke-static {v1}, Lo/obtainVelocityTracker;->onMessageChannelReady(Lo/obtainVelocityTracker;)Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Data;

    move-result-object v1

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 153
    iget-object v0, p0, Lo/obtainVelocityTracker$asInterface;->onNavigationEvent:Lo/obtainVelocityTracker;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    const-string v1, "context!!"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0x5

    invoke-static {v0, v1, v2}, Lo/addAllInternal;->onNavigationEvent(Landroid/content/Context;J)V

    .line 154
    iget-object v0, p0, Lo/obtainVelocityTracker$asInterface;->onNavigationEvent:Lo/obtainVelocityTracker;

    invoke-static {v0}, Lo/obtainVelocityTracker;->extraCallback(Lo/obtainVelocityTracker;)Ljava/util/ArrayList;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, p1, v1}, Lo/obtainVelocityTracker;->onNavigationEvent(Lo/obtainVelocityTracker;ILjava/util/List;)Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Data;

    move-result-object p1

    invoke-static {v0, p1}, Lo/obtainVelocityTracker;->onPostMessage(Lo/obtainVelocityTracker;Lcom/dreamplug/fabrik/ui/lending/model/EmiScreenResponse$Data;)V

    .line 155
    iget-object p1, p0, Lo/obtainVelocityTracker$asInterface;->onNavigationEvent:Lo/obtainVelocityTracker;

    invoke-static {p1}, Lo/obtainVelocityTracker;->ICustomTabsCallback$Stub(Lo/obtainVelocityTracker;)V

    :cond_1
    return-void
.end method

.method public final onNavigationEvent()V
    .locals 1

    .line 161
    iget-object v0, p0, Lo/obtainVelocityTracker$asInterface;->onNavigationEvent:Lo/obtainVelocityTracker;

    invoke-static {v0}, Lo/obtainVelocityTracker;->ICustomTabsCallback(Lo/obtainVelocityTracker;)V

    return-void
.end method

.method public final onPostMessage()V
    .locals 0

    return-void
.end method
