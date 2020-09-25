.class final Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$ICustomTabsCallback$Stub$Proxy;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lo/access$1502;",
        "Lo/getServerTime<",
        "Lo/addWrites;",
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
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002\u00a8\u0006\u0003"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke",
        "com/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$render$1$2"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;


# direct methods
.method constructor <init>(Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$ICustomTabsCallback$Stub$Proxy;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 3

    .line 1363
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$ICustomTabsCallback$Stub$Proxy;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->ICustomTabsCallback(Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;Lo/endBatchedUpdates;)V

    .line 1364
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$ICustomTabsCallback$Stub$Proxy;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->timerText:I

    invoke-virtual {v0, v1}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$ICustomTabsCallback$Stub$Proxy;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;

    invoke-static {v1}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onMessageChannelReady(Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1365
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$ICustomTabsCallback$Stub$Proxy;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->timerText:I

    invoke-virtual {v0, v1}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string/jumbo v1, "timerText"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1366
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$ICustomTabsCallback$Stub$Proxy;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;

    sget v2, Lo/getSwitchMinWidth$onPostMessage;->timerText:I

    invoke-virtual {v0, v2}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "00:00:00"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1367
    iget-object v0, p0, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment$ICustomTabsCallback$Stub$Proxy;->extraCallback:Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;

    invoke-static {v0}, Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;->onPostMessage(Lcom/dreamplug/fabrik/ui/lifestyle/game/player/GameWebViewFragment;)Lo/findTargetSnapPosition;

    move-result-object v0

    sget-object v1, Lo/getEnd;->ICustomTabsCallback:Lo/getEnd;

    check-cast v1, Lo/computeDistancePerChild;

    invoke-virtual {v0, v1}, Lo/findTargetSnapPosition;->onEvent(Lo/computeDistancePerChild;)V

    .line 60
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
