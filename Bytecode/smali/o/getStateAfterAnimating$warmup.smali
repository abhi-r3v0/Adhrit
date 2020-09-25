.class final Lo/getStateAfterAnimating$warmup;
.super Lo/access$1502;
.source ""

# interfaces
.implements Lo/getServerTime;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getStateAfterAnimating;
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "invoke"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Lo/getStateAfterAnimating;


# direct methods
.method constructor <init>(Lo/getStateAfterAnimating;)V
    .locals 0

    iput-object p1, p0, Lo/getStateAfterAnimating$warmup;->ICustomTabsCallback:Lo/getStateAfterAnimating;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 5

    .line 1220
    iget-object v0, p0, Lo/getStateAfterAnimating$warmup;->ICustomTabsCallback:Lo/getStateAfterAnimating;

    invoke-virtual {v0}, Lo/getStateAfterAnimating;->asBinder()Lo/ThemeUtils;

    move-result-object v0

    iget-object v0, v0, Lo/ThemeUtils;->newSession:Lo/onChildrenLoaded;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lo/getStateAfterAnimating$warmup;->ICustomTabsCallback:Lo/getStateAfterAnimating;

    invoke-static {v1}, Lo/getStateAfterAnimating;->ICustomTabsCallback(Lo/getStateAfterAnimating;)Lo/fromQueueItem;

    move-result-object v1

    invoke-static {v0, v1}, Lo/MediaSessionCompat$QueueItem;->onPostMessage(Landroid/view/ViewGroup;Lo/fromQueueItem;)V

    .line 1221
    iget-object v0, p0, Lo/getStateAfterAnimating$warmup;->ICustomTabsCallback:Lo/getStateAfterAnimating;

    invoke-virtual {v0}, Lo/getStateAfterAnimating;->asBinder()Lo/ThemeUtils;

    move-result-object v0

    iget-object v0, v0, Lo/ThemeUtils;->IPostMessageService$Stub:Lo/getNextSpan;

    const-string v1, "binding.topLayout"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    const-string v1, "$this$visible"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 2009
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1222
    iget-object v0, p0, Lo/getStateAfterAnimating$warmup;->ICustomTabsCallback:Lo/getStateAfterAnimating;

    invoke-virtual {v0}, Lo/getStateAfterAnimating;->asBinder()Lo/ThemeUtils;

    move-result-object v0

    iget-object v0, v0, Lo/ThemeUtils;->mayLaunchUrl:Lo/getNextSpan;

    const-string v3, "binding.overlayLayout"

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3009
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1223
    iget-object v0, p0, Lo/getStateAfterAnimating$warmup;->ICustomTabsCallback:Lo/getStateAfterAnimating;

    invoke-virtual {v0}, Lo/getStateAfterAnimating;->asBinder()Lo/ThemeUtils;

    move-result-object v0

    iget-object v0, v0, Lo/ThemeUtils;->ICustomTabsCallback$Stub:Landroid/widget/FrameLayout;

    const-string v3, "binding.cardsLayout"

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    iget-object v3, p0, Lo/getStateAfterAnimating$warmup;->ICustomTabsCallback:Lo/getStateAfterAnimating;

    invoke-static {v3}, Lo/getStateAfterAnimating;->onNavigationEvent(Lo/getStateAfterAnimating;)I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    .line 1385
    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1224
    iget-object v0, p0, Lo/getStateAfterAnimating$warmup;->ICustomTabsCallback:Lo/getStateAfterAnimating;

    invoke-virtual {v0}, Lo/getStateAfterAnimating;->asBinder()Lo/ThemeUtils;

    move-result-object v0

    iget-object v0, v0, Lo/ThemeUtils;->onNavigationEvent:Landroid/widget/FrameLayout;

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v3, Lo/MediaSessionCompat$OnActiveChangeListener;

    const/16 v4, 0x30

    invoke-direct {v3, v4}, Lo/MediaSessionCompat$OnActiveChangeListener;-><init>(I)V

    check-cast v3, Lo/fromQueueItem;

    invoke-static {v0, v3}, Lo/MediaSessionCompat$QueueItem;->onPostMessage(Landroid/view/ViewGroup;Lo/fromQueueItem;)V

    .line 1225
    iget-object v0, p0, Lo/getStateAfterAnimating$warmup;->ICustomTabsCallback:Lo/getStateAfterAnimating;

    invoke-virtual {v0}, Lo/getStateAfterAnimating;->asBinder()Lo/ThemeUtils;

    move-result-object v0

    iget-object v0, v0, Lo/ThemeUtils;->onNavigationEvent:Landroid/widget/FrameLayout;

    const-string v3, "binding.backButton"

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4009
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 54
    sget-object v0, Lo/addWrites;->onPostMessage:Lo/addWrites;

    return-object v0
.end method
