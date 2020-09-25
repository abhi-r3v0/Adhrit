.class public final Lo/setMoveDuration;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/setMoveDuration$onNavigationEvent;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u0000 \u00192\u00020\u0001:\u0001\u0019B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J\u000e\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000eJ\n\u0010\u000f\u001a\u0004\u0018\u00010\u0003H\u0002J\u0006\u0010\u0010\u001a\u00020\u0011J\u0018\u0010\u0012\u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0014\u001a\u00020\u0015H\u0002J\u000c\u0010\u0016\u001a\u00020\u0011*\u00020\u0003H\u0002J\u000c\u0010\u0017\u001a\u00020\u000c*\u00020\u0018H\u0002R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0007\u001a\u0004\u0018\u00010\u00088BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/main/navigation/NavigationTransactionHelper;",
        "",
        "fragment",
        "Landroidx/fragment/app/Fragment;",
        "containerId",
        "",
        "(Landroidx/fragment/app/Fragment;I)V",
        "supportFragmentManager",
        "Landroidx/fragment/app/FragmentManager;",
        "getSupportFragmentManager",
        "()Landroidx/fragment/app/FragmentManager;",
        "executeCommand",
        "",
        "navigationCommand",
        "Lcom/dreamplug/fabrik/ui/main/navigation/NavigationCommand;",
        "getCurrentFragment",
        "onBackPressed",
        "",
        "setupTransitions",
        "newFragment",
        "fragmentTransaction",
        "Landroidx/fragment/app/FragmentTransaction;",
        "isAnimationsSupported",
        "switchFragment",
        "Lcom/dreamplug/fabrik/ui/main/navigation/NavigationCommand$SwitchFragment;",
        "Companion",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field final extraCallback:I

.field final onMessageChannelReady:Landroidx/fragment/app/Fragment;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;I)V
    .locals 0

    const-string p2, "fragment"

    invoke-static {p1, p2}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/setMoveDuration;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    const p1, 0x7f0b0862

    iput p1, p0, Lo/setMoveDuration;->extraCallback:I

    return-void
.end method

