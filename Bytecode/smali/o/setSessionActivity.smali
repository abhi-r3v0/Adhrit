.class public Lo/setSessionActivity;
.super Landroid/app/Service;
.source ""

# interfaces
.implements Lo/toLegacyStreamType;


# instance fields
.field private final extraCallback:Lo/isActive;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 32
    new-instance v0, Lo/isActive;

    invoke-direct {v0, p0}, Lo/isActive;-><init>(Lo/toLegacyStreamType;)V

    iput-object v0, p0, Lo/setSessionActivity;->extraCallback:Lo/isActive;

    return-void
.end method


# virtual methods
.method public getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;
    .locals 1

    .line 77
    iget-object v0, p0, Lo/setSessionActivity;->extraCallback:Lo/isActive;

    .line 1089
    iget-object v0, v0, Lo/isActive;->onMessageChannelReady:Lo/setCallback;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 45
    iget-object p1, p0, Lo/setSessionActivity;->extraCallback:Lo/isActive;

    .line 1063
    sget-object v0, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->ON_START:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    invoke-virtual {p1, v0}, Lo/isActive;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 2

    .line 37
    iget-object v0, p0, Lo/setSessionActivity;->extraCallback:Lo/isActive;

    .line 1055
    sget-object v1, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->ON_CREATE:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    invoke-virtual {v0, v1}, Lo/isActive;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;)V

    .line 38
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 70
    iget-object v0, p0, Lo/setSessionActivity;->extraCallback:Lo/isActive;

    .line 1080
    sget-object v1, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->ON_STOP:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    invoke-virtual {v0, v1}, Lo/isActive;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;)V

    .line 1081
    sget-object v1, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->ON_DESTROY:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    invoke-virtual {v0, v1}, Lo/isActive;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;)V

    .line 71
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 2

    .line 53
    iget-object v0, p0, Lo/setSessionActivity;->extraCallback:Lo/isActive;

    .line 1072
    sget-object v1, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->ON_START:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    invoke-virtual {v0, v1}, Lo/isActive;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;)V

    .line 54
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 64
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method
