.class public final Lo/updateAnchorFromChildren$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setQueryRefinementEnabled;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/updateAnchorFromChildren;->onPostMessage(Ljava/lang/String;Lo/StaggeredGridLayoutManager;Lo/createOrientationHelpers;)V
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
        "com/dreamplug/fabrik/ui/lifestyle/LifeStyleClaimBaseFragment$onClick$1$publishResult$1",
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
.field private synthetic extraCallback:Lo/StaggeredGridLayoutManager;

.field private synthetic onNavigationEvent:Lo/updateAnchorFromChildren;

.field private synthetic onPostMessage:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lo/updateAnchorFromChildren;Lo/StaggeredGridLayoutManager;)V
    .locals 0

    iput-object p1, p0, Lo/updateAnchorFromChildren$onPostMessage;->onPostMessage:Ljava/lang/String;

    iput-object p2, p0, Lo/updateAnchorFromChildren$onPostMessage;->onNavigationEvent:Lo/updateAnchorFromChildren;

    iput-object p3, p0, Lo/updateAnchorFromChildren$onPostMessage;->extraCallback:Lo/StaggeredGridLayoutManager;

    .line 242
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent()V
    .locals 4

    .line 244
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    const/4 v0, 0x0

    invoke-static {v0}, Lo/setTrackTintMode;->onNavigationEvent(Z)V

    .line 245
    iget-object v1, p0, Lo/updateAnchorFromChildren$onPostMessage;->onNavigationEvent:Lo/updateAnchorFromChildren;

    iget-object v2, p0, Lo/updateAnchorFromChildren$onPostMessage;->extraCallback:Lo/StaggeredGridLayoutManager;

    check-cast v2, Lo/updateAnchorInfoForLayout;

    invoke-static {v1, v2, v0}, Lo/updateAnchorFromChildren;->ICustomTabsCallback(Lo/updateAnchorFromChildren;Lo/updateAnchorInfoForLayout;I)V

    .line 246
    iget-object v1, p0, Lo/updateAnchorFromChildren$onPostMessage;->onNavigationEvent:Lo/updateAnchorFromChildren;

    invoke-static {v1}, Lo/updateAnchorFromChildren;->onPostMessage(Lo/updateAnchorFromChildren;)Lo/setMenuVisibility;

    move-result-object v1

    invoke-virtual {v1}, Lo/setMenuVisibility;->onPostMessage()V

    .line 247
    iget-object v1, p0, Lo/updateAnchorFromChildren$onPostMessage;->onNavigationEvent:Lo/updateAnchorFromChildren;

    invoke-static {v1}, Lo/updateAnchorFromChildren;->ICustomTabsCallback(Lo/updateAnchorFromChildren;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lo/updateAnchorFromChildren$onPostMessage;->onNavigationEvent:Lo/updateAnchorFromChildren;

    .line 1094
    iget v2, v2, Lo/updateAnchorFromChildren;->onMessageChannelReady:I

    const/4 v3, 0x3

    .line 247
    invoke-virtual {v1, v3, v2, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 248
    iget-object v0, p0, Lo/updateAnchorFromChildren$onPostMessage;->onPostMessage:Ljava/lang/String;

    const-string v1, "Success"

    invoke-static {v1, v0}, Lo/updateAnchorFromChildren;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final onPostMessage()V
    .locals 4

    .line 260
    sget-object v0, Lo/setTrackTintMode;->onProgressUpdate:Lo/setTrackTintMode;

    const/4 v0, 0x0

    invoke-static {v0}, Lo/setTrackTintMode;->onNavigationEvent(Z)V

    .line 261
    iget-object v1, p0, Lo/updateAnchorFromChildren$onPostMessage;->onNavigationEvent:Lo/updateAnchorFromChildren;

    iget-object v2, p0, Lo/updateAnchorFromChildren$onPostMessage;->extraCallback:Lo/StaggeredGridLayoutManager;

    check-cast v2, Lo/updateAnchorInfoForLayout;

    invoke-static {v1, v2, v0}, Lo/updateAnchorFromChildren;->ICustomTabsCallback(Lo/updateAnchorFromChildren;Lo/updateAnchorInfoForLayout;I)V

    .line 262
    iget-object v1, p0, Lo/updateAnchorFromChildren$onPostMessage;->onNavigationEvent:Lo/updateAnchorFromChildren;

    invoke-static {v1}, Lo/updateAnchorFromChildren;->onPostMessage(Lo/updateAnchorFromChildren;)Lo/setMenuVisibility;

    move-result-object v1

    invoke-virtual {v1}, Lo/setMenuVisibility;->onPostMessage()V

    .line 263
    iget-object v1, p0, Lo/updateAnchorFromChildren$onPostMessage;->onNavigationEvent:Lo/updateAnchorFromChildren;

    invoke-static {v1}, Lo/updateAnchorFromChildren;->ICustomTabsCallback(Lo/updateAnchorFromChildren;)Landroid/media/AudioManager;

    move-result-object v1

    iget-object v2, p0, Lo/updateAnchorFromChildren$onPostMessage;->onNavigationEvent:Lo/updateAnchorFromChildren;

    .line 2094
    iget v2, v2, Lo/updateAnchorFromChildren;->onMessageChannelReady:I

    const/4 v3, 0x3

    .line 263
    invoke-virtual {v1, v3, v2, v0}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 264
    iget-object v0, p0, Lo/updateAnchorFromChildren$onPostMessage;->onPostMessage:Ljava/lang/String;

    const-string v1, "Timeout"

    invoke-static {v1, v0}, Lo/updateAnchorFromChildren;->onNavigationEvent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
