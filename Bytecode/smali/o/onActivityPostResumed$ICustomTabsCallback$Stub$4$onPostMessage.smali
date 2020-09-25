.class public final Lo/onActivityPostResumed$ICustomTabsCallback$Stub$4$onPostMessage;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/getContentPaddingRight;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onActivityPostResumed$ICustomTabsCallback$Stub$4;->onNavigationEvent()V
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
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016J\u0008\u0010\u0004\u001a\u00020\u0003H\u0016\u00a8\u0006\u0005\u00b8\u0006\u0000"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/control/ActivateCredProtectFragment$onCreate$1$1$onAnimationEnd$1$1",
        "Lcom/dreamplug/androidapp/ui/widget/highlightedview/AnimationListener;",
        "onAnimationEnd",
        "",
        "onAnimationStart",
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
.field final synthetic onPostMessage:Lo/onActivityPostResumed$ICustomTabsCallback$Stub$4;


# direct methods
.method constructor <init>(Lo/onActivityPostResumed$ICustomTabsCallback$Stub$4;)V
    .locals 0

    iput-object p1, p0, Lo/onActivityPostResumed$ICustomTabsCallback$Stub$4$onPostMessage;->onPostMessage:Lo/onActivityPostResumed$ICustomTabsCallback$Stub$4;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 5

    .line 106
    iget-object v0, p0, Lo/onActivityPostResumed$ICustomTabsCallback$Stub$4$onPostMessage;->onPostMessage:Lo/onActivityPostResumed$ICustomTabsCallback$Stub$4;

    iget-object v0, v0, Lo/onActivityPostResumed$ICustomTabsCallback$Stub$4;->onNavigationEvent:Lo/onActivityPostResumed$ICustomTabsCallback$Stub;

    iget-object v0, v0, Lo/onActivityPostResumed$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/onActivityPostResumed;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->mainData:I

    invoke-virtual {v0, v1}, Lo/onActivityPostResumed;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/onChildrenLoaded;

    const-string v1, "mainData"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/view/View;

    const-string v1, "$this$visible"

    invoke-static {v0, v1}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1009
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 107
    sget-object v0, Lo/updateItemAt;->extraCallback:Lo/updateItemAt;

    invoke-static {}, Lo/updateItemAt;->onMessageChannelReady()Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lo/onActivityPostResumed$ICustomTabsCallback$Stub$4$onPostMessage;->onPostMessage:Lo/onActivityPostResumed$ICustomTabsCallback$Stub$4;

    iget-object v1, v1, Lo/onActivityPostResumed$ICustomTabsCallback$Stub$4;->onNavigationEvent:Lo/onActivityPostResumed$ICustomTabsCallback$Stub;

    iget-object v1, v1, Lo/onActivityPostResumed$ICustomTabsCallback$Stub;->onMessageChannelReady:Lo/onActivityPostResumed;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v1

    const-string v2, "lifecycle"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lo/onActivityPostResumed$ICustomTabsCallback$Stub$4$onPostMessage$5;

    invoke-direct {v2, p0}, Lo/onActivityPostResumed$ICustomTabsCallback$Stub$4$onPostMessage$5;-><init>(Lo/onActivityPostResumed$ICustomTabsCallback$Stub$4$onPostMessage;)V

    check-cast v2, Lo/getServerTime;

    const-wide/16 v3, 0x0

    .line 1012
    invoke-static {v0, v1, v3, v4, v2}, Lo/getTextOn;->extraCallback(Landroid/os/Handler;Lo/MediaControllerCompatApi21$CallbackProxy;JLo/getServerTime;)Lo/updateDxDy$onMessageChannelReady;

    return-void
.end method

.method public final onNavigationEvent()V
    .locals 0

    return-void
.end method
