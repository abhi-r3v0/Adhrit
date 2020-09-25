.class final Lo/unregisterForContextMenu$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/unregisterForContextMenu;-><init>()V
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
        "Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentSetupResponse;",
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
        "Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentSetupResponse;",
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
.field final synthetic onPostMessage:Lo/unregisterForContextMenu;


# direct methods
.method constructor <init>(Lo/unregisterForContextMenu;)V
    .locals 0

    iput-object p1, p0, Lo/unregisterForContextMenu$onMessageChannelReady;->onPostMessage:Lo/unregisterForContextMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 1

    .line 43
    check-cast p1, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentSetupResponse;

    if-eqz p1, :cond_1

    .line 2009
    iget-object p1, p1, Lcom/dreamplug/fabrik/ui/autodebit/AutoDebitInstrumentSetupResponse;->onMessageChannelReady:Ljava/lang/Boolean;

    .line 1117
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {p1, v0}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1118
    iget-object p1, p0, Lo/unregisterForContextMenu$onMessageChannelReady;->onPostMessage:Lo/unregisterForContextMenu;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->ctaButton1:I

    invoke-virtual {p1, v0}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/recycleFromEnd;

    if-nez p1, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    new-instance v0, Lo/unregisterForContextMenu$onMessageChannelReady$5;

    invoke-direct {v0, p0}, Lo/unregisterForContextMenu$onMessageChannelReady$5;-><init>(Lo/unregisterForContextMenu$onMessageChannelReady;)V

    check-cast v0, Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lo/recycleFromEnd;->setAnimationEndRunnable(Ljava/lang/Runnable;)V

    .line 1123
    iget-object p1, p0, Lo/unregisterForContextMenu$onMessageChannelReady;->onPostMessage:Lo/unregisterForContextMenu;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->ctaButton1:I

    invoke-virtual {p1, v0}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/recycleFromEnd;

    sget-object v0, Lo/findLastCompletelyVisibleItemPositions;->ICustomTabsCallback:Lo/findLastCompletelyVisibleItemPositions;

    invoke-virtual {p1, v0}, Lo/recycleFromEnd;->setButtonState(Lo/findLastCompletelyVisibleItemPositions;)V

    return-void

    .line 1125
    :cond_1
    iget-object p1, p0, Lo/unregisterForContextMenu$onMessageChannelReady;->onPostMessage:Lo/unregisterForContextMenu;

    sget v0, Lo/getSwitchMinWidth$onPostMessage;->ctaButton1:I

    invoke-virtual {p1, v0}, Lo/zzc;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/recycleFromEnd;

    sget-object v0, Lo/findLastCompletelyVisibleItemPositions;->onNavigationEvent:Lo/findLastCompletelyVisibleItemPositions;

    invoke-virtual {p1, v0}, Lo/recycleFromEnd;->setButtonState(Lo/findLastCompletelyVisibleItemPositions;)V

    return-void
.end method
