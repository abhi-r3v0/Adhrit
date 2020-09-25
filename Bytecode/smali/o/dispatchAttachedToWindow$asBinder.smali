.class public final Lo/dispatchAttachedToWindow$asBinder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/dispatchAttachedToWindow;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001a\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0008\u0005\n\u0002\u0008\u0005\n\u0002\u0008\u0005\n\u0002\u0008\u0006\u0010\u0000\u001a\u00020\u0001\"\u0004\u0008\u0000\u0010\u00022\u000e\u0010\u0003\u001a\n \u0004*\u0004\u0018\u0001H\u0002H\u0002H\n\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "T",
        "t",
        "kotlin.jvm.PlatformType",
        "onChanged",
        "(Ljava/lang/Object;)V",
        "androidx/lifecycle/LiveDataKt$observe$wrappedObserver$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/dispatchAttachedToWindow;


# direct methods
.method public constructor <init>(Lo/dispatchAttachedToWindow;)V
    .locals 0

    iput-object p1, p0, Lo/dispatchAttachedToWindow$asBinder;->onMessageChannelReady:Lo/dispatchAttachedToWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 47
    check-cast p1, Ljava/util/List;

    .line 52
    sget-object v0, Lo/getTrackTintList;->extraCallback:Lo/getTrackTintList;

    invoke-static {}, Lo/getTrackTintList;->newSession()Z

    move-result v0

    if-nez v0, :cond_2

    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lo/dispatchAttachedToWindow$asBinder;->onMessageChannelReady:Lo/dispatchAttachedToWindow;

    invoke-static {v0}, Lo/dispatchAttachedToWindow;->onPostMessage(Lo/dispatchAttachedToWindow;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 53
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    sget-object v1, Lo/dispatchAttachedToWindow$updateVisuals;->onMessageChannelReady:Lo/dispatchAttachedToWindow$updateVisuals;

    check-cast v1, Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 56
    iget-object v0, p0, Lo/dispatchAttachedToWindow$asBinder;->onMessageChannelReady:Lo/dispatchAttachedToWindow;

    invoke-static {v0}, Lo/dispatchAttachedToWindow;->extraCallback(Lo/dispatchAttachedToWindow;)V

    .line 58
    :cond_2
    iget-object v0, p0, Lo/dispatchAttachedToWindow$asBinder;->onMessageChannelReady:Lo/dispatchAttachedToWindow;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->loaderView:I

    invoke-virtual {v0, v1}, Lo/dispatchAttachedToWindow;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onDestroyView;

    invoke-virtual {v0}, Lo/prependViewToAllSpans;->ICustomTabsCallback()V

    .line 59
    iget-object v0, p0, Lo/dispatchAttachedToWindow$asBinder;->onMessageChannelReady:Lo/dispatchAttachedToWindow;

    invoke-static {v0}, Lo/dispatchAttachedToWindow;->onMessageChannelReady(Lo/dispatchAttachedToWindow;)Lo/dispatchDetachedFromWindow;

    invoke-static {}, Lo/dispatchDetachedFromWindow;->onPostMessage()Lo/setActive;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/Object;)V

    .line 60
    iget-object v0, p0, Lo/dispatchAttachedToWindow$asBinder;->onMessageChannelReady:Lo/dispatchAttachedToWindow;

    invoke-static {v0}, Lo/dispatchAttachedToWindow;->onTransact(Lo/dispatchAttachedToWindow;)Lo/repositionToWrapContentIfNecessary;

    move-result-object v0

    const-string v1, "list"

    invoke-static {p1, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "value"

    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2000
    iget-object v0, v0, Lo/hasGapsToFix;->onNavigationEvent:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/checkSpanForGap;

    .line 1038
    invoke-virtual {v0, p1}, Lo/checkSpanForGap;->extraCallback(Ljava/util/List;)V

    return-void
.end method
