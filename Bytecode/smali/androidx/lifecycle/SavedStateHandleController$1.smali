.class final Landroidx/lifecycle/SavedStateHandleController$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/MediaControllerCompatApi23;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/SavedStateHandleController;->onPostMessage(Lo/MediaSessionCompat$MediaSessionImplApi21;Lo/MediaControllerCompatApi21$CallbackProxy;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

.field final synthetic onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImplApi21;


# direct methods
.method constructor <init>(Lo/MediaControllerCompatApi21$CallbackProxy;Lo/MediaSessionCompat$MediaSessionImplApi21;)V
    .locals 0

    .line 111
    iput-object p1, p0, Landroidx/lifecycle/SavedStateHandleController$1;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    iput-object p2, p0, Landroidx/lifecycle/SavedStateHandleController$1;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImplApi21;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final extraCallback(Lo/toLegacyStreamType;Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;)V
    .locals 0

    .line 115
    sget-object p1, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->ON_START:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    if-ne p2, p1, :cond_0

    .line 116
    iget-object p1, p0, Landroidx/lifecycle/SavedStateHandleController$1;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy;

    invoke-virtual {p1, p0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 117
    iget-object p1, p0, Landroidx/lifecycle/SavedStateHandleController$1;->onNavigationEvent:Lo/MediaSessionCompat$MediaSessionImplApi21;

    const-class p2, Landroidx/lifecycle/SavedStateHandleController$onMessageChannelReady;

    invoke-virtual {p1, p2}, Lo/MediaSessionCompat$MediaSessionImplApi21;->onMessageChannelReady(Ljava/lang/Class;)V

    :cond_0
    return-void
.end method
