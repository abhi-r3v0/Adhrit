.class final Lo/setExitSharedElementCallback$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setExitSharedElementCallback;-><init>()V
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
        "Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitAddMandateResponse;",
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
        "Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitAddMandateResponse;",
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
.field final synthetic onNavigationEvent:Lo/setExitSharedElementCallback;


# direct methods
.method constructor <init>(Lo/setExitSharedElementCallback;)V
    .locals 0

    iput-object p1, p0, Lo/setExitSharedElementCallback$onPostMessage;->onNavigationEvent:Lo/setExitSharedElementCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 2

    .line 57
    check-cast p1, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitAddMandateResponse;

    if-eqz p1, :cond_0

    .line 1088
    iget-object v0, p0, Lo/setExitSharedElementCallback$onPostMessage;->onNavigationEvent:Lo/setExitSharedElementCallback;

    invoke-static {v0}, Lo/setExitSharedElementCallback;->extraCallback(Lo/setExitSharedElementCallback;)Lo/recycleFromEnd;

    move-result-object v0

    new-instance v1, Lo/setExitSharedElementCallback$onPostMessage$4;

    invoke-direct {v1, p0, p1}, Lo/setExitSharedElementCallback$onPostMessage$4;-><init>(Lo/setExitSharedElementCallback$onPostMessage;Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitAddMandateResponse;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo/recycleFromEnd;->setAnimationEndRunnable(Ljava/lang/Runnable;)V

    .line 1100
    iget-object p1, p0, Lo/setExitSharedElementCallback$onPostMessage;->onNavigationEvent:Lo/setExitSharedElementCallback;

    invoke-static {p1}, Lo/setExitSharedElementCallback;->extraCallback(Lo/setExitSharedElementCallback;)Lo/recycleFromEnd;

    move-result-object p1

    sget-object v0, Lo/findLastCompletelyVisibleItemPositions;->ICustomTabsCallback:Lo/findLastCompletelyVisibleItemPositions;

    invoke-virtual {p1, v0}, Lo/recycleFromEnd;->setButtonState(Lo/findLastCompletelyVisibleItemPositions;)V

    return-void

    .line 1102
    :cond_0
    iget-object p1, p0, Lo/setExitSharedElementCallback$onPostMessage;->onNavigationEvent:Lo/setExitSharedElementCallback;

    invoke-static {p1}, Lo/setExitSharedElementCallback;->extraCallback(Lo/setExitSharedElementCallback;)Lo/recycleFromEnd;

    move-result-object p1

    sget-object v0, Lo/findLastCompletelyVisibleItemPositions;->onNavigationEvent:Lo/findLastCompletelyVisibleItemPositions;

    invoke-virtual {p1, v0}, Lo/recycleFromEnd;->setButtonState(Lo/findLastCompletelyVisibleItemPositions;)V

    return-void
.end method
