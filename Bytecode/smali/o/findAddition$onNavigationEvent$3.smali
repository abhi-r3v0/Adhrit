.class public final Lo/findAddition$onNavigationEvent$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/allow$onNavigationEvent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/findAddition$onNavigationEvent;
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
        "com/dreamplug/fabrik/ui/digest/templates/StoryView8$playerEventListener$2$1",
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
.field private synthetic onMessageChannelReady:Lo/findAddition$onNavigationEvent;


# direct methods
.method constructor <init>(Lo/findAddition$onNavigationEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lo/findAddition$onNavigationEvent$3;->onMessageChannelReady:Lo/findAddition$onNavigationEvent;

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
    .locals 2

    const/4 p1, 0x2

    const-string/jumbo v0, "stories"

    const/4 v1, 0x0

    if-eq p2, p1, :cond_2

    const/4 p1, 0x3

    if-eq p2, p1, :cond_0

    goto/16 :goto_0

    .line 34
    :cond_0
    iget-object p1, p0, Lo/findAddition$onNavigationEvent$3;->onMessageChannelReady:Lo/findAddition$onNavigationEvent;

    iget-object p1, p1, Lo/findAddition$onNavigationEvent;->ICustomTabsCallback:Lo/findAddition;

    .line 1022
    iput-boolean v1, p1, Lo/findAddition;->onNavigationEvent:Z

    .line 35
    iget-object p1, p0, Lo/findAddition$onNavigationEvent$3;->onMessageChannelReady:Lo/findAddition$onNavigationEvent;

    iget-object p1, p1, Lo/findAddition$onNavigationEvent;->ICustomTabsCallback:Lo/findAddition;

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->playerView:I

    invoke-virtual {p1, p2}, Lo/calculateDiff;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/OrderDetailsJsonAdapter;

    const-string p2, "playerView"

    invoke-static {p1, p2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 36
    iget-object p1, p0, Lo/findAddition$onNavigationEvent$3;->onMessageChannelReady:Lo/findAddition$onNavigationEvent;

    iget-object p1, p1, Lo/findAddition$onNavigationEvent;->ICustomTabsCallback:Lo/findAddition;

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->videoLoader:I

    invoke-virtual {p1, p2}, Lo/calculateDiff;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onDestroyView;

    invoke-virtual {p1}, Lo/prependViewToAllSpans;->ICustomTabsCallback()V

    const-string/jumbo p1, "video ready"

    .line 37
    invoke-static {v0, p1}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    iget-object p1, p0, Lo/findAddition$onNavigationEvent$3;->onMessageChannelReady:Lo/findAddition$onNavigationEvent;

    iget-object p1, p1, Lo/findAddition$onNavigationEvent;->ICustomTabsCallback:Lo/findAddition;

    .line 2022
    iget-boolean p1, p1, Lo/findAddition;->ICustomTabsCallback:Z

    if-nez p1, :cond_1

    .line 38
    iget-object p1, p0, Lo/findAddition$onNavigationEvent$3;->onMessageChannelReady:Lo/findAddition$onNavigationEvent;

    iget-object p1, p1, Lo/findAddition$onNavigationEvent;->ICustomTabsCallback:Lo/findAddition;

    .line 3022
    iget-boolean p1, p1, Lo/findAddition;->onTransact:Z

    if-eqz p1, :cond_1

    .line 39
    iget-object p1, p0, Lo/findAddition$onNavigationEvent$3;->onMessageChannelReady:Lo/findAddition$onNavigationEvent;

    iget-object p1, p1, Lo/findAddition$onNavigationEvent;->onMessageChannelReady:Lo/endAnimations;

    iget-object p2, p0, Lo/findAddition$onNavigationEvent$3;->onMessageChannelReady:Lo/findAddition$onNavigationEvent;

    iget-object p2, p2, Lo/findAddition$onNavigationEvent;->ICustomTabsCallback:Lo/findAddition;

    .line 4022
    iget-boolean p2, p2, Lo/findAddition;->ICustomTabsCallback:Z

    .line 39
    invoke-interface {p1, p2}, Lo/endAnimations;->extraCallback(Z)V

    .line 41
    :cond_1
    iget-object p1, p0, Lo/findAddition$onNavigationEvent$3;->onMessageChannelReady:Lo/findAddition$onNavigationEvent;

    iget-object p1, p1, Lo/findAddition$onNavigationEvent;->ICustomTabsCallback:Lo/findAddition;

    .line 5022
    iput-boolean v1, p1, Lo/findAddition;->ICustomTabsCallback:Z

    return-void

    .line 44
    :cond_2
    iget-object p1, p0, Lo/findAddition$onNavigationEvent$3;->onMessageChannelReady:Lo/findAddition$onNavigationEvent;

    iget-object p1, p1, Lo/findAddition$onNavigationEvent;->ICustomTabsCallback:Lo/findAddition;

    const/4 p2, 0x1

    .line 6022
    iput-boolean p2, p1, Lo/findAddition;->onNavigationEvent:Z

    .line 45
    iget-object p1, p0, Lo/findAddition$onNavigationEvent$3;->onMessageChannelReady:Lo/findAddition$onNavigationEvent;

    iget-object p1, p1, Lo/findAddition$onNavigationEvent;->ICustomTabsCallback:Lo/findAddition;

    sget p2, Lo/getSwitchMinWidth$onPostMessage;->videoLoader:I

    invoke-virtual {p1, p2}, Lo/calculateDiff;->onPostMessage(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lo/onDestroyView;

    invoke-static {p1}, Lo/prependViewToAllSpans;->onNavigationEvent(Lo/prependViewToAllSpans;)V

    const-string/jumbo p1, "video buffering"

    .line 46
    invoke-static {v0, p1}, Lo/replaceAll;->ICustomTabsCallback(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iget-object p1, p0, Lo/findAddition$onNavigationEvent$3;->onMessageChannelReady:Lo/findAddition$onNavigationEvent;

    iget-object p1, p1, Lo/findAddition$onNavigationEvent;->ICustomTabsCallback:Lo/findAddition;

    .line 7022
    iget-boolean p1, p1, Lo/findAddition;->ICustomTabsCallback:Z

    if-nez p1, :cond_3

    .line 47
    iget-object p1, p0, Lo/findAddition$onNavigationEvent$3;->onMessageChannelReady:Lo/findAddition$onNavigationEvent;

    iget-object p1, p1, Lo/findAddition$onNavigationEvent;->ICustomTabsCallback:Lo/findAddition;

    .line 8022
    iget-boolean p1, p1, Lo/findAddition;->onTransact:Z

    if-eqz p1, :cond_3

    .line 48
    iget-object p1, p0, Lo/findAddition$onNavigationEvent$3;->onMessageChannelReady:Lo/findAddition$onNavigationEvent;

    iget-object p1, p1, Lo/findAddition$onNavigationEvent;->onMessageChannelReady:Lo/endAnimations;

    iget-object p2, p0, Lo/findAddition$onNavigationEvent$3;->onMessageChannelReady:Lo/findAddition$onNavigationEvent;

    iget-object p2, p2, Lo/findAddition$onNavigationEvent;->ICustomTabsCallback:Lo/findAddition;

    .line 9022
    iget-boolean p2, p2, Lo/findAddition;->ICustomTabsCallback:Z

    .line 48
    invoke-interface {p1, p2}, Lo/endAnimations;->onMessageChannelReady(Z)V

    .line 50
    :cond_3
    iget-object p1, p0, Lo/findAddition$onNavigationEvent$3;->onMessageChannelReady:Lo/findAddition$onNavigationEvent;

    iget-object p1, p1, Lo/findAddition$onNavigationEvent;->ICustomTabsCallback:Lo/findAddition;

    .line 10022
    iput-boolean v1, p1, Lo/findAddition;->ICustomTabsCallback:Z

    :goto_0
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
