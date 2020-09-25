.class final Lo/sendSessionEvent$extraCallback;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/sendSessionEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "extraCallback"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityPaused(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityPostCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    .line 170
    sget-object p2, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->ON_CREATE:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    invoke-static {p1, p2}, Lo/sendSessionEvent;->ICustomTabsCallback(Landroid/app/Activity;Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;)V

    return-void
.end method

.method public final onActivityPostResumed(Landroid/app/Activity;)V
    .locals 1

    .line 188
    sget-object v0, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->ON_RESUME:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    invoke-static {p1, v0}, Lo/sendSessionEvent;->ICustomTabsCallback(Landroid/app/Activity;Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;)V

    return-void
.end method

.method public final onActivityPostStarted(Landroid/app/Activity;)V
    .locals 1

    .line 179
    sget-object v0, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->ON_START:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    invoke-static {p1, v0}, Lo/sendSessionEvent;->ICustomTabsCallback(Landroid/app/Activity;Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;)V

    return-void
.end method

.method public final onActivityPreDestroyed(Landroid/app/Activity;)V
    .locals 1

    .line 216
    sget-object v0, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->ON_DESTROY:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    invoke-static {p1, v0}, Lo/sendSessionEvent;->ICustomTabsCallback(Landroid/app/Activity;Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;)V

    return-void
.end method

.method public final onActivityPrePaused(Landroid/app/Activity;)V
    .locals 1

    .line 193
    sget-object v0, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->ON_PAUSE:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    invoke-static {p1, v0}, Lo/sendSessionEvent;->ICustomTabsCallback(Landroid/app/Activity;Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;)V

    return-void
.end method

.method public final onActivityPreStopped(Landroid/app/Activity;)V
    .locals 1

    .line 202
    sget-object v0, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->ON_STOP:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    invoke-static {p1, v0}, Lo/sendSessionEvent;->ICustomTabsCallback(Landroid/app/Activity;Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;)V

    return-void
.end method

.method public final onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public final onActivityStarted(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public final onActivityStopped(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method
