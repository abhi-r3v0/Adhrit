.class final Lo/animateAdd$onRelationshipValidationResult;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/animateAdd;->onResume()V
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
        "\u0000\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n\u00a2\u0006\u0002\u0008\u0002"
    }
    d2 = {
        "<anonymous>",
        "",
        "run"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/animateAdd;


# direct methods
.method constructor <init>(Lo/animateAdd;)V
    .locals 0

    iput-object p1, p0, Lo/animateAdd$onRelationshipValidationResult;->onNavigationEvent:Lo/animateAdd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 265
    iget-object v0, p0, Lo/animateAdd$onRelationshipValidationResult;->onNavigationEvent:Lo/animateAdd;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    const-string v1, "lifecycle"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 536
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v0

    sget-object v1, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 1212
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 266
    sget-object v0, Lo/replaceAll;->ICustomTabsCallback:Lo/replaceAll;

    const-string/jumbo v0, "stories"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lo/replaceAll;->onPostMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lo/animateAdd$onRelationshipValidationResult;->onNavigationEvent:Lo/animateAdd;

    invoke-static {v0}, Lo/animateAdd;->ICustomTabsCallback$Stub(Lo/animateAdd;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 268
    iget-object v0, p0, Lo/animateAdd$onRelationshipValidationResult;->onNavigationEvent:Lo/animateAdd;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->digestSlider:I

    invoke-virtual {v0, v1}, Lo/animateAdd;->ICustomTabsCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/animateChangeImpl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lo/animateChangeImpl;->onMessageChannelReady()V

    .line 271
    :cond_1
    iget-object v0, p0, Lo/animateAdd$onRelationshipValidationResult;->onNavigationEvent:Lo/animateAdd;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lo/animateAdd;->ICustomTabsCallback(Lo/animateAdd;J)V

    :cond_2
    return-void
.end method
