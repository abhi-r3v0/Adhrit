.class public abstract Landroidx/lifecycle/LiveData;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/lifecycle/LiveData$onNavigationEvent;,
        Landroidx/lifecycle/LiveData$extraCallback;,
        Landroidx/lifecycle/LiveData$LifecycleBoundObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final ICustomTabsCallback:Ljava/lang/Object;


# instance fields
.field private ICustomTabsCallback$Stub:Z

.field private asBinder:Lo/MediaBrowserCompat$MediaBrowserImplApi21;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/MediaBrowserCompat$MediaBrowserImplApi21<",
            "Lo/setPlaybackToRemote<",
            "-TT;>;",
            "Landroidx/lifecycle/LiveData<",
            "TT;>.extraCallback;>;"
        }
    .end annotation
.end field

.field private asInterface:Z

.field public volatile extraCallback:Ljava/lang/Object;

.field final onMessageChannelReady:Ljava/lang/Object;

.field public onNavigationEvent:I

.field volatile onPostMessage:Ljava/lang/Object;

.field public onRelationshipValidationResult:I

.field private final onTransact:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/LiveData;->onMessageChannelReady:Ljava/lang/Object;

    .line 66
    new-instance v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21;

    invoke-direct {v0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/LiveData;->asBinder:Lo/MediaBrowserCompat$MediaBrowserImplApi21;

    const/4 v0, 0x0

    .line 70
    iput v0, p0, Landroidx/lifecycle/LiveData;->onNavigationEvent:I

    .line 75
    sget-object v0, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/lifecycle/LiveData;->onPostMessage:Ljava/lang/Object;

    .line 82
    new-instance v0, Landroidx/lifecycle/LiveData$5;

    invoke-direct {v0, p0}, Landroidx/lifecycle/LiveData$5;-><init>(Landroidx/lifecycle/LiveData;)V

    iput-object v0, p0, Landroidx/lifecycle/LiveData;->onTransact:Ljava/lang/Runnable;

    .line 109
    sget-object v0, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    iput-object v0, p0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    const/4 v0, -0x1

    .line 110
    iput v0, p0, Landroidx/lifecycle/LiveData;->onRelationshipValidationResult:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/LiveData;->onMessageChannelReady:Ljava/lang/Object;

    .line 66
    new-instance v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21;

    invoke-direct {v0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21;-><init>()V

    iput-object v0, p0, Landroidx/lifecycle/LiveData;->asBinder:Lo/MediaBrowserCompat$MediaBrowserImplApi21;

    const/4 v0, 0x0

    .line 70
    iput v0, p0, Landroidx/lifecycle/LiveData;->onNavigationEvent:I

    .line 75
    sget-object v1, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    iput-object v1, p0, Landroidx/lifecycle/LiveData;->onPostMessage:Ljava/lang/Object;

    .line 82
    new-instance v1, Landroidx/lifecycle/LiveData$5;

    invoke-direct {v1, p0}, Landroidx/lifecycle/LiveData$5;-><init>(Landroidx/lifecycle/LiveData;)V

    iput-object v1, p0, Landroidx/lifecycle/LiveData;->onTransact:Ljava/lang/Runnable;

    .line 101
    iput-object p1, p0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    .line 102
    iput v0, p0, Landroidx/lifecycle/LiveData;->onRelationshipValidationResult:I

    return-void
.end method

.method private static onMessageChannelReady(Ljava/lang/String;)V
    .locals 3

    .line 461
    invoke-static {}, Lo/MediaBrowserCompat$ItemCallback;->extraCallback()Lo/MediaBrowserCompat$ItemCallback;

    move-result-object v0

    .line 2116
    iget-object v0, v0, Lo/MediaBrowserCompat$ItemCallback;->extraCallback:Lo/MediaBrowserCompat$ItemReceiver;

    invoke-virtual {v0}, Lo/MediaBrowserCompat$ItemReceiver;->ICustomTabsCallback()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 462
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot invoke "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " on a background thread"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private onNavigationEvent(Landroidx/lifecycle/LiveData$extraCallback;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "TT;>.extraCallback;)V"
        }
    .end annotation

    .line 115
    iget-boolean v0, p1, Landroidx/lifecycle/LiveData$extraCallback;->extraCallback:Z

    if-nez v0, :cond_0

    return-void

    .line 123
    :cond_0
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData$extraCallback;->onMessageChannelReady()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 124
    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData$extraCallback;->onNavigationEvent(Z)V

    return-void

    .line 127
    :cond_1
    iget v0, p1, Landroidx/lifecycle/LiveData$extraCallback;->ICustomTabsCallback$Stub:I

    iget v1, p0, Landroidx/lifecycle/LiveData;->onRelationshipValidationResult:I

    if-lt v0, v1, :cond_2

    return-void

    .line 130
    :cond_2
    iput v1, p1, Landroidx/lifecycle/LiveData$extraCallback;->ICustomTabsCallback$Stub:I

    .line 131
    iget-object p1, p1, Landroidx/lifecycle/LiveData$extraCallback;->onNavigationEvent:Lo/setPlaybackToRemote;

    iget-object v0, p0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    invoke-interface {p1, v0}, Lo/setPlaybackToRemote;->onNavigationEvent(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public extraCallback(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    const-string/jumbo v0, "setValue"

    .line 304
    invoke-static {v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/String;)V

    .line 305
    iget v0, p0, Landroidx/lifecycle/LiveData;->onRelationshipValidationResult:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroidx/lifecycle/LiveData;->onRelationshipValidationResult:I

    .line 306
    iput-object p1, p0, Landroidx/lifecycle/LiveData;->extraCallback:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 307
    invoke-virtual {p0, p1}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Landroidx/lifecycle/LiveData$extraCallback;)V

    return-void
.end method

.method public extraCallback(Lo/setPlaybackToRemote;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setPlaybackToRemote<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "removeObserver"

    .line 242
    invoke-static {v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Landroidx/lifecycle/LiveData;->asBinder:Lo/MediaBrowserCompat$MediaBrowserImplApi21;

    invoke-virtual {v0, p1}, Lo/MediaBrowserCompat$MediaBrowserImplApi21;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/LiveData$extraCallback;

    if-nez p1, :cond_0

    return-void

    .line 247
    :cond_0
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData$extraCallback;->onNavigationEvent()V

    const/4 v0, 0x0

    .line 248
    invoke-virtual {p1, v0}, Landroidx/lifecycle/LiveData$extraCallback;->onNavigationEvent(Z)V

    return-void
.end method

.method public extraCallback(Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/toLegacyStreamType;",
            "Lo/setPlaybackToRemote<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "observe"

    .line 189
    invoke-static {v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/String;)V

    .line 190
    invoke-interface {p1}, Lo/toLegacyStreamType;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object v0

    invoke-virtual {v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->onNavigationEvent()Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    move-result-object v0

    sget-object v1, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    if-ne v0, v1, :cond_0

    return-void

    .line 194
    :cond_0
    new-instance v0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;

    invoke-direct {v0, p0, p1, p2}, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;-><init>(Landroidx/lifecycle/LiveData;Lo/toLegacyStreamType;Lo/setPlaybackToRemote;)V

    .line 195
    iget-object v1, p0, Landroidx/lifecycle/LiveData;->asBinder:Lo/MediaBrowserCompat$MediaBrowserImplApi21;

    invoke-virtual {v1, p2, v0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/lifecycle/LiveData$extraCallback;

    if-eqz p2, :cond_2

    .line 196
    invoke-virtual {p2, p1}, Landroidx/lifecycle/LiveData$extraCallback;->ICustomTabsCallback(Lo/toLegacyStreamType;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 197
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Cannot add the same observer with different lifecycles"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    return-void

    .line 203
    :cond_3
    invoke-interface {p1}, Lo/toLegacyStreamType;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object p1

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    return-void
.end method

.method final onMessageChannelReady(Landroidx/lifecycle/LiveData$extraCallback;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LiveData<",
            "TT;>.extraCallback;)V"
        }
    .end annotation

    .line 136
    iget-boolean v0, p0, Landroidx/lifecycle/LiveData;->ICustomTabsCallback$Stub:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 137
    iput-boolean v1, p0, Landroidx/lifecycle/LiveData;->asInterface:Z

    return-void

    .line 140
    :cond_0
    iput-boolean v1, p0, Landroidx/lifecycle/LiveData;->ICustomTabsCallback$Stub:Z

    :cond_1
    const/4 v0, 0x0

    .line 142
    iput-boolean v0, p0, Landroidx/lifecycle/LiveData;->asInterface:Z

    if-eqz p1, :cond_2

    .line 144
    invoke-direct {p0, p1}, Landroidx/lifecycle/LiveData;->onNavigationEvent(Landroidx/lifecycle/LiveData$extraCallback;)V

    const/4 p1, 0x0

    goto :goto_0

    .line 147
    :cond_2
    iget-object v1, p0, Landroidx/lifecycle/LiveData;->asBinder:Lo/MediaBrowserCompat$MediaBrowserImplApi21;

    .line 1160
    new-instance v2, Lo/MediaBrowserCompat$MediaBrowserImplApi21$onNavigationEvent;

    invoke-direct {v2, v1}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$onNavigationEvent;-><init>(Lo/MediaBrowserCompat$MediaBrowserImplApi21;)V

    .line 1161
    iget-object v1, v1, Lo/MediaBrowserCompat$MediaBrowserImplApi21;->onMessageChannelReady:Ljava/util/WeakHashMap;

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2, v3}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 149
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/lifecycle/LiveData$extraCallback;

    invoke-direct {p0, v1}, Landroidx/lifecycle/LiveData;->onNavigationEvent(Landroidx/lifecycle/LiveData$extraCallback;)V

    .line 150
    iget-boolean v1, p0, Landroidx/lifecycle/LiveData;->asInterface:Z

    if-eqz v1, :cond_3

    .line 155
    :cond_4
    :goto_0
    iget-boolean v1, p0, Landroidx/lifecycle/LiveData;->asInterface:Z

    if-nez v1, :cond_1

    .line 156
    iput-boolean v0, p0, Landroidx/lifecycle/LiveData;->ICustomTabsCallback$Stub:Z

    return-void
.end method

.method public onMessageChannelReady(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 284
    iget-object v0, p0, Landroidx/lifecycle/LiveData;->onMessageChannelReady:Ljava/lang/Object;

    monitor-enter v0

    .line 285
    :try_start_0
    iget-object v1, p0, Landroidx/lifecycle/LiveData;->onPostMessage:Ljava/lang/Object;

    sget-object v2, Landroidx/lifecycle/LiveData;->ICustomTabsCallback:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 286
    :goto_0
    iput-object p1, p0, Landroidx/lifecycle/LiveData;->onPostMessage:Ljava/lang/Object;

    .line 287
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_1

    return-void

    .line 291
    :cond_1
    invoke-static {}, Lo/MediaBrowserCompat$ItemCallback;->extraCallback()Lo/MediaBrowserCompat$ItemCallback;

    move-result-object p1

    iget-object v0, p0, Landroidx/lifecycle/LiveData;->onTransact:Ljava/lang/Runnable;

    .line 2101
    iget-object p1, p1, Lo/MediaBrowserCompat$ItemCallback;->extraCallback:Lo/MediaBrowserCompat$ItemReceiver;

    invoke-virtual {p1, v0}, Lo/MediaBrowserCompat$ItemReceiver;->onMessageChannelReady(Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p1

    .line 287
    monitor-exit v0

    throw p1
.end method

.method public onNavigationEvent()V
    .locals 0

    return-void
.end method

.method public onNavigationEvent(Lo/setPlaybackToRemote;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/setPlaybackToRemote<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "observeForever"

    .line 222
    invoke-static {v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/String;)V

    .line 223
    new-instance v0, Landroidx/lifecycle/LiveData$onNavigationEvent;

    invoke-direct {v0, p0, p1}, Landroidx/lifecycle/LiveData$onNavigationEvent;-><init>(Landroidx/lifecycle/LiveData;Lo/setPlaybackToRemote;)V

    .line 224
    iget-object v1, p0, Landroidx/lifecycle/LiveData;->asBinder:Lo/MediaBrowserCompat$MediaBrowserImplApi21;

    invoke-virtual {v1, p1, v0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/lifecycle/LiveData$extraCallback;

    .line 225
    instance-of v1, p1, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;

    if-nez v1, :cond_1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x1

    .line 232
    invoke-virtual {v0, p1}, Landroidx/lifecycle/LiveData$onNavigationEvent;->onNavigationEvent(Z)V

    return-void

    .line 226
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Cannot add the same observer with different lifecycles"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public onPostMessage()V
    .locals 0

    return-void
.end method

.method public final onPostMessage(Lo/toLegacyStreamType;)V
    .locals 3

    const-string v0, "removeObservers"

    .line 259
    invoke-static {v0}, Landroidx/lifecycle/LiveData;->onMessageChannelReady(Ljava/lang/String;)V

    .line 260
    iget-object v0, p0, Landroidx/lifecycle/LiveData;->asBinder:Lo/MediaBrowserCompat$MediaBrowserImplApi21;

    invoke-virtual {v0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 261
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/lifecycle/LiveData$extraCallback;

    invoke-virtual {v2, p1}, Landroidx/lifecycle/LiveData$extraCallback;->ICustomTabsCallback(Lo/toLegacyStreamType;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 262
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/setPlaybackToRemote;

    invoke-virtual {p0, v1}, Landroidx/lifecycle/LiveData;->extraCallback(Lo/setPlaybackToRemote;)V

    goto :goto_0

    :cond_1
    return-void
.end method
