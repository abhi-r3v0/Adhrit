.class public final Lo/releaseGlows$ICustomTabsCallback$Stub$ICustomTabsCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setQueryRefinementEnabled;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/releaseGlows$ICustomTabsCallback$Stub;->onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V
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
        "\u0000\u001b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016J\u0008\u0010\u0005\u001a\u00020\u0003H\u0016\u00a8\u0006\u0006\u00b8\u0006\u0000"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/lifestyle/redemption/RewardRedeemDialogFragment$listItemClickListener$1$onClick$1$publishResult$1",
        "Lcom/cred/sproxlib/share/medium/sound/modulate/PublisherCallback;",
        "onFinish",
        "",
        "onSuccess",
        "onTimeout",
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
.field private synthetic ICustomTabsCallback:Lo/StaggeredGridLayoutManager;

.field private synthetic extraCallback:Ljava/lang/String;

.field private synthetic onPostMessage:Lo/releaseGlows$ICustomTabsCallback$Stub;


# direct methods
.method constructor <init>(Ljava/lang/String;Lo/releaseGlows$ICustomTabsCallback$Stub;Lo/StaggeredGridLayoutManager;)V
    .locals 0

    iput-object p1, p0, Lo/releaseGlows$ICustomTabsCallback$Stub$ICustomTabsCallback;->extraCallback:Ljava/lang/String;

    iput-object p2, p0, Lo/releaseGlows$ICustomTabsCallback$Stub$ICustomTabsCallback;->onPostMessage:Lo/releaseGlows$ICustomTabsCallback$Stub;

    iput-object p3, p0, Lo/releaseGlows$ICustomTabsCallback$Stub$ICustomTabsCallback;->ICustomTabsCallback:Lo/StaggeredGridLayoutManager;

    .line 289
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()V
    .locals 4

    .line 291
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    const/4 v0, 0x0

    invoke-static {v0}, Lo/setTrackTintMode;->onNavigationEvent(Z)V

    .line 292
    iget-object v1, p0, Lo/releaseGlows$ICustomTabsCallback$Stub$ICustomTabsCallback;->onPostMessage:Lo/releaseGlows$ICustomTabsCallback$Stub;

    iget-object v1, v1, Lo/releaseGlows$ICustomTabsCallback$Stub;->onPostMessage:Lo/releaseGlows;

    iget-object v2, p0, Lo/releaseGlows$ICustomTabsCallback$Stub$ICustomTabsCallback;->ICustomTabsCallback:Lo/StaggeredGridLayoutManager;

    check-cast v2, Lo/getRecycleChildrenOnDetach;

    invoke-static {v1, v2, v0}, Lo/releaseGlows;->onNavigationEvent(Lo/releaseGlows;Lo/getRecycleChildrenOnDetach;I)V

    .line 293
    iget-object v1, p0, Lo/releaseGlows$ICustomTabsCallback$Stub$ICustomTabsCallback;->onPostMessage:Lo/releaseGlows$ICustomTabsCallback$Stub;

    iget-object v1, v1, Lo/releaseGlows$ICustomTabsCallback$Stub;->onPostMessage:Lo/releaseGlows;

    invoke-static {v1}, Lo/releaseGlows;->ICustomTabsCallback(Lo/releaseGlows;)Lo/setMenuVisibility;

    move-result-object v1

    invoke-virtual {v1}, Lo/setMenuVisibility;->onPostMessage()V

    .line 294
    iget-object v1, p0, Lo/releaseGlows$ICustomTabsCallback$Stub$ICustomTabsCallback;->onPostMessage:Lo/releaseGlows$ICustomTabsCallback$Stub;

    iget-object v1, v1, Lo/releaseGlows$ICustomTabsCallback$Stub;->onPostMessage:Lo/releaseGlows;

    .line 1000
    iget-object v1, v1, Lo/releaseGlows;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 294
    iget-object v2, p0, Lo/releaseGlows$ICustomTabsCallback$Stub$ICustomTabsCallback;->onPostMessage:Lo/releaseGlows$ICustomTabsCallback$Stub;

    iget-object v2, v2, Lo/releaseGlows$ICustomTabsCallback$Stub;->onPostMessage:Lo/releaseGlows;

    .line 1067
    iget v2, v2, Lo/releaseGlows;->extraCallback:I

    const/4 v3, 0x3

    .line 294
    invoke-virtual {v1, v3, v2, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 295
    iget-object v0, p0, Lo/releaseGlows$ICustomTabsCallback$Stub$ICustomTabsCallback;->extraCallback:Ljava/lang/String;

    const-string v1, "Success"

    invoke-static {v1, v0}, Lo/releaseGlows;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onPostMessage()V
    .locals 4

    .line 307
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    const/4 v0, 0x0

    invoke-static {v0}, Lo/setTrackTintMode;->onNavigationEvent(Z)V

    .line 308
    iget-object v1, p0, Lo/releaseGlows$ICustomTabsCallback$Stub$ICustomTabsCallback;->onPostMessage:Lo/releaseGlows$ICustomTabsCallback$Stub;

    iget-object v1, v1, Lo/releaseGlows$ICustomTabsCallback$Stub;->onPostMessage:Lo/releaseGlows;

    iget-object v2, p0, Lo/releaseGlows$ICustomTabsCallback$Stub$ICustomTabsCallback;->ICustomTabsCallback:Lo/StaggeredGridLayoutManager;

    check-cast v2, Lo/getRecycleChildrenOnDetach;

    invoke-static {v1, v2, v0}, Lo/releaseGlows;->onNavigationEvent(Lo/releaseGlows;Lo/getRecycleChildrenOnDetach;I)V

    .line 309
    iget-object v1, p0, Lo/releaseGlows$ICustomTabsCallback$Stub$ICustomTabsCallback;->onPostMessage:Lo/releaseGlows$ICustomTabsCallback$Stub;

    iget-object v1, v1, Lo/releaseGlows$ICustomTabsCallback$Stub;->onPostMessage:Lo/releaseGlows;

    invoke-static {v1}, Lo/releaseGlows;->ICustomTabsCallback(Lo/releaseGlows;)Lo/setMenuVisibility;

    move-result-object v1

    invoke-virtual {v1}, Lo/setMenuVisibility;->onPostMessage()V

    .line 310
    iget-object v1, p0, Lo/releaseGlows$ICustomTabsCallback$Stub$ICustomTabsCallback;->onPostMessage:Lo/releaseGlows$ICustomTabsCallback$Stub;

    iget-object v1, v1, Lo/releaseGlows$ICustomTabsCallback$Stub;->onPostMessage:Lo/releaseGlows;

    .line 2000
    iget-object v1, v1, Lo/releaseGlows;->onMessageChannelReady:Lo/isSameListener;

    invoke-interface {v1}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    .line 310
    iget-object v2, p0, Lo/releaseGlows$ICustomTabsCallback$Stub$ICustomTabsCallback;->onPostMessage:Lo/releaseGlows$ICustomTabsCallback$Stub;

    iget-object v2, v2, Lo/releaseGlows$ICustomTabsCallback$Stub;->onPostMessage:Lo/releaseGlows;

    .line 2067
    iget v2, v2, Lo/releaseGlows;->extraCallback:I

    const/4 v3, 0x3

    .line 310
    invoke-virtual {v1, v3, v2, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 311
    iget-object v0, p0, Lo/releaseGlows$ICustomTabsCallback$Stub$ICustomTabsCallback;->extraCallback:Ljava/lang/String;

    const-string v1, "Timeout"

    invoke-static {v1, v0}, Lo/releaseGlows;->onMessageChannelReady(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
