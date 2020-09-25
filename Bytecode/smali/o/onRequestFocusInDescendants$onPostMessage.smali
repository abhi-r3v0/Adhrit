.class final Lo/onRequestFocusInDescendants$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onRequestFocusInDescendants;-><init>(Landroidx/fragment/app/Fragment;Lo/pullGlows;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final synthetic onNavigationEvent:Lo/onRequestFocusInDescendants;


# direct methods
.method constructor <init>(Lo/onRequestFocusInDescendants;)V
    .locals 0

    iput-object p1, p0, Lo/onRequestFocusInDescendants$onPostMessage;->onNavigationEvent:Lo/onRequestFocusInDescendants;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 11

    .line 31
    check-cast p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;

    .line 1066
    iget-object v0, p0, Lo/onRequestFocusInDescendants$onPostMessage;->onNavigationEvent:Lo/onRequestFocusInDescendants;

    new-instance v1, Lo/onRequestFocusInDescendants$onPostMessage$2;

    invoke-direct {v1, p0, p1}, Lo/onRequestFocusInDescendants$onPostMessage$2;-><init>(Lo/onRequestFocusInDescendants$onPostMessage;Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;)V

    check-cast v1, Lo/getServerTime;

    .line 2089
    iget-boolean p1, v0, Lo/onRequestFocusInDescendants;->cancelAll:Z

    if-eqz p1, :cond_0

    const-wide/16 v2, 0xfa

    goto :goto_0

    :cond_0
    const-wide/16 v2, 0x1f4

    .line 2299
    :goto_0
    iget-object p1, v0, Lo/onRequestFocusInDescendants;->mayLaunchUrl:Lo/setActive;

    .line 3320
    iget-object p1, p1, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 3321
    sget-object v4, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-eq p1, v4, :cond_1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 2299
    :goto_1
    check-cast p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;

    if-eqz p1, :cond_3

    .line 2300
    iget-wide v4, v0, Lo/onRequestFocusInDescendants;->validateRelationship:J

    const-wide/16 v6, 0x0

    const/4 v8, 0x0

    cmp-long v9, v4, v6

    if-lez v9, :cond_2

    .line 4034
    iget-wide v4, p1, Lcom/dreamplug/fabrik/ui/lifestyle/models/StoreSlab;->onPostMessage:J

    .line 2302
    iget-wide v6, v0, Lo/onRequestFocusInDescendants;->requestPostMessageChannel:J

    sub-long/2addr v4, v6

    .line 2304
    iget-object p1, v0, Lo/onRequestFocusInDescendants;->onRelationshipValidationResult:Lo/findFirstReferenceChildPosition;

    .line 4073
    sget v6, Lo/preferLastSpan$ICustomTabsCallback;->seekBar:I

    invoke-virtual {p1, v6}, Lo/findFirstReferenceChildPosition;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/SeekBar;

    const-string/jumbo v6, "seekBar"

    invoke-static {p1, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getMax()I

    move-result p1

    int-to-long v9, p1

    mul-long v4, v4, v9

    .line 2304
    iget-wide v9, v0, Lo/onRequestFocusInDescendants;->validateRelationship:J

    div-long/2addr v4, v9

    long-to-int p1, v4

    .line 2306
    iget-object v4, v0, Lo/onRequestFocusInDescendants;->onRelationshipValidationResult:Lo/findFirstReferenceChildPosition;

    .line 4077
    sget v5, Lo/preferLastSpan$ICustomTabsCallback;->seekBar:I

    invoke-virtual {v4, v5}, Lo/findFirstReferenceChildPosition;->extraCallback(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SeekBar;

    invoke-static {v4, v6}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v4

    sub-int/2addr p1, v4

    const/4 v5, 0x1

    new-array v5, v5, [F

    const/high16 v6, 0x3f800000    # 1.0f

    aput v6, v5, v8

    .line 2309
    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    .line 2310
    new-instance v6, Lo/onRequestFocusInDescendants$onMessageChannelReady;

    invoke-direct {v6, v5, p1, v4, v0}, Lo/onRequestFocusInDescendants$onMessageChannelReady;-><init>(Landroid/animation/ValueAnimator;IILo/onRequestFocusInDescendants;)V

    check-cast v6, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2313
    invoke-virtual {v5, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 2314
    new-instance p1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {p1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    check-cast p1, Landroid/animation/TimeInterpolator;

    invoke-virtual {v5, p1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 2315
    move-object p1, v5

    check-cast p1, Landroid/animation/Animator;

    .line 2360
    new-instance v2, Lo/onRequestFocusInDescendants$asInterface;

    invoke-direct {v2, v0, v1}, Lo/onRequestFocusInDescendants$asInterface;-><init>(Lo/onRequestFocusInDescendants;Lo/getServerTime;)V

    .line 2366
    check-cast v2, Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 2319
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    return-void

    .line 2321
    :cond_2
    iget-object p1, v0, Lo/onRequestFocusInDescendants;->onRelationshipValidationResult:Lo/findFirstReferenceChildPosition;

    invoke-virtual {p1, v8}, Lo/findFirstReferenceChildPosition;->setProgress(I)V

    :cond_3
    return-void
.end method
