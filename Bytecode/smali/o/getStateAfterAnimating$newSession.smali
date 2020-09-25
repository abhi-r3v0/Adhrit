.class final Lo/getStateAfterAnimating$newSession;
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
.field private synthetic onPostMessage:Lo/getStateAfterAnimating;


# direct methods
.method constructor <init>(Lo/getStateAfterAnimating;)V
    .locals 0

    iput-object p1, p0, Lo/getStateAfterAnimating$newSession;->onPostMessage:Lo/getStateAfterAnimating;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lo/access$1502;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final synthetic onMessageChannelReady()Ljava/lang/Object;
    .locals 5

    .line 1190
    iget-object v0, p0, Lo/getStateAfterAnimating$newSession;->onPostMessage:Lo/getStateAfterAnimating;

    invoke-virtual {v0}, Lo/getStateAfterAnimating;->asBinder()Lo/ThemeUtils;

    move-result-object v0

    iget-object v0, v0, Lo/ThemeUtils;->newSession:Lo/onChildrenLoaded;

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lo/getStateAfterAnimating$newSession;->onPostMessage:Lo/getStateAfterAnimating;

    invoke-static {v1}, Lo/getStateAfterAnimating;->ICustomTabsCallback(Lo/getStateAfterAnimating;)Lo/fromQueueItem;

    move-result-object v1

    invoke-static {v0, v1}, Lo/MediaSessionCompat$QueueItem;->onPostMessage(Landroid/view/ViewGroup;Lo/fromQueueItem;)V

    .line 1191
    iget-object v0, p0, Lo/getStateAfterAnimating$newSession;->onPostMessage:Lo/getStateAfterAnimating;

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

    .line 1192
    iget-object v0, p0, Lo/getStateAfterAnimating$newSession;->onPostMessage:Lo/getStateAfterAnimating;

    invoke-virtual {v0}, Lo/getStateAfterAnimating;->asBinder()Lo/ThemeUtils;

    move-result-object v0

    iget-object v0, v0, Lo/ThemeUtils;->extraCommand:Landroid/widget/ImageView;

    const-string v3, "binding.noCardsFallbackImage"

    invoke-static {v0, v3}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3009
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1193
    iget-object v0, p0, Lo/getStateAfterAnimating$newSession;->onPostMessage:Lo/getStateAfterAnimating;

    invoke-virtual {v0}, Lo/getStateAfterAnimating;->asBinder()Lo/ThemeUtils;

    move-result-object v0

    iget-object v0, v0, Lo/ThemeUtils;->onNavigationEvent:Landroid/widget/FrameLayout;

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v3, Lo/MediaSessionCompat$OnActiveChangeListener;

    const/16 v4, 0x30

    invoke-direct {v3, v4}, Lo/MediaSessionCompat$OnActiveChangeListener;-><init>(I)V

    check-cast v3, Lo/fromQueueItem;

    invoke-static {v0, v3}, Lo/MediaSessionCompat$QueueItem;->onPostMessage(Landroid/view/ViewGroup;Lo/fromQueueItem;)V

    .line 1194
    iget-object v0, p0, Lo/getStateAfterAnimating$newSession;->onPostMessage:Lo/getStateAfterAnimating;

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
