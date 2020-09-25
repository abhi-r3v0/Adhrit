.class public final Landroidx/activity/OnBackPressedDispatcher;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;,
        Landroidx/activity/OnBackPressedDispatcher$onPostMessage;
    }
.end annotation


# instance fields
.field final ICustomTabsCallback:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lo/handleMediaPlayPauseKeySingleTapIfPending;",
            ">;"
        }
    .end annotation
.end field

.field private final onPostMessage:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 67
    invoke-direct {p0, v0}, Landroidx/activity/OnBackPressedDispatcher;-><init>(Ljava/lang/Runnable;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->ICustomTabsCallback:Ljava/util/ArrayDeque;

    .line 78
    iput-object p1, p0, Landroidx/activity/OnBackPressedDispatcher;->onPostMessage:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final extraCallback()V
    .locals 3

    .line 187
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->ICustomTabsCallback:Ljava/util/ArrayDeque;

    .line 188
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    .line 189
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 190
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/handleMediaPlayPauseKeySingleTapIfPending;

    .line 2082
    iget-boolean v2, v1, Lo/handleMediaPlayPauseKeySingleTapIfPending;->extraCallback:Z

    if-eqz v2, :cond_0

    .line 192
    invoke-virtual {v1}, Lo/handleMediaPlayPauseKeySingleTapIfPending;->onPostMessage()V

    return-void

    .line 196
    :cond_1
    iget-object v0, p0, Landroidx/activity/OnBackPressedDispatcher;->onPostMessage:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 197
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void
.end method

.method public final extraCallback(Lo/toLegacyStreamType;Lo/handleMediaPlayPauseKeySingleTapIfPending;)V
    .locals 2

    .line 148
    invoke-interface {p1}, Lo/toLegacyStreamType;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object p1

    .line 149
    invoke-virtual {p1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v0

    sget-object v1, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-ne v0, v1, :cond_0

    return-void

    .line 153
    :cond_0
    new-instance v0, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;

    invoke-direct {v0, p0, p1, p2}, Landroidx/activity/OnBackPressedDispatcher$LifecycleOnBackPressedCancellable;-><init>(Landroidx/activity/OnBackPressedDispatcher;Lo/MediaControllerCompatApi21$CallbackProxy;Lo/handleMediaPlayPauseKeySingleTapIfPending;)V

    .line 1103
    iget-object p1, p2, Lo/handleMediaPlayPauseKeySingleTapIfPending;->ICustomTabsCallback:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
