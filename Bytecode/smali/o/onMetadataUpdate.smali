.class public final Lo/onMetadataUpdate;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private final extraCallback:Lo/MediaSessionCompat$MediaSessionImplApi19$1;

.field public final onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImplApi21;


# direct methods
.method private constructor <init>(Lo/MediaSessionCompat$MediaSessionImplApi19$1;)V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lo/onMetadataUpdate;->extraCallback:Lo/MediaSessionCompat$MediaSessionImplApi19$1;

    .line 38
    new-instance p1, Lo/MediaSessionCompat$MediaSessionImplApi21;

    invoke-direct {p1}, Lo/MediaSessionCompat$MediaSessionImplApi21;-><init>()V

    iput-object p1, p0, Lo/onMetadataUpdate;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImplApi21;

    return-void
.end method

.method public static onNavigationEvent(Lo/MediaSessionCompat$MediaSessionImplApi19$1;)Lo/onMetadataUpdate;
    .locals 1

    .line 84
    new-instance v0, Lo/onMetadataUpdate;

    invoke-direct {v0, p0}, Lo/onMetadataUpdate;-><init>(Lo/MediaSessionCompat$MediaSessionImplApi19$1;)V

    return-object v0
.end method


# virtual methods
.method public final ICustomTabsCallback()Lo/MediaSessionCompat$MediaSessionImplApi21;
    .locals 1

    .line 46
    iget-object v0, p0, Lo/onMetadataUpdate;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImplApi21;

    return-object v0
.end method

.method public final extraCallback(Landroid/os/Bundle;)V
    .locals 1

    .line 74
    iget-object v0, p0, Lo/onMetadataUpdate;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImplApi21;

    invoke-virtual {v0, p1}, Lo/MediaSessionCompat$MediaSessionImplApi21;->ICustomTabsCallback(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onPostMessage(Landroid/os/Bundle;)V
    .locals 3

    .line 56
    iget-object v0, p0, Lo/onMetadataUpdate;->extraCallback:Lo/MediaSessionCompat$MediaSessionImplApi19$1;

    invoke-interface {v0}, Lo/MediaSessionCompat$MediaSessionImplApi19$1;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v1

    sget-object v2, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onPostMessage:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-ne v1, v2, :cond_0

    .line 61
    new-instance v1, Landroidx/savedstate/Recreator;

    iget-object v2, p0, Lo/onMetadataUpdate;->extraCallback:Lo/MediaSessionCompat$MediaSessionImplApi19$1;

    invoke-direct {v1, v2}, Landroidx/savedstate/Recreator;-><init>(Lo/MediaSessionCompat$MediaSessionImplApi19$1;)V

    invoke-virtual {v0, v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 62
    iget-object v1, p0, Lo/onMetadataUpdate;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImplApi21;

    invoke-virtual {v1, v0, p1}, Lo/MediaSessionCompat$MediaSessionImplApi21;->onMessageChannelReady(Lo/MediaControllerCompatApi21$CallbackProxy;Landroid/os/Bundle;)V

    return-void

    .line 58
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Restarter must be created only during owner\'s initialization stage"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
