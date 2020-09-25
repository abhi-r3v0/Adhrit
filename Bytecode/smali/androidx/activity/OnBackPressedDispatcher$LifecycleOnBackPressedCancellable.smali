.class Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/MediaControllerCompatApi23;
.implements Lo/updateDxDy$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/activity/OnBackPressedDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LifecycleOnBackPressedCancellable"
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Landroidx/activity/OnBackPressedDispatcher;

.field private final onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy;

.field private final onNavigationEvent:Lo/handleMediaPlayPauseKeySingleTapIfPending;

.field private onPostMessage:Lo/updateDxDy$onMessageChannelReady;


# direct methods
.method constructor <init>(Landroidx/activity/OnBackPressedDispatcher;Lo/MediaControllerCompatApi21$CallbackProxy;Lo/handleMediaPlayPauseKeySingleTapIfPending;)V
    .locals 0

    .line 223
    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->ICustomTabsCallback:Landroidx/activity/OnBackPressedDispatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    iput-object p2, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy;

    .line 225
    iput-object p3, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->onNavigationEvent:Lo/handleMediaPlayPauseKeySingleTapIfPending;

    .line 226
    invoke-virtual {p2, p0}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 1

    .line 246
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy;

    invoke-virtual {v0, p0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    .line 247
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->onNavigationEvent:Lo/handleMediaPlayPauseKeySingleTapIfPending;

    .line 2107
    iget-object v0, v0, Lo/handleMediaPlayPauseKeySingleTapIfPending;->ICustomTabsCallback:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 248
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->onPostMessage:Lo/updateDxDy$onMessageChannelReady;

    if-eqz v0, :cond_0

    .line 249
    invoke-interface {v0}, Lo/updateDxDy$onMessageChannelReady;->ICustomTabsCallback()V

    const/4 v0, 0x0

    .line 250
    iput-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->onPostMessage:Lo/updateDxDy$onMessageChannelReady;

    :cond_0
    return-void
.end method

.method public extraCallback(Lo/toLegacyStreamType;Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;)V
    .locals 1

    .line 232
    sget-object p1, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->ON_START:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    if-ne p2, p1, :cond_0

    .line 233
    iget-object p1, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->ICustomTabsCallback:Landroidx/activity/OnBackPressedDispatcher;

    iget-object p2, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->onNavigationEvent:Lo/handleMediaPlayPauseKeySingleTapIfPending;

    .line 1114
    iget-object v0, p1, Landroidx/activity/OnBackPressedDispatcher;->ICustomTabsCallback:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p2}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    .line 1115
    new-instance v0, Landroidx/activity/OnBackPressedDispatcher$onPostMessage;

    invoke-direct {v0, p1, p2}, Landroidx/activity/OnBackPressedDispatcher$onPostMessage;-><init>(Landroidx/activity/OnBackPressedDispatcher;Lo/handleMediaPlayPauseKeySingleTapIfPending;)V

    .line 2103
    iget-object p1, p2, Lo/handleMediaPlayPauseKeySingleTapIfPending;->ICustomTabsCallback:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 233
    iput-object v0, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->onPostMessage:Lo/updateDxDy$onMessageChannelReady;

    return-void

    .line 234
    :cond_0
    sget-object p1, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->ON_STOP:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    if-ne p2, p1, :cond_1

    .line 236
    iget-object p1, p0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->onPostMessage:Lo/updateDxDy$onMessageChannelReady;

    if-eqz p1, :cond_2

    .line 237
    invoke-interface {p1}, Lo/updateDxDy$onMessageChannelReady;->ICustomTabsCallback()V

    return-void

    .line 239
    :cond_1
    sget-object p1, Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;->ON_DESTROY:Lo/MediaControllerCompatApi21$CallbackProxy$onMessageChannelReady;

    if-ne p2, p1, :cond_2

    .line 240
    invoke-virtual {p0}, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;->ICustomTabsCallback()V

    :cond_2
    return-void
.end method
