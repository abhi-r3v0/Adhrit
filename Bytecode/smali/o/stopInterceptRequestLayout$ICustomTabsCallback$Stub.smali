.class final Lo/stopInterceptRequestLayout$ICustomTabsCallback$Stub;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/stopInterceptRequestLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "animator",
        "Landroid/animation/ValueAnimator;",
        "kotlin.jvm.PlatformType",
        "onAnimationUpdate",
        "com/dreamplug/fabrik/ui/lifestyle/redemption/RedeemDialogPresenter$updateTopHeight$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/toDebugString$onPostMessage;

.field private synthetic onMessageChannelReady:Lo/stopInterceptRequestLayout;


# direct methods
.method constructor <init>(Lo/toDebugString$onPostMessage;Lo/stopInterceptRequestLayout;)V
    .locals 0

    iput-object p1, p0, Lo/stopInterceptRequestLayout$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/toDebugString$onPostMessage;

    iput-object p2, p0, Lo/stopInterceptRequestLayout$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/stopInterceptRequestLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 490
    iget-object v0, p0, Lo/stopInterceptRequestLayout$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/toDebugString$onPostMessage;

    const-string v1, "animator"

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    iput p1, v0, Lo/toDebugString$onPostMessage;->onPostMessage:I

    .line 491
    iget-object p1, p0, Lo/stopInterceptRequestLayout$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/stopInterceptRequestLayout;

    .line 1036
    iget-object p1, p1, Lo/stopInterceptRequestLayout;->extraCommand:Lo/applyOptions;

    .line 491
    iget-object v0, p0, Lo/stopInterceptRequestLayout$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/toDebugString$onPostMessage;

    iget v0, v0, Lo/toDebugString$onPostMessage;->onPostMessage:I

    invoke-virtual {p1, v0}, Lo/applyOptions;->setGuidelineBegin(I)V

    return-void

    .line 490
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
