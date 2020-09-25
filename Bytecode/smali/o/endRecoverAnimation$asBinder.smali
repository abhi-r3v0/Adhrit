.class final Lo/endRecoverAnimation$asBinder;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/endRecoverAnimation;
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
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanManagementResponse;",
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
        "Lcom/dreamplug/fabrik/ui/lending/model/LoanManagementResponse;",
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
.field final synthetic onPostMessage:Lo/endRecoverAnimation;


# direct methods
.method constructor <init>(Lo/endRecoverAnimation;)V
    .locals 0

    iput-object p1, p0, Lo/endRecoverAnimation$asBinder;->onPostMessage:Lo/endRecoverAnimation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 2

    .line 38
    check-cast p1, Lcom/dreamplug/fabrik/ui/lending/model/LoanManagementResponse;

    .line 1113
    iget-object v0, p0, Lo/endRecoverAnimation$asBinder;->onPostMessage:Lo/endRecoverAnimation;

    invoke-static {v0}, Lo/endRecoverAnimation;->onNavigationEvent(Lo/endRecoverAnimation;)Lo/recycleFromEnd;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-object v1, Lo/findLastCompletelyVisibleItemPositions;->ICustomTabsCallback:Lo/findLastCompletelyVisibleItemPositions;

    invoke-virtual {v0, v1}, Lo/recycleFromEnd;->setButtonState(Lo/findLastCompletelyVisibleItemPositions;)V

    .line 1114
    :cond_0
    iget-object v0, p0, Lo/endRecoverAnimation$asBinder;->onPostMessage:Lo/endRecoverAnimation;

    invoke-static {v0}, Lo/endRecoverAnimation;->onNavigationEvent(Lo/endRecoverAnimation;)Lo/recycleFromEnd;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Lo/endRecoverAnimation$asBinder$3;

    invoke-direct {v1, p0, p1}, Lo/endRecoverAnimation$asBinder$3;-><init>(Lo/endRecoverAnimation$asBinder;Lcom/dreamplug/fabrik/ui/lending/model/LoanManagementResponse;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo/recycleFromEnd;->setAnimationEndRunnable(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
