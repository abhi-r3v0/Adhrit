.class public abstract Lo/MediaSessionCompatApi24$CallbackProxy;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source ""

# interfaces
.implements Lo/getLastPositionUpdateTime;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/MediaSessionCompatApi24$CallbackProxy$extraCallback;,
        Lo/MediaSessionCompatApi24$CallbackProxy$onNavigationEvent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lo/ParcelableVolumeInfo;",
        ">;",
        "Lo/getLastPositionUpdateTime;"
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl<",
            "Landroidx/fragment/app/Fragment$ICustomTabsCallback;",
            ">;"
        }
    .end annotation
.end field

.field private ICustomTabsCallback$Stub:Lo/MediaSessionCompatApi24$CallbackProxy$onNavigationEvent;

.field private final asInterface:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public final extraCallback:Lo/requestExtraBinder;

.field onMessageChannelReady:Z

.field final onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy;

.field final onPostMessage:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private onTransact:Z


# direct methods
.method public constructor <init>(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 112
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getLifecycle()Lo/MediaControllerCompatApi21$CallbackProxy;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lo/MediaSessionCompatApi24$CallbackProxy;-><init>(Lo/requestExtraBinder;Lo/MediaControllerCompatApi21$CallbackProxy;)V

    return-void
.end method

.method private constructor <init>(Lo/requestExtraBinder;Lo/MediaControllerCompatApi21$CallbackProxy;)V
    .locals 1

    .line 123
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 82
    new-instance v0, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    invoke-direct {v0}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;-><init>()V

    iput-object v0, p0, Lo/MediaSessionCompatApi24$CallbackProxy;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    .line 84
    new-instance v0, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    invoke-direct {v0}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;-><init>()V

    iput-object v0, p0, Lo/MediaSessionCompatApi24$CallbackProxy;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    .line 85
    new-instance v0, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    invoke-direct {v0}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;-><init>()V

    iput-object v0, p0, Lo/MediaSessionCompatApi24$CallbackProxy;->asInterface:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    const/4 v0, 0x0

    .line 90
    iput-boolean v0, p0, Lo/MediaSessionCompatApi24$CallbackProxy;->onMessageChannelReady:Z

    .line 92
    iput-boolean v0, p0, Lo/MediaSessionCompatApi24$CallbackProxy;->onTransact:Z

    .line 124
    iput-object p1, p0, Lo/MediaSessionCompatApi24$CallbackProxy;->extraCallback:Lo/requestExtraBinder;

    .line 125
    iput-object p2, p0, Lo/MediaSessionCompatApi24$CallbackProxy;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy;

    const/4 p1, 0x1

    .line 126
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    return-void
.end method

.method private ICustomTabsCallback(I)Ljava/lang/Long;
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 252
    :goto_0
    iget-object v2, p0, Lo/MediaSessionCompatApi24$CallbackProxy;->asInterface:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    .line 9327
    iget-boolean v3, v2, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onMessageChannelReady:Z

    if-eqz v3, :cond_0

    .line 9328
    invoke-virtual {v2}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onMessageChannelReady()V

    .line 9331
    :cond_0
    iget v2, v2, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->extraCallback:I

    if-ge v1, v2, :cond_4

    .line 253
    iget-object v2, p0, Lo/MediaSessionCompatApi24$CallbackProxy;->asInterface:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    .line 9373
    iget-boolean v3, v2, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onMessageChannelReady:Z

    if-eqz v3, :cond_1

    .line 9374
    invoke-virtual {v2}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onMessageChannelReady()V

    .line 9377
    :cond_1
    iget-object v2, v2, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onNavigationEvent:[Ljava/lang/Object;

    aget-object v2, v2, v1

    .line 253
    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-ne v2, p1, :cond_3

    if-nez v0, :cond_2

    .line 258
    iget-object v0, p0, Lo/MediaSessionCompatApi24$CallbackProxy;->asInterface:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    invoke-virtual {v0, v1}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onPostMessage(I)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_1

    .line 255
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Design assumption violated: a ViewHolder can only be bound to one item at a time."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-object v0
.end method

.method private onMessageChannelReady(J)V
    .locals 7

    .line 434
    iget-object v0, p0, Lo/MediaSessionCompatApi24$CallbackProxy;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    const/4 v1, 0x0

    .line 16109
    invoke-virtual {v0, p1, p2, v1}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->ICustomTabsCallback(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 434
    check-cast v0, Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_0

    return-void

    .line 440
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 441
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 443
    check-cast v1, Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    :cond_1
    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    cmp-long v5, p1, v1

    if-ltz v5, :cond_2

    .line 16496
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    int-to-long v1, v1

    cmp-long v6, p1, v1

    if-gez v6, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_3

    .line 448
    iget-object v1, p0, Lo/MediaSessionCompatApi24$CallbackProxy;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    invoke-virtual {v1, p1, p2}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->extraCallback(J)V

    .line 451
    :cond_3
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_4

    .line 452
    iget-object v0, p0, Lo/MediaSessionCompatApi24$CallbackProxy;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    invoke-virtual {v0, p1, p2}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->extraCallback(J)V

    return-void

    .line 17470
    :cond_4
    iget-object v1, p0, Lo/MediaSessionCompatApi24$CallbackProxy;->extraCallback:Lo/requestExtraBinder;

    .line 17723
    iget-boolean v2, v1, Lo/requestExtraBinder;->updateVisuals:Z

    if-nez v2, :cond_6

    iget-boolean v1, v1, Lo/requestExtraBinder;->mayLaunchUrl:Z

    if-eqz v1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v1, 0x0

    goto :goto_2

    :cond_6
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-eqz v1, :cond_7

    .line 457
    iput-boolean v4, p0, Lo/MediaSessionCompatApi24$CallbackProxy;->onTransact:Z

    return-void

    .line 461
    :cond_7
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_9

    if-ltz v5, :cond_8

    .line 18496
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    int-to-long v1, v1

    cmp-long v5, p1, v1

    if-gez v5, :cond_8

    const/4 v3, 0x1

    :cond_8
    if-eqz v3, :cond_9

    .line 462
    iget-object v1, p0, Lo/MediaSessionCompatApi24$CallbackProxy;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    iget-object v2, p0, Lo/MediaSessionCompatApi24$CallbackProxy;->extraCallback:Lo/requestExtraBinder;

    invoke-virtual {v2, v0}, Lo/requestExtraBinder;->onRelationshipValidationResult(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/Fragment$ICustomTabsCallback;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onMessageChannelReady(JLjava/lang/Object;)V

    .line 464
    :cond_9
    iget-object v1, p0, Lo/MediaSessionCompatApi24$CallbackProxy;->extraCallback:Lo/requestExtraBinder;

    .line 19464
    new-instance v2, Lo/binderDied;

    invoke-direct {v2, v1}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 464
    invoke-virtual {v2, v0}, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback(Landroidx/fragment/app/Fragment;)Lo/MediaControllerCompat$MediaControllerImplApi23;

    move-result-object v0

    invoke-virtual {v0}, Lo/MediaControllerCompat$MediaControllerImplApi23;->extraCallback()V

    .line 465
    iget-object v0, p0, Lo/MediaSessionCompatApi24$CallbackProxy;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    invoke-virtual {v0, p1, p2}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->extraCallback(J)V

    return-void
.end method

.method static onPostMessage(Landroid/view/View;Landroid/widget/FrameLayout;)V
    .locals 2

    .line 386
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_3

    .line 390
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-void

    .line 394
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 395
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 398
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 399
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 402
    :cond_2
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    .line 387
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Design assumption violated."

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 132
    iget-object v0, p0, Lo/MediaSessionCompatApi24$CallbackProxy;->ICustomTabsCallback$Stub:Lo/MediaSessionCompatApi24$CallbackProxy$onNavigationEvent;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 133
    new-instance v0, Lo/MediaSessionCompatApi24$CallbackProxy$onNavigationEvent;

    invoke-direct {v0, p0}, Lo/MediaSessionCompatApi24$CallbackProxy$onNavigationEvent;-><init>(Lo/MediaSessionCompatApi24$CallbackProxy;)V

    iput-object v0, p0, Lo/MediaSessionCompatApi24$CallbackProxy;->ICustomTabsCallback$Stub:Lo/MediaSessionCompatApi24$CallbackProxy$onNavigationEvent;

    .line 3626
    invoke-static {p1}, Lo/MediaSessionCompatApi24$CallbackProxy$onNavigationEvent;->onMessageChannelReady(Landroidx/recyclerview/widget/RecyclerView;)Lo/getCustomActions;

    move-result-object p1

    iput-object p1, v0, Lo/MediaSessionCompatApi24$CallbackProxy$onNavigationEvent;->ICustomTabsCallback:Lo/getCustomActions;

    .line 3629
    new-instance p1, Lo/MediaSessionCompatApi24$CallbackProxy$onNavigationEvent$3;

    invoke-direct {p1, v0}, Lo/MediaSessionCompatApi24$CallbackProxy$onNavigationEvent$3;-><init>(Lo/MediaSessionCompatApi24$CallbackProxy$onNavigationEvent;)V

    iput-object p1, v0, Lo/MediaSessionCompatApi24$CallbackProxy$onNavigationEvent;->extraCallback:Lo/getCustomActions$onNavigationEvent;

    .line 3640
    iget-object p1, v0, Lo/MediaSessionCompatApi24$CallbackProxy$onNavigationEvent;->ICustomTabsCallback:Lo/getCustomActions;

    iget-object v1, v0, Lo/MediaSessionCompatApi24$CallbackProxy$onNavigationEvent;->extraCallback:Lo/getCustomActions$onNavigationEvent;

    .line 3872
    iget-object p1, p1, Lo/getCustomActions;->onMessageChannelReady:Lo/getBufferedPosition;

    .line 4042
    iget-object p1, p1, Lo/getBufferedPosition;->onPostMessage:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3643
    new-instance p1, Lo/MediaSessionCompatApi24$CallbackProxy$onNavigationEvent$2;

    invoke-direct {p1, v0}, Lo/MediaSessionCompatApi24$CallbackProxy$onNavigationEvent$2;-><init>(Lo/MediaSessionCompatApi24$CallbackProxy$onNavigationEvent;)V

    iput-object p1, v0, Lo/MediaSessionCompatApi24$CallbackProxy$onNavigationEvent;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    .line 3649
    iget-object p1, v0, Lo/MediaSessionCompatApi24$CallbackProxy$onNavigationEvent;->onMessageChannelReady:Lo/MediaSessionCompatApi24$CallbackProxy;

    iget-object v1, v0, Lo/MediaSessionCompatApi24$CallbackProxy$onNavigationEvent;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 3653
    new-instance p1, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;

    invoke-direct {p1, v0}, Landroidx/viewpager2/adapter/FragmentStateAdapter$FragmentMaxLifecycleEnforcer$3;-><init>(Lo/MediaSessionCompatApi24$CallbackProxy$onNavigationEvent;)V

    iput-object p1, v0, Lo/MediaSessionCompatApi24$CallbackProxy$onNavigationEvent;->onNavigationEvent:Lo/MediaControllerCompatApi23;

    .line 3660
    iget-object p1, v0, Lo/MediaSessionCompatApi24$CallbackProxy$onNavigationEvent;->onMessageChannelReady:Lo/MediaSessionCompatApi24$CallbackProxy;

    iget-object p1, p1, Lo/MediaSessionCompatApi24$CallbackProxy;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy;

    iget-object v0, v0, Lo/MediaSessionCompatApi24$CallbackProxy$onNavigationEvent;->onNavigationEvent:Lo/MediaControllerCompatApi23;

    invoke-virtual {p1, v0}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    return-void

    .line 3036
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 7

    .line 67
    check-cast p1, Lo/ParcelableVolumeInfo;

    .line 28166
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v0

    .line 29047
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Landroid/widget/FrameLayout;

    .line 28167
    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    .line 28168
    invoke-direct {p0, v2}, Lo/MediaSessionCompatApi24$CallbackProxy;->ICustomTabsCallback(I)Ljava/lang/Long;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 28169
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    cmp-long v6, v4, v0

    if-eqz v6, :cond_0

    .line 28170
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v4

    invoke-direct {p0, v4, v5}, Lo/MediaSessionCompatApi24$CallbackProxy;->onMessageChannelReady(J)V

    .line 28171
    iget-object v4, p0, Lo/MediaSessionCompatApi24$CallbackProxy;->asInterface:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->extraCallback(J)V

    .line 28174
    :cond_0
    iget-object v3, p0, Lo/MediaSessionCompatApi24$CallbackProxy;->asInterface:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v3, v0, v1, v2}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onMessageChannelReady(JLjava/lang/Object;)V

    .line 29265
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    .line 29266
    iget-object v2, p0, Lo/MediaSessionCompatApi24$CallbackProxy;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    invoke-virtual {v2, v0, v1}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onNavigationEvent(J)Z

    move-result v2

    if-nez v2, :cond_1

    .line 29268
    invoke-virtual {p0, p2}, Lo/MediaSessionCompatApi24$CallbackProxy;->onMessageChannelReady(I)Landroidx/fragment/app/Fragment;

    move-result-object p2

    .line 29269
    iget-object v2, p0, Lo/MediaSessionCompatApi24$CallbackProxy;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    const/4 v3, 0x0

    .line 30109
    invoke-virtual {v2, v0, v1, v3}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->ICustomTabsCallback(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 29269
    check-cast v2, Landroidx/fragment/app/Fragment$ICustomTabsCallback;

    invoke-virtual {p2, v2}, Landroidx/fragment/app/Fragment;->setInitialSavedState(Landroidx/fragment/app/Fragment$ICustomTabsCallback;)V

    .line 29270
    iget-object v2, p0, Lo/MediaSessionCompatApi24$CallbackProxy;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    invoke-virtual {v2, v0, v1, p2}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onMessageChannelReady(JLjava/lang/Object;)V

    .line 31047
    :cond_1
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p2, Landroid/widget/FrameLayout;

    .line 28180
    invoke-static {p2}, Lo/unregisterCallbackListener;->INotificationSideChannel$Stub(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 28181
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_2

    .line 28184
    new-instance v0, Lo/MediaSessionCompatApi24$CallbackProxy$5;

    invoke-direct {v0, p0, p2, p1}, Lo/MediaSessionCompatApi24$CallbackProxy$5;-><init>(Lo/MediaSessionCompatApi24$CallbackProxy;Landroid/widget/FrameLayout;Lo/ParcelableVolumeInfo;)V

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto :goto_0

    .line 28182
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Design assumption violated."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 28196
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lo/MediaSessionCompatApi24$CallbackProxy;->onNavigationEvent()V

    return-void
.end method

.method public synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 31161
    invoke-static {p1}, Lo/ParcelableVolumeInfo;->extraCallback(Landroid/view/ViewGroup;)Lo/ParcelableVolumeInfo;

    move-result-object p1

    return-object p1
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 140
    iget-object v0, p0, Lo/MediaSessionCompatApi24$CallbackProxy;->ICustomTabsCallback$Stub:Lo/MediaSessionCompatApi24$CallbackProxy$onNavigationEvent;

    .line 4664
    invoke-static {p1}, Lo/MediaSessionCompatApi24$CallbackProxy$onNavigationEvent;->onMessageChannelReady(Landroidx/recyclerview/widget/RecyclerView;)Lo/getCustomActions;

    move-result-object p1

    .line 4665
    iget-object v1, v0, Lo/MediaSessionCompatApi24$CallbackProxy$onNavigationEvent;->extraCallback:Lo/getCustomActions$onNavigationEvent;

    .line 4882
    iget-object p1, p1, Lo/getCustomActions;->onMessageChannelReady:Lo/getBufferedPosition;

    .line 5049
    iget-object p1, p1, Lo/getBufferedPosition;->onPostMessage:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 4666
    iget-object p1, v0, Lo/MediaSessionCompatApi24$CallbackProxy$onNavigationEvent;->onMessageChannelReady:Lo/MediaSessionCompatApi24$CallbackProxy;

    iget-object v1, v0, Lo/MediaSessionCompatApi24$CallbackProxy$onNavigationEvent;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 4667
    iget-object p1, v0, Lo/MediaSessionCompatApi24$CallbackProxy$onNavigationEvent;->onMessageChannelReady:Lo/MediaSessionCompatApi24$CallbackProxy;

    iget-object p1, p1, Lo/MediaSessionCompatApi24$CallbackProxy;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy;

    iget-object v1, v0, Lo/MediaSessionCompatApi24$CallbackProxy$onNavigationEvent;->onNavigationEvent:Lo/MediaControllerCompatApi23;

    invoke-virtual {p1, v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->onPostMessage(Lo/MediaControllerCompatApi21$TransportControls;)V

    const/4 p1, 0x0

    .line 4668
    iput-object p1, v0, Lo/MediaSessionCompatApi24$CallbackProxy$onNavigationEvent;->ICustomTabsCallback:Lo/getCustomActions;

    .line 141
    iput-object p1, p0, Lo/MediaSessionCompatApi24$CallbackProxy;->ICustomTabsCallback$Stub:Lo/MediaSessionCompatApi24$CallbackProxy$onNavigationEvent;

    return-void
.end method

.method public bridge synthetic onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public abstract onMessageChannelReady(I)Landroidx/fragment/app/Fragment;
.end method

.method public final onMessageChannelReady(Landroid/os/Parcelable;)V
    .locals 9

    .line 535
    iget-object v0, p0, Lo/MediaSessionCompatApi24$CallbackProxy;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    .line 23327
    iget-boolean v1, v0, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onMessageChannelReady:Z

    if-eqz v1, :cond_0

    .line 23328
    invoke-virtual {v0}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onMessageChannelReady()V

    .line 23331
    :cond_0
    iget v0, v0, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->extraCallback:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_d

    .line 535
    iget-object v0, p0, Lo/MediaSessionCompatApi24$CallbackProxy;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    .line 24327
    iget-boolean v3, v0, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onMessageChannelReady:Z

    if-eqz v3, :cond_2

    .line 24328
    invoke-virtual {v0}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onMessageChannelReady()V

    .line 24331
    :cond_2
    iget v0, v0, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->extraCallback:I

    if-nez v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_d

    .line 540
    check-cast p1, Landroid/os/Bundle;

    .line 541
    invoke-virtual {p1}, Landroid/os/Bundle;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_4

    .line 543
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 546
    :cond_4
    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, "f#"

    .line 24605
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x2

    if-eqz v4, :cond_6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v5, :cond_6

    const/4 v4, 0x1

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    :goto_3
    if-eqz v4, :cond_7

    .line 24610
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 549
    iget-object v6, p0, Lo/MediaSessionCompatApi24$CallbackProxy;->extraCallback:Lo/requestExtraBinder;

    invoke-virtual {v6, p1, v3}, Lo/requestExtraBinder;->onMessageChannelReady(Landroid/os/Bundle;Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v3

    .line 550
    iget-object v6, p0, Lo/MediaSessionCompatApi24$CallbackProxy;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    invoke-virtual {v6, v4, v5, v3}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onMessageChannelReady(JLjava/lang/Object;)V

    goto :goto_2

    :cond_7
    const-string/jumbo v4, "s#"

    .line 25605
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v5, :cond_8

    const/4 v4, 0x1

    goto :goto_4

    :cond_8
    const/4 v4, 0x0

    :goto_4
    if-eqz v4, :cond_a

    .line 25610
    invoke-virtual {v3, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 556
    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroidx/fragment/app/Fragment$ICustomTabsCallback;

    const-wide/16 v6, 0x0

    cmp-long v8, v4, v6

    if-ltz v8, :cond_9

    .line 26496
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v6

    int-to-long v6, v6

    cmp-long v8, v4, v6

    if-gez v8, :cond_9

    const/4 v6, 0x1

    goto :goto_5

    :cond_9
    const/4 v6, 0x0

    :goto_5
    if-eqz v6, :cond_5

    .line 558
    iget-object v6, p0, Lo/MediaSessionCompatApi24$CallbackProxy;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    invoke-virtual {v6, v4, v5, v3}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onMessageChannelReady(JLjava/lang/Object;)V

    goto :goto_2

    .line 563
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unexpected key in savedState: "

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 566
    :cond_b
    iget-object p1, p0, Lo/MediaSessionCompatApi24$CallbackProxy;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    invoke-virtual {p1}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->ICustomTabsCallback()Z

    move-result p1

    if-nez p1, :cond_c

    .line 567
    iput-boolean v2, p0, Lo/MediaSessionCompatApi24$CallbackProxy;->onTransact:Z

    .line 568
    iput-boolean v2, p0, Lo/MediaSessionCompatApi24$CallbackProxy;->onMessageChannelReady:Z

    .line 569
    invoke-virtual {p0}, Lo/MediaSessionCompatApi24$CallbackProxy;->onNavigationEvent()V

    .line 26575
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 26576
    new-instance v0, Lo/MediaSessionCompatApi24$CallbackProxy$2;

    invoke-direct {v0, p0}, Lo/MediaSessionCompatApi24$CallbackProxy$2;-><init>(Lo/MediaSessionCompatApi24$CallbackProxy;)V

    .line 26584
    iget-object v1, p0, Lo/MediaSessionCompatApi24$CallbackProxy;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy;

    new-instance v2, Landroidx/viewpager2/adapter/FragmentStateAdapter$5;

    invoke-direct {v2, p0, p1, v0}, Landroidx/viewpager2/adapter/FragmentStateAdapter$5;-><init>(Lo/MediaSessionCompatApi24$CallbackProxy;Landroid/os/Handler;Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    const-wide/16 v1, 0x2710

    .line 26595
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_c
    return-void

    .line 536
    :cond_d
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Expected the adapter to be \'fresh\' while restoring state."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final onMessageChannelReady(Lo/ParcelableVolumeInfo;)V
    .locals 8

    .line 285
    iget-object v0, p0, Lo/MediaSessionCompatApi24$CallbackProxy;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v1

    const/4 v3, 0x0

    .line 10109
    invoke-virtual {v0, v1, v2, v3}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->ICustomTabsCallback(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 285
    check-cast v0, Landroidx/fragment/app/Fragment;

    const-string v1, "Design assumption violated."

    if-eqz v0, :cond_a

    .line 11047
    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v2, Landroid/widget/FrameLayout;

    .line 290
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v3

    .line 311
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v4

    if-nez v4, :cond_1

    if-nez v3, :cond_0

    goto :goto_0

    .line 312
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 316
    :cond_1
    :goto_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-nez v3, :cond_2

    .line 11368
    iget-object p1, p0, Lo/MediaSessionCompatApi24$CallbackProxy;->extraCallback:Lo/requestExtraBinder;

    new-instance v1, Lo/MediaSessionCompatApi24$CallbackProxy$3;

    invoke-direct {v1, p0, v0, v2}, Lo/MediaSessionCompatApi24$CallbackProxy$3;-><init>(Lo/MediaSessionCompatApi24$CallbackProxy;Landroidx/fragment/app/Fragment;Landroid/widget/FrameLayout;)V

    .line 11865
    iget-object p1, p1, Lo/requestExtraBinder;->asBinder:Lo/MediaControllerCompat$MediaControllerImplApi21;

    .line 12068
    iget-object p1, p1, Lo/MediaControllerCompat$MediaControllerImplApi21;->ICustomTabsCallback:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Lo/MediaControllerCompat$MediaControllerImplApi21$onPostMessage;

    invoke-direct {v0, v1, v4}, Lo/MediaControllerCompat$MediaControllerImplApi21$onPostMessage;-><init>(Lo/requestExtraBinder$onNavigationEvent;Z)V

    invoke-virtual {p1, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void

    .line 322
    :cond_2
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 323
    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eq p1, v2, :cond_3

    .line 324
    invoke-static {v3, v2}, Lo/MediaSessionCompatApi24$CallbackProxy;->onPostMessage(Landroid/view/View;Landroid/widget/FrameLayout;)V

    :cond_3
    return-void

    .line 330
    :cond_4
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 331
    invoke-static {v3, v2}, Lo/MediaSessionCompatApi24$CallbackProxy;->onPostMessage(Landroid/view/View;Landroid/widget/FrameLayout;)V

    return-void

    .line 12470
    :cond_5
    iget-object v1, p0, Lo/MediaSessionCompatApi24$CallbackProxy;->extraCallback:Lo/requestExtraBinder;

    .line 12723
    iget-boolean v3, v1, Lo/requestExtraBinder;->updateVisuals:Z

    const/4 v5, 0x1

    if-nez v3, :cond_7

    iget-boolean v1, v1, Lo/requestExtraBinder;->mayLaunchUrl:Z

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    goto :goto_2

    :cond_7
    :goto_1
    const/4 v1, 0x1

    :goto_2
    if-nez v1, :cond_8

    .line 13368
    iget-object v1, p0, Lo/MediaSessionCompatApi24$CallbackProxy;->extraCallback:Lo/requestExtraBinder;

    new-instance v3, Lo/MediaSessionCompatApi24$CallbackProxy$3;

    invoke-direct {v3, p0, v0, v2}, Lo/MediaSessionCompatApi24$CallbackProxy$3;-><init>(Lo/MediaSessionCompatApi24$CallbackProxy;Landroidx/fragment/app/Fragment;Landroid/widget/FrameLayout;)V

    .line 13865
    iget-object v1, v1, Lo/requestExtraBinder;->asBinder:Lo/MediaControllerCompat$MediaControllerImplApi21;

    .line 14068
    iget-object v1, v1, Lo/MediaControllerCompat$MediaControllerImplApi21;->ICustomTabsCallback:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v2, Lo/MediaControllerCompat$MediaControllerImplApi21$onPostMessage;

    invoke-direct {v2, v3, v4}, Lo/MediaControllerCompat$MediaControllerImplApi21$onPostMessage;-><init>(Lo/requestExtraBinder$onNavigationEvent;Z)V

    invoke-virtual {v1, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 338
    iget-object v1, p0, Lo/MediaSessionCompatApi24$CallbackProxy;->extraCallback:Lo/requestExtraBinder;

    .line 14464
    new-instance v2, Lo/binderDied;

    invoke-direct {v2, v1}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 338
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "f"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemId()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 15171
    invoke-virtual {v2, v4, v0, p1, v5}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 339
    sget-object p1, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    .line 340
    invoke-virtual {v2, v0, p1}, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback(Landroidx/fragment/app/Fragment;Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;)Lo/MediaControllerCompat$MediaControllerImplApi23;

    move-result-object p1

    .line 341
    invoke-virtual {p1}, Lo/MediaControllerCompat$MediaControllerImplApi23;->extraCallback()V

    .line 342
    iget-object p1, p0, Lo/MediaSessionCompatApi24$CallbackProxy;->ICustomTabsCallback$Stub:Lo/MediaSessionCompatApi24$CallbackProxy$onNavigationEvent;

    invoke-virtual {p1, v4}, Lo/MediaSessionCompatApi24$CallbackProxy$onNavigationEvent;->onPostMessage(Z)V

    return-void

    .line 344
    :cond_8
    iget-object v0, p0, Lo/MediaSessionCompatApi24$CallbackProxy;->extraCallback:Lo/requestExtraBinder;

    .line 15993
    iget-boolean v0, v0, Lo/requestExtraBinder;->postMessage:Z

    if-eqz v0, :cond_9

    return-void

    .line 347
    :cond_9
    iget-object v0, p0, Lo/MediaSessionCompatApi24$CallbackProxy;->onNavigationEvent:Lo/MediaControllerCompatApi21$CallbackProxy;

    new-instance v1, Landroidx/viewpager2/adapter/FragmentStateAdapter$2;

    invoke-direct {v1, p0, p1}, Landroidx/viewpager2/adapter/FragmentStateAdapter$2;-><init>(Lo/MediaSessionCompatApi24$CallbackProxy;Lo/ParcelableVolumeInfo;)V

    invoke-virtual {v0, v1}, Lo/MediaControllerCompatApi21$CallbackProxy;->ICustomTabsCallback(Lo/MediaControllerCompatApi21$TransportControls;)V

    return-void

    .line 287
    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method final onNavigationEvent()V
    .locals 9

    .line 201
    iget-boolean v0, p0, Lo/MediaSessionCompatApi24$CallbackProxy;->onTransact:Z

    if-eqz v0, :cond_e

    .line 5470
    iget-object v0, p0, Lo/MediaSessionCompatApi24$CallbackProxy;->extraCallback:Lo/requestExtraBinder;

    .line 5723
    iget-boolean v1, v0, Lo/requestExtraBinder;->updateVisuals:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    iget-boolean v0, v0, Lo/requestExtraBinder;->mayLaunchUrl:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    goto/16 :goto_8

    .line 206
    :cond_2
    new-instance v0, Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;

    invoke-direct {v0}, Lo/MediaBrowserCompat$MediaBrowserImplBase$MediaServiceConnection;-><init>()V

    const/4 v1, 0x0

    .line 207
    :goto_2
    iget-object v4, p0, Lo/MediaSessionCompatApi24$CallbackProxy;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    .line 6327
    iget-boolean v5, v4, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onMessageChannelReady:Z

    if-eqz v5, :cond_3

    .line 6328
    invoke-virtual {v4}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onMessageChannelReady()V

    .line 6331
    :cond_3
    iget v4, v4, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->extraCallback:I

    if-ge v1, v4, :cond_7

    .line 208
    iget-object v4, p0, Lo/MediaSessionCompatApi24$CallbackProxy;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    .line 6353
    iget-boolean v5, v4, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onMessageChannelReady:Z

    if-eqz v5, :cond_4

    .line 6354
    invoke-virtual {v4}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onMessageChannelReady()V

    .line 6357
    :cond_4
    iget-object v4, v4, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->ICustomTabsCallback:[J

    aget-wide v5, v4, v1

    const-wide/16 v7, 0x0

    cmp-long v4, v5, v7

    if-ltz v4, :cond_5

    .line 6496
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v4

    int-to-long v7, v4

    cmp-long v4, v5, v7

    if-gez v4, :cond_5

    const/4 v4, 0x1

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_3
    if-nez v4, :cond_6

    .line 210
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 211
    iget-object v4, p0, Lo/MediaSessionCompatApi24$CallbackProxy;->asInterface:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    invoke-virtual {v4, v5, v6}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->extraCallback(J)V

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 216
    :cond_7
    iget-boolean v1, p0, Lo/MediaSessionCompatApi24$CallbackProxy;->onMessageChannelReady:Z

    if-nez v1, :cond_d

    .line 217
    iput-boolean v2, p0, Lo/MediaSessionCompatApi24$CallbackProxy;->onTransact:Z

    const/4 v1, 0x0

    .line 219
    :goto_4
    iget-object v4, p0, Lo/MediaSessionCompatApi24$CallbackProxy;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    .line 7327
    iget-boolean v5, v4, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onMessageChannelReady:Z

    if-eqz v5, :cond_8

    .line 7328
    invoke-virtual {v4}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onMessageChannelReady()V

    .line 7331
    :cond_8
    iget v4, v4, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->extraCallback:I

    if-ge v1, v4, :cond_d

    .line 220
    iget-object v4, p0, Lo/MediaSessionCompatApi24$CallbackProxy;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    .line 7353
    iget-boolean v5, v4, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onMessageChannelReady:Z

    if-eqz v5, :cond_9

    .line 7354
    invoke-virtual {v4}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onMessageChannelReady()V

    .line 7357
    :cond_9
    iget-object v4, v4, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->ICustomTabsCallback:[J

    aget-wide v5, v4, v1

    .line 8233
    iget-object v4, p0, Lo/MediaSessionCompatApi24$CallbackProxy;->asInterface:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    invoke-virtual {v4, v5, v6}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onNavigationEvent(J)Z

    move-result v4

    if-eqz v4, :cond_a

    :goto_5
    const/4 v4, 0x1

    goto :goto_6

    .line 8237
    :cond_a
    iget-object v4, p0, Lo/MediaSessionCompatApi24$CallbackProxy;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    const/4 v7, 0x0

    .line 9109
    invoke-virtual {v4, v5, v6, v7}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->ICustomTabsCallback(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 8237
    check-cast v4, Landroidx/fragment/app/Fragment;

    if-eqz v4, :cond_b

    .line 8242
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_b

    .line 8247
    invoke-virtual {v4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    if-eqz v4, :cond_b

    goto :goto_5

    :cond_b
    const/4 v4, 0x0

    :goto_6
    if-nez v4, :cond_c

    .line 222
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_c
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 227
    :cond_d
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 228
    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lo/MediaSessionCompatApi24$CallbackProxy;->onMessageChannelReady(J)V

    goto :goto_7

    :cond_e
    :goto_8
    return-void
.end method

.method public final onPostMessage()Landroid/os/Parcelable;
    .locals 9

    .line 509
    new-instance v0, Landroid/os/Bundle;

    iget-object v1, p0, Lo/MediaSessionCompatApi24$CallbackProxy;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    invoke-virtual {v1}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onPostMessage()I

    move-result v1

    iget-object v2, p0, Lo/MediaSessionCompatApi24$CallbackProxy;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    invoke-virtual {v2}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onPostMessage()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 512
    :goto_0
    iget-object v3, p0, Lo/MediaSessionCompatApi24$CallbackProxy;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    invoke-virtual {v3}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onPostMessage()I

    move-result v3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_1

    .line 513
    iget-object v3, p0, Lo/MediaSessionCompatApi24$CallbackProxy;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    invoke-virtual {v3, v2}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onPostMessage(I)J

    move-result-wide v5

    .line 514
    iget-object v3, p0, Lo/MediaSessionCompatApi24$CallbackProxy;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    .line 20109
    invoke-virtual {v3, v5, v6, v4}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->ICustomTabsCallback(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 514
    check-cast v3, Landroidx/fragment/app/Fragment;

    if-eqz v3, :cond_0

    .line 515
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 20600
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "f#"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 517
    iget-object v5, p0, Lo/MediaSessionCompatApi24$CallbackProxy;->extraCallback:Lo/requestExtraBinder;

    invoke-virtual {v5, v0, v4, v3}, Lo/requestExtraBinder;->extraCallback(Landroid/os/Bundle;Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 522
    :goto_1
    iget-object v3, p0, Lo/MediaSessionCompatApi24$CallbackProxy;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    invoke-virtual {v3}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onPostMessage()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 523
    iget-object v3, p0, Lo/MediaSessionCompatApi24$CallbackProxy;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    invoke-virtual {v3, v2}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onPostMessage(I)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-ltz v3, :cond_2

    .line 21496
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    int-to-long v7, v3

    cmp-long v3, v5, v7

    if-gez v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_3

    .line 21600
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "s#"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 526
    iget-object v7, p0, Lo/MediaSessionCompatApi24$CallbackProxy;->ICustomTabsCallback:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    .line 22109
    invoke-virtual {v7, v5, v6, v4}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->ICustomTabsCallback(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 526
    check-cast v5, Landroid/os/Parcelable;

    invoke-virtual {v0, v3, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method public synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 0

    .line 67
    check-cast p1, Lo/ParcelableVolumeInfo;

    .line 27276
    invoke-virtual {p0, p1}, Lo/MediaSessionCompatApi24$CallbackProxy;->onMessageChannelReady(Lo/ParcelableVolumeInfo;)V

    .line 27277
    invoke-virtual {p0}, Lo/MediaSessionCompatApi24$CallbackProxy;->onNavigationEvent()V

    return-void
.end method

.method public synthetic onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 3

    .line 67
    check-cast p1, Lo/ParcelableVolumeInfo;

    .line 28047
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast p1, Landroid/widget/FrameLayout;

    .line 27407
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 27408
    invoke-direct {p0, p1}, Lo/MediaSessionCompatApi24$CallbackProxy;->ICustomTabsCallback(I)Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 27410
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lo/MediaSessionCompatApi24$CallbackProxy;->onMessageChannelReady(J)V

    .line 27411
    iget-object v0, p0, Lo/MediaSessionCompatApi24$CallbackProxy;->asInterface:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->extraCallback(J)V

    :cond_0
    return-void
.end method

.method public final setHasStableIds(Z)V
    .locals 1

    .line 501
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Stable Ids are required for the adapter to function properly, and the adapter takes care of setting the flag."

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
