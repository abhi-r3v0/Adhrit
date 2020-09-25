.class public final Landroidx/lifecycle/SavedStateHandleController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/MediaControllerCompatApi23;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/SavedStateHandleController$onMessageChannelReady;
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Ljava/lang/String;

.field public final extraCallback:Lo/setPlaybackState;

.field private onPostMessage:Z


# direct methods
.method private constructor <init>(Ljava/lang/String;Lo/setPlaybackState;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 32
    iput-boolean v0, p0, Landroidx/lifecycle/SavedStateHandleController;->onPostMessage:Z

    .line 36
    iput-object p1, p0, Landroidx/lifecycle/SavedStateHandleController;->ICustomTabsCallback:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Landroidx/lifecycle/SavedStateHandleController;->extraCallback:Lo/setPlaybackState;

    return-void
.end method

.method private extraCallback(Lo/MediaSessionCompat$MediaSessionImplApi21;Lo/MediaControllerCompatApi21$CallbackProxy;)V
    .locals 1

    .line 45
    iget-boolean v0, p0, Landroidx/lifecycle/SavedStateHandleController;->onPostMessage:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Landroidx/lifecycle/SavedStateHandleController;->onPostMessage:Z

    .line 49
    invoke-virtual {p2, p0}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 50
    iget-object p2, p0, Landroidx/lifecycle/SavedStateHandleController;->ICustomTabsCallback:Ljava/lang/String;

    iget-object v0, p0, Landroidx/lifecycle/SavedStateHandleController;->extraCallback:Lo/setPlaybackState;

    .line 1129
    iget-object v0, v0, Lo/setPlaybackState;->extraCallback:Lo/MediaSessionCompat$MediaSessionImplApi21$onNavigationEvent;

    .line 2109
    iget-object p1, p1, Lo/MediaSessionCompat$MediaSessionImplApi21;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserImplApi21;

    invoke-virtual {p1, p2, v0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/MediaSessionCompat$MediaSessionImplApi21$onNavigationEvent;

    if-nez p1, :cond_0

    return-void

    .line 2111
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "SavedStateProvider with the given key is already registered"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 46
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already attached to lifecycleOwner"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static onMessageChannelReady(Lo/MediaSessionCompat$MediaSessionImplApi21;Lo/MediaControllerCompatApi21$CallbackProxy;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/lifecycle/SavedStateHandleController;
    .locals 1

    .line 67
    invoke-virtual {p0, p2}, Lo/MediaSessionCompat$MediaSessionImplApi21;->onNavigationEvent(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 68
    invoke-static {v0, p3}, Lo/setPlaybackState;->onPostMessage(Landroid/os/Bundle;Landroid/os/Bundle;)Lo/setPlaybackState;

    move-result-object p3

    .line 69
    new-instance v0, Landroidx/lifecycle/SavedStateHandleController;

    invoke-direct {v0, p2, p3}, Landroidx/lifecycle/SavedStateHandleController;-><init>(Ljava/lang/String;Lo/setPlaybackState;)V

    .line 70
    invoke-direct {v0, p0, p1}, Landroidx/lifecycle/SavedStateHandleController;->extraCallback(Lo/MediaSessionCompat$MediaSessionImplApi21;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    .line 71
    invoke-static {p0, p1}, Landroidx/lifecycle/SavedStateHandleController;->onPostMessage(Lo/MediaSessionCompat$MediaSessionImplApi21;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    return-object v0
.end method

.method private static onPostMessage(Lo/MediaSessionCompat$MediaSessionImplApi21;Lo/MediaControllerCompatApi21$CallbackProxy;)V
    .locals 2

    .line 107
    invoke-virtual {p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v0

    .line 108
    sget-object v1, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-eq v0, v1, :cond_2

    sget-object v1, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 3212
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto :goto_1

    .line 111
    :cond_1
    new-instance v0, Landroidx/lifecycle/SavedStateHandleController$1;

    invoke-direct {v0, p1, p0}, Landroidx/lifecycle/SavedStateHandleController$1;-><init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/MediaSessionCompat$MediaSessionImplApi21;)V

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    return-void

    .line 109
    :cond_2
    :goto_1
    const-class p1, Landroidx/lifecycle/SavedStateHandleController$onMessageChannelReady;

    invoke-virtual {p0, p1}, Lo/MediaSessionCompat$MediaSessionImplApi21;->onMessageChannelReady(Ljava/lang/Class;)V

    return-void
.end method

.method public static onPostMessage(Lo/setQueue;Lo/MediaSessionCompat$MediaSessionImplApi21;Lo/MediaControllerCompatApi21$CallbackProxy;)V
    .locals 1

    const-string v0, "androidx.lifecycle.savedstate.vm.tag"

    .line 98
    invoke-virtual {p0, v0}, Lo/setQueue;->onNavigationEvent(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/lifecycle/SavedStateHandleController;

    if-eqz p0, :cond_0

    .line 3041
    iget-boolean v0, p0, Landroidx/lifecycle/SavedStateHandleController;->onPostMessage:Z

    if-nez v0, :cond_0

    .line 101
    invoke-direct {p0, p1, p2}, Landroidx/lifecycle/SavedStateHandleController;->extraCallback(Lo/MediaSessionCompat$MediaSessionImplApi21;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    .line 102
    invoke-static {p1, p2}, Landroidx/lifecycle/SavedStateHandleController;->onPostMessage(Lo/MediaSessionCompat$MediaSessionImplApi21;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/toLegacyStreamType;Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;)V
    .locals 1

    .line 55
    sget-object v0, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->ON_DESTROY:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    if-ne p2, v0, :cond_0

    const/4 p2, 0x0

    .line 56
    iput-boolean p2, p0, Landroidx/lifecycle/SavedStateHandleController;->onPostMessage:Z

    .line 57
    invoke-interface {p1}, Lo/toLegacyStreamType;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object p1

    invoke-virtual {p1, p0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    :cond_0
    return-void
.end method
