.class public final Lo/MediaSessionCompatApi24$CallbackProxy$onNavigationEvent;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/MediaSessionCompatApi24$CallbackProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "onNavigationEvent"
.end annotation


# instance fields
.field ICustomTabsCallback:Lo/getCustomActions;

.field private asBinder:J

.field extraCallback:Lo/getCustomActions$onNavigationEvent;

.field final synthetic onMessageChannelReady:Lo/MediaSessionCompatApi24$CallbackProxy;

.field onNavigationEvent:Lo/MediaControllerCompatApi23;

.field onPostMessage:Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;


# direct methods
.method constructor <init>(Lo/MediaSessionCompatApi24$CallbackProxy;)V
    .locals 2

    .line 617
    iput-object p1, p0, Lo/MediaSessionCompatApi24$CallbackProxy$onNavigationEvent;->onMessageChannelReady:Lo/MediaSessionCompatApi24$CallbackProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 623
    iput-wide v0, p0, Lo/MediaSessionCompatApi24$CallbackProxy$onNavigationEvent;->asBinder:J

    return-void
.end method

.method static onMessageChannelReady(Landroidx/recyclerview/widget/RecyclerView;)Lo/getCustomActions;
    .locals 2

    .line 732
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    .line 733
    instance-of v0, p0, Lo/getCustomActions;

    if-eqz v0, :cond_0

    .line 734
    check-cast p0, Lo/getCustomActions;

    return-object p0

    .line 736
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "Expected ViewPager2 instance. Got: "

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final onPostMessage(Z)V
    .locals 10

    .line 672
    iget-object v0, p0, Lo/MediaSessionCompatApi24$CallbackProxy$onNavigationEvent;->onMessageChannelReady:Lo/MediaSessionCompatApi24$CallbackProxy;

    .line 2470
    iget-object v0, v0, Lo/MediaSessionCompatApi24$CallbackProxy;->extraCallback:Lo/requestExtraBinder;

    .line 2723
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

    return-void

    .line 676
    :cond_2
    iget-object v0, p0, Lo/MediaSessionCompatApi24$CallbackProxy$onNavigationEvent;->ICustomTabsCallback:Lo/getCustomActions;

    .line 3687
    iget-object v0, v0, Lo/getCustomActions;->asBinder:Lo/getPosition;

    .line 4360
    iget v0, v0, Lo/getPosition;->onPostMessage:I

    if-eqz v0, :cond_3

    return-void

    .line 680
    :cond_3
    iget-object v0, p0, Lo/MediaSessionCompatApi24$CallbackProxy$onNavigationEvent;->onMessageChannelReady:Lo/MediaSessionCompatApi24$CallbackProxy;

    iget-object v0, v0, Lo/MediaSessionCompatApi24$CallbackProxy;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    .line 6327
    iget-boolean v1, v0, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onMessageChannelReady:Z

    if-eqz v1, :cond_4

    .line 6328
    invoke-virtual {v0}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onMessageChannelReady()V

    .line 6331
    :cond_4
    iget v0, v0, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->extraCallback:I

    if-nez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    if-nez v0, :cond_12

    .line 680
    iget-object v0, p0, Lo/MediaSessionCompatApi24$CallbackProxy$onNavigationEvent;->onMessageChannelReady:Lo/MediaSessionCompatApi24$CallbackProxy;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_6

    .line 684
    :cond_6
    iget-object v0, p0, Lo/MediaSessionCompatApi24$CallbackProxy$onNavigationEvent;->ICustomTabsCallback:Lo/getCustomActions;

    .line 6675
    iget v0, v0, Lo/getCustomActions;->extraCallback:I

    .line 685
    iget-object v1, p0, Lo/MediaSessionCompatApi24$CallbackProxy$onNavigationEvent;->onMessageChannelReady:Lo/MediaSessionCompatApi24$CallbackProxy;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    if-lt v0, v1, :cond_7

    return-void

    .line 691
    :cond_7
    iget-object v1, p0, Lo/MediaSessionCompatApi24$CallbackProxy$onNavigationEvent;->onMessageChannelReady:Lo/MediaSessionCompatApi24$CallbackProxy;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    .line 692
    iget-wide v4, p0, Lo/MediaSessionCompatApi24$CallbackProxy$onNavigationEvent;->asBinder:J

    cmp-long v6, v0, v4

    if-nez v6, :cond_8

    if-nez p1, :cond_8

    return-void

    .line 696
    :cond_8
    iget-object p1, p0, Lo/MediaSessionCompatApi24$CallbackProxy$onNavigationEvent;->onMessageChannelReady:Lo/MediaSessionCompatApi24$CallbackProxy;

    iget-object p1, p1, Lo/MediaSessionCompatApi24$CallbackProxy;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    const/4 v4, 0x0

    .line 7109
    invoke-virtual {p1, v0, v1, v4}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->ICustomTabsCallback(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 696
    check-cast p1, Landroidx/fragment/app/Fragment;

    if-eqz p1, :cond_12

    .line 697
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-nez p1, :cond_9

    goto/16 :goto_6

    .line 701
    :cond_9
    iput-wide v0, p0, Lo/MediaSessionCompatApi24$CallbackProxy$onNavigationEvent;->asBinder:J

    .line 702
    iget-object p1, p0, Lo/MediaSessionCompatApi24$CallbackProxy$onNavigationEvent;->onMessageChannelReady:Lo/MediaSessionCompatApi24$CallbackProxy;

    iget-object p1, p1, Lo/MediaSessionCompatApi24$CallbackProxy;->extraCallback:Lo/requestExtraBinder;

    .line 7464
    new-instance v0, Lo/binderDied;

    invoke-direct {v0, p1}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    const/4 p1, 0x0

    .line 705
    :goto_3
    iget-object v1, p0, Lo/MediaSessionCompatApi24$CallbackProxy$onNavigationEvent;->onMessageChannelReady:Lo/MediaSessionCompatApi24$CallbackProxy;

    iget-object v1, v1, Lo/MediaSessionCompatApi24$CallbackProxy;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    .line 8327
    iget-boolean v5, v1, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onMessageChannelReady:Z

    if-eqz v5, :cond_a

    .line 8328
    invoke-virtual {v1}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onMessageChannelReady()V

    .line 8331
    :cond_a
    iget v1, v1, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->extraCallback:I

    if-ge p1, v1, :cond_10

    .line 706
    iget-object v1, p0, Lo/MediaSessionCompatApi24$CallbackProxy$onNavigationEvent;->onMessageChannelReady:Lo/MediaSessionCompatApi24$CallbackProxy;

    iget-object v1, v1, Lo/MediaSessionCompatApi24$CallbackProxy;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    .line 8353
    iget-boolean v5, v1, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onMessageChannelReady:Z

    if-eqz v5, :cond_b

    .line 8354
    invoke-virtual {v1}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onMessageChannelReady()V

    .line 8357
    :cond_b
    iget-object v1, v1, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->ICustomTabsCallback:[J

    aget-wide v5, v1, p1

    .line 707
    iget-object v1, p0, Lo/MediaSessionCompatApi24$CallbackProxy$onNavigationEvent;->onMessageChannelReady:Lo/MediaSessionCompatApi24$CallbackProxy;

    iget-object v1, v1, Lo/MediaSessionCompatApi24$CallbackProxy;->onPostMessage:Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;

    .line 8373
    iget-boolean v7, v1, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onMessageChannelReady:Z

    if-eqz v7, :cond_c

    .line 8374
    invoke-virtual {v1}, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onMessageChannelReady()V

    .line 8377
    :cond_c
    iget-object v1, v1, Lo/MediaBrowserCompat$MediaBrowserServiceCallbackImpl;->onNavigationEvent:[Ljava/lang/Object;

    aget-object v1, v1, p1

    .line 707
    check-cast v1, Landroidx/fragment/app/Fragment;

    .line 709
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 713
    iget-wide v7, p0, Lo/MediaSessionCompatApi24$CallbackProxy$onNavigationEvent;->asBinder:J

    cmp-long v9, v5, v7

    if-eqz v9, :cond_d

    .line 714
    sget-object v7, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->extraCallback:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    invoke-virtual {v0, v1, v7}, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback(Landroidx/fragment/app/Fragment;Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;)Lo/MediaControllerCompat$MediaControllerImplApi23;

    goto :goto_4

    :cond_d
    move-object v4, v1

    .line 719
    :goto_4
    iget-wide v7, p0, Lo/MediaSessionCompatApi24$CallbackProxy$onNavigationEvent;->asBinder:J

    cmp-long v9, v5, v7

    if-nez v9, :cond_e

    const/4 v5, 0x1

    goto :goto_5

    :cond_e
    const/4 v5, 0x0

    :goto_5
    invoke-virtual {v1, v5}, Landroidx/fragment/app/Fragment;->setMenuVisibility(Z)V

    :cond_f
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_10
    if-eqz v4, :cond_11

    .line 722
    sget-object p1, Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;->onMessageChannelReady:Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;

    invoke-virtual {v0, v4, p1}, Lo/MediaControllerCompat$MediaControllerImplApi23;->ICustomTabsCallback(Landroidx/fragment/app/Fragment;Lo/MediaControllerCompatApi21$CallbackProxy$onPostMessage;)Lo/MediaControllerCompat$MediaControllerImplApi23;

    .line 725
    :cond_11
    invoke-virtual {v0}, Lo/MediaControllerCompat$MediaControllerImplApi23;->asInterface()Z

    move-result p1

    if-nez p1, :cond_12

    .line 726
    invoke-virtual {v0}, Lo/MediaControllerCompat$MediaControllerImplApi23;->extraCallback()V

    :cond_12
    :goto_6
    return-void
.end method
