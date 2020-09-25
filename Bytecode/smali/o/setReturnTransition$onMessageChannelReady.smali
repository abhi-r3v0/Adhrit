.class final Lo/setReturnTransition$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/setReturnTransition;-><init>()V
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
        "Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitConfigResponse;",
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
        "Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitConfigResponse;",
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
.field final synthetic onNavigationEvent:Lo/setReturnTransition;


# direct methods
.method constructor <init>(Lo/setReturnTransition;)V
    .locals 0

    iput-object p1, p0, Lo/setReturnTransition$onMessageChannelReady;->onNavigationEvent:Lo/setReturnTransition;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 2

    .line 40
    check-cast p1, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitConfigResponse;

    .line 1053
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    .line 2012
    iget-object v0, p1, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitConfigResponse;->onPostMessage:Lcom/dreamplug/fabrik/ui/autodebit/Nb;

    if-eqz v0, :cond_0

    .line 2020
    iget-object v0, v0, Lcom/dreamplug/fabrik/ui/autodebit/Nb;->onPostMessage:Lcom/dreamplug/fabrik/ui/autodebit/Templates;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1053
    :goto_0
    invoke-static {v0}, Lo/setTrackTintMode;->extraCallback(Lcom/dreamplug/fabrik/ui/autodebit/Templates;)V

    .line 1054
    iget-object v0, p0, Lo/setReturnTransition$onMessageChannelReady;->onNavigationEvent:Lo/setReturnTransition;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->ctaButton:I

    invoke-virtual {v0, v1}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/recycleFromEnd;

    new-instance v1, Lo/setReturnTransition$onMessageChannelReady$1;

    invoke-direct {v1, p0, p1}, Lo/setReturnTransition$onMessageChannelReady$1;-><init>(Lo/setReturnTransition$onMessageChannelReady;Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitConfigResponse;)V

    check-cast v1, Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lo/recycleFromEnd;->setAnimationEndRunnable(Ljava/lang/Runnable;)V

    .line 1089
    iget-object p1, p0, Lo/setReturnTransition$onMessageChannelReady;->onNavigationEvent:Lo/setReturnTransition;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->ctaButton:I

    invoke-virtual {p1, v0}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/recycleFromEnd;

    sget-object v0, Lo/findLastCompletelyVisibleItemPositions;->ICustomTabsCallback:Lo/findLastCompletelyVisibleItemPositions;

    invoke-virtual {p1, v0}, Lo/recycleFromEnd;->setButtonState(Lo/findLastCompletelyVisibleItemPositions;)V

    return-void
.end method
