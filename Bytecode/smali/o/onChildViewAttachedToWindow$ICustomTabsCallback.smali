.class public final Lo/onChildViewAttachedToWindow$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/findFirstReferenceChildPosition$onPostMessage;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onChildViewAttachedToWindow;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
        "com/dreamplug/fabrik/ui/lending/dialog/DateSelectorDialog$onCreateView$4",
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
.field private synthetic onPostMessage:Lo/onChildViewAttachedToWindow;


# direct methods
.method constructor <init>(Lo/onChildViewAttachedToWindow;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 86
    iput-object p1, p0, Lo/onChildViewAttachedToWindow$ICustomTabsCallback;->onPostMessage:Lo/onChildViewAttachedToWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(I)V
    .locals 4

    .line 88
    iget-object v0, p0, Lo/onChildViewAttachedToWindow$ICustomTabsCallback;->onPostMessage:Lo/onChildViewAttachedToWindow;

    invoke-static {v0}, Lo/onChildViewAttachedToWindow;->extraCallback(Lo/onChildViewAttachedToWindow;)Lo/onChildrenLoaded$onPostMessage;

    move-result-object v0

    int-to-float v1, p1

    iget-object v2, p0, Lo/onChildViewAttachedToWindow$ICustomTabsCallback;->onPostMessage:Lo/onChildViewAttachedToWindow;

    invoke-static {v2}, Lo/onChildViewAttachedToWindow;->onMessageChannelReady(Lo/onChildViewAttachedToWindow;)Lo/findFirstReferenceChildPosition;

    move-result-object v2

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

    .line 88
    iput v1, v0, Lo/onChildrenLoaded$onPostMessage;->cancelAll:F

    .line 89
    iget-object v0, p0, Lo/onChildViewAttachedToWindow$ICustomTabsCallback;->onPostMessage:Lo/onChildViewAttachedToWindow;

    invoke-static {v0}, Lo/onChildViewAttachedToWindow;->onRelationshipValidationResult(Lo/onChildViewAttachedToWindow;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lo/onChildViewAttachedToWindow$ICustomTabsCallback;->onPostMessage:Lo/onChildViewAttachedToWindow;

    invoke-static {v1}, Lo/onChildViewAttachedToWindow;->extraCallback(Lo/onChildViewAttachedToWindow;)Lo/onChildrenLoaded$onPostMessage;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    iget-object v0, p0, Lo/onChildViewAttachedToWindow$ICustomTabsCallback;->onPostMessage:Lo/onChildViewAttachedToWindow;

    invoke-static {v0}, Lo/onChildViewAttachedToWindow;->asInterface(Lo/onChildViewAttachedToWindow;)Ljava/util/ArrayList;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, p1, v1}, Lo/onChildViewAttachedToWindow;->ICustomTabsCallback(Lo/onChildViewAttachedToWindow;ILjava/util/List;)Lcom/dreamplug/fabrik/ui/lending/model/PossibleValues;

    move-result-object v0

    iget-object v1, p0, Lo/onChildViewAttachedToWindow$ICustomTabsCallback;->onPostMessage:Lo/onChildViewAttachedToWindow;

    invoke-static {v1}, Lo/onChildViewAttachedToWindow;->ICustomTabsCallback(Lo/onChildViewAttachedToWindow;)Lcom/dreamplug/fabrik/ui/lending/model/PossibleValues;

    move-result-object v1

    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 91
    iget-object v0, p0, Lo/onChildViewAttachedToWindow$ICustomTabsCallback;->onPostMessage:Lo/onChildViewAttachedToWindow;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    const-string v1, "context!!"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-wide/16 v1, 0x5

    invoke-static {v0, v1, v2}, Lo/addAllInternal;->onNavigationEvent(Landroid/content/Context;J)V

    .line 92
    iget-object v0, p0, Lo/onChildViewAttachedToWindow$ICustomTabsCallback;->onPostMessage:Lo/onChildViewAttachedToWindow;

    invoke-static {v0}, Lo/onChildViewAttachedToWindow;->asInterface(Lo/onChildViewAttachedToWindow;)Ljava/util/ArrayList;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-static {v0, p1, v1}, Lo/onChildViewAttachedToWindow;->ICustomTabsCallback(Lo/onChildViewAttachedToWindow;ILjava/util/List;)Lcom/dreamplug/fabrik/ui/lending/model/PossibleValues;

    move-result-object p1

    invoke-static {v0, p1}, Lo/onChildViewAttachedToWindow;->onNavigationEvent(Lo/onChildViewAttachedToWindow;Lcom/dreamplug/fabrik/ui/lending/model/PossibleValues;)V

    .line 93
    iget-object p1, p0, Lo/onChildViewAttachedToWindow$ICustomTabsCallback;->onPostMessage:Lo/onChildViewAttachedToWindow;

    invoke-static {p1}, Lo/onChildViewAttachedToWindow;->onTransact(Lo/onChildViewAttachedToWindow;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lo/onChildViewAttachedToWindow$ICustomTabsCallback;->onPostMessage:Lo/onChildViewAttachedToWindow;

    invoke-static {v0}, Lo/onChildViewAttachedToWindow;->ICustomTabsCallback(Lo/onChildViewAttachedToWindow;)Lcom/dreamplug/fabrik/ui/lending/model/PossibleValues;

    move-result-object v0

    .line 1106
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/lending/model/PossibleValues;->onMessageChannelReady:Ljava/lang/String;

    .line 93
    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public final onNavigationEvent()V
    .locals 1

    .line 99
    iget-object v0, p0, Lo/onChildViewAttachedToWindow$ICustomTabsCallback;->onPostMessage:Lo/onChildViewAttachedToWindow;

    invoke-static {v0}, Lo/onChildViewAttachedToWindow;->onNavigationEvent(Lo/onChildViewAttachedToWindow;)V

    return-void
.end method

.method public final onPostMessage()V
    .locals 0

    return-void
.end method
