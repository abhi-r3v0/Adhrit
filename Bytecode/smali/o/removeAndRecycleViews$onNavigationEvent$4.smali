.class public final Lo/removeAndRecycleViews$onNavigationEvent$4;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/allow$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/removeAndRecycleViews$onNavigationEvent;
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
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lifestyle/holders/LifestyleTemplate5$playerEventListener$2$1",
        "Lcom/google/android/exoplayer2/Player$EventListener;",
        "onPlayerStateChanged",
        "",
        "playWhenReady",
        "",
        "playbackState",
        "",
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
.field private synthetic extraCallback:Lo/removeAndRecycleViews$onNavigationEvent;


# direct methods
.method constructor <init>(Lo/removeAndRecycleViews$onNavigationEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 229
    iput-object p1, p0, Lo/removeAndRecycleViews$onNavigationEvent$4;->extraCallback:Lo/removeAndRecycleViews$onNavigationEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Z)V
    .locals 0

    return-void
.end method

.method public final extraCallback(Lo/r;)V
    .locals 0

    return-void
.end method

.method public final extraCallback(Z)V
    .locals 0

    return-void
.end method

.method public final onMessageChannelReady(I)V
    .locals 0

    return-void
.end method

.method public final onMessageChannelReady(Lo/JuspaySessionToken;Lo/InstrumentDataJsonAdapter;)V
    .locals 0

    return-void
.end method

.method public final onMessageChannelReady(Z)V
    .locals 0

    return-void
.end method

.method public final onMessageChannelReady(ZI)V
    .locals 1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_3

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p1, :cond_2

    .line 234
    iget-object p1, p0, Lo/removeAndRecycleViews$onNavigationEvent$4;->extraCallback:Lo/removeAndRecycleViews$onNavigationEvent;

    iget-object p1, p1, Lo/removeAndRecycleViews$onNavigationEvent;->extraCallback:Lo/removeAndRecycleViews;

    invoke-static {p1}, Lo/removeAndRecycleViews;->onNavigationEvent(Lo/removeAndRecycleViews;)Lo/setSpeed;

    move-result-object p1

    invoke-virtual {p1}, Lo/setSpeed;->getAlpha()F

    move-result p1

    const/4 p2, 0x0

    cmpg-float p1, p1, p2

    if-eqz p1, :cond_1

    .line 235
    iget-object p1, p0, Lo/removeAndRecycleViews$onNavigationEvent$4;->extraCallback:Lo/removeAndRecycleViews$onNavigationEvent;

    iget-object p1, p1, Lo/removeAndRecycleViews$onNavigationEvent;->extraCallback:Lo/removeAndRecycleViews;

    invoke-static {p1}, Lo/removeAndRecycleViews;->onNavigationEvent(Lo/removeAndRecycleViews;)Lo/setSpeed;

    move-result-object p1

    invoke-virtual {p1}, Lo/setSpeed;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 236
    :cond_1
    iget-object p1, p0, Lo/removeAndRecycleViews$onNavigationEvent$4;->extraCallback:Lo/removeAndRecycleViews$onNavigationEvent;

    iget-object p1, p1, Lo/removeAndRecycleViews$onNavigationEvent;->extraCallback:Lo/removeAndRecycleViews;

    invoke-static {p1}, Lo/removeAndRecycleViews;->asInterface(Lo/removeAndRecycleViews;)Lo/getRemainingScrollVertical;

    move-result-object p1

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lo/getRemainingScrollVertical;->setVisibility(I)V

    goto :goto_0

    .line 238
    :cond_2
    iget-object p1, p0, Lo/removeAndRecycleViews$onNavigationEvent$4;->extraCallback:Lo/removeAndRecycleViews$onNavigationEvent;

    iget-object p1, p1, Lo/removeAndRecycleViews$onNavigationEvent;->extraCallback:Lo/removeAndRecycleViews;

    invoke-static {p1}, Lo/removeAndRecycleViews;->asInterface(Lo/removeAndRecycleViews;)Lo/getRemainingScrollVertical;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lo/getRemainingScrollVertical;->setVisibility(I)V

    .line 240
    :goto_0
    iget-object p1, p0, Lo/removeAndRecycleViews$onNavigationEvent$4;->extraCallback:Lo/removeAndRecycleViews$onNavigationEvent;

    iget-object p1, p1, Lo/removeAndRecycleViews$onNavigationEvent;->extraCallback:Lo/removeAndRecycleViews;

    invoke-static {p1}, Lo/removeAndRecycleViews;->asBinder(Lo/removeAndRecycleViews;)Lo/onDestroyView;

    move-result-object p1

    invoke-virtual {p1}, Lo/prependViewToAllSpans;->ICustomTabsCallback()V

    return-void

    .line 243
    :cond_3
    iget-object p1, p0, Lo/removeAndRecycleViews$onNavigationEvent$4;->extraCallback:Lo/removeAndRecycleViews$onNavigationEvent;

    iget-object p1, p1, Lo/removeAndRecycleViews$onNavigationEvent;->extraCallback:Lo/removeAndRecycleViews;

    invoke-static {p1}, Lo/removeAndRecycleViews;->asBinder(Lo/removeAndRecycleViews;)Lo/onDestroyView;

    move-result-object p1

    invoke-static {p1}, Lo/prependViewToAllSpans;->onNavigationEvent(Lo/prependViewToAllSpans;)V

    :goto_1
    return-void
.end method

.method public final onNavigationEvent(Lcom/google/android/exoplayer2/ExoPlaybackException;)V
    .locals 0

    return-void
.end method

.method public final onPostMessage()V
    .locals 0

    return-void
.end method

.method public final onPostMessage(I)V
    .locals 0

    return-void
.end method

.method public final onPostMessage(Lo/t;Ljava/lang/Object;I)V
    .locals 0

    return-void
.end method
