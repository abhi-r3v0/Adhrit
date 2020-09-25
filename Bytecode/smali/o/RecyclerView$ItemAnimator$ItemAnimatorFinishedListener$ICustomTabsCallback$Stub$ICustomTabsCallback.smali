.class final Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$ICustomTabsCallback$Stub$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$ICustomTabsCallback$Stub;
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
        "\u0000 \n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0004\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "onClick",
        "com/dreamplug/fabrik/ui/max/MaxLandingFragment$observeData$1$1$1$1",
        "com/dreamplug/fabrik/ui/max/MaxLandingFragment$observeData$1$$special$$inlined$apply$lambda$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onPostMessage:Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$ICustomTabsCallback$Stub;


# direct methods
.method constructor <init>(Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$ICustomTabsCallback$Stub;)V
    .locals 0

    iput-object p1, p0, Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$ICustomTabsCallback$Stub$ICustomTabsCallback;->onPostMessage:Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$ICustomTabsCallback$Stub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 140
    iget-object p1, p0, Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$ICustomTabsCallback$Stub$ICustomTabsCallback;->onPostMessage:Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$ICustomTabsCallback$Stub;

    iget-object p1, p1, Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->loaderView:I

    invoke-virtual {p1, v0}, Lo/getReenterTransition;->extraCallback(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onDestroyView;

    invoke-static {p1}, Lo/prependViewToAllSpans;->onNavigationEvent(Lo/prependViewToAllSpans;)V

    .line 141
    iget-object p1, p0, Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$ICustomTabsCallback$Stub$ICustomTabsCallback;->onPostMessage:Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$ICustomTabsCallback$Stub;

    iget-object p1, p1, Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$ICustomTabsCallback$Stub;->ICustomTabsCallback:Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

    invoke-static {p1}, Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;->ICustomTabsCallback(Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;)Lo/setMeasureSpecs;

    move-result-object p1

    .line 2000
    iget-object v0, p1, Lo/setMeasureSpecs;->extraCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setRecyclerView;

    .line 1020
    invoke-interface {v0}, Lo/setRecyclerView;->onMessageChannelReady()Lo/clearScrap;

    move-result-object v0

    iget-object p1, p1, Lo/setMeasureSpecs;->ICustomTabsCallback:Lo/setMeasureSpecs$onMessageChannelReady;

    check-cast p1, Lo/getScrapOrCachedViewForId;

    invoke-interface {v0, p1}, Lo/clearScrap;->ICustomTabsCallback(Lo/getScrapOrCachedViewForId;)V

    return-void
.end method
