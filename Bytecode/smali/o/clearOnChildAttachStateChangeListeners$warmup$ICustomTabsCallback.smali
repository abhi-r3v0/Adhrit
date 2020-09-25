.class final Lo/clearOnChildAttachStateChangeListeners$warmup$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/clearOnChildAttachStateChangeListeners$warmup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
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
        "run",
        "com/dreamplug/fabrik/ui/lifestyle/leaderboard/LeaderBoardFragment$onViewCreated$4$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic extraCallback:Lo/clearOnChildAttachStateChangeListeners$warmup;

.field private synthetic onNavigationEvent:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lo/clearOnChildAttachStateChangeListeners$warmup;)V
    .locals 0

    iput-object p1, p0, Lo/clearOnChildAttachStateChangeListeners$warmup$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/String;

    iput-object p2, p0, Lo/clearOnChildAttachStateChangeListeners$warmup$ICustomTabsCallback;->extraCallback:Lo/clearOnChildAttachStateChangeListeners$warmup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 193
    sget-object v0, Lo/setUseCompatPadding;->onMessageChannelReady:Lo/setUseCompatPadding;

    iget-object v0, p0, Lo/clearOnChildAttachStateChangeListeners$warmup$ICustomTabsCallback;->extraCallback:Lo/clearOnChildAttachStateChangeListeners$warmup;

    iget-object v0, v0, Lo/clearOnChildAttachStateChangeListeners$warmup;->onNavigationEvent:Lo/clearOnChildAttachStateChangeListeners;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->shareableLayout:I

    invoke-virtual {v0, v1}, Lo/clearOnChildAttachStateChangeListeners;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onChildrenLoaded;

    const-string/jumbo v1, "shareableLayout"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Lo/setUseCompatPadding;->onMessageChannelReady(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 194
    sget-object v1, Lo/setUseCompatPadding;->onMessageChannelReady:Lo/setUseCompatPadding;

    iget-object v1, p0, Lo/clearOnChildAttachStateChangeListeners$warmup$ICustomTabsCallback;->extraCallback:Lo/clearOnChildAttachStateChangeListeners$warmup;

    iget-object v1, v1, Lo/clearOnChildAttachStateChangeListeners$warmup;->onNavigationEvent:Lo/clearOnChildAttachStateChangeListeners;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lo/access$3000;->extraCallback()V

    :cond_0
    const-string v2, "context!!"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Lo/setUseCompatPadding;->onMessageChannelReady(Landroid/content/Context;)Ljava/io/File;

    move-result-object v1

    .line 195
    sget-object v2, Lo/setUseCompatPadding;->onMessageChannelReady:Lo/setUseCompatPadding;

    const-string v2, "leaderboard_screenshot.jpg"

    invoke-static {v0, v2, v1}, Lo/setUseCompatPadding;->onMessageChannelReady(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    .line 196
    iget-object v0, p0, Lo/clearOnChildAttachStateChangeListeners$warmup$ICustomTabsCallback;->extraCallback:Lo/clearOnChildAttachStateChangeListeners$warmup;

    iget-object v0, v0, Lo/clearOnChildAttachStateChangeListeners$warmup;->onNavigationEvent:Lo/clearOnChildAttachStateChangeListeners;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v5, p0, Lo/clearOnChildAttachStateChangeListeners$warmup$ICustomTabsCallback;->onNavigationEvent:Ljava/lang/String;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x1c

    invoke-static/range {v3 .. v8}, Lo/extraCallback;->extraCallback(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;ZLjava/lang/String;I)V

    :cond_1
    return-void
.end method
