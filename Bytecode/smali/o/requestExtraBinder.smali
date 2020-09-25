.class public abstract Lo/requestExtraBinder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/requestExtraBinder$extraCallback;,
        Lo/requestExtraBinder$onMessageChannelReady;,
        Lo/requestExtraBinder$ICustomTabsCallback;,
        Lo/requestExtraBinder$onNavigationEvent;,
        Lo/requestExtraBinder$onPostMessage;
    }
.end annotation


# instance fields
.field ICustomTabsCallback:Landroidx/activity/OnBackPressedDispatcher;

.field ICustomTabsCallback$Stub:I

.field public ICustomTabsCallback$Stub$Proxy:Lo/MediaControllerCompat$Callback$StubApi21;

.field public ICustomTabsService:Lo/postToHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/postToHandler<",
            "*>;"
        }
    .end annotation
.end field

.field private final ICustomTabsService$Stub:Lo/getAudioStream$ICustomTabsCallback;

.field private ICustomTabsService$Stub$Proxy:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/binderDied;",
            ">;"
        }
    .end annotation
.end field

.field private INotificationSideChannel:Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;

.field private IPostMessageService:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private IPostMessageService$Stub:Z

.field private IPostMessageService$Stub$Proxy:Ljava/lang/Runnable;

.field public final asBinder:Lo/MediaControllerCompat$MediaControllerImplApi21;

.field public asInterface:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/requestExtraBinder$onPostMessage;",
            ">;"
        }
    .end annotation
.end field

.field private cancel:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private cancelAll:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final extraCallback:Lo/extraCallback$asBinder;

.field private extraCommand:Z

.field public getInterfaceDescriptor:Landroidx/fragment/app/Fragment;

.field public mayLaunchUrl:Z

.field newSession:Lo/MediaControllerCompat$MediaControllerExtraData;

.field private notify:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/requestExtraBinder$extraCallback;",
            ">;"
        }
    .end annotation
.end field

.field public onMessageChannelReady:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/binderDied;",
            ">;"
        }
    .end annotation
.end field

.field final onNavigationEvent:Lo/MediaControllerCompat$Callback$StubCompat;

.field final onPostMessage:Lo/handleMediaPlayPauseKeySingleTapIfPending;

.field final onRelationshipValidationResult:Ljava/util/concurrent/atomic/AtomicInteger;

.field onTransact:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/HashSet<",
            "Lo/MediaMetadataCompatApi21;",
            ">;>;"
        }
    .end annotation
.end field

.field public postMessage:Z

.field private final requestPostMessageChannel:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lo/requestExtraBinder$ICustomTabsCallback;",
            ">;"
        }
    .end annotation
.end field

.field public updateVisuals:Z

.field private validateRelationship:Z

.field warmup:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lo/requestExtraBinder;->requestPostMessageChannel:Ljava/util/ArrayList;

    .line 340
    new-instance v0, Lo/extraCallback$asBinder;

    invoke-direct {v0}, Lo/extraCallback$asBinder;-><init>()V

    iput-object v0, p0, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    .line 343
    new-instance v0, Lo/MediaControllerCompat$Callback$StubCompat;

    invoke-direct {v0, p0}, Lo/MediaControllerCompat$Callback$StubCompat;-><init>(Lo/requestExtraBinder;)V

    iput-object v0, p0, Lo/requestExtraBinder;->onNavigationEvent:Lo/MediaControllerCompat$Callback$StubCompat;

    .line 346
    new-instance v0, Lo/requestExtraBinder$2;

    invoke-direct {v0, p0}, Lo/requestExtraBinder$2;-><init>(Lo/requestExtraBinder;)V

    iput-object v0, p0, Lo/requestExtraBinder;->onPostMessage:Lo/handleMediaPlayPauseKeySingleTapIfPending;

    .line 354
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lo/requestExtraBinder;->onRelationshipValidationResult:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 357
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lo/requestExtraBinder;->onTransact:Ljava/util/concurrent/ConcurrentHashMap;

    .line 359
    new-instance v0, Lo/requestExtraBinder$5;

    invoke-direct {v0, p0}, Lo/requestExtraBinder$5;-><init>(Lo/requestExtraBinder;)V

    iput-object v0, p0, Lo/requestExtraBinder;->ICustomTabsService$Stub:Lo/getAudioStream$ICustomTabsCallback;

    .line 374
    new-instance v0, Lo/MediaControllerCompat$MediaControllerImplApi21;

    invoke-direct {v0, p0}, Lo/MediaControllerCompat$MediaControllerImplApi21;-><init>(Lo/requestExtraBinder;)V

    iput-object v0, p0, Lo/requestExtraBinder;->asBinder:Lo/MediaControllerCompat$MediaControllerImplApi21;

    const/4 v0, -0x1

    .line 377
    iput v0, p0, Lo/requestExtraBinder;->ICustomTabsCallback$Stub:I

    .line 385
    new-instance v0, Lo/requestExtraBinder$3;

    invoke-direct {v0, p0}, Lo/requestExtraBinder$3;-><init>(Lo/requestExtraBinder;)V

    iput-object v0, p0, Lo/requestExtraBinder;->ICustomTabsCallback$Stub$Proxy:Lo/MediaControllerCompat$Callback$StubApi21;

    .line 410
    new-instance v0, Lo/requestExtraBinder$4;

    invoke-direct {v0, p0}, Lo/requestExtraBinder$4;-><init>(Lo/requestExtraBinder;)V

    iput-object v0, p0, Lo/requestExtraBinder;->IPostMessageService$Stub$Proxy:Ljava/lang/Runnable;

    return-void
.end method

