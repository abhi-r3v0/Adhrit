.class public Lo/getMaxVolume;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/toLegacyStreamType;


# instance fields
.field onNavigationEvent:Lo/setCallback;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 25
    iput-object v0, p0, Lo/getMaxVolume;->onNavigationEvent:Lo/setCallback;

    return-void
.end method


# virtual methods
.method public getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;
    .locals 1

    .line 1031
    iget-object v0, p0, Lo/getMaxVolume;->onNavigationEvent:Lo/setCallback;

    if-nez v0, :cond_0

    .line 1032
    new-instance v0, Lo/setCallback;

    invoke-direct {v0, p0}, Lo/setCallback;-><init>(Lo/toLegacyStreamType;)V

    iput-object v0, p0, Lo/getMaxVolume;->onNavigationEvent:Lo/setCallback;

    .line 47
    :cond_0
    iget-object v0, p0, Lo/getMaxVolume;->onNavigationEvent:Lo/setCallback;

    return-object v0
.end method

.method public final onNavigationEvent()V
    .locals 1

    .line 31
    iget-object v0, p0, Lo/getMaxVolume;->onNavigationEvent:Lo/setCallback;

    if-nez v0, :cond_0

    .line 32
    new-instance v0, Lo/setCallback;

    invoke-direct {v0, p0}, Lo/setCallback;-><init>(Lo/toLegacyStreamType;)V

    iput-object v0, p0, Lo/getMaxVolume;->onNavigationEvent:Lo/setCallback;

    :cond_0
    return-void
.end method

.method public final onNavigationEvent(Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;)V
    .locals 1

    .line 55
    iget-object v0, p0, Lo/getMaxVolume;->onNavigationEvent:Lo/setCallback;

    .line 1130
    invoke-static {p1}, Lo/setCallback;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;)Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object p1

    .line 1131
    invoke-virtual {v0, p1}, Lo/setCallback;->onPostMessage(Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;)V

    return-void
.end method

.method public final onPostMessage()Z
    .locals 1

    .line 40
    iget-object v0, p0, Lo/getMaxVolume;->onNavigationEvent:Lo/setCallback;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
