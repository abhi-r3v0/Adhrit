.class final Lo/onAttachedToRecyclerView$onPostMessage$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onAttachedToRecyclerView$onPostMessage;
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
        "com/dreamplug/fabrik/ui/main/BottomBarPresenter$showAnimation$2$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/onAttachedToRecyclerView$onPostMessage;


# direct methods
.method constructor <init>(Lo/onAttachedToRecyclerView$onPostMessage;)V
    .locals 0

    iput-object p1, p0, Lo/onAttachedToRecyclerView$onPostMessage$onPostMessage;->onNavigationEvent:Lo/onAttachedToRecyclerView$onPostMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 8

    const-string v0, "animator"

    .line 45
    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    .line 46
    iget-object v0, p0, Lo/onAttachedToRecyclerView$onPostMessage$onPostMessage;->onNavigationEvent:Lo/onAttachedToRecyclerView$onPostMessage;

    iget-object v0, v0, Lo/onAttachedToRecyclerView$onPostMessage;->ICustomTabsCallback:Lo/onAttachedToRecyclerView;

    .line 2000
    iget-object v0, v0, Lo/onAttachedToRecyclerView;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/hasObservers;

    .line 46
    iget-object v1, p0, Lo/onAttachedToRecyclerView$onPostMessage$onPostMessage;->onNavigationEvent:Lo/onAttachedToRecyclerView$onPostMessage;

    iget-object v1, v1, Lo/onAttachedToRecyclerView$onPostMessage;->ICustomTabsCallback:Lo/onAttachedToRecyclerView;

    .line 2013
    iget-object v1, v1, Lo/onAttachedToRecyclerView;->asInterface:Lo/setFrom;

    .line 46
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    mul-float v4, v1, p1

    .line 2028
    iget-object v2, v0, Lo/hasObservers;->ICustomTabsCallback:Lo/unregisterAdapterDataObserver;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xd

    invoke-static/range {v2 .. v7}, Lo/unregisterAdapterDataObserver;->onNavigationEvent(Lo/unregisterAdapterDataObserver;ZFFLjava/lang/String;I)Lo/unregisterAdapterDataObserver;

    move-result-object v1

    const-string/jumbo v2, "value"

    invoke-static {v1, v2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3017
    iput-object v1, v0, Lo/hasObservers;->ICustomTabsCallback:Lo/unregisterAdapterDataObserver;

    .line 3018
    iget-object v0, v0, Lo/hasObservers;->onMessageChannelReady:Lo/setActive;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 47
    iget-object v0, p0, Lo/onAttachedToRecyclerView$onPostMessage$onPostMessage;->onNavigationEvent:Lo/onAttachedToRecyclerView$onPostMessage;

    iget-object v0, v0, Lo/onAttachedToRecyclerView$onPostMessage;->ICustomTabsCallback:Lo/onAttachedToRecyclerView;

    .line 4013
    iget-object v0, v0, Lo/onAttachedToRecyclerView;->asInterface:Lo/setFrom;

    .line 47
    iget-object v1, p0, Lo/onAttachedToRecyclerView$onPostMessage$onPostMessage;->onNavigationEvent:Lo/onAttachedToRecyclerView$onPostMessage;

    iget-object v1, v1, Lo/onAttachedToRecyclerView$onPostMessage;->ICustomTabsCallback:Lo/onAttachedToRecyclerView;

    .line 5013
    iget-object v1, v1, Lo/onAttachedToRecyclerView;->asInterface:Lo/setFrom;

    .line 47
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p1

    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Lo/setFrom;->setTranslationY(F)V

    return-void

    .line 45
    :cond_0
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