.method private ICustomTabsCallback(Ljava/lang/RuntimeException;)V
    .locals 6

    .line 418
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "Activity state:"

    .line 419
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    new-instance v0, Lo/getStarRating;

    invoke-direct {v0, v1}, Lo/getStarRating;-><init>(Ljava/lang/String;)V

    .line 421
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    .line 422
    iget-object v0, p0, Lo/requestExtraBinder;->ICustomTabsService:Lo/postToHandler;

    const-string v3, "Failed dumping state"

    const/4 v4, 0x0

    const-string v5, "  "

    if-eqz v0, :cond_0

    :try_start_0
    new-array v4, v4, [Ljava/lang/String;

    .line 424
    invoke-virtual {v0, v5, v2, v4}, Lo/postToHandler;->onNavigationEvent(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 426
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    new-array v4, v4, [Ljava/lang/String;

    .line 430
    invoke-virtual {p0, v5, v0, v2, v4}, Lo/requestExtraBinder;->extraCallback(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    .line 432
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 435
    :goto_0
    throw p1
.end method

.method private ICustomTabsCallback(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lo/binderDied;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1881
    iget-object v0, p0, Lo/requestExtraBinder;->notify:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    :goto_0
    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_6

    .line 1883
    iget-object v3, p0, Lo/requestExtraBinder;->notify:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/requestExtraBinder$extraCallback;

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-eqz p1, :cond_1

    .line 1884
    iget-boolean v6, v3, Lo/requestExtraBinder$extraCallback;->onPostMessage:Z

    if-nez v6, :cond_1

    .line 1885
    iget-object v6, v3, Lo/requestExtraBinder$extraCallback;->onMessageChannelReady:Lo/binderDied;

    invoke-virtual {p1, v6}, Ljava/util/AbstractList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-eq v6, v5, :cond_1

    if-eqz p2, :cond_1

    .line 1886
    invoke-virtual {p2, v6}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1887
    iget-object v5, p0, Lo/requestExtraBinder;->notify:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, -0x1

    .line 50878
    iget-object v5, v3, Lo/requestExtraBinder$extraCallback;->onMessageChannelReady:Lo/binderDied;

    iget-object v5, v5, Lo/binderDied;->onPostMessage:Lo/requestExtraBinder;

    iget-object v6, v3, Lo/requestExtraBinder$extraCallback;->onMessageChannelReady:Lo/binderDied;

    iget-boolean v3, v3, Lo/requestExtraBinder$extraCallback;->onPostMessage:Z

    invoke-virtual {v5, v6, v3, v1, v1}, Lo/requestExtraBinder;->ICustomTabsCallback(Lo/binderDied;ZZZ)V

    goto :goto_3

    .line 50880
    :cond_1
    iget v6, v3, Lo/requestExtraBinder$extraCallback;->extraCallback:I

    if-nez v6, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    if-nez v6, :cond_3

    if-eqz p1, :cond_5

    .line 1894
    iget-object v6, v3, Lo/requestExtraBinder$extraCallback;->onMessageChannelReady:Lo/binderDied;

    .line 1895
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v7

    invoke-virtual {v6, p1, v1, v7}, Lo/binderDied;->onPostMessage(Ljava/util/ArrayList;II)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1896
    :cond_3
    iget-object v6, p0, Lo/requestExtraBinder;->notify:Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, -0x1

    if-eqz p1, :cond_4

    .line 1900
    iget-boolean v6, v3, Lo/requestExtraBinder$extraCallback;->onPostMessage:Z

    if-nez v6, :cond_4

    iget-object v6, v3, Lo/requestExtraBinder$extraCallback;->onMessageChannelReady:Lo/binderDied;

    .line 1901
    invoke-virtual {p1, v6}, Ljava/util/AbstractList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-eq v6, v5, :cond_4

    if-eqz p2, :cond_4

    .line 1903
    invoke-virtual {p2, v6}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 50881
    iget-object v5, v3, Lo/requestExtraBinder$extraCallback;->onMessageChannelReady:Lo/binderDied;

    iget-object v5, v5, Lo/binderDied;->onPostMessage:Lo/requestExtraBinder;

    iget-object v6, v3, Lo/requestExtraBinder$extraCallback;->onMessageChannelReady:Lo/binderDied;

    iget-boolean v3, v3, Lo/requestExtraBinder$extraCallback;->onPostMessage:Z

    invoke-virtual {v5, v6, v3, v1, v1}, Lo/requestExtraBinder;->ICustomTabsCallback(Lo/binderDied;ZZZ)V

    goto :goto_3

    .line 1907
    :cond_4
    invoke-virtual {v3}, Lo/requestExtraBinder$extraCallback;->onMessageChannelReady()V

    :cond_5
    :goto_3
    add-int/2addr v2, v4

    goto/16 :goto_1

    :cond_6
    return-void
.end method

.method private static ICustomTabsCallback(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lo/binderDied;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    :goto_0
    if-ge p2, p3, :cond_2

    .line 2171
    invoke-virtual {p0, p2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/binderDied;

    .line 2172
    invoke-virtual {p1, p2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const/4 v1, -0x1

    .line 2174
    invoke-virtual {v0, v1}, Lo/binderDied;->extraCallback(I)V

    add-int/lit8 v1, p3, -0x1

    if-ne p2, v1, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    .line 2178
    :goto_1
    invoke-virtual {v0, v2}, Lo/binderDied;->ICustomTabsCallback(Z)V

    goto :goto_2

    .line 2180
    :cond_1
    invoke-virtual {v0, v2}, Lo/binderDied;->extraCallback(I)V

    .line 2181
    invoke-virtual {v0}, Lo/binderDied;->onMessageChannelReady()V

    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private ICustomTabsCallback(Lo/MediaControllerCompat$MediaControllerImplBase;)V
    .locals 4

    .line 34134
    iget-object v0, p1, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    .line 1561
    iget-object v1, p0, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    iget-object v2, v0, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 34246
    iget-object v1, v1, Lo/extraCallback$asBinder;->onNavigationEvent:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    const-string v2, "FragmentManager"

    .line 35093
    invoke-static {v2, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1566
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Removed fragment from active set "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    :cond_1
    iget-object v1, p0, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    invoke-virtual {v1, p1}, Lo/extraCallback$asBinder;->onPostMessage(Lo/MediaControllerCompat$MediaControllerImplBase;)V

    .line 1570
    invoke-virtual {p0, v0}, Lo/requestExtraBinder;->ICustomTabsCallback(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method static ICustomTabsService(Landroidx/fragment/app/Fragment;)V
    .locals 3

    const-string v0, "FragmentManager"

    const/4 v1, 0x2

    .line 39093
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1627
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "show: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    :cond_0
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1629
    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 1632
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    :cond_1
    return-void
.end method

.method private ICustomTabsService$Stub()V
    .locals 2

    .line 1529
    iget-object v0, p0, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    invoke-virtual {v0}, Lo/extraCallback$asBinder;->extraCallback()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 1531
    invoke-virtual {p0, v1}, Lo/requestExtraBinder;->ICustomTabsCallback$Stub(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static ICustomTabsService$Stub(Landroidx/fragment/app/Fragment;)Z
    .locals 1

    .line 2895
    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object p0, p0, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Lo/requestExtraBinder;

    invoke-direct {p0}, Lo/requestExtraBinder;->cancel()Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private ICustomTabsService$Stub$Proxy()V
    .locals 3

    .line 2260
    iget-object v0, p0, Lo/requestExtraBinder;->onTransact:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2261
    iget-object v0, p0, Lo/requestExtraBinder;->onTransact:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 2262
    invoke-direct {p0, v1}, Lo/requestExtraBinder;->updateVisuals(Landroidx/fragment/app/Fragment;)V

    .line 2263
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getStateAfterAnimating()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lo/requestExtraBinder;->onMessageChannelReady(Landroidx/fragment/app/Fragment;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private ICustomTabsService$Stub$Proxy(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 2193
    invoke-direct {p0, p1}, Lo/requestExtraBinder;->IPostMessageService(Landroidx/fragment/app/Fragment;)Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2195
    sget v1, Lo/registerCallback$onPostMessage;->visible_removing_fragment_view_tag:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 2196
    sget v1, Lo/registerCallback$onPostMessage;->visible_removing_fragment_view_tag:I

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 2198
    :cond_0
    sget v1, Lo/registerCallback$onPostMessage;->visible_removing_fragment_view_tag:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/Fragment;

    .line 2199
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getNextAnim()I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->setNextAnim(I)V

    :cond_1
    return-void
.end method

.method private IPostMessageService(Landroidx/fragment/app/Fragment;)Landroid/view/ViewGroup;
    .locals 2

    .line 2205
    iget v0, p1, Landroidx/fragment/app/Fragment;->mContainerId:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return-object v1

    .line 2212
    :cond_0
    iget-object v0, p0, Lo/requestExtraBinder;->newSession:Lo/MediaControllerCompat$MediaControllerExtraData;

    invoke-virtual {v0}, Lo/MediaControllerCompat$MediaControllerExtraData;->extraCallback()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2213
    iget-object v0, p0, Lo/requestExtraBinder;->newSession:Lo/MediaControllerCompat$MediaControllerExtraData;

    iget p1, p1, Landroidx/fragment/app/Fragment;->mContainerId:I

    invoke-virtual {v0, p1}, Lo/MediaControllerCompat$MediaControllerExtraData;->onNavigationEvent(I)Landroid/view/View;

    move-result-object p1

    .line 2215
    instance-of v0, p1, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 2216
    check-cast p1, Landroid/view/ViewGroup;

    return-object p1

    :cond_1
    return-object v1
.end method

.method private IPostMessageService()V
    .locals 4

    .line 498
    iget-object v0, p0, Lo/requestExtraBinder;->requestPostMessageChannel:Ljava/util/ArrayList;

    monitor-enter v0

    .line 499
    :try_start_0
    iget-object v1, p0, Lo/requestExtraBinder;->requestPostMessageChannel:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 500
    iget-object v1, p0, Lo/requestExtraBinder;->onPostMessage:Lo/handleMediaPlayPauseKeySingleTapIfPending;

    .line 3071
    iput-boolean v2, v1, Lo/handleMediaPlayPauseKeySingleTapIfPending;->extraCallback:Z

    .line 501
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    .line 503
    :cond_0
    monitor-exit v0

    .line 507
    iget-object v0, p0, Lo/requestExtraBinder;->onPostMessage:Lo/handleMediaPlayPauseKeySingleTapIfPending;

    .line 3686
    iget-object v1, p0, Lo/requestExtraBinder;->onMessageChannelReady:Ljava/util/ArrayList;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-lez v1, :cond_2

    .line 507
    iget-object v1, p0, Lo/requestExtraBinder;->getInterfaceDescriptor:Landroidx/fragment/app/Fragment;

    .line 508
    invoke-virtual {p0, v1}, Lo/requestExtraBinder;->extraCallback(Landroidx/fragment/app/Fragment;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 4071
    :goto_1
    iput-boolean v2, v0, Lo/handleMediaPlayPauseKeySingleTapIfPending;->extraCallback:Z

    return-void

    :catchall_0
    move-exception v1

    .line 503
    monitor-exit v0

    throw v1
.end method

.method private IPostMessageService$Stub()V
    .locals 2

    .line 2304
    iget-object v0, p0, Lo/requestExtraBinder;->asInterface:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2305
    :goto_0
    iget-object v1, p0, Lo/requestExtraBinder;->asInterface:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2306
    iget-object v1, p0, Lo/requestExtraBinder;->asInterface:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/requestExtraBinder$onPostMessage;

    invoke-interface {v1}, Lo/requestExtraBinder$onPostMessage;->onPostMessage()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private IPostMessageService$Stub(Landroidx/fragment/app/Fragment;)V
    .locals 7

    .line 1382
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    .line 1383
    iget-object v0, p0, Lo/requestExtraBinder;->ICustomTabsService:Lo/postToHandler;

    .line 29200
    iget-object v0, v0, Lo/postToHandler;->onNavigationEvent:Landroid/content/Context;

    .line 1384
    iget-object v3, p0, Lo/requestExtraBinder;->newSession:Lo/MediaControllerCompat$MediaControllerExtraData;

    iget-boolean v4, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    xor-int/2addr v4, v1

    .line 1383
    invoke-static {v0, v3, p1, v4}, Lo/setHandler;->onMessageChannelReady(Landroid/content/Context;Lo/MediaControllerCompat$MediaControllerExtraData;Landroidx/fragment/app/Fragment;Z)Lo/setHandler$extraCallback;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1385
    iget-object v3, v0, Lo/setHandler$extraCallback;->ICustomTabsCallback:Landroid/animation/Animator;

    if-eqz v3, :cond_2

    .line 1386
    iget-object v3, v0, Lo/setHandler$extraCallback;->ICustomTabsCallback:Landroid/animation/Animator;

    iget-object v4, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1387
    iget-boolean v3, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v3, :cond_1

    .line 1388
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isHideReplaced()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1389
    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->setHideReplaced(Z)V

    goto :goto_0

    .line 1391
    :cond_0
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1392
    iget-object v4, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1393
    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->startViewTransition(Landroid/view/View;)V

    .line 1396
    iget-object v5, v0, Lo/setHandler$extraCallback;->ICustomTabsCallback:Landroid/animation/Animator;

    new-instance v6, Lo/requestExtraBinder$1;

    invoke-direct {v6, p0, v3, v4, p1}, Lo/requestExtraBinder$1;-><init>(Lo/requestExtraBinder;Landroid/view/ViewGroup;Landroid/view/View;Landroidx/fragment/app/Fragment;)V

    invoke-virtual {v5, v6}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    .line 1408
    :cond_1
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1410
    :goto_0
    iget-object v0, v0, Lo/setHandler$extraCallback;->ICustomTabsCallback:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    .line 1413
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget-object v4, v0, Lo/setHandler$extraCallback;->extraCallback:Landroid/view/animation/Animation;

    invoke-virtual {v3, v4}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1414
    iget-object v0, v0, Lo/setHandler$extraCallback;->extraCallback:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->start()V

    .line 1416
    :cond_3
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isHideReplaced()Z

    move-result v0

    if-nez v0, :cond_4

    const/16 v0, 0x8

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    .line 1419
    :goto_1
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1420
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isHideReplaced()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1421
    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->setHideReplaced(Z)V

    .line 1425
    :cond_5
    :goto_2
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v0, :cond_9

    .line 29895
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    if-eqz v0, :cond_6

    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    if-nez v0, :cond_7

    :cond_6
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Lo/requestExtraBinder;

    invoke-direct {v0}, Lo/requestExtraBinder;->cancel()Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    const/4 v0, 0x1

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_9

    .line 1426
    iput-boolean v1, p0, Lo/requestExtraBinder;->IPostMessageService$Stub:Z

    .line 1428
    :cond_9
    iput-boolean v2, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 1429
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    invoke-virtual {p1, v0}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    return-void
.end method

.method private cancel()Z
    .locals 5

    .line 2883
    iget-object v0, p0, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    invoke-virtual {v0}, Lo/extraCallback$asBinder;->extraCallback()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment;

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    .line 51002
    iget-boolean v2, v3, Landroidx/fragment/app/Fragment;->mHasMenu:Z

    if-eqz v2, :cond_1

    iget-boolean v2, v3, Landroidx/fragment/app/Fragment;->mMenuVisible:Z

    if-nez v2, :cond_2

    :cond_1
    iget-object v2, v3, Landroidx/fragment/app/Fragment;->mChildFragmentManager:Lo/requestExtraBinder;

    invoke-direct {v2}, Lo/requestExtraBinder;->cancel()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    :cond_4
    :goto_0
    if-eqz v2, :cond_0

    return v4

    :cond_5
    return v1
.end method

.method static extraCallback(I)I
    .locals 3

    const/16 v0, 0x2002

    const/16 v1, 0x1003

    const/16 v2, 0x1001

    if-eq p0, v2, :cond_2

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x1001

    goto :goto_0

    :cond_1
    const/16 v0, 0x1003

    :cond_2
    :goto_0
    return v0
.end method

.method public static extraCallback(Landroid/view/View;)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 837
    sget v0, Lo/registerCallback$onPostMessage;->fragment_container_view_tag:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    .line 838
    instance-of v0, p0, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_0

    .line 839
    check-cast p0, Landroidx/fragment/app/Fragment;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private mayLaunchUrl(Landroidx/fragment/app/Fragment;)Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;
    .locals 3

    .line 906
    iget-object v0, p0, Lo/requestExtraBinder;->INotificationSideChannel:Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;

    .line 11138
    iget-object v1, v0, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;->onNavigationEvent:Ljava/util/HashMap;

    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;

    if-nez v1, :cond_0

    .line 11140
    new-instance v1, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;

    iget-boolean v2, v0, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;->onPostMessage:Z

    invoke-direct {v1, v2}, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;-><init>(Z)V

    .line 11141
    iget-object v0, v0, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;->onNavigationEvent:Ljava/util/HashMap;

    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method private onMessageChannelReady(Ljava/util/ArrayList;Ljava/util/ArrayList;IILo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lo/binderDied;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II",
            "Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection<",
            "Landroidx/fragment/app/Fragment;",
            ">;)I"
        }
    .end annotation

    add-int/lit8 v0, p4, -0x1

    move v1, p4

    :goto_0
    if-lt v0, p3, :cond_7

    .line 2071
    invoke-virtual {p1, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/binderDied;

    .line 2072
    invoke-virtual {p2, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 50892
    :goto_1
    iget-object v6, v2, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/AbstractCollection;->size()I

    move-result v6

    const/4 v7, 0x1

    if-ge v5, v6, :cond_1

    .line 50893
    iget-object v6, v2, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;

    .line 50894
    invoke-static {v6}, Lo/binderDied;->onPostMessage(Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v5, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_2

    add-int/lit8 v5, v0, 0x1

    .line 2074
    invoke-virtual {v2, p1, v5, p4}, Lo/binderDied;->onPostMessage(Ljava/util/ArrayList;II)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_3

    :cond_2
    const/4 v7, 0x0

    :goto_3
    if-eqz v7, :cond_6

    .line 2076
    iget-object v5, p0, Lo/requestExtraBinder;->notify:Ljava/util/ArrayList;

    if-nez v5, :cond_3

    .line 2077
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lo/requestExtraBinder;->notify:Ljava/util/ArrayList;

    .line 2079
    :cond_3
    new-instance v5, Lo/requestExtraBinder$extraCallback;

    invoke-direct {v5, v2, v3}, Lo/requestExtraBinder$extraCallback;-><init>(Lo/binderDied;Z)V

    .line 2081
    iget-object v6, p0, Lo/requestExtraBinder;->notify:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 2082
    invoke-virtual {v2, v5}, Lo/binderDied;->onPostMessage(Landroidx/fragment/app/Fragment$onNavigationEvent;)V

    if-eqz v3, :cond_4

    .line 2086
    invoke-virtual {v2}, Lo/binderDied;->onMessageChannelReady()V

    goto :goto_4

    .line 2088
    :cond_4
    invoke-virtual {v2, v4}, Lo/binderDied;->ICustomTabsCallback(Z)V

    :goto_4
    add-int/lit8 v1, v1, -0x1

    if-eq v0, v1, :cond_5

    .line 2094
    invoke-virtual {p1, v0}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    .line 2095
    invoke-virtual {p1, v1, v2}, Ljava/util/AbstractList;->add(ILjava/lang/Object;)V

    .line 2099
    :cond_5
    invoke-direct {p0, p5}, Lo/requestExtraBinder;->onMessageChannelReady(Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;)V

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_7
    return v1
.end method

.method private onMessageChannelReady(Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection<",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .line 2229
    iget v0, p0, Lo/requestExtraBinder;->ICustomTabsCallback$Stub:I

    if-gtz v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x3

    .line 2233
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 2234
    iget-object v1, p0, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    invoke-virtual {v1}, Lo/extraCallback$asBinder;->ICustomTabsCallback()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 2235
    iget v3, v2, Landroidx/fragment/app/Fragment;->mState:I

    if-ge v3, v0, :cond_1

    .line 2236
    invoke-virtual {p0, v2, v0}, Lo/requestExtraBinder;->onMessageChannelReady(Landroidx/fragment/app/Fragment;I)V

    .line 2237
    iget-object v3, v2, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v3, :cond_1

    iget-boolean v3, v2, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v3, :cond_1

    iget-boolean v3, v2, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v3, :cond_1

    .line 2238
    invoke-virtual {p1, v2}, Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static onMessageChannelReady(I)Z
    .locals 1

    const-string v0, "FragmentManager"

    .line 93
    invoke-static {v0, p0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private onNavigationEvent(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lo/binderDied;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .line 1929
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1933
    :cond_0
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    if-ne v0, v1, :cond_6

    .line 1938
    invoke-direct {p0, p1, p2}, Lo/requestExtraBinder;->ICustomTabsCallback(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1940
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 1943
    invoke-virtual {p1, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/binderDied;

    iget-boolean v3, v3, Lo/MediaControllerCompat$MediaControllerImplApi23;->mayLaunchUrl:Z

    if-nez v3, :cond_3

    if-eq v2, v1, :cond_1

    .line 1947
    invoke-direct {p0, p1, p2, v2, v1}, Lo/requestExtraBinder;->onNavigationEvent(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_1
    add-int/lit8 v2, v1, 0x1

    .line 1952
    invoke-virtual {p2, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_1
    if-ge v2, v0, :cond_2

    .line 1954
    invoke-virtual {p2, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1955
    invoke-virtual {p1, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/binderDied;

    iget-boolean v3, v3, Lo/MediaControllerCompat$MediaControllerImplApi23;->mayLaunchUrl:Z

    if-nez v3, :cond_2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1959
    :cond_2
    invoke-direct {p0, p1, p2, v1, v2}, Lo/requestExtraBinder;->onNavigationEvent(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    add-int/lit8 v1, v2, -0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-eq v2, v0, :cond_5

    .line 1965
    invoke-direct {p0, p1, p2, v2, v0}, Lo/requestExtraBinder;->onNavigationEvent(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    :cond_5
    return-void

    .line 1934
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Internal error with the back stack records"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private onNavigationEvent(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lo/binderDied;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)V"
        }
    .end annotation

    move-object v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    .line 1979
    invoke-virtual {v8, v10}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/binderDied;

    iget-boolean v12, v0, Lo/MediaControllerCompat$MediaControllerImplApi23;->mayLaunchUrl:Z

    .line 1981
    iget-object v0, v7, Lo/requestExtraBinder;->cancel:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1982
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Lo/requestExtraBinder;->cancel:Ljava/util/ArrayList;

    goto :goto_0

    .line 1984
    :cond_0
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    .line 1986
    :goto_0
    iget-object v0, v7, Lo/requestExtraBinder;->cancel:Ljava/util/ArrayList;

    iget-object v1, v7, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    invoke-virtual {v1}, Lo/extraCallback$asBinder;->ICustomTabsCallback()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    .line 50883
    iget-object v0, v7, Lo/requestExtraBinder;->warmup:Landroidx/fragment/app/Fragment;

    const/4 v1, 0x0

    move v2, v10

    const/4 v13, 0x0

    :goto_1
    const/4 v14, 0x1

    if-ge v2, v11, :cond_4

    .line 1989
    invoke-virtual {v8, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/binderDied;

    .line 1990
    invoke-virtual {v9, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_1

    .line 1992
    iget-object v4, v7, Lo/requestExtraBinder;->cancel:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v0}, Lo/binderDied;->extraCallback(Ljava/util/ArrayList;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    goto :goto_2

    .line 1994
    :cond_1
    iget-object v4, v7, Lo/requestExtraBinder;->cancel:Ljava/util/ArrayList;

    invoke-virtual {v3, v4, v0}, Lo/binderDied;->onPostMessage(Ljava/util/ArrayList;Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    :goto_2
    if-nez v13, :cond_3

    .line 1996
    iget-boolean v3, v3, Lo/MediaControllerCompat$MediaControllerImplApi23;->asBinder:Z

    if-eqz v3, :cond_2

    goto :goto_3

    :cond_2
    const/4 v13, 0x0

    goto :goto_4

    :cond_3
    :goto_3
    const/4 v13, 0x1

    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1998
    :cond_4
    iget-object v0, v7, Lo/requestExtraBinder;->cancel:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    if-nez v12, :cond_5

    const/4 v5, 0x0

    .line 2001
    iget-object v6, v7, Lo/requestExtraBinder;->ICustomTabsService$Stub:Lo/getAudioStream$ICustomTabsCallback;

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    invoke-static/range {v0 .. v6}, Lo/getAudioStream;->ICustomTabsCallback(Lo/requestExtraBinder;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZLo/getAudioStream$ICustomTabsCallback;)V

    .line 2004
    :cond_5
    invoke-static/range {p1 .. p4}, Lo/requestExtraBinder;->ICustomTabsCallback(Ljava/util/ArrayList;Ljava/util/ArrayList;II)V

    if-eqz v12, :cond_6

    .line 2008
    new-instance v6, Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    invoke-direct {v6}, Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;-><init>()V

    .line 2009
    invoke-direct {p0, v6}, Lo/requestExtraBinder;->onMessageChannelReady(Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;)V

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object v5, v6

    .line 2010
    invoke-direct/range {v0 .. v5}, Lo/requestExtraBinder;->onMessageChannelReady(Ljava/util/ArrayList;Ljava/util/ArrayList;IILo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;)I

    move-result v0

    .line 2012
    invoke-static {v6}, Lo/requestExtraBinder;->onNavigationEvent(Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;)V

    move v4, v0

    goto :goto_5

    :cond_6
    move v4, v11

    :goto_5
    if-eq v4, v10, :cond_7

    if-eqz v12, :cond_7

    const/4 v5, 0x1

    .line 2017
    iget-object v6, v7, Lo/requestExtraBinder;->ICustomTabsService$Stub:Lo/getAudioStream$ICustomTabsCallback;

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    invoke-static/range {v0 .. v6}, Lo/getAudioStream;->ICustomTabsCallback(Lo/requestExtraBinder;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZLo/getAudioStream$ICustomTabsCallback;)V

    .line 2019
    iget v0, v7, Lo/requestExtraBinder;->ICustomTabsCallback$Stub:I

    invoke-virtual {p0, v0, v14}, Lo/requestExtraBinder;->onPostMessage(IZ)V

    :cond_7
    :goto_6
    if-ge v10, v11, :cond_9

    .line 2023
    invoke-virtual {v8, v10}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/binderDied;

    .line 2024
    invoke-virtual {v9, v10}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 2025
    iget v1, v0, Lo/binderDied;->onNavigationEvent:I

    if-ltz v1, :cond_8

    const/4 v1, -0x1

    .line 2026
    iput v1, v0, Lo/binderDied;->onNavigationEvent:I

    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_6

    :cond_9
    if-eqz v13, :cond_a

    .line 2031
    invoke-direct {p0}, Lo/requestExtraBinder;->IPostMessageService$Stub()V

    :cond_a
    return-void
.end method

.method private static onNavigationEvent(Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection<",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .line 2043
    invoke-virtual {p0}, Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 50891
    iget-object v2, p0, Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;->onMessageChannelReady:[Ljava/lang/Object;

    aget-object v2, v2, v1

    .line 2045
    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 2046
    iget-boolean v3, v2, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-nez v3, :cond_0

    .line 2047
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v3

    .line 2048
    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v4

    iput v4, v2, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    const/4 v2, 0x0

    .line 2049
    invoke-virtual {v3, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private onPostMessage(Z)V
    .locals 2

    .line 1789
    iget-boolean v0, p0, Lo/requestExtraBinder;->extraCommand:Z

    if-nez v0, :cond_5

    .line 1793
    iget-object v0, p0, Lo/requestExtraBinder;->ICustomTabsService:Lo/postToHandler;

    if-nez v0, :cond_1

    .line 1794
    iget-boolean p1, p0, Lo/requestExtraBinder;->postMessage:Z

    if-eqz p1, :cond_0

    .line 1795
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FragmentManager has been destroyed"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1797
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FragmentManager has not been attached to a host."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1801
    :cond_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    iget-object v1, p0, Lo/requestExtraBinder;->ICustomTabsService:Lo/postToHandler;

    .line 49205
    iget-object v1, v1, Lo/postToHandler;->onMessageChannelReady:Landroid/os/Handler;

    .line 1801
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_4

    if-nez p1, :cond_2

    .line 1806
    invoke-direct {p0}, Lo/requestExtraBinder;->validateRelationship()V

    .line 1809
    :cond_2
    iget-object p1, p0, Lo/requestExtraBinder;->ICustomTabsService$Stub$Proxy:Ljava/util/ArrayList;

    if-nez p1, :cond_3

    .line 1810
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/requestExtraBinder;->ICustomTabsService$Stub$Proxy:Ljava/util/ArrayList;

    .line 1811
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lo/requestExtraBinder;->cancelAll:Ljava/util/ArrayList;

    :cond_3
    const/4 p1, 0x1

    .line 1813
    iput-boolean p1, p0, Lo/requestExtraBinder;->extraCommand:Z

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 1815
    :try_start_0
    invoke-direct {p0, v0, v0}, Lo/requestExtraBinder;->ICustomTabsCallback(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1817
    iput-boolean p1, p0, Lo/requestExtraBinder;->extraCommand:Z

    return-void

    :catchall_0
    move-exception v0

    iput-boolean p1, p0, Lo/requestExtraBinder;->extraCommand:Z

    .line 1818
    throw v0

    .line 1802
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Must be called from main thread of fragment host"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1790
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "FragmentManager is already executing transactions"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private onPostMessage(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lo/binderDied;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 2281
    iget-object v0, p0, Lo/requestExtraBinder;->requestPostMessageChannel:Ljava/util/ArrayList;

    monitor-enter v0

    .line 2282
    :try_start_0
    iget-object v1, p0, Lo/requestExtraBinder;->requestPostMessageChannel:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 2283
    monitor-exit v0

    return v2

    .line 2286
    :cond_0
    iget-object v1, p0, Lo/requestExtraBinder;->requestPostMessageChannel:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 2288
    iget-object v4, p0, Lo/requestExtraBinder;->requestPostMessageChannel:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lo/requestExtraBinder$ICustomTabsCallback;

    invoke-interface {v4, p1, p2}, Lo/requestExtraBinder$ICustomTabsCallback;->onPostMessage(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v4

    or-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2290
    :cond_1
    iget-object p1, p0, Lo/requestExtraBinder;->requestPostMessageChannel:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->clear()V

    .line 2291
    iget-object p1, p0, Lo/requestExtraBinder;->ICustomTabsService:Lo/postToHandler;

    .line 50899
    iget-object p1, p1, Lo/postToHandler;->onMessageChannelReady:Landroid/os/Handler;

    .line 2291
    iget-object p2, p0, Lo/requestExtraBinder;->IPostMessageService$Stub$Proxy:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2292
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v3

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method private updateVisuals(Landroidx/fragment/app/Fragment;)V
    .locals 3

    .line 1331
    iget-object v0, p0, Lo/requestExtraBinder;->onTransact:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    if-eqz v0, :cond_1

    .line 1333
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/MediaMetadataCompatApi21;

    .line 1334
    invoke-virtual {v2}, Lo/MediaMetadataCompatApi21;->onNavigationEvent()V

    goto :goto_0

    .line 1336
    :cond_0
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    .line 1337
    invoke-virtual {p0, p1}, Lo/requestExtraBinder;->asInterface(Landroidx/fragment/app/Fragment;)V

    .line 1338
    iget-object v0, p0, Lo/requestExtraBinder;->onTransact:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private validateRelationship()V
    .locals 2

    .line 46723
    iget-boolean v0, p0, Lo/requestExtraBinder;->updateVisuals:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lo/requestExtraBinder;->mayLaunchUrl:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    return-void

    .line 1703
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can not perform this action after onSaveInstanceState"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method final ICustomTabsCallback(I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2635
    :try_start_0
    iput-boolean v0, p0, Lo/requestExtraBinder;->extraCommand:Z

    .line 2636
    iget-object v2, p0, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    invoke-virtual {v2, p1}, Lo/extraCallback$asBinder;->onNavigationEvent(I)V

    .line 2637
    invoke-virtual {p0, p1, v1}, Lo/requestExtraBinder;->onPostMessage(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2639
    iput-boolean v1, p0, Lo/requestExtraBinder;->extraCommand:Z

    .line 2641
    invoke-virtual {p0, v0}, Lo/requestExtraBinder;->ICustomTabsCallback(Z)Z

    return-void

    :catchall_0
    move-exception p1

    .line 2639
    iput-boolean v1, p0, Lo/requestExtraBinder;->extraCommand:Z

    .line 2640
    throw p1
.end method

.method public final ICustomTabsCallback(Landroid/content/res/Configuration;)V
    .locals 2

    .line 2661
    iget-object v0, p0, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    invoke-virtual {v0}, Lo/extraCallback$asBinder;->ICustomTabsCallback()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 2663
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->performConfigurationChanged(Landroid/content/res/Configuration;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final ICustomTabsCallback(Landroid/view/Menu;)V
    .locals 2

    .line 2752
    iget v0, p0, Lo/requestExtraBinder;->ICustomTabsCallback$Stub:I

    if-gtz v0, :cond_0

    return-void

    .line 2755
    :cond_0
    iget-object v0, p0, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    invoke-virtual {v0}, Lo/extraCallback$asBinder;->ICustomTabsCallback()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_1

    .line 2757
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->performOptionsMenuClosed(Landroid/view/Menu;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final ICustomTabsCallback(Landroidx/fragment/app/Fragment;)V
    .locals 6

    .line 13723
    iget-boolean v0, p0, Lo/requestExtraBinder;->updateVisuals:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lo/requestExtraBinder;->mayLaunchUrl:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const/4 v3, 0x2

    const-string v4, "FragmentManager"

    if-eqz v0, :cond_3

    .line 14093
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Ignoring removeRetainedFragment as the state is already saved"

    .line 925
    invoke-static {v4, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    .line 929
    :cond_3
    iget-object v0, p0, Lo/requestExtraBinder;->INotificationSideChannel:Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;

    .line 14133
    iget-object v0, v0, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;->ICustomTabsCallback:Ljava/util/HashMap;

    iget-object v5, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/util/AbstractMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    if-eqz v1, :cond_5

    .line 15093
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 931
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Updating retained Fragments: Removed "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method final ICustomTabsCallback(Lo/binderDied;ZZZ)V
    .locals 8

    if-eqz p2, :cond_0

    .line 2124
    invoke-virtual {p1, p4}, Lo/binderDied;->ICustomTabsCallback(Z)V

    goto :goto_0

    .line 2126
    :cond_0
    invoke-virtual {p1}, Lo/binderDied;->onMessageChannelReady()V

    .line 2128
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-direct {v1, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 2129
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 2130
    invoke-virtual {v1, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 2131
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x1

    .line 2133
    iget-object v6, p0, Lo/requestExtraBinder;->ICustomTabsService$Stub:Lo/getAudioStream$ICustomTabsCallback;

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Lo/getAudioStream;->ICustomTabsCallback(Lo/requestExtraBinder;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZLo/getAudioStream$ICustomTabsCallback;)V

    :cond_1
    if-eqz p4, :cond_2

    .line 2137
    iget p2, p0, Lo/requestExtraBinder;->ICustomTabsCallback$Stub:I

    invoke-virtual {p0, p2, v7}, Lo/requestExtraBinder;->onPostMessage(IZ)V

    .line 2140
    :cond_2
    iget-object p2, p0, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    invoke-virtual {p2}, Lo/extraCallback$asBinder;->extraCallback()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroidx/fragment/app/Fragment;

    if-eqz p3, :cond_3

    .line 2144
    iget-object v0, p3, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-boolean v0, p3, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v0, :cond_3

    iget v0, p3, Landroidx/fragment/app/Fragment;->mContainerId:I

    .line 2145
    invoke-virtual {p1, v0}, Lo/binderDied;->onNavigationEvent(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2146
    iget v0, p3, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_4

    .line 2147
    iget-object v0, p3, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget v2, p3, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    :cond_4
    if-eqz p4, :cond_5

    .line 2150
    iput v1, p3, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    goto :goto_1

    :cond_5
    const/high16 v0, -0x40800000    # -1.0f

    .line 2152
    iput v0, p3, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    const/4 v0, 0x0

    .line 2153
    iput-boolean v0, p3, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    goto :goto_1

    :cond_6
    return-void
.end method

.method public final ICustomTabsCallback()Z
    .locals 9

    const/4 v0, 0x0

    .line 653
    invoke-virtual {p0, v0}, Lo/requestExtraBinder;->ICustomTabsCallback(Z)Z

    const/4 v1, 0x1

    .line 654
    invoke-direct {p0, v1}, Lo/requestExtraBinder;->onPostMessage(Z)V

    .line 656
    iget-object v2, p0, Lo/requestExtraBinder;->warmup:Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_0

    .line 659
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v2

    .line 5581
    invoke-virtual {v2}, Lo/requestExtraBinder;->ICustomTabsCallback()Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    .line 666
    :cond_0
    iget-object v4, p0, Lo/requestExtraBinder;->ICustomTabsService$Stub$Proxy:Ljava/util/ArrayList;

    iget-object v5, p0, Lo/requestExtraBinder;->cancelAll:Ljava/util/ArrayList;

    const/4 v6, 0x0

    const/4 v7, -0x1

    const/4 v8, 0x0

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lo/requestExtraBinder;->onMessageChannelReady(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 668
    iput-boolean v1, p0, Lo/requestExtraBinder;->extraCommand:Z

    .line 670
    :try_start_0
    iget-object v1, p0, Lo/requestExtraBinder;->ICustomTabsService$Stub$Proxy:Ljava/util/ArrayList;

    iget-object v3, p0, Lo/requestExtraBinder;->cancelAll:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v3}, Lo/requestExtraBinder;->onNavigationEvent(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5846
    iput-boolean v0, p0, Lo/requestExtraBinder;->extraCommand:Z

    .line 5847
    iget-object v1, p0, Lo/requestExtraBinder;->cancelAll:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->clear()V

    .line 5848
    iget-object v1, p0, Lo/requestExtraBinder;->ICustomTabsService$Stub$Proxy:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->clear()V

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 6846
    iput-boolean v0, p0, Lo/requestExtraBinder;->extraCommand:Z

    .line 6847
    iget-object v0, p0, Lo/requestExtraBinder;->cancelAll:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    .line 6848
    iget-object v0, p0, Lo/requestExtraBinder;->ICustomTabsService$Stub$Proxy:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    .line 673
    throw v1

    .line 676
    :cond_1
    :goto_0
    invoke-direct {p0}, Lo/requestExtraBinder;->IPostMessageService()V

    .line 7297
    iget-boolean v1, p0, Lo/requestExtraBinder;->validateRelationship:Z

    if-eqz v1, :cond_2

    .line 7298
    iput-boolean v0, p0, Lo/requestExtraBinder;->validateRelationship:Z

    .line 7299
    invoke-direct {p0}, Lo/requestExtraBinder;->ICustomTabsService$Stub()V

    .line 678
    :cond_2
    iget-object v0, p0, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    .line 8130
    iget-object v0, v0, Lo/extraCallback$asBinder;->onNavigationEvent:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->values()Ljava/util/Collection;

    move-result-object v0

    const/4 v1, 0x0

    .line 8133
    invoke-static {v1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    return v2
.end method

.method public final ICustomTabsCallback(Z)Z
    .locals 4

    .line 1855
    invoke-direct {p0, p1}, Lo/requestExtraBinder;->onPostMessage(Z)V

    const/4 p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1858
    :goto_0
    iget-object v2, p0, Lo/requestExtraBinder;->ICustomTabsService$Stub$Proxy:Ljava/util/ArrayList;

    iget-object v3, p0, Lo/requestExtraBinder;->cancelAll:Ljava/util/ArrayList;

    invoke-direct {p0, v2, v3}, Lo/requestExtraBinder;->onPostMessage(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1859
    iput-boolean p1, p0, Lo/requestExtraBinder;->extraCommand:Z

    .line 1861
    :try_start_0
    iget-object v1, p0, Lo/requestExtraBinder;->ICustomTabsService$Stub$Proxy:Ljava/util/ArrayList;

    iget-object v2, p0, Lo/requestExtraBinder;->cancelAll:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2}, Lo/requestExtraBinder;->onNavigationEvent(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50860
    iput-boolean v0, p0, Lo/requestExtraBinder;->extraCommand:Z

    .line 50861
    iget-object v1, p0, Lo/requestExtraBinder;->cancelAll:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->clear()V

    .line 50862
    iget-object v1, p0, Lo/requestExtraBinder;->ICustomTabsService$Stub$Proxy:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->clear()V

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 50864
    iput-boolean v0, p0, Lo/requestExtraBinder;->extraCommand:Z

    .line 50865
    iget-object v0, p0, Lo/requestExtraBinder;->cancelAll:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    .line 50866
    iget-object v0, p0, Lo/requestExtraBinder;->ICustomTabsService$Stub$Proxy:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    .line 1864
    throw p1

    .line 1868
    :cond_0
    invoke-direct {p0}, Lo/requestExtraBinder;->IPostMessageService()V

    .line 50868
    iget-boolean p1, p0, Lo/requestExtraBinder;->validateRelationship:Z

    if-eqz p1, :cond_1

    .line 50869
    iput-boolean v0, p0, Lo/requestExtraBinder;->validateRelationship:Z

    .line 50870
    invoke-direct {p0}, Lo/requestExtraBinder;->ICustomTabsService$Stub()V

    .line 1870
    :cond_1
    iget-object p1, p0, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    .line 50873
    iget-object p1, p1, Lo/extraCallback$asBinder;->onNavigationEvent:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/AbstractMap;->values()Ljava/util/Collection;

    move-result-object p1

    const/4 v0, 0x0

    .line 50876
    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    return v1
.end method

.method public final ICustomTabsCallback$Stub()V
    .locals 1

    const/4 v0, 0x0

    .line 2581
    iput-boolean v0, p0, Lo/requestExtraBinder;->updateVisuals:Z

    .line 2582
    iput-boolean v0, p0, Lo/requestExtraBinder;->mayLaunchUrl:Z

    const/4 v0, 0x1

    .line 2583
    invoke-virtual {p0, v0}, Lo/requestExtraBinder;->ICustomTabsCallback(I)V

    return-void
.end method

.method public final ICustomTabsCallback$Stub(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 1116
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    if-eqz v0, :cond_1

    .line 1117
    iget-boolean v0, p0, Lo/requestExtraBinder;->extraCommand:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    .line 1119
    iput-boolean p1, p0, Lo/requestExtraBinder;->validateRelationship:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1122
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mDeferStart:Z

    .line 1123
    iget v0, p0, Lo/requestExtraBinder;->ICustomTabsCallback$Stub:I

    invoke-virtual {p0, p1, v0}, Lo/requestExtraBinder;->onMessageChannelReady(Landroidx/fragment/app/Fragment;I)V

    :cond_1
    return-void
.end method

.method public final ICustomTabsCallback$Stub$Proxy()V
    .locals 1

    const/4 v0, 0x1

    .line 2614
    invoke-virtual {p0, v0}, Lo/requestExtraBinder;->ICustomTabsCallback(I)V

    return-void
.end method

.method final ICustomTabsCallback$Stub$Proxy(Landroidx/fragment/app/Fragment;)V
    .locals 3

    const-string v0, "FragmentManager"

    const/4 v1, 0x2

    .line 36093
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1574
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "add: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1575
    :cond_0
    invoke-virtual {p0, p1}, Lo/requestExtraBinder;->getInterfaceDescriptor(Landroidx/fragment/app/Fragment;)V

    .line 1576
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-nez v0, :cond_2

    .line 1577
    iget-object v0, p0, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    invoke-virtual {v0, p1}, Lo/extraCallback$asBinder;->extraCallback(Landroidx/fragment/app/Fragment;)V

    const/4 v0, 0x0

    .line 1578
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 1579
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-nez v1, :cond_1

    .line 1580
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 1582
    :cond_1
    invoke-static {p1}, Lo/requestExtraBinder;->ICustomTabsService$Stub(Landroidx/fragment/app/Fragment;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 1583
    iput-boolean p1, p0, Lo/requestExtraBinder;->IPostMessageService$Stub:Z

    :cond_2
    return-void
.end method

.method public final ICustomTabsService()V
    .locals 1

    const/4 v0, 0x1

    .line 2609
    iput-boolean v0, p0, Lo/requestExtraBinder;->mayLaunchUrl:Z

    const/4 v0, 0x2

    .line 2610
    invoke-virtual {p0, v0}, Lo/requestExtraBinder;->ICustomTabsCallback(I)V

    return-void
.end method

.method public final asBinder()V
    .locals 1

    const/4 v0, 0x0

    .line 2587
    iput-boolean v0, p0, Lo/requestExtraBinder;->updateVisuals:Z

    .line 2588
    iput-boolean v0, p0, Lo/requestExtraBinder;->mayLaunchUrl:Z

    const/4 v0, 0x2

    .line 2589
    invoke-virtual {p0, v0}, Lo/requestExtraBinder;->ICustomTabsCallback(I)V

    return-void
.end method

.method final asBinder(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 1368
    iget v0, p0, Lo/requestExtraBinder;->ICustomTabsCallback$Stub:I

    invoke-virtual {p0, p1, v0}, Lo/requestExtraBinder;->onMessageChannelReady(Landroidx/fragment/app/Fragment;I)V

    return-void
.end method

.method public final asInterface()Landroid/os/Parcelable;
    .locals 9

    .line 2391
    invoke-virtual {p0}, Lo/requestExtraBinder;->onRelationshipValidationResult()V

    .line 2392
    invoke-direct {p0}, Lo/requestExtraBinder;->ICustomTabsService$Stub$Proxy()V

    const/4 v0, 0x1

    .line 2393
    invoke-virtual {p0, v0}, Lo/requestExtraBinder;->ICustomTabsCallback(Z)Z

    .line 2395
    iput-boolean v0, p0, Lo/requestExtraBinder;->updateVisuals:Z

    .line 2398
    iget-object v0, p0, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    invoke-virtual {v0}, Lo/extraCallback$asBinder;->onNavigationEvent()Ljava/util/ArrayList;

    move-result-object v0

    .line 2400
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "FragmentManager"

    if-eqz v1, :cond_1

    .line 50902
    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "saveAllState: no fragments!"

    .line 2401
    invoke-static {v4, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v3

    .line 2406
    :cond_1
    iget-object v1, p0, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    invoke-virtual {v1}, Lo/extraCallback$asBinder;->onMessageChannelReady()Ljava/util/ArrayList;

    move-result-object v1

    .line 2410
    iget-object v5, p0, Lo/requestExtraBinder;->onMessageChannelReady:Ljava/util/ArrayList;

    if-eqz v5, :cond_3

    .line 2411
    invoke-virtual {v5}, Ljava/util/AbstractCollection;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 2413
    new-array v3, v5, [Lo/getIControllerCallback;

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_3

    .line 2415
    new-instance v7, Lo/getIControllerCallback;

    iget-object v8, p0, Lo/requestExtraBinder;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v8, v6}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lo/binderDied;

    invoke-direct {v7, v8}, Lo/getIControllerCallback;-><init>(Lo/binderDied;)V

    aput-object v7, v3, v6

    .line 50903
    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2417
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "saveAllState: adding back stack #"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ": "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lo/requestExtraBinder;->onMessageChannelReady:Ljava/util/ArrayList;

    .line 2418
    invoke-virtual {v8, v6}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2417
    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 2424
    :cond_3
    new-instance v2, Lo/processPendingCallbacksLocked;

    invoke-direct {v2}, Lo/processPendingCallbacksLocked;-><init>()V

    .line 2425
    iput-object v0, v2, Lo/processPendingCallbacksLocked;->onNavigationEvent:Ljava/util/ArrayList;

    .line 2426
    iput-object v1, v2, Lo/processPendingCallbacksLocked;->extraCallback:Ljava/util/ArrayList;

    .line 2427
    iput-object v3, v2, Lo/processPendingCallbacksLocked;->onPostMessage:[Lo/getIControllerCallback;

    .line 2428
    iget-object v0, p0, Lo/requestExtraBinder;->onRelationshipValidationResult:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    iput v0, v2, Lo/processPendingCallbacksLocked;->ICustomTabsCallback:I

    .line 2429
    iget-object v0, p0, Lo/requestExtraBinder;->warmup:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_4

    .line 2430
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    iput-object v0, v2, Lo/processPendingCallbacksLocked;->onMessageChannelReady:Ljava/lang/String;

    :cond_4
    return-object v2
.end method

.method final asInterface(Landroidx/fragment/app/Fragment;)V
    .locals 2

    .line 1356
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->performDestroyView()V

    .line 1357
    iget-object v0, p0, Lo/requestExtraBinder;->asBinder:Lo/MediaControllerCompat$MediaControllerImplApi21;

    invoke-virtual {v0, p1}, Lo/MediaControllerCompat$MediaControllerImplApi21;->onPostMessage(Landroidx/fragment/app/Fragment;)V

    const/4 v0, 0x0

    .line 1358
    iput-object v0, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1359
    iput-object v0, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1362
    iput-object v0, p1, Landroidx/fragment/app/Fragment;->mViewLifecycleOwner:Lo/getMaxVolume;

    .line 1363
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mViewLifecycleOwnerLiveData:Lo/setActive;

    invoke-virtual {v1, v0}, Lo/setActive;->extraCallback(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 1364
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mInLayout:Z

    return-void
.end method

.method public final extraCallback(Landroid/os/Bundle;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V
    .locals 3

    .line 760
    iget-object v0, p3, Landroidx/fragment/app/Fragment;->mFragmentManager:Lo/requestExtraBinder;

    if-eq v0, p0, :cond_0

    .line 761
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is not currently in the FragmentManager"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lo/requestExtraBinder;->ICustomTabsCallback(Ljava/lang/RuntimeException;)V

    .line 764
    :cond_0
    iget-object p3, p3, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method final extraCallback(Landroidx/fragment/app/Fragment;Z)V
    .locals 1

    .line 1347
    invoke-direct {p0, p1}, Lo/requestExtraBinder;->IPostMessageService(Landroidx/fragment/app/Fragment;)Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1349
    instance-of v0, p1, Landroidx/fragment/app/FragmentContainerView;

    if-eqz v0, :cond_0

    .line 1350
    check-cast p1, Landroidx/fragment/app/FragmentContainerView;

    xor-int/lit8 p2, p2, 0x1

    .line 28263
    iput-boolean p2, p1, Landroidx/fragment/app/FragmentContainerView;->onNavigationEvent:Z

    :cond_0
    return-void
.end method

.method public final extraCallback(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 1032
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1034
    iget-object v1, p0, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    invoke-virtual {v1, p1, p2, p3, p4}, Lo/extraCallback$asBinder;->onPostMessage(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1037
    iget-object p2, p0, Lo/requestExtraBinder;->IPostMessageService:Ljava/util/ArrayList;

    const/4 p4, 0x0

    if-eqz p2, :cond_0

    .line 1038
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result p2

    if-lez p2, :cond_0

    .line 1040
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Fragments Created Menus:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_0

    .line 1042
    iget-object v2, p0, Lo/requestExtraBinder;->IPostMessageService:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    .line 1043
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    .line 1044
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1045
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    .line 1046
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1047
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1052
    :cond_0
    iget-object p2, p0, Lo/requestExtraBinder;->onMessageChannelReady:Ljava/util/ArrayList;

    if-eqz p2, :cond_1

    .line 1053
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->size()I

    move-result p2

    if-lez p2, :cond_1

    .line 1055
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Back Stack:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_1
    if-ge v1, p2, :cond_1

    .line 1057
    iget-object v2, p0, Lo/requestExtraBinder;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/binderDied;

    .line 1058
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  #"

    .line 1059
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1060
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    .line 1061
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1062
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1063
    invoke-virtual {v2, v0, p3}, Lo/binderDied;->onPostMessage(Ljava/lang/String;Ljava/io/PrintWriter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1068
    :cond_1
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1069
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "Back Stack Index: "

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lo/requestExtraBinder;->onRelationshipValidationResult:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1071
    iget-object p2, p0, Lo/requestExtraBinder;->requestPostMessageChannel:Ljava/util/ArrayList;

    monitor-enter p2

    .line 1072
    :try_start_0
    iget-object v0, p0, Lo/requestExtraBinder;->requestPostMessageChannel:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1074
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Pending Actions:"

    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_2
    if-ge p4, v0, :cond_2

    .line 1076
    iget-object v1, p0, Lo/requestExtraBinder;->requestPostMessageChannel:Ljava/util/ArrayList;

    invoke-virtual {v1, p4}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/requestExtraBinder$ICustomTabsCallback;

    .line 1077
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  #"

    .line 1078
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1079
    invoke-virtual {p3, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ": "

    .line 1080
    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1081
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_2

    .line 1084
    :cond_2
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1086
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "FragmentManager misc state:"

    .line 1087
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1088
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mHost="

    .line 1089
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1090
    iget-object p2, p0, Lo/requestExtraBinder;->ICustomTabsService:Lo/postToHandler;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1091
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mContainer="

    .line 1092
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1093
    iget-object p2, p0, Lo/requestExtraBinder;->newSession:Lo/MediaControllerCompat$MediaControllerExtraData;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1094
    iget-object p2, p0, Lo/requestExtraBinder;->getInterfaceDescriptor:Landroidx/fragment/app/Fragment;

    if-eqz p2, :cond_3

    .line 1095
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mParent="

    .line 1096
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1097
    iget-object p2, p0, Lo/requestExtraBinder;->getInterfaceDescriptor:Landroidx/fragment/app/Fragment;

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1099
    :cond_3
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p2, "  mCurState="

    .line 1100
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1101
    iget p2, p0, Lo/requestExtraBinder;->ICustomTabsCallback$Stub:I

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(I)V

    const-string p2, " mStateSaved="

    .line 1102
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1103
    iget-boolean p2, p0, Lo/requestExtraBinder;->updateVisuals:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mStopped="

    .line 1104
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1105
    iget-boolean p2, p0, Lo/requestExtraBinder;->mayLaunchUrl:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Z)V

    const-string p2, " mDestroyed="

    .line 1106
    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1107
    iget-boolean p2, p0, Lo/requestExtraBinder;->postMessage:Z

    invoke-virtual {p3, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 1108
    iget-boolean p2, p0, Lo/requestExtraBinder;->IPostMessageService$Stub:Z

    if-eqz p2, :cond_4

    .line 1109
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p1, "  mNeedMenuInvalidate="

    .line 1110
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1111
    iget-boolean p1, p0, Lo/requestExtraBinder;->IPostMessageService$Stub:Z

    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->println(Z)V

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    .line 1084
    monitor-exit p2

    throw p1
.end method

.method final extraCallback(Lo/requestExtraBinder$ICustomTabsCallback;Z)V
    .locals 1

    if-eqz p2, :cond_1

    .line 1822
    iget-object v0, p0, Lo/requestExtraBinder;->ICustomTabsService:Lo/postToHandler;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lo/requestExtraBinder;->postMessage:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    .line 1826
    :cond_1
    invoke-direct {p0, p2}, Lo/requestExtraBinder;->onPostMessage(Z)V

    .line 1827
    iget-object p2, p0, Lo/requestExtraBinder;->ICustomTabsService$Stub$Proxy:Ljava/util/ArrayList;

    iget-object v0, p0, Lo/requestExtraBinder;->cancelAll:Ljava/util/ArrayList;

    invoke-interface {p1, p2, v0}, Lo/requestExtraBinder$ICustomTabsCallback;->onPostMessage(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 1828
    iput-boolean p1, p0, Lo/requestExtraBinder;->extraCommand:Z

    .line 1830
    :try_start_0
    iget-object p1, p0, Lo/requestExtraBinder;->ICustomTabsService$Stub$Proxy:Ljava/util/ArrayList;

    iget-object v0, p0, Lo/requestExtraBinder;->cancelAll:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0}, Lo/requestExtraBinder;->onNavigationEvent(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49846
    iput-boolean p2, p0, Lo/requestExtraBinder;->extraCommand:Z

    .line 49847
    iget-object p1, p0, Lo/requestExtraBinder;->cancelAll:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->clear()V

    .line 49848
    iget-object p1, p0, Lo/requestExtraBinder;->ICustomTabsService$Stub$Proxy:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->clear()V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 50846
    iput-boolean p2, p0, Lo/requestExtraBinder;->extraCommand:Z

    .line 50847
    iget-object p2, p0, Lo/requestExtraBinder;->cancelAll:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->clear()V

    .line 50848
    iget-object p2, p0, Lo/requestExtraBinder;->ICustomTabsService$Stub$Proxy:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/AbstractCollection;->clear()V

    .line 1833
    throw p1

    .line 1836
    :cond_2
    :goto_0
    invoke-direct {p0}, Lo/requestExtraBinder;->IPostMessageService()V

    .line 50850
    iget-boolean p1, p0, Lo/requestExtraBinder;->validateRelationship:Z

    if-eqz p1, :cond_3

    .line 50851
    iput-boolean p2, p0, Lo/requestExtraBinder;->validateRelationship:Z

    .line 50852
    invoke-direct {p0}, Lo/requestExtraBinder;->ICustomTabsService$Stub()V

    .line 1838
    :cond_3
    iget-object p1, p0, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    .line 50855
    iget-object p1, p1, Lo/extraCallback$asBinder;->onNavigationEvent:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/AbstractMap;->values()Ljava/util/Collection;

    move-result-object p1

    const/4 p2, 0x0

    .line 50858
    invoke-static {p2}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public final extraCallback(Z)V
    .locals 2

    .line 2645
    iget-object v0, p0, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    invoke-virtual {v0}, Lo/extraCallback$asBinder;->ICustomTabsCallback()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 2647
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->performMultiWindowModeChanged(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final extraCallback()Z
    .locals 1

    .line 993
    iget-boolean v0, p0, Lo/requestExtraBinder;->postMessage:Z

    return v0
.end method

.method public final extraCallback(Landroid/view/Menu;)Z
    .locals 3

    .line 2709
    iget v0, p0, Lo/requestExtraBinder;->ICustomTabsCallback$Stub:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    .line 2713
    :cond_0
    iget-object v0, p0, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    invoke-virtual {v0}, Lo/extraCallback$asBinder;->ICustomTabsCallback()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_1

    .line 2715
    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->performPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final extraCallback(Landroid/view/MenuItem;)Z
    .locals 3

    .line 2724
    iget v0, p0, Lo/requestExtraBinder;->ICustomTabsCallback$Stub:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    .line 2727
    :cond_0
    iget-object v0, p0, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    invoke-virtual {v0}, Lo/extraCallback$asBinder;->ICustomTabsCallback()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_1

    .line 2729
    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->performOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public final extraCallback(Landroidx/fragment/app/Fragment;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 522
    :cond_0
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Lo/requestExtraBinder;

    .line 4800
    iget-object v2, v1, Lo/requestExtraBinder;->warmup:Landroidx/fragment/app/Fragment;

    .line 528
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, v1, Lo/requestExtraBinder;->getInterfaceDescriptor:Landroidx/fragment/app/Fragment;

    .line 529
    invoke-virtual {p0, p1}, Lo/requestExtraBinder;->extraCallback(Landroidx/fragment/app/Fragment;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final extraCommand()V
    .locals 2

    const/4 v0, 0x1

    .line 2618
    iput-boolean v0, p0, Lo/requestExtraBinder;->postMessage:Z

    .line 2619
    invoke-virtual {p0, v0}, Lo/requestExtraBinder;->ICustomTabsCallback(Z)Z

    .line 2620
    invoke-direct {p0}, Lo/requestExtraBinder;->ICustomTabsService$Stub$Proxy()V

    const/4 v0, -0x1

    .line 2621
    invoke-virtual {p0, v0}, Lo/requestExtraBinder;->ICustomTabsCallback(I)V

    const/4 v0, 0x0

    .line 2622
    iput-object v0, p0, Lo/requestExtraBinder;->ICustomTabsService:Lo/postToHandler;

    .line 2623
    iput-object v0, p0, Lo/requestExtraBinder;->newSession:Lo/MediaControllerCompat$MediaControllerExtraData;

    .line 2624
    iput-object v0, p0, Lo/requestExtraBinder;->getInterfaceDescriptor:Landroidx/fragment/app/Fragment;

    .line 2625
    iget-object v1, p0, Lo/requestExtraBinder;->ICustomTabsCallback:Landroidx/activity/OnBackPressedDispatcher;

    if-eqz v1, :cond_0

    .line 2628
    iget-object v1, p0, Lo/requestExtraBinder;->onPostMessage:Lo/handleMediaPlayPauseKeySingleTapIfPending;

    invoke-virtual {v1}, Lo/handleMediaPlayPauseKeySingleTapIfPending;->extraCallback()V

    .line 2629
    iput-object v0, p0, Lo/requestExtraBinder;->ICustomTabsCallback:Landroidx/activity/OnBackPressedDispatcher;

    :cond_0
    return-void
.end method

.method final extraCommand(Landroidx/fragment/app/Fragment;)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 2763
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 50955
    iget-object v2, p0, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    .line 50956
    iget-object v2, v2, Lo/extraCallback$asBinder;->onNavigationEvent:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/MediaControllerCompat$MediaControllerImplBase;

    if-eqz v1, :cond_0

    .line 50961
    iget-object v1, v1, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 2763
    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mHost:Lo/postToHandler;

    if-eqz v1, :cond_2

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Lo/requestExtraBinder;

    if-ne v1, p0, :cond_1

    goto :goto_1

    .line 2765
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Fragment "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an active fragment of FragmentManager "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2768
    :cond_2
    :goto_1
    iget-object v1, p0, Lo/requestExtraBinder;->warmup:Landroidx/fragment/app/Fragment;

    .line 2769
    iput-object p1, p0, Lo/requestExtraBinder;->warmup:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_4

    .line 50962
    iget-object p1, v1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 50966
    iget-object v2, p0, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    .line 50967
    iget-object v2, v2, Lo/extraCallback$asBinder;->onNavigationEvent:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/MediaControllerCompat$MediaControllerImplBase;

    if-eqz p1, :cond_3

    .line 50972
    iget-object p1, p1, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    goto :goto_2

    :cond_3
    move-object p1, v0

    .line 50962
    :goto_2
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 50963
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->performPrimaryNavigationFragmentChanged()V

    .line 2771
    :cond_4
    iget-object p1, p0, Lo/requestExtraBinder;->warmup:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_6

    .line 50973
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 50977
    iget-object v2, p0, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    .line 50978
    iget-object v2, v2, Lo/extraCallback$asBinder;->onNavigationEvent:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/MediaControllerCompat$MediaControllerImplBase;

    if-eqz v1, :cond_5

    .line 50983
    iget-object v0, v1, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    .line 50973
    :cond_5
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 50974
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->performPrimaryNavigationFragmentChanged()V

    :cond_6
    return-void
.end method

.method public findFragmentById(I)Landroidx/fragment/app/Fragment;
    .locals 4

    .line 1676
    iget-object v0, p0, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    .line 43202
    iget-object v1, v0, Lo/extraCallback$asBinder;->onPostMessage:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 43203
    iget-object v2, v0, Lo/extraCallback$asBinder;->onPostMessage:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_0

    .line 43204
    iget v3, v2, Landroidx/fragment/app/Fragment;->mFragmentId:I

    if-ne v3, p1, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 43209
    :cond_1
    iget-object v0, v0, Lo/extraCallback$asBinder;->onNavigationEvent:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/MediaControllerCompat$MediaControllerImplBase;

    if-eqz v1, :cond_2

    .line 44134
    iget-object v1, v1, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    .line 43212
    iget v2, v1, Landroidx/fragment/app/Fragment;->mFragmentId:I

    if-ne v2, p1, :cond_2

    return-object v1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 4

    .line 1689
    iget-object v0, p0, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    if-eqz p1, :cond_1

    .line 44224
    iget-object v1, v0, Lo/extraCallback$asBinder;->onPostMessage:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/AbstractCollection;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 44225
    iget-object v2, v0, Lo/extraCallback$asBinder;->onPostMessage:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_0

    .line 44226
    iget-object v3, v2, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_3

    .line 44233
    iget-object v0, v0, Lo/extraCallback$asBinder;->onNavigationEvent:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/MediaControllerCompat$MediaControllerImplBase;

    if-eqz v1, :cond_2

    .line 45134
    iget-object v1, v1, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    .line 44236
    iget-object v2, v1, Landroidx/fragment/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getInterfaceDescriptor()V
    .locals 1

    const/4 v0, 0x0

    .line 2593
    iput-boolean v0, p0, Lo/requestExtraBinder;->updateVisuals:Z

    .line 2594
    iput-boolean v0, p0, Lo/requestExtraBinder;->mayLaunchUrl:Z

    const/4 v0, 0x3

    .line 2595
    invoke-virtual {p0, v0}, Lo/requestExtraBinder;->ICustomTabsCallback(I)V

    return-void
.end method

.method final getInterfaceDescriptor(Landroidx/fragment/app/Fragment;)V
    .locals 3

    .line 1537
    iget-object v0, p0, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 31246
    iget-object v0, v0, Lo/extraCallback$asBinder;->onNavigationEvent:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1541
    :cond_0
    new-instance v0, Lo/MediaControllerCompat$MediaControllerImplBase;

    iget-object v1, p0, Lo/requestExtraBinder;->asBinder:Lo/MediaControllerCompat$MediaControllerImplApi21;

    invoke-direct {v0, v1, p1}, Lo/MediaControllerCompat$MediaControllerImplBase;-><init>(Lo/MediaControllerCompat$MediaControllerImplApi21;Landroidx/fragment/app/Fragment;)V

    .line 1544
    iget-object v1, p0, Lo/requestExtraBinder;->ICustomTabsService:Lo/postToHandler;

    .line 32200
    iget-object v1, v1, Lo/postToHandler;->onNavigationEvent:Landroid/content/Context;

    .line 1544
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Lo/MediaControllerCompat$MediaControllerImplBase;->ICustomTabsCallback(Ljava/lang/ClassLoader;)V

    .line 1545
    iget-object v1, p0, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    .line 33062
    iget-object v1, v1, Lo/extraCallback$asBinder;->onNavigationEvent:Ljava/util/HashMap;

    .line 33134
    iget-object v2, v0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    .line 33062
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1546
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mRetainInstanceChangedWhileDetached:Z

    if-eqz v1, :cond_2

    .line 1547
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mRetainInstance:Z

    if-eqz v1, :cond_1

    .line 1548
    invoke-virtual {p0, p1}, Lo/requestExtraBinder;->onNavigationEvent(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    .line 1550
    :cond_1
    invoke-virtual {p0, p1}, Lo/requestExtraBinder;->ICustomTabsCallback(Landroidx/fragment/app/Fragment;)V

    :goto_0
    const/4 v1, 0x0

    .line 1552
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mRetainInstanceChangedWhileDetached:Z

    .line 1555
    :cond_2
    iget v1, p0, Lo/requestExtraBinder;->ICustomTabsCallback$Stub:I

    .line 33144
    iput v1, v0, Lo/MediaControllerCompat$MediaControllerImplBase;->extraCallback:I

    const/4 v0, 0x2

    const-string v1, "FragmentManager"

    .line 34093
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1556
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Added fragment to active set "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method public final mayLaunchUrl()V
    .locals 3

    .line 2781
    invoke-direct {p0}, Lo/requestExtraBinder;->IPostMessageService()V

    .line 2783
    iget-object v0, p0, Lo/requestExtraBinder;->warmup:Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_1

    .line 50984
    iget-object v1, v0, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 50988
    iget-object v2, p0, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    .line 50989
    iget-object v2, v2, Lo/extraCallback$asBinder;->onNavigationEvent:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/MediaControllerCompat$MediaControllerImplBase;

    if-eqz v1, :cond_0

    .line 50994
    iget-object v1, v1, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 50984
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 50985
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->performPrimaryNavigationFragmentChanged()V

    :cond_1
    return-void
.end method

.method public final newSession()V
    .locals 1

    const/4 v0, 0x0

    .line 2599
    iput-boolean v0, p0, Lo/requestExtraBinder;->updateVisuals:Z

    .line 2600
    iput-boolean v0, p0, Lo/requestExtraBinder;->mayLaunchUrl:Z

    const/4 v0, 0x4

    .line 2601
    invoke-virtual {p0, v0}, Lo/requestExtraBinder;->ICustomTabsCallback(I)V

    return-void
.end method

.method final newSession(Landroidx/fragment/app/Fragment;)V
    .locals 3

    const-string v0, "FragmentManager"

    const/4 v1, 0x2

    .line 38093
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1610
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "hide: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    :cond_0
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 1612
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHidden:Z

    .line 1615
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    .line 1616
    invoke-direct {p0, p1}, Lo/requestExtraBinder;->ICustomTabsService$Stub$Proxy(Landroidx/fragment/app/Fragment;)V

    :cond_1
    return-void
.end method

.method public final onMessageChannelReady(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 4

    .line 778
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 8698
    :cond_0
    iget-object v1, p0, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    .line 9269
    iget-object v1, v1, Lo/extraCallback$asBinder;->onNavigationEvent:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/MediaControllerCompat$MediaControllerImplBase;

    if-eqz v1, :cond_1

    .line 10134
    iget-object v0, v1, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    :cond_1
    if-nez v0, :cond_2

    .line 784
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fragment no longer exists for key "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ": unique id "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lo/requestExtraBinder;->ICustomTabsCallback(Ljava/lang/RuntimeException;)V

    :cond_2
    return-object v0
.end method

.method public final onMessageChannelReady(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1693
    iget-object v0, p0, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    invoke-virtual {v0, p1}, Lo/extraCallback$asBinder;->onNavigationEvent(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method final onMessageChannelReady()V
    .locals 5

    .line 1766
    iget-object v0, p0, Lo/requestExtraBinder;->requestPostMessageChannel:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1767
    :try_start_0
    iget-object v1, p0, Lo/requestExtraBinder;->notify:Ljava/util/ArrayList;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lo/requestExtraBinder;->notify:Ljava/util/ArrayList;

    .line 1768
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 1769
    :goto_0
    iget-object v4, p0, Lo/requestExtraBinder;->requestPostMessageChannel:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/AbstractCollection;->size()I

    move-result v4

    if-ne v4, v3, :cond_1

    const/4 v2, 0x1

    :cond_1
    if-nez v1, :cond_2

    if-eqz v2, :cond_3

    .line 1771
    :cond_2
    iget-object v1, p0, Lo/requestExtraBinder;->ICustomTabsService:Lo/postToHandler;

    .line 47205
    iget-object v1, v1, Lo/postToHandler;->onMessageChannelReady:Landroid/os/Handler;

    .line 1771
    iget-object v2, p0, Lo/requestExtraBinder;->IPostMessageService$Stub$Proxy:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1772
    iget-object v1, p0, Lo/requestExtraBinder;->ICustomTabsService:Lo/postToHandler;

    .line 48205
    iget-object v1, v1, Lo/postToHandler;->onMessageChannelReady:Landroid/os/Handler;

    .line 1772
    iget-object v2, p0, Lo/requestExtraBinder;->IPostMessageService$Stub$Proxy:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1773
    invoke-direct {p0}, Lo/requestExtraBinder;->IPostMessageService()V

    .line 1775
    :cond_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final onMessageChannelReady(Landroid/os/Parcelable;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    .line 2447
    :cond_0
    check-cast p1, Lo/processPendingCallbacksLocked;

    .line 2448
    iget-object v0, p1, Lo/processPendingCallbacksLocked;->onNavigationEvent:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    return-void

    .line 2452
    :cond_1
    iget-object v0, p0, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    .line 50904
    iget-object v0, v0, Lo/extraCallback$asBinder;->onNavigationEvent:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->clear()V

    .line 2453
    iget-object v0, p1, Lo/processPendingCallbacksLocked;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "): "

    const/4 v3, 0x2

    const-string v4, "FragmentManager"

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;

    if-eqz v1, :cond_2

    .line 2456
    iget-object v5, p0, Lo/requestExtraBinder;->INotificationSideChannel:Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;

    iget-object v6, v1, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;->onPostMessage:Ljava/lang/String;

    .line 50906
    iget-object v5, v5, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;->ICustomTabsCallback:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/fragment/app/Fragment;

    if-eqz v5, :cond_4

    .line 50907
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 2459
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "restoreSaveState: re-attaching retained "

    invoke-virtual {v7, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2462
    :cond_3
    new-instance v6, Lo/MediaControllerCompat$MediaControllerImplBase;

    iget-object v7, p0, Lo/requestExtraBinder;->asBinder:Lo/MediaControllerCompat$MediaControllerImplApi21;

    invoke-direct {v6, v7, v5, v1}, Lo/MediaControllerCompat$MediaControllerImplBase;-><init>(Lo/MediaControllerCompat$MediaControllerImplApi21;Landroidx/fragment/app/Fragment;Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;)V

    goto :goto_2

    .line 2465
    :cond_4
    new-instance v6, Lo/MediaControllerCompat$MediaControllerImplBase;

    iget-object v5, p0, Lo/requestExtraBinder;->asBinder:Lo/MediaControllerCompat$MediaControllerImplApi21;

    iget-object v7, p0, Lo/requestExtraBinder;->ICustomTabsService:Lo/postToHandler;

    .line 50908
    iget-object v7, v7, Lo/postToHandler;->onNavigationEvent:Landroid/content/Context;

    .line 2466
    invoke-virtual {v7}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    .line 50912
    iget-object v8, p0, Lo/requestExtraBinder;->getInterfaceDescriptor:Landroidx/fragment/app/Fragment;

    if-eqz v8, :cond_5

    .line 50917
    iget-object v8, v8, Landroidx/fragment/app/Fragment;->mFragmentManager:Lo/requestExtraBinder;

    invoke-virtual {v8}, Lo/requestExtraBinder;->postMessage()Lo/MediaControllerCompat$Callback$StubApi21;

    move-result-object v8

    goto :goto_1

    .line 50919
    :cond_5
    iget-object v8, p0, Lo/requestExtraBinder;->ICustomTabsCallback$Stub$Proxy:Lo/MediaControllerCompat$Callback$StubApi21;

    .line 2466
    :goto_1
    invoke-direct {v6, v5, v7, v8, v1}, Lo/MediaControllerCompat$MediaControllerImplBase;-><init>(Lo/MediaControllerCompat$MediaControllerImplApi21;Ljava/lang/ClassLoader;Lo/MediaControllerCompat$Callback$StubApi21;Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraCallback;)V

    .line 50920
    :goto_2
    iget-object v1, v6, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    .line 2469
    iput-object p0, v1, Landroidx/fragment/app/Fragment;->mFragmentManager:Lo/requestExtraBinder;

    .line 50921
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 2471
    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "restoreSaveState: active ("

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, v1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2473
    :cond_6
    iget-object v1, p0, Lo/requestExtraBinder;->ICustomTabsService:Lo/postToHandler;

    .line 50922
    iget-object v1, v1, Lo/postToHandler;->onNavigationEvent:Landroid/content/Context;

    .line 2473
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v6, v1}, Lo/MediaControllerCompat$MediaControllerImplBase;->ICustomTabsCallback(Ljava/lang/ClassLoader;)V

    .line 2474
    iget-object v1, p0, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    .line 50923
    iget-object v1, v1, Lo/extraCallback$asBinder;->onNavigationEvent:Ljava/util/HashMap;

    .line 50925
    iget-object v2, v6, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    .line 50923
    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v1, v2, v6}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2478
    iget v1, p0, Lo/requestExtraBinder;->ICustomTabsCallback$Stub:I

    .line 50926
    iput v1, v6, Lo/MediaControllerCompat$MediaControllerImplBase;->extraCallback:I

    goto/16 :goto_0

    .line 2484
    :cond_7
    iget-object v0, p0, Lo/requestExtraBinder;->INotificationSideChannel:Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;

    .line 50928
    iget-object v0, v0, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;->ICustomTabsCallback:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 2484
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 2485
    iget-object v5, p0, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    iget-object v6, v1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 50929
    iget-object v5, v5, Lo/extraCallback$asBinder;->onNavigationEvent:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 50930
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2487
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Discarding retained Fragment "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " that was not found in the set of active Fragments "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lo/processPendingCallbacksLocked;->onNavigationEvent:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    const/4 v5, 0x1

    .line 2493
    invoke-virtual {p0, v1, v5}, Lo/requestExtraBinder;->onMessageChannelReady(Landroidx/fragment/app/Fragment;I)V

    .line 2494
    iput-boolean v5, v1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    const/4 v5, -0x1

    .line 2495
    invoke-virtual {p0, v1, v5}, Lo/requestExtraBinder;->onMessageChannelReady(Landroidx/fragment/app/Fragment;I)V

    goto :goto_3

    .line 2500
    :cond_a
    iget-object v0, p0, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    iget-object v1, p1, Lo/processPendingCallbacksLocked;->extraCallback:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Lo/extraCallback$asBinder;->ICustomTabsCallback(Ljava/util/List;)V

    .line 2503
    iget-object v0, p1, Lo/processPendingCallbacksLocked;->onPostMessage:[Lo/getIControllerCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    .line 2504
    new-instance v0, Ljava/util/ArrayList;

    iget-object v5, p1, Lo/processPendingCallbacksLocked;->onPostMessage:[Lo/getIControllerCallback;

    array-length v5, v5

    invoke-direct {v0, v5}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lo/requestExtraBinder;->onMessageChannelReady:Ljava/util/ArrayList;

    const/4 v0, 0x0

    const/4 v5, 0x0

    .line 2505
    :goto_4
    iget-object v6, p1, Lo/processPendingCallbacksLocked;->onPostMessage:[Lo/getIControllerCallback;

    array-length v6, v6

    if-ge v5, v6, :cond_d

    .line 2506
    iget-object v6, p1, Lo/processPendingCallbacksLocked;->onPostMessage:[Lo/getIControllerCallback;

    aget-object v6, v6, v5

    invoke-virtual {v6, p0}, Lo/getIControllerCallback;->onPostMessage(Lo/requestExtraBinder;)Lo/binderDied;

    move-result-object v6

    .line 50931
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_b

    .line 2508
    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "restoreAllState: back stack #"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " (index "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v6, Lo/binderDied;->onNavigationEvent:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2510
    new-instance v7, Lo/getStarRating;

    invoke-direct {v7, v4}, Lo/getStarRating;-><init>(Ljava/lang/String;)V

    .line 2511
    new-instance v8, Ljava/io/PrintWriter;

    invoke-direct {v8, v7}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    const-string v7, "  "

    .line 2512
    invoke-virtual {v6, v7, v8, v0}, Lo/binderDied;->onPostMessage(Ljava/lang/String;Ljava/io/PrintWriter;Z)V

    .line 2513
    invoke-virtual {v8}, Ljava/io/Writer;->close()V

    .line 2515
    :cond_b
    iget-object v7, p0, Lo/requestExtraBinder;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 2518
    :cond_c
    iput-object v1, p0, Lo/requestExtraBinder;->onMessageChannelReady:Ljava/util/ArrayList;

    .line 2520
    :cond_d
    iget-object v0, p0, Lo/requestExtraBinder;->onRelationshipValidationResult:Ljava/util/concurrent/atomic/AtomicInteger;

    iget v2, p1, Lo/processPendingCallbacksLocked;->ICustomTabsCallback:I

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 2522
    iget-object v0, p1, Lo/processPendingCallbacksLocked;->onMessageChannelReady:Ljava/lang/String;

    if-eqz v0, :cond_10

    .line 2523
    iget-object p1, p1, Lo/processPendingCallbacksLocked;->onMessageChannelReady:Ljava/lang/String;

    .line 50932
    iget-object v0, p0, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    .line 50933
    iget-object v0, v0, Lo/extraCallback$asBinder;->onNavigationEvent:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/MediaControllerCompat$MediaControllerImplBase;

    if-eqz p1, :cond_e

    .line 50938
    iget-object p1, p1, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    goto :goto_5

    :cond_e
    move-object p1, v1

    .line 2523
    :goto_5
    iput-object p1, p0, Lo/requestExtraBinder;->warmup:Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_10

    .line 50939
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 50943
    iget-object v2, p0, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    .line 50944
    iget-object v2, v2, Lo/extraCallback$asBinder;->onNavigationEvent:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/MediaControllerCompat$MediaControllerImplBase;

    if-eqz v0, :cond_f

    .line 50949
    iget-object v1, v0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    .line 50939
    :cond_f
    invoke-virtual {p1, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 50940
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->performPrimaryNavigationFragmentChanged()V

    :cond_10
    return-void
.end method

.method final onMessageChannelReady(Landroidx/fragment/app/Fragment;I)V
    .locals 12

    .line 1132
    iget-object v0, p0, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 17251
    iget-object v0, v0, Lo/extraCallback$asBinder;->onNavigationEvent:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/MediaControllerCompat$MediaControllerImplBase;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 1138
    new-instance v0, Lo/MediaControllerCompat$MediaControllerImplBase;

    iget-object v2, p0, Lo/requestExtraBinder;->asBinder:Lo/MediaControllerCompat$MediaControllerImplApi21;

    invoke-direct {v0, v2, p1}, Lo/MediaControllerCompat$MediaControllerImplBase;-><init>(Lo/MediaControllerCompat$MediaControllerImplApi21;Landroidx/fragment/app/Fragment;)V

    .line 18144
    iput v1, v0, Lo/MediaControllerCompat$MediaControllerImplBase;->extraCallback:I

    .line 1142
    :cond_0
    invoke-virtual {v0}, Lo/MediaControllerCompat$MediaControllerImplBase;->extraCallback()I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1143
    iget v2, p1, Landroidx/fragment/app/Fragment;->mState:I

    const/4 v3, 0x2

    const/4 v4, 0x0

    const-string v5, "FragmentManager"

    const/4 v6, 0x3

    if-gt v2, p2, :cond_10

    .line 1145
    iget v2, p1, Landroidx/fragment/app/Fragment;->mState:I

    if-ge v2, p2, :cond_1

    iget-object v2, p0, Lo/requestExtraBinder;->onTransact:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1149
    invoke-direct {p0, p1}, Lo/requestExtraBinder;->updateVisuals(Landroidx/fragment/app/Fragment;)V

    .line 1151
    :cond_1
    iget v2, p1, Landroidx/fragment/app/Fragment;->mState:I

    const/4 v7, -0x1

    if-eq v2, v7, :cond_2

    if-eqz v2, :cond_b

    if-eq v2, v1, :cond_c

    if-eq v2, v3, :cond_e

    if-eq v2, v6, :cond_f

    goto/16 :goto_9

    :cond_2
    if-ltz p2, :cond_b

    .line 19093
    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1154
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v7, "moveto ATTACHED: "

    invoke-virtual {v7, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    :cond_3
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    const-string v7, " that does not belong to this FragmentManager!"

    const-string v8, " declared target fragment "

    const-string v9, "Fragment "

    if-eqz v2, :cond_7

    .line 1159
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    iget-object v10, p1, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    iget-object v10, v10, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 19698
    iget-object v11, p0, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    .line 20269
    iget-object v11, v11, Lo/extraCallback$asBinder;->onNavigationEvent:Ljava/util/HashMap;

    invoke-virtual {v11, v10}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lo/MediaControllerCompat$MediaControllerImplBase;

    if-eqz v10, :cond_4

    .line 21134
    iget-object v10, v10, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    goto :goto_0

    :cond_4
    move-object v10, v4

    .line 1159
    :goto_0
    invoke-virtual {v2, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1164
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    iget v2, v2, Landroidx/fragment/app/Fragment;->mState:I

    if-gtz v2, :cond_5

    .line 1165
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    invoke-virtual {p0, v2, v1}, Lo/requestExtraBinder;->onMessageChannelReady(Landroidx/fragment/app/Fragment;I)V

    .line 1167
    :cond_5
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    iget-object v2, v2, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    iput-object v2, p1, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 1168
    iput-object v4, p1, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    goto :goto_1

    .line 1160
    :cond_6
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1170
    :cond_7
    :goto_1
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    if-eqz v2, :cond_a

    .line 1171
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 21698
    iget-object v10, p0, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    .line 22269
    iget-object v10, v10, Lo/extraCallback$asBinder;->onNavigationEvent:Ljava/util/HashMap;

    invoke-virtual {v10, v2}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/MediaControllerCompat$MediaControllerImplBase;

    if-eqz v2, :cond_8

    .line 23134
    iget-object v4, v2, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    :cond_8
    if-eqz v4, :cond_9

    .line 1177
    iget v2, v4, Landroidx/fragment/app/Fragment;->mState:I

    if-gtz v2, :cond_a

    .line 1178
    invoke-virtual {p0, v4, v1}, Lo/requestExtraBinder;->onMessageChannelReady(Landroidx/fragment/app/Fragment;I)V

    goto :goto_2

    .line 1173
    :cond_9
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1182
    :cond_a
    :goto_2
    iget-object v2, p0, Lo/requestExtraBinder;->ICustomTabsService:Lo/postToHandler;

    iget-object v4, p0, Lo/requestExtraBinder;->getInterfaceDescriptor:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0, v2, p0, v4}, Lo/MediaControllerCompat$MediaControllerImplBase;->onNavigationEvent(Lo/postToHandler;Lo/requestExtraBinder;Landroidx/fragment/app/Fragment;)V

    :cond_b
    if-lez p2, :cond_c

    .line 1187
    invoke-virtual {v0}, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage()V

    :cond_c
    if-ltz p2, :cond_d

    .line 1195
    invoke-virtual {v0}, Lo/MediaControllerCompat$MediaControllerImplBase;->onMessageChannelReady()V

    :cond_d
    if-le p2, v1, :cond_e

    .line 1199
    iget-object v1, p0, Lo/requestExtraBinder;->newSession:Lo/MediaControllerCompat$MediaControllerExtraData;

    invoke-virtual {v0, v1}, Lo/MediaControllerCompat$MediaControllerImplBase;->extraCallback(Lo/MediaControllerCompat$MediaControllerExtraData;)V

    .line 1200
    invoke-virtual {v0}, Lo/MediaControllerCompat$MediaControllerImplBase;->ICustomTabsCallback()V

    .line 1201
    invoke-virtual {v0}, Lo/MediaControllerCompat$MediaControllerImplBase;->onNavigationEvent()V

    :cond_e
    if-le p2, v3, :cond_f

    .line 1206
    invoke-virtual {v0}, Lo/MediaControllerCompat$MediaControllerImplBase;->asInterface()V

    :cond_f
    if-le p2, v6, :cond_24

    .line 1211
    invoke-virtual {v0}, Lo/MediaControllerCompat$MediaControllerImplBase;->onRelationshipValidationResult()V

    goto/16 :goto_9

    .line 1214
    :cond_10
    iget v2, p1, Landroidx/fragment/app/Fragment;->mState:I

    if-le v2, p2, :cond_24

    .line 1215
    iget v2, p1, Landroidx/fragment/app/Fragment;->mState:I

    if-eqz v2, :cond_22

    const/4 v7, 0x0

    if-eq v2, v1, :cond_1a

    if-eq v2, v3, :cond_13

    if-eq v2, v6, :cond_12

    const/4 v8, 0x4

    if-eq v2, v8, :cond_11

    goto/16 :goto_9

    :cond_11
    if-ge p2, v8, :cond_12

    .line 1218
    invoke-virtual {v0}, Lo/MediaControllerCompat$MediaControllerImplBase;->ICustomTabsCallback$Stub()V

    :cond_12
    if-ge p2, v6, :cond_13

    .line 1223
    invoke-virtual {v0}, Lo/MediaControllerCompat$MediaControllerImplBase;->asBinder()V

    :cond_13
    if-ge p2, v3, :cond_1a

    .line 24093
    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 1229
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "movefrom ACTIVITY_CREATED: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1231
    :cond_14
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_15

    .line 1234
    iget-object v2, p0, Lo/requestExtraBinder;->ICustomTabsService:Lo/postToHandler;

    invoke-virtual {v2}, Lo/postToHandler;->ICustomTabsCallback()Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-nez v2, :cond_15

    .line 1235
    invoke-virtual {v0}, Lo/MediaControllerCompat$MediaControllerImplBase;->warmup()V

    .line 1239
    :cond_15
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_18

    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v2, :cond_18

    .line 1241
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->endViewTransition(Landroid/view/View;)V

    .line 1242
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->clearAnimation()V

    .line 1244
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isRemovingParent()Z

    move-result v2

    if-nez v2, :cond_18

    .line 1245
    iget v2, p0, Lo/requestExtraBinder;->ICustomTabsCallback$Stub:I

    const/4 v3, 0x0

    if-ltz v2, :cond_16

    iget-boolean v2, p0, Lo/requestExtraBinder;->postMessage:Z

    if-nez v2, :cond_16

    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1246
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_16

    iget v2, p1, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_16

    .line 1248
    iget-object v2, p0, Lo/requestExtraBinder;->ICustomTabsService:Lo/postToHandler;

    .line 24200
    iget-object v2, v2, Lo/postToHandler;->onNavigationEvent:Landroid/content/Context;

    .line 1248
    iget-object v8, p0, Lo/requestExtraBinder;->newSession:Lo/MediaControllerCompat$MediaControllerExtraData;

    invoke-static {v2, v8, p1, v7}, Lo/setHandler;->onMessageChannelReady(Landroid/content/Context;Lo/MediaControllerCompat$MediaControllerExtraData;Landroidx/fragment/app/Fragment;Z)Lo/setHandler$extraCallback;

    move-result-object v2

    goto :goto_3

    :cond_16
    move-object v2, v4

    .line 1251
    :goto_3
    iput v3, p1, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    .line 1255
    iget-object v3, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1256
    iget-object v8, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v2, :cond_17

    .line 1258
    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->setStateAfterAnimating(I)V

    .line 1259
    iget-object v9, p0, Lo/requestExtraBinder;->ICustomTabsService$Stub:Lo/getAudioStream$ICustomTabsCallback;

    invoke-static {p1, v2, v9}, Lo/setHandler;->onPostMessage(Landroidx/fragment/app/Fragment;Lo/setHandler$extraCallback;Lo/getAudioStream$ICustomTabsCallback;)V

    .line 1262
    :cond_17
    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1268
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eq v3, v2, :cond_18

    return-void

    .line 1275
    :cond_18
    iget-object v2, p0, Lo/requestExtraBinder;->onTransact:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_19

    .line 1276
    invoke-virtual {p0, p1}, Lo/requestExtraBinder;->asInterface(Landroidx/fragment/app/Fragment;)V

    goto :goto_4

    .line 1278
    :cond_19
    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->setStateAfterAnimating(I)V

    :cond_1a
    :goto_4
    if-gtz p2, :cond_22

    .line 1284
    iget-boolean v2, p1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    if-eqz v2, :cond_1b

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    move-result v2

    if-nez v2, :cond_1b

    const/4 v7, 0x1

    :cond_1b
    if-nez v7, :cond_1f

    .line 1285
    iget-object v2, p0, Lo/requestExtraBinder;->INotificationSideChannel:Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;

    .line 25117
    iget-object v3, v2, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;->ICustomTabsCallback:Ljava/util/HashMap;

    iget-object v7, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 25121
    iget-boolean v3, v2, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;->onPostMessage:Z

    if-eqz v3, :cond_1c

    .line 25124
    iget-boolean v2, v2, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;->onMessageChannelReady:Z

    goto :goto_5

    :cond_1c
    const/4 v2, 0x1

    :goto_5
    if-eqz v2, :cond_1d

    goto :goto_6

    .line 1288
    :cond_1d
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    if-eqz v2, :cond_20

    .line 1289
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mTargetWho:Ljava/lang/String;

    .line 25698
    iget-object v3, p0, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    .line 26269
    iget-object v3, v3, Lo/extraCallback$asBinder;->onNavigationEvent:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/MediaControllerCompat$MediaControllerImplBase;

    if-eqz v2, :cond_1e

    .line 27134
    iget-object v4, v2, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    :cond_1e
    if-eqz v4, :cond_20

    .line 1290
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getRetainInstance()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 1294
    iput-object v4, p1, Landroidx/fragment/app/Fragment;->mTarget:Landroidx/fragment/app/Fragment;

    goto :goto_7

    .line 1286
    :cond_1f
    :goto_6
    invoke-direct {p0, v0}, Lo/requestExtraBinder;->ICustomTabsCallback(Lo/MediaControllerCompat$MediaControllerImplBase;)V

    .line 1298
    :cond_20
    :goto_7
    iget-object v2, p0, Lo/requestExtraBinder;->onTransact:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_21

    .line 1305
    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->setStateAfterAnimating(I)V

    goto :goto_8

    .line 1308
    :cond_21
    iget-object v1, p0, Lo/requestExtraBinder;->ICustomTabsService:Lo/postToHandler;

    iget-object v2, p0, Lo/requestExtraBinder;->INotificationSideChannel:Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;

    invoke-virtual {v0, v1, v2}, Lo/MediaControllerCompat$MediaControllerImplBase;->onNavigationEvent(Lo/postToHandler;Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;)V

    :cond_22
    move v1, p2

    :goto_8
    if-gez v1, :cond_23

    .line 1314
    iget-object p2, p0, Lo/requestExtraBinder;->INotificationSideChannel:Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;

    invoke-virtual {v0, p2}, Lo/MediaControllerCompat$MediaControllerImplBase;->ICustomTabsCallback(Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;)V

    :cond_23
    move p2, v1

    .line 1319
    :cond_24
    :goto_9
    iget v0, p1, Landroidx/fragment/app/Fragment;->mState:I

    if-eq v0, p2, :cond_26

    .line 28093
    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1321
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "moveToState: Fragment state for "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " not updated inline; expected state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " found "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroidx/fragment/app/Fragment;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    :cond_25
    iput p2, p1, Landroidx/fragment/app/Fragment;->mState:I

    :cond_26
    return-void
.end method

.method public final onMessageChannelReady(Lo/postToHandler;Lo/MediaControllerCompat$MediaControllerExtraData;Landroidx/fragment/app/Fragment;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/postToHandler<",
            "*>;",
            "Lo/MediaControllerCompat$MediaControllerExtraData;",
            "Landroidx/fragment/app/Fragment;",
            ")V"
        }
    .end annotation

    .line 2535
    iget-object v0, p0, Lo/requestExtraBinder;->ICustomTabsService:Lo/postToHandler;

    if-nez v0, :cond_5

    .line 2536
    iput-object p1, p0, Lo/requestExtraBinder;->ICustomTabsService:Lo/postToHandler;

    .line 2537
    iput-object p2, p0, Lo/requestExtraBinder;->newSession:Lo/MediaControllerCompat$MediaControllerExtraData;

    .line 2538
    iput-object p3, p0, Lo/requestExtraBinder;->getInterfaceDescriptor:Landroidx/fragment/app/Fragment;

    if-eqz p3, :cond_0

    .line 2543
    invoke-direct {p0}, Lo/requestExtraBinder;->IPostMessageService()V

    .line 2546
    :cond_0
    instance-of p2, p1, Lo/onMessageChannelReady;

    if-eqz p2, :cond_2

    .line 2547
    move-object p2, p1

    check-cast p2, Lo/onMessageChannelReady;

    .line 2548
    invoke-interface {p2}, Lo/onMessageChannelReady;->getOnBackPressedDispatcher()Landroidx/activity/OnBackPressedDispatcher;

    move-result-object v0

    iput-object v0, p0, Lo/requestExtraBinder;->ICustomTabsCallback:Landroidx/activity/OnBackPressedDispatcher;

    if-eqz p3, :cond_1

    move-object p2, p3

    .line 2550
    :cond_1
    iget-object v0, p0, Lo/requestExtraBinder;->ICustomTabsCallback:Landroidx/activity/OnBackPressedDispatcher;

    iget-object v1, p0, Lo/requestExtraBinder;->onPostMessage:Lo/handleMediaPlayPauseKeySingleTapIfPending;

    invoke-virtual {v0, p2, v1}, Landroidx/activity/OnBackPressedDispatcher;->extraCallback(Lo/toLegacyStreamType;Lo/handleMediaPlayPauseKeySingleTapIfPending;)V

    :cond_2
    if-eqz p3, :cond_3

    .line 2555
    iget-object p1, p3, Landroidx/fragment/app/Fragment;->mFragmentManager:Lo/requestExtraBinder;

    invoke-direct {p1, p3}, Lo/requestExtraBinder;->mayLaunchUrl(Landroidx/fragment/app/Fragment;)Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;

    move-result-object p1

    iput-object p1, p0, Lo/requestExtraBinder;->INotificationSideChannel:Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;

    return-void

    .line 2556
    :cond_3
    instance-of p2, p1, Lo/removeOnActiveChangeListener;

    if-eqz p2, :cond_4

    .line 2557
    check-cast p1, Lo/removeOnActiveChangeListener;

    invoke-interface {p1}, Lo/removeOnActiveChangeListener;->getViewModelStore()Lo/setRatingType;

    move-result-object p1

    .line 2558
    invoke-static {p1}, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;->extraCallback(Lo/setRatingType;)Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;

    move-result-object p1

    iput-object p1, p0, Lo/requestExtraBinder;->INotificationSideChannel:Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;

    return-void

    .line 2560
    :cond_4
    new-instance p1, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;-><init>(Z)V

    iput-object p1, p0, Lo/requestExtraBinder;->INotificationSideChannel:Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;

    return-void

    .line 2535
    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Already attached"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onMessageChannelReady(Lo/requestExtraBinder$ICustomTabsCallback;Z)V
    .locals 2

    if-nez p2, :cond_2

    .line 1735
    iget-object v0, p0, Lo/requestExtraBinder;->ICustomTabsService:Lo/postToHandler;

    if-nez v0, :cond_1

    .line 1736
    iget-boolean p1, p0, Lo/requestExtraBinder;->postMessage:Z

    if-eqz p1, :cond_0

    .line 1737
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "FragmentManager has been destroyed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1739
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "FragmentManager has not been attached to a host."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1743
    :cond_1
    invoke-direct {p0}, Lo/requestExtraBinder;->validateRelationship()V

    .line 1745
    :cond_2
    iget-object v0, p0, Lo/requestExtraBinder;->requestPostMessageChannel:Ljava/util/ArrayList;

    monitor-enter v0

    .line 1746
    :try_start_0
    iget-object v1, p0, Lo/requestExtraBinder;->ICustomTabsService:Lo/postToHandler;

    if-nez v1, :cond_4

    if-eqz p2, :cond_3

    .line 1749
    monitor-exit v0

    return-void

    .line 1751
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Activity has been destroyed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1753
    :cond_4
    iget-object p2, p0, Lo/requestExtraBinder;->requestPostMessageChannel:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 1754
    invoke-virtual {p0}, Lo/requestExtraBinder;->onMessageChannelReady()V

    .line 1755
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final onMessageChannelReady(Landroidx/fragment/app/Fragment;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 541
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isMenuVisible()Z

    move-result p1

    return p1
.end method

.method final onMessageChannelReady(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lo/binderDied;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            "II)Z"
        }
    .end annotation

    .line 2321
    iget-object v0, p0, Lo/requestExtraBinder;->onMessageChannelReady:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    if-nez p3, :cond_2

    if-gez p4, :cond_2

    and-int/lit8 v3, p5, 0x1

    if-nez v3, :cond_2

    .line 2325
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result p3

    sub-int/2addr p3, v2

    if-gez p3, :cond_1

    return v1

    .line 2329
    :cond_1
    iget-object p4, p0, Lo/requestExtraBinder;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 2330
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_2
    if-nez p3, :cond_4

    if-ltz p4, :cond_3

    goto :goto_0

    :cond_3
    const/4 p3, -0x1

    goto :goto_3

    .line 2336
    :cond_4
    :goto_0
    iget-object v0, p0, Lo/requestExtraBinder;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_1
    if-ltz v0, :cond_7

    .line 2338
    iget-object v3, p0, Lo/requestExtraBinder;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/binderDied;

    if-eqz p3, :cond_5

    .line 50900
    iget-object v4, v3, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 2339
    invoke-virtual {p3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_7

    :cond_5
    if-ltz p4, :cond_6

    .line 2342
    iget v3, v3, Lo/binderDied;->onNavigationEvent:I

    if-eq p4, v3, :cond_7

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_7
    if-gez v0, :cond_8

    return v1

    :cond_8
    and-int/2addr p5, v2

    if-eqz p5, :cond_b

    :cond_9
    :goto_2
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_b

    .line 2354
    iget-object p5, p0, Lo/requestExtraBinder;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {p5, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lo/binderDied;

    if-eqz p3, :cond_a

    .line 50901
    iget-object v3, p5, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 2355
    invoke-virtual {p3, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    :cond_a
    if-ltz p4, :cond_b

    iget p5, p5, Lo/binderDied;->onNavigationEvent:I

    if-ne p4, p5, :cond_b

    goto :goto_2

    :cond_b
    move p3, v0

    .line 2364
    :goto_3
    iget-object p4, p0, Lo/requestExtraBinder;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/AbstractCollection;->size()I

    move-result p4

    sub-int/2addr p4, v2

    if-ne p3, p4, :cond_c

    return v1

    .line 2367
    :cond_c
    iget-object p4, p0, Lo/requestExtraBinder;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {p4}, Ljava/util/AbstractCollection;->size()I

    move-result p4

    sub-int/2addr p4, v2

    :goto_4
    if-le p4, p3, :cond_d

    .line 2368
    iget-object p5, p0, Lo/requestExtraBinder;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {p5, p4}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 2369
    sget-object p5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p2, p5}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    add-int/lit8 p4, p4, -0x1

    goto :goto_4

    :cond_d
    :goto_5
    return v2
.end method

.method public final onNavigationEvent()Lo/MediaControllerCompat$MediaControllerImplApi23;
    .locals 1

    .line 464
    new-instance v0, Lo/binderDied;

    invoke-direct {v0, p0}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    return-object v0
.end method

.method public final onNavigationEvent(Landroidx/fragment/app/Fragment;)V
    .locals 7

    .line 11723
    iget-boolean v0, p0, Lo/requestExtraBinder;->updateVisuals:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lo/requestExtraBinder;->mayLaunchUrl:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const/4 v3, 0x2

    const-string v4, "FragmentManager"

    if-eqz v0, :cond_3

    .line 12093
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "Ignoring addRetainedFragment as the state is already saved"

    .line 912
    invoke-static {v4, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    .line 916
    :cond_3
    iget-object v0, p0, Lo/requestExtraBinder;->INotificationSideChannel:Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;

    .line 12099
    iget-object v5, v0, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;->ICustomTabsCallback:Ljava/util/HashMap;

    iget-object v6, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    .line 12102
    :cond_4
    iget-object v0, v0, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;->ICustomTabsCallback:Ljava/util/HashMap;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, v1, p1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_5

    .line 13093
    invoke-static {v4, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 918
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "Updating retained Fragments: Added "

    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method public final onNavigationEvent(Z)V
    .locals 2

    .line 2653
    iget-object v0, p0, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    invoke-virtual {v0}, Lo/extraCallback$asBinder;->ICustomTabsCallback()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 2655
    invoke-virtual {v1, p1}, Landroidx/fragment/app/Fragment;->performPictureInPictureModeChanged(Z)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onNavigationEvent(Landroid/view/MenuItem;)Z
    .locals 3

    .line 2738
    iget v0, p0, Lo/requestExtraBinder;->ICustomTabsCallback$Stub:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    .line 2741
    :cond_0
    iget-object v0, p0, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    invoke-virtual {v0}, Lo/extraCallback$asBinder;->ICustomTabsCallback()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/fragment/app/Fragment;

    if-eqz v2, :cond_1

    .line 2743
    invoke-virtual {v2, p1}, Landroidx/fragment/app/Fragment;->performContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public final onPostMessage(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 1

    .line 1698
    iget-object v0, p0, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    .line 45269
    iget-object v0, v0, Lo/extraCallback$asBinder;->onNavigationEvent:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lo/MediaControllerCompat$MediaControllerImplBase;

    if-eqz p1, :cond_0

    .line 46134
    iget-object p1, p1, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final onPostMessage(Landroidx/fragment/app/Fragment;)Lo/setRatingType;
    .locals 3

    .line 901
    iget-object v0, p0, Lo/requestExtraBinder;->INotificationSideChannel:Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;

    .line 10148
    iget-object v1, v0, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;->extraCallback:Ljava/util/HashMap;

    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/setRatingType;

    if-nez v1, :cond_0

    .line 10150
    new-instance v1, Lo/setRatingType;

    invoke-direct {v1}, Lo/setRatingType;-><init>()V

    .line 10151
    iget-object v0, v0, Lo/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;->extraCallback:Ljava/util/HashMap;

    iget-object p1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method

.method final onPostMessage(IZ)V
    .locals 1

    .line 1497
    iget-object v0, p0, Lo/requestExtraBinder;->ICustomTabsService:Lo/postToHandler;

    if-nez v0, :cond_1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1498
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No activity"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-nez p2, :cond_2

    .line 1501
    iget p2, p0, Lo/requestExtraBinder;->ICustomTabsCallback$Stub:I

    if-ne p1, p2, :cond_2

    return-void

    .line 1505
    :cond_2
    iput p1, p0, Lo/requestExtraBinder;->ICustomTabsCallback$Stub:I

    .line 1508
    iget-object p1, p0, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    invoke-virtual {p1}, Lo/extraCallback$asBinder;->ICustomTabsCallback()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/fragment/app/Fragment;

    .line 1509
    invoke-virtual {p0, p2}, Lo/requestExtraBinder;->onTransact(Landroidx/fragment/app/Fragment;)V

    goto :goto_1

    .line 1514
    :cond_3
    iget-object p1, p0, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    invoke-virtual {p1}, Lo/extraCallback$asBinder;->extraCallback()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/fragment/app/Fragment;

    if-eqz p2, :cond_4

    .line 1515
    iget-boolean v0, p2, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    if-nez v0, :cond_4

    .line 1516
    invoke-virtual {p0, p2}, Lo/requestExtraBinder;->onTransact(Landroidx/fragment/app/Fragment;)V

    goto :goto_2

    .line 1520
    :cond_5
    invoke-direct {p0}, Lo/requestExtraBinder;->ICustomTabsService$Stub()V

    .line 1522
    iget-boolean p1, p0, Lo/requestExtraBinder;->IPostMessageService$Stub:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lo/requestExtraBinder;->ICustomTabsService:Lo/postToHandler;

    if-eqz p1, :cond_6

    iget p2, p0, Lo/requestExtraBinder;->ICustomTabsCallback$Stub:I

    const/4 v0, 0x4

    if-ne p2, v0, :cond_6

    .line 1523
    invoke-virtual {p1}, Lo/postToHandler;->onNavigationEvent()V

    const/4 p1, 0x0

    .line 1524
    iput-boolean p1, p0, Lo/requestExtraBinder;->IPostMessageService$Stub:Z

    :cond_6
    return-void
.end method

.method final onPostMessage(Landroidx/fragment/app/Fragment;Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;)V
    .locals 2

    .line 2804
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 50995
    iget-object v1, p0, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    .line 50996
    iget-object v1, v1, Lo/extraCallback$asBinder;->onNavigationEvent:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/MediaControllerCompat$MediaControllerImplBase;

    if-eqz v0, :cond_0

    .line 51001
    iget-object v0, v0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2804
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mHost:Lo/postToHandler;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mFragmentManager:Lo/requestExtraBinder;

    if-ne v0, p0, :cond_2

    .line 2809
    :cond_1
    iput-object p2, p1, Landroidx/fragment/app/Fragment;->mMaxState:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    return-void

    .line 2806
    :cond_2
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Fragment "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not an active fragment of FragmentManager "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final onPostMessage()Z
    .locals 1

    .line 1723
    iget-boolean v0, p0, Lo/requestExtraBinder;->updateVisuals:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lo/requestExtraBinder;->mayLaunchUrl:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public final onPostMessage(I)Z
    .locals 0

    .line 1128
    iget p1, p0, Lo/requestExtraBinder;->ICustomTabsCallback$Stub:I

    if-lez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onPostMessage(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 7

    .line 2677
    iget v0, p0, Lo/requestExtraBinder;->ICustomTabsCallback$Stub:I

    const/4 v1, 0x0

    if-gtz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 2682
    iget-object v2, p0, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    invoke-virtual {v2}, Lo/extraCallback$asBinder;->ICustomTabsCallback()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/fragment/app/Fragment;

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    if-nez v4, :cond_2

    const/4 v6, 0x1

    goto :goto_1

    .line 50954
    :cond_2
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->isMenuVisible()Z

    move-result v6

    :goto_1
    if-eqz v6, :cond_1

    .line 2684
    invoke-virtual {v4, p1, p2}, Landroidx/fragment/app/Fragment;->performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-nez v0, :cond_3

    .line 2687
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2689
    :cond_3
    invoke-virtual {v0, v4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    goto :goto_0

    .line 2694
    :cond_4
    iget-object p1, p0, Lo/requestExtraBinder;->IPostMessageService:Ljava/util/ArrayList;

    if-eqz p1, :cond_7

    .line 2695
    :goto_2
    iget-object p1, p0, Lo/requestExtraBinder;->IPostMessageService:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    if-ge v1, p1, :cond_7

    .line 2696
    iget-object p1, p0, Lo/requestExtraBinder;->IPostMessageService:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/Fragment;

    if-eqz v0, :cond_5

    .line 2697
    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    .line 2698
    :cond_5
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->onDestroyOptionsMenu()V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 2703
    :cond_7
    iput-object v0, p0, Lo/requestExtraBinder;->IPostMessageService:Ljava/util/ArrayList;

    return v3
.end method

.method public final onRelationshipValidationResult(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment$ICustomTabsCallback;
    .locals 4

    .line 979
    iget-object v0, p0, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 15251
    iget-object v0, v0, Lo/extraCallback$asBinder;->onNavigationEvent:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/MediaControllerCompat$MediaControllerImplBase;

    if-eqz v0, :cond_0

    .line 16134
    iget-object v1, v0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    .line 981
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 982
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Fragment "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not currently in the FragmentManager"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lo/requestExtraBinder;->ICustomTabsCallback(Ljava/lang/RuntimeException;)V

    .line 16424
    :cond_1
    iget-object p1, v0, Lo/MediaControllerCompat$MediaControllerImplBase;->onPostMessage:Landroidx/fragment/app/Fragment;

    iget p1, p1, Landroidx/fragment/app/Fragment;->mState:I

    const/4 v1, 0x0

    if-ltz p1, :cond_2

    .line 16425
    invoke-virtual {v0}, Lo/MediaControllerCompat$MediaControllerImplBase;->onTransact()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 16426
    new-instance v0, Landroidx/fragment/app/Fragment$ICustomTabsCallback;

    invoke-direct {v0, p1}, Landroidx/fragment/app/Fragment$ICustomTabsCallback;-><init>(Landroid/os/Bundle;)V

    return-object v0

    :cond_2
    return-object v1
.end method

.method public final onRelationshipValidationResult()V
    .locals 2

    .line 2248
    iget-object v0, p0, Lo/requestExtraBinder;->notify:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 2249
    :goto_0
    iget-object v0, p0, Lo/requestExtraBinder;->notify:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2250
    iget-object v0, p0, Lo/requestExtraBinder;->notify:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/AbstractList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/requestExtraBinder$extraCallback;

    invoke-virtual {v0}, Lo/requestExtraBinder$extraCallback;->onMessageChannelReady()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onTransact()V
    .locals 2

    .line 2568
    iget-object v0, p0, Lo/requestExtraBinder;->ICustomTabsService:Lo/postToHandler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2571
    iput-boolean v0, p0, Lo/requestExtraBinder;->updateVisuals:Z

    .line 2572
    iput-boolean v0, p0, Lo/requestExtraBinder;->mayLaunchUrl:Z

    .line 2573
    iget-object v0, p0, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    invoke-virtual {v0}, Lo/extraCallback$asBinder;->ICustomTabsCallback()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_1

    .line 2575
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->noteStateNotSaved()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method final onTransact(Landroidx/fragment/app/Fragment;)V
    .locals 3

    .line 1439
    iget-object v0, p0, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mWho:Ljava/lang/String;

    .line 30246
    iget-object v0, v0, Lo/extraCallback$asBinder;->onNavigationEvent:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x3

    const-string v1, "FragmentManager"

    .line 31093
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1441
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Ignoring moving "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " to state "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lo/requestExtraBinder;->ICustomTabsCallback$Stub:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p1, "since it is not added to "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 1446
    :cond_1
    invoke-virtual {p0, p1}, Lo/requestExtraBinder;->asBinder(Landroidx/fragment/app/Fragment;)V

    .line 1448
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz v0, :cond_5

    .line 1450
    iget-object v0, p0, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    invoke-virtual {v0, p1}, Lo/extraCallback$asBinder;->onMessageChannelReady(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1452
    iget-object v0, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1454
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 1455
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 1456
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v2

    if-ge v2, v0, :cond_2

    .line 1458
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 1459
    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 1462
    :cond_2
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    if-eqz v0, :cond_5

    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_5

    .line 1464
    iget v0, p1, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_3

    .line 1465
    iget-object v0, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget v2, p1, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    .line 1467
    :cond_3
    iput v1, p1, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    const/4 v0, 0x0

    .line 1468
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    .line 1470
    iget-object v0, p0, Lo/requestExtraBinder;->ICustomTabsService:Lo/postToHandler;

    .line 31200
    iget-object v0, v0, Lo/postToHandler;->onNavigationEvent:Landroid/content/Context;

    .line 1471
    iget-object v1, p0, Lo/requestExtraBinder;->newSession:Lo/MediaControllerCompat$MediaControllerExtraData;

    const/4 v2, 0x1

    .line 1470
    invoke-static {v0, v1, p1, v2}, Lo/setHandler;->onMessageChannelReady(Landroid/content/Context;Lo/MediaControllerCompat$MediaControllerExtraData;Landroidx/fragment/app/Fragment;Z)Lo/setHandler$extraCallback;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1473
    iget-object v1, v0, Lo/setHandler$extraCallback;->extraCallback:Landroid/view/animation/Animation;

    if-eqz v1, :cond_4

    .line 1474
    iget-object v1, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    iget-object v0, v0, Lo/setHandler$extraCallback;->extraCallback:Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 1476
    :cond_4
    iget-object v1, v0, Lo/setHandler$extraCallback;->ICustomTabsCallback:Landroid/animation/Animator;

    iget-object v2, p1, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    .line 1477
    iget-object v0, v0, Lo/setHandler$extraCallback;->ICustomTabsCallback:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 1482
    :cond_5
    :goto_0
    iget-boolean v0, p1, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz v0, :cond_6

    .line 1483
    invoke-direct {p0, p1}, Lo/requestExtraBinder;->IPostMessageService$Stub(Landroidx/fragment/app/Fragment;)V

    :cond_6
    return-void
.end method

.method public final postMessage()Lo/MediaControllerCompat$Callback$StubApi21;
    .locals 2

    move-object v0, p0

    .line 2840
    :goto_0
    iget-object v1, v0, Lo/requestExtraBinder;->getInterfaceDescriptor:Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 2845
    iget-object v0, v1, Landroidx/fragment/app/Fragment;->mFragmentManager:Lo/requestExtraBinder;

    goto :goto_0

    .line 2847
    :cond_0
    iget-object v0, v0, Lo/requestExtraBinder;->ICustomTabsCallback$Stub$Proxy:Lo/MediaControllerCompat$Callback$StubApi21;

    return-object v0
.end method

.method final postMessage(Landroidx/fragment/app/Fragment;)V
    .locals 4

    const/4 v0, 0x2

    const-string v1, "FragmentManager"

    .line 42093
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1653
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "attach: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    :cond_0
    iget-boolean v2, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    .line 1655
    iput-boolean v2, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    .line 1656
    iget-boolean v2, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-nez v2, :cond_2

    .line 1657
    iget-object v2, p0, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    invoke-virtual {v2, p1}, Lo/extraCallback$asBinder;->extraCallback(Landroidx/fragment/app/Fragment;)V

    .line 43093
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1658
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "add from attach: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    :cond_1
    invoke-static {p1}, Lo/requestExtraBinder;->ICustomTabsService$Stub(Landroidx/fragment/app/Fragment;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    .line 1660
    iput-boolean p1, p0, Lo/requestExtraBinder;->IPostMessageService$Stub:Z

    :cond_2
    return-void
.end method

.method public final requestPostMessageChannel()Landroid/view/LayoutInflater$Factory2;
    .locals 1

    .line 2917
    iget-object v0, p0, Lo/requestExtraBinder;->onNavigationEvent:Lo/MediaControllerCompat$Callback$StubCompat;

    return-object v0
.end method

.method final requestPostMessageChannel(Landroidx/fragment/app/Fragment;)V
    .locals 3

    const/4 v0, 0x2

    const-string v1, "FragmentManager"

    .line 40093
    invoke-static {v1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1637
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "detach: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "FragmentManager"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    :cond_0
    iget-boolean v1, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-nez v1, :cond_3

    const/4 v1, 0x1

    .line 1639
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    .line 1640
    iget-boolean v2, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v2, :cond_3

    const-string v2, "FragmentManager"

    .line 41093
    invoke-static {v2, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1642
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "remove from detach: "

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "FragmentManager"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    :cond_1
    iget-object v0, p0, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    .line 41094
    iget-object v2, v0, Lo/extraCallback$asBinder;->onPostMessage:Ljava/util/ArrayList;

    monitor-enter v2

    .line 41095
    :try_start_0
    iget-object v0, v0, Lo/extraCallback$asBinder;->onPostMessage:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 41096
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 41097
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 1644
    invoke-static {p1}, Lo/requestExtraBinder;->ICustomTabsService$Stub(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1645
    iput-boolean v1, p0, Lo/requestExtraBinder;->IPostMessageService$Stub:Z

    .line 1647
    :cond_2
    invoke-direct {p0, p1}, Lo/requestExtraBinder;->ICustomTabsService$Stub$Proxy(Landroidx/fragment/app/Fragment;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 41096
    monitor-exit v2

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 999
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "FragmentManager{"

    .line 1000
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1001
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in "

    .line 1002
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1003
    iget-object v1, p0, Lo/requestExtraBinder;->getInterfaceDescriptor:Landroidx/fragment/app/Fragment;

    const-string/jumbo v2, "}"

    const-string/jumbo v3, "{"

    if-eqz v1, :cond_0

    .line 1004
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1005
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1006
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1007
    iget-object v1, p0, Lo/requestExtraBinder;->getInterfaceDescriptor:Landroidx/fragment/app/Fragment;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1008
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 1009
    :cond_0
    iget-object v1, p0, Lo/requestExtraBinder;->ICustomTabsService:Lo/postToHandler;

    if-eqz v1, :cond_1

    .line 1010
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    .line 1011
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1012
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1013
    iget-object v1, p0, Lo/requestExtraBinder;->ICustomTabsService:Lo/postToHandler;

    invoke-static {v1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1014
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "null"

    .line 1016
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string/jumbo v1, "}}"

    .line 1018
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1019
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final updateVisuals()V
    .locals 2

    .line 2669
    iget-object v0, p0, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    invoke-virtual {v0}, Lo/extraCallback$asBinder;->ICustomTabsCallback()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    if-eqz v1, :cond_0

    .line 2671
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->performLowMemory()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final warmup()V
    .locals 1

    const/4 v0, 0x3

    .line 2605
    invoke-virtual {p0, v0}, Lo/requestExtraBinder;->ICustomTabsCallback(I)V

    return-void
.end method

.method final warmup(Landroidx/fragment/app/Fragment;)V
    .locals 3

    const-string v0, "FragmentManager"

    const/4 v1, 0x2

    .line 37093
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1590
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "remove: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " nesting="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroidx/fragment/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FragmentManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isInBackStack()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 1593
    iget-boolean v2, p1, Landroidx/fragment/app/Fragment;->mDetached:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_3

    .line 1594
    :cond_1
    iget-object v0, p0, Lo/requestExtraBinder;->extraCallback:Lo/extraCallback$asBinder;

    .line 37094
    iget-object v2, v0, Lo/extraCallback$asBinder;->onPostMessage:Ljava/util/ArrayList;

    monitor-enter v2

    .line 37095
    :try_start_0
    iget-object v0, v0, Lo/extraCallback$asBinder;->onPostMessage:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    .line 37096
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 37097
    iput-boolean v0, p1, Landroidx/fragment/app/Fragment;->mAdded:Z

    .line 1595
    invoke-static {p1}, Lo/requestExtraBinder;->ICustomTabsService$Stub(Landroidx/fragment/app/Fragment;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1596
    iput-boolean v1, p0, Lo/requestExtraBinder;->IPostMessageService$Stub:Z

    .line 1598
    :cond_2
    iput-boolean v1, p1, Landroidx/fragment/app/Fragment;->mRemoving:Z

    .line 1599
    invoke-direct {p0, p1}, Lo/requestExtraBinder;->ICustomTabsService$Stub$Proxy(Landroidx/fragment/app/Fragment;)V

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 37096
    monitor-exit v2

    throw p1
.end method
