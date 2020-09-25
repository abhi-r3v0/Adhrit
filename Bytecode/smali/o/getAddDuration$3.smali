.class final Lo/getAddDuration$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/getAddDuration;-><init>(Lo/getViewPosition;)V
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
        "Lo/getThumbTintList<",
        "+",
        "Lo/getRemoveDuration;",
        ">;>;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u001a\u0010\u0002\u001a\u0016\u0012\u0004\u0012\u00020\u0004 \u0005*\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/dreamplug/androidapp/core/Event;",
        "Lcom/dreamplug/fabrik/ui/main/navigation/NavigationData;",
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
.field private synthetic onPostMessage:Lo/getAddDuration;


# direct methods
.method constructor <init>(Lo/getAddDuration;)V
    .locals 0

    iput-object p1, p0, Lo/getAddDuration$3;->onPostMessage:Lo/getAddDuration;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 3

    .line 90
    check-cast p1, Lo/getThumbTintList;

    if-eqz p1, :cond_4

    .line 3011
    iget-boolean v0, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 3015
    :cond_0
    iput-boolean v1, p1, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    .line 3016
    iget-object p1, p1, Lo/throwIfInMutationOperation;->onPostMessage:Ljava/lang/Object;

    .line 2102
    :goto_0
    check-cast p1, Lo/getRemoveDuration;

    if-eqz p1, :cond_4

    .line 2103
    iget-object v0, p0, Lo/getAddDuration$3;->onPostMessage:Lo/getAddDuration;

    .line 3090
    iget-object v0, v0, Lo/getAddDuration;->onPostMessage:Lo/getViewPosition;

    .line 2103
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    const-string v2, "fragment.childFragmentManager"

    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3723
    iget-boolean v2, v0, Lo/requestExtraBinder;->updateVisuals:Z

    if-nez v2, :cond_2

    iget-boolean v0, v0, Lo/requestExtraBinder;->mayLaunchUrl:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 2104
    iget-object v0, p0, Lo/getAddDuration$3;->onPostMessage:Lo/getAddDuration;

    .line 4090
    invoke-virtual {v0, p1}, Lo/getAddDuration;->extraCallback(Lo/getRemoveDuration;)V

    return-void

    .line 2106
    :cond_3
    iget-object v0, p0, Lo/getAddDuration$3;->onPostMessage:Lo/getAddDuration;

    .line 6000
    iget-object v0, v0, Lo/getAddDuration;->extraCallback:Lo/isSameListener;

    invoke-interface {v0}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getMoveDuration;

    const-string v1, "navigationData"

    .line 2106
    invoke-static {p1, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6551
    invoke-virtual {v0, p1}, Lo/getMoveDuration;->extraCallback(Lo/getRemoveDuration;)V

    :cond_4
    return-void
.end method
