.class final Landroidx/lifecycle/SavedStateHandleController$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/MediaSessionCompat$MediaSessionImplApi21$ICustomTabsCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/lifecycle/SavedStateHandleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "onMessageChannelReady"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onNavigationEvent(Lo/MediaSessionCompat$MediaSessionImplApi19$1;)V
    .locals 5

    .line 79
    instance-of v0, p1, Lo/removeOnActiveChangeListener;

    if-eqz v0, :cond_2

    .line 84
    move-object v0, p1

    check-cast v0, Lo/removeOnActiveChangeListener;

    invoke-interface {v0}, Lo/removeOnActiveChangeListener;->getViewModelStore()Lo/setRatingType;

    move-result-object v0

    .line 85
    invoke-interface {p1}, Lo/MediaSessionCompat$MediaSessionImplApi19$1;->getSavedStateRegistry()Lo/MediaSessionCompat$MediaSessionImplApi21;

    move-result-object v1

    .line 1054
    new-instance v2, Ljava/util/HashSet;

    iget-object v3, v0, Lo/setRatingType;->extraCallback:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/AbstractMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 86
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 2050
    iget-object v4, v0, Lo/setRatingType;->extraCallback:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/setQueue;

    .line 88
    invoke-interface {p1}, Lo/MediaSessionCompat$MediaSessionImplApi19$1;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v4

    invoke-static {v3, v1, v4}, Landroidx/lifecycle/SavedStateHandleController;->onPostMessage(Lo/setQueue;Lo/MediaSessionCompat$MediaSessionImplApi21;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    goto :goto_0

    .line 2054
    :cond_0
    new-instance p1, Ljava/util/HashSet;

    iget-object v0, v0, Lo/setRatingType;->extraCallback:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 90
    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 91
    const-class p1, Landroidx/lifecycle/SavedStateHandleController$onMessageChannelReady;

    invoke-virtual {v1, p1}, Lo/MediaSessionCompat$MediaSessionImplApi21;->onMessageChannelReady(Ljava/lang/Class;)V

    :cond_1
    return-void

    .line 80
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Internal error: OnRecreation should be registered only on componentsthat implement ViewModelStoreOwner"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
