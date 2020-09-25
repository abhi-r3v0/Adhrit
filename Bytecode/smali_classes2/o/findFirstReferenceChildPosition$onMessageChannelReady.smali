.class public final Lo/findFirstReferenceChildPosition$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/findFirstReferenceChildPosition;
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
        "com/dreamplug/widget/Slider$setListener$1",
        "Landroid/widget/SeekBar$OnSeekBarChangeListener;",
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
        "widget_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/findFirstReferenceChildPosition;


# direct methods
.method constructor <init>(Lo/findFirstReferenceChildPosition;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 54
    iput-object p1, p0, Lo/findFirstReferenceChildPosition$onMessageChannelReady;->onMessageChannelReady:Lo/findFirstReferenceChildPosition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 1

    .line 56
    iget-object p3, p0, Lo/findFirstReferenceChildPosition$onMessageChannelReady;->onMessageChannelReady:Lo/findFirstReferenceChildPosition;

    sget v0, Lo/preferLastSpan$ICustomTabsCallback;->lottieView:I

    invoke-virtual {p3, v0}, Lo/findFirstReferenceChildPosition;->extraCallback(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/airbnb/lottie/LottieAnimationView;

    const-string v0, "lottieView"

    invoke-static {p3, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setRepeatCount(I)V

    .line 57
    iget-object p3, p0, Lo/findFirstReferenceChildPosition$onMessageChannelReady;->onMessageChannelReady:Lo/findFirstReferenceChildPosition;

    sget v0, Lo/preferLastSpan$ICustomTabsCallback;->lottieView:I

    invoke-virtual {p3, v0}, Lo/findFirstReferenceChildPosition;->extraCallback(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz p3, :cond_1

    int-to-float v0, p2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/ProgressBar;->getMax()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    int-to-float p1, p1

    div-float/2addr v0, p1

    invoke-virtual {p3, v0}, Lcom/airbnb/lottie/LottieAnimationView;->setProgress(F)V

    .line 58
    :cond_1
    iget-object p1, p0, Lo/findFirstReferenceChildPosition$onMessageChannelReady;->onMessageChannelReady:Lo/findFirstReferenceChildPosition;

    invoke-static {p1}, Lo/findFirstReferenceChildPosition;->extraCallback(Lo/findFirstReferenceChildPosition;)Lo/findFirstReferenceChildPosition$onPostMessage;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-interface {p1, p2}, Lo/findFirstReferenceChildPosition$onPostMessage;->onMessageChannelReady(I)V

    :cond_2
    return-void
.end method

.method public final onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 62
    iget-object p1, p0, Lo/findFirstReferenceChildPosition$onMessageChannelReady;->onMessageChannelReady:Lo/findFirstReferenceChildPosition;

    invoke-static {p1}, Lo/findFirstReferenceChildPosition;->extraCallback(Lo/findFirstReferenceChildPosition;)Lo/findFirstReferenceChildPosition$onPostMessage;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lo/findFirstReferenceChildPosition$onPostMessage;->onPostMessage()V

    :cond_0
    return-void
.end method

.method public final onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 66
    iget-object p1, p0, Lo/findFirstReferenceChildPosition$onMessageChannelReady;->onMessageChannelReady:Lo/findFirstReferenceChildPosition;

    invoke-static {p1}, Lo/findFirstReferenceChildPosition;->extraCallback(Lo/findFirstReferenceChildPosition;)Lo/findFirstReferenceChildPosition$onPostMessage;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Lo/findFirstReferenceChildPosition$onPostMessage;->onNavigationEvent()V

    :cond_0
    return-void
.end method