.method private final extraCallback(Landroidx/fragment/app/Fragment;Lo/MediaControllerCompat$MediaControllerImplApi23;)V
    .locals 3

    .line 2012
    iget-object v0, p0, Lo/setMoveDuration;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    const-string v1, "fragment.childFragmentManager"

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2993
    iget-boolean v0, v0, Lo/requestExtraBinder;->postMessage:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2013
    iget-object v0, p0, Lo/setMoveDuration;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 1016
    iget v1, p0, Lo/setMoveDuration;->extraCallback:I

    invoke-virtual {v0, v1}, Lo/requestExtraBinder;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v1

    :cond_1
    if-eqz v1, :cond_c

    .line 3111
    instance-of v0, v1, Lo/onGetLayoutInflater;

    if-eqz v0, :cond_2

    move-object v0, v1

    check-cast v0, Lo/onGetLayoutInflater;

    invoke-interface {v0}, Lo/onGetLayoutInflater;->ICustomTabsCallback()Lo/requestPermissions;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_b

    .line 22
    move-object v0, v1

    check-cast v0, Lo/onGetLayoutInflater;

    .line 23
    invoke-interface {v0}, Lo/onGetLayoutInflater;->ICustomTabsCallback()Lo/requestPermissions;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Lo/access$3000;->extraCallback()V

    .line 4012
    :cond_3
    iget-object v2, v0, Lo/requestPermissions;->asBinder:Lo/fromQueueItem;

    if-eqz v2, :cond_4

    .line 25
    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->setSharedElementEnterTransition(Ljava/lang/Object;)V

    .line 4013
    :cond_4
    iget-object v2, v0, Lo/requestPermissions;->ICustomTabsCallback$Stub:Lo/fromQueueItem;

    if-eqz v2, :cond_5

    .line 28
    invoke-virtual {p1, v2}, Landroidx/fragment/app/Fragment;->setSharedElementReturnTransition(Ljava/lang/Object;)V

    .line 5010
    :cond_5
    iget-object v2, v0, Lo/requestPermissions;->onMessageChannelReady:Lo/fromQueueItem;

    if-eqz v2, :cond_6

    .line 31
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setExitTransition(Ljava/lang/Object;)V

    .line 5011
    :cond_6
    iget-object v2, v0, Lo/requestPermissions;->onNavigationEvent:Lo/fromQueueItem;

    if-eqz v2, :cond_7

    .line 34
    invoke-virtual {v1, v2}, Landroidx/fragment/app/Fragment;->setReenterTransition(Ljava/lang/Object;)V

    .line 6008
    :cond_7
    iget-object v1, v0, Lo/requestPermissions;->onPostMessage:Lo/fromQueueItem;

    if-eqz v1, :cond_8

    .line 37
    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->setEnterTransition(Ljava/lang/Object;)V

    .line 6009
    :cond_8
    iget-object v1, v0, Lo/requestPermissions;->ICustomTabsCallback:Lo/fromQueueItem;

    if-eqz v1, :cond_9

    .line 40
    invoke-virtual {p1, v1}, Landroidx/fragment/app/Fragment;->setReturnTransition(Ljava/lang/Object;)V

    .line 7007
    :cond_9
    iget-object p1, v0, Lo/requestPermissions;->extraCallback:Ljava/util/List;

    if-eqz p1, :cond_a

    .line 42
    check-cast p1, Ljava/lang/Iterable;

    .line 118
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/addWrite;

    .line 7027
    iget-object v1, v0, Lo/addWrite;->onMessageChannelReady:Ljava/lang/Object;

    .line 43
    check-cast v1, Landroid/view/View;

    .line 7028
    iget-object v0, v0, Lo/addWrite;->extraCallback:Ljava/lang/Object;

    .line 43
    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2, v1, v0}, Lo/MediaControllerCompat$MediaControllerImplApi23;->extraCallback(Landroid/view/View;Ljava/lang/String;)Lo/MediaControllerCompat$MediaControllerImplApi23;

    goto :goto_2

    :cond_a
    return-void

    :cond_b
    const p1, 0x7f010029

    .line 7571
    iput p1, p2, Lo/MediaControllerCompat$MediaControllerImplApi23;->extraCallback:I

    const p1, 0x7f01002a

    .line 7572
    iput p1, p2, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback:I

    const p1, 0x7f01002b

    .line 7573
    iput p1, p2, Lo/MediaControllerCompat$MediaControllerImplApi23;->onTransact:I

    const p1, 0x7f01002c

    .line 7574
    iput p1, p2, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback$Stub:I

    const-string p1, "fragmentTransaction.setC\u2026.fragment_default_return)"

    .line 47
    invoke-static {p2, p1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method private final onPostMessage(Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;)V
    .locals 6

    .line 20647
    iget-object v0, p1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;->ICustomTabsCallback:Ljava/lang/Integer;

    const-string v1, "fragment.childFragmentManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 79
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 21644
    iget-object v3, p1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;->extraCallback:Landroidx/fragment/app/Fragment;

    .line 23012
    iget-object v4, p0, Lo/setMoveDuration;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v4

    invoke-static {v4, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23993
    iget-boolean v4, v4, Lo/requestExtraBinder;->postMessage:Z

    if-nez v4, :cond_0

    .line 23013
    iget-object v4, p0, Lo/setMoveDuration;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v2

    :goto_0
    if-eqz v4, :cond_1

    .line 22016
    iget v5, p0, Lo/setMoveDuration;->extraCallback:I

    invoke-virtual {v4, v5}, Lo/requestExtraBinder;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v4

    goto :goto_1

    :cond_1
    move-object v4, v2

    .line 79
    :goto_1
    invoke-virtual {v3, v4, v0}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 24012
    :cond_2
    iget-object v0, p0, Lo/setMoveDuration;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24993
    iget-boolean v0, v0, Lo/requestExtraBinder;->postMessage:Z

    if-nez v0, :cond_3

    .line 24013
    iget-object v0, p0, Lo/setMoveDuration;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v2

    :cond_3
    if-eqz v2, :cond_7

    .line 25464
    new-instance v0, Lo/binderDied;

    invoke-direct {v0, v2}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 25644
    iget-object v1, p1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;->extraCallback:Landroidx/fragment/app/Fragment;

    const-string/jumbo v2, "this"

    .line 82
    invoke-static {v0, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, v0}, Lo/setMoveDuration;->extraCallback(Landroidx/fragment/app/Fragment;Lo/MediaControllerCompat$MediaControllerImplApi23;)V

    .line 25646
    iget-boolean v1, p1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;->onMessageChannelReady:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_5

    .line 84
    iget v1, p0, Lo/setMoveDuration;->extraCallback:I

    .line 26644
    iget-object v3, p1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;->extraCallback:Landroidx/fragment/app/Fragment;

    .line 27643
    iget-object v4, p1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;->onNavigationEvent:Ljava/lang/String;

    if-eqz v1, :cond_4

    const/4 v5, 0x2

    .line 28343
    invoke-virtual {v0, v1, v3, v4, v5}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    goto :goto_2

    .line 28341
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Must use non-zero containerViewId"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 86
    :cond_5
    iget v1, p0, Lo/setMoveDuration;->extraCallback:I

    .line 28644
    iget-object v3, p1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;->extraCallback:Landroidx/fragment/app/Fragment;

    .line 29643
    iget-object v4, p1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;->onNavigationEvent:Ljava/lang/String;

    .line 30234
    invoke-virtual {v0, v1, v3, v4, v2}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 30645
    :goto_2
    iget-object p1, p1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;->onPostMessage:Ljava/lang/String;

    .line 30651
    iget-boolean v1, v0, Lo/MediaControllerCompat$MediaControllerImplApi23;->onRelationshipValidationResult:Z

    if-eqz v1, :cond_6

    .line 30655
    iput-boolean v2, v0, Lo/MediaControllerCompat$MediaControllerImplApi23;->asBinder:Z

    .line 30656
    iput-object p1, v0, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    .line 89
    invoke-virtual {v0}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onPostMessage()I

    return-void

    .line 30652
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This FragmentTransaction is not allowed to be added to the back stack."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    return-void
.end method


# virtual methods
.method public final onPostMessage(Lo/RecyclerView$EdgeEffectFactory$EdgeDirection;)V
    .locals 6

    const-string v0, "navigationCommand"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    instance-of v0, p1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;

    if-eqz v0, :cond_0

    .line 59
    check-cast p1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;

    .line 60
    invoke-direct {p0, p1}, Lo/setMoveDuration;->onPostMessage(Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onPostMessage;)V

    return-void

    .line 63
    :cond_0
    instance-of v0, p1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onNavigationEvent;

    const-string v1, "fragment.childFragmentManager"

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 8012
    iget-object v0, p0, Lo/setMoveDuration;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8993
    iget-boolean v0, v0, Lo/requestExtraBinder;->postMessage:Z

    if-nez v0, :cond_1

    .line 8013
    iget-object v0, p0, Lo/setMoveDuration;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v2

    :cond_1
    if-eqz v2, :cond_2

    .line 64
    check-cast p1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onNavigationEvent;

    .line 9658
    iget-object v0, p1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onNavigationEvent;->ICustomTabsCallback:Ljava/lang/String;

    .line 9659
    iget-boolean p1, p1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onNavigationEvent;->onPostMessage:Z

    .line 10598
    new-instance v1, Lo/requestExtraBinder$onMessageChannelReady;

    const/4 v3, -0x1

    invoke-direct {v1, v2, v0, v3, p1}, Lo/requestExtraBinder$onMessageChannelReady;-><init>(Lo/requestExtraBinder;Ljava/lang/String;II)V

    const/4 p1, 0x0

    invoke-virtual {v2, v1, p1}, Lo/requestExtraBinder;->onMessageChannelReady(Lo/requestExtraBinder$ICustomTabsCallback;Z)V

    :cond_2
    return-void

    .line 66
    :cond_3
    instance-of v0, p1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;

    if-eqz v0, :cond_a

    .line 67
    check-cast p1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;

    .line 10653
    iget-object v0, p1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;->ICustomTabsCallback:Ljava/lang/Integer;

    if-eqz v0, :cond_6

    .line 67
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 11652
    iget-object v3, p1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;->onNavigationEvent:Lo/onAudioInfoChanged;

    .line 13012
    iget-object v4, p0, Lo/setMoveDuration;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v4

    invoke-static {v4, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13993
    iget-boolean v4, v4, Lo/requestExtraBinder;->postMessage:Z

    if-nez v4, :cond_4

    .line 13013
    iget-object v4, p0, Lo/setMoveDuration;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v4

    goto :goto_0

    :cond_4
    move-object v4, v2

    :goto_0
    if-eqz v4, :cond_5

    .line 12016
    iget v5, p0, Lo/setMoveDuration;->extraCallback:I

    invoke-virtual {v4, v5}, Lo/requestExtraBinder;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v4

    goto :goto_1

    :cond_5
    move-object v4, v2

    .line 67
    :goto_1
    invoke-virtual {v3, v4, v0}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 14012
    :cond_6
    iget-object v0, p0, Lo/setMoveDuration;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    invoke-static {v0, v1}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14993
    iget-boolean v0, v0, Lo/requestExtraBinder;->postMessage:Z

    if-nez v0, :cond_7

    .line 14013
    iget-object v0, p0, Lo/setMoveDuration;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v2

    :cond_7
    if-eqz v2, :cond_a

    .line 15464
    new-instance v0, Lo/binderDied;

    invoke-direct {v0, v2}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 15654
    iget-boolean v1, p1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;->onMessageChannelReady:Z

    if-eqz v1, :cond_9

    .line 16651
    iget-object v1, p1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;->extraCallback:Ljava/lang/String;

    .line 17651
    iget-boolean v2, v0, Lo/MediaControllerCompat$MediaControllerImplApi23;->onRelationshipValidationResult:Z

    if-eqz v2, :cond_8

    const/4 v2, 0x1

    .line 17655
    iput-boolean v2, v0, Lo/MediaControllerCompat$MediaControllerImplApi23;->asBinder:Z

    .line 17656
    iput-object v1, v0, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback$Stub$Proxy:Ljava/lang/String;

    goto :goto_2

    .line 17652
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "This FragmentTransaction is not allowed to be added to the back stack."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18652
    :cond_9
    :goto_2
    iget-object v1, p1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;->onNavigationEvent:Lo/onAudioInfoChanged;

    .line 19651
    iget-object p1, p1, Lo/RecyclerView$EdgeEffectFactory$EdgeDirection$onMessageChannelReady;->extraCallback:Ljava/lang/String;

    .line 72
    invoke-virtual {v1, v0, p1}, Lo/onAudioInfoChanged;->extraCallback(Lo/MediaControllerCompat$MediaControllerImplApi23;Ljava/lang/String;)I

    :cond_a
    return-void
.end method
