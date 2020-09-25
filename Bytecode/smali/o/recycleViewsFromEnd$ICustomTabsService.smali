.class final Lo/recycleViewsFromEnd$ICustomTabsService;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/recycleViewsFromEnd;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lo/setPlaybackToRemote<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "",
        "kotlin.jvm.PlatformType",
        "onChanged"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/recycleViewsFromEnd;


# direct methods
.method constructor <init>(Lo/recycleViewsFromEnd;)V
    .locals 0

    iput-object p1, p0, Lo/recycleViewsFromEnd$ICustomTabsService;->onMessageChannelReady:Lo/recycleViewsFromEnd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 16

    move-object/from16 v0, p0

    .line 47
    move-object/from16 v1, p1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_0

    return-void

    .line 2182
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const v3, 0x21a40b8a

    const/4 v6, 0x1

    const/4 v7, 0x2

    const v8, 0x7f0b01ff

    const v11, 0x7f0b085b

    const v12, 0x7f0b0593

    const v13, 0x7f0b09d4

    const v14, 0x7f0b09d5

    const v4, 0x3f19999a    # 0.6f

    const/4 v9, 0x7

    const/4 v10, 0x6

    const v5, 0x7f0b0767

    const/4 v15, 0x0

    if-eq v2, v3, :cond_3

    const v3, 0x32371471

    if-eq v2, v3, :cond_2

    const v3, 0x6dfe6265

    if-eq v2, v3, :cond_1

    goto/16 :goto_0

    :cond_1
    const-string v2, "mosaic_fragment"

    .line 2214
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2215
    iget-object v1, v0, Lo/recycleViewsFromEnd$ICustomTabsService;->onMessageChannelReady:Lo/recycleViewsFromEnd;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v1

    .line 8464
    new-instance v2, Lo/binderDied;

    invoke-direct {v2, v1}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 2217
    iget-object v1, v0, Lo/recycleViewsFromEnd$ICustomTabsService;->onMessageChannelReady:Lo/recycleViewsFromEnd;

    invoke-static {v1}, Lo/recycleViewsFromEnd;->ICustomTabsCallback$Stub(Lo/recycleViewsFromEnd;)Lo/hasValidAnchor;

    move-result-object v1

    .line 2218
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->postponeEnterTransition()V

    .line 2217
    check-cast v1, Landroidx/fragment/app/Fragment;

    const-string v3, "MosaicFragment"

    .line 9343
    invoke-virtual {v2, v8, v1, v3, v7}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 9778
    iput-boolean v6, v2, Lo/MediaControllerCompat$MediaControllerImplApi23;->mayLaunchUrl:Z

    .line 2221
    invoke-virtual {v2}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onPostMessage()I

    .line 2222
    new-instance v1, Lo/MediaBrowserCompat$SubscriptionCallback;

    invoke-direct {v1}, Lo/MediaBrowserCompat$SubscriptionCallback;-><init>()V

    .line 2223
    iget-object v2, v0, Lo/recycleViewsFromEnd$ICustomTabsService;->onMessageChannelReady:Lo/recycleViewsFromEnd;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->compassTabSelector:I

    invoke-virtual {v2, v3}, Lo/recycleViewsFromEnd;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/onChildrenLoaded;

    invoke-virtual {v1, v2}, Lo/MediaBrowserCompat$SubscriptionCallback;->ICustomTabsCallback(Lo/onChildrenLoaded;)V

    .line 10528
    invoke-virtual {v1, v5}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object v2

    iput v15, v2, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->RemoteActionCompatParcelizer:I

    .line 2226
    invoke-virtual {v1, v5, v10, v12, v10}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(IIII)V

    .line 2227
    invoke-virtual {v1, v5, v9, v11, v9}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(IIII)V

    .line 10538
    invoke-virtual {v1, v14}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object v2

    iput v4, v2, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getSessionToken:F

    .line 11528
    invoke-virtual {v1, v13}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object v2

    const/16 v3, 0x8

    iput v3, v2, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->RemoteActionCompatParcelizer:I

    .line 11538
    invoke-virtual {v1, v12}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object v2

    const v5, 0x3f4ccccd    # 0.8f

    iput v5, v2, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getSessionToken:F

    .line 12528
    invoke-virtual {v1, v11}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object v2

    iput v15, v2, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->RemoteActionCompatParcelizer:I

    const v2, 0x7f0b01dc

    .line 12538
    invoke-virtual {v1, v2}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object v2

    iput v4, v2, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getSessionToken:F

    const v2, 0x7f0b085a

    .line 13528
    invoke-virtual {v1, v2}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object v2

    iput v3, v2, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->RemoteActionCompatParcelizer:I

    .line 2238
    iget-object v2, v0, Lo/recycleViewsFromEnd$ICustomTabsService;->onMessageChannelReady:Lo/recycleViewsFromEnd;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->wishlistIcon:I

    invoke-virtual {v2, v3}, Lo/recycleViewsFromEnd;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/setMinimumHeight;

    invoke-virtual {v2, v15}, Lo/setMinimumHeight;->ICustomTabsCallback(I)V

    .line 2239
    iget-object v2, v0, Lo/recycleViewsFromEnd$ICustomTabsService;->onMessageChannelReady:Lo/recycleViewsFromEnd;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->mosiacIcon:I

    invoke-virtual {v2, v3}, Lo/recycleViewsFromEnd;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/setMinimumHeight;

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Lo/setMinimumHeight;->ICustomTabsCallback(I)V

    .line 2240
    iget-object v2, v0, Lo/recycleViewsFromEnd$ICustomTabsService;->onMessageChannelReady:Lo/recycleViewsFromEnd;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->collectionIcon:I

    invoke-virtual {v2, v3}, Lo/recycleViewsFromEnd;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/setMinimumHeight;

    invoke-virtual {v2, v15}, Lo/setMinimumHeight;->ICustomTabsCallback(I)V

    .line 2241
    iget-object v2, v0, Lo/recycleViewsFromEnd$ICustomTabsService;->onMessageChannelReady:Lo/recycleViewsFromEnd;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->compassTabSelector:I

    invoke-virtual {v2, v3}, Lo/recycleViewsFromEnd;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/onChildrenLoaded;

    iget-object v3, v0, Lo/recycleViewsFromEnd$ICustomTabsService;->onMessageChannelReady:Lo/recycleViewsFromEnd;

    invoke-static {v3}, Lo/recycleViewsFromEnd;->extraCallback(Lo/recycleViewsFromEnd;)Lo/sendQueueTitle;

    move-result-object v3

    check-cast v3, Lo/fromQueueItem;

    invoke-static {v2, v3}, Lo/MediaSessionCompat$QueueItem;->onPostMessage(Landroid/view/ViewGroup;Lo/fromQueueItem;)V

    .line 2242
    iget-object v2, v0, Lo/recycleViewsFromEnd$ICustomTabsService;->onMessageChannelReady:Lo/recycleViewsFromEnd;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->compassTabSelector:I

    invoke-virtual {v2, v3}, Lo/recycleViewsFromEnd;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/onChildrenLoaded;

    invoke-virtual {v1, v2}, Lo/MediaBrowserCompat$SubscriptionCallback;->onNavigationEvent(Lo/onChildrenLoaded;)V

    return-void

    :cond_2
    const-string v2, "category_fragment"

    .line 2244
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2245
    iget-object v1, v0, Lo/recycleViewsFromEnd$ICustomTabsService;->onMessageChannelReady:Lo/recycleViewsFromEnd;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v1

    .line 14464
    new-instance v2, Lo/binderDied;

    invoke-direct {v2, v1}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 2247
    iget-object v1, v0, Lo/recycleViewsFromEnd$ICustomTabsService;->onMessageChannelReady:Lo/recycleViewsFromEnd;

    invoke-static {v1}, Lo/recycleViewsFromEnd;->asBinder(Lo/recycleViewsFromEnd;)Lo/findFirstReferenceChild;

    move-result-object v1

    .line 2248
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->postponeEnterTransition()V

    .line 2247
    check-cast v1, Landroidx/fragment/app/Fragment;

    const-string v3, "LifestyleCategoryFragme"

    .line 15343
    invoke-virtual {v2, v8, v1, v3, v7}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 15778
    iput-boolean v6, v2, Lo/MediaControllerCompat$MediaControllerImplApi23;->mayLaunchUrl:Z

    .line 2251
    invoke-virtual {v2}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onPostMessage()I

    .line 2252
    new-instance v1, Lo/MediaBrowserCompat$SubscriptionCallback;

    invoke-direct {v1}, Lo/MediaBrowserCompat$SubscriptionCallback;-><init>()V

    .line 2253
    iget-object v2, v0, Lo/recycleViewsFromEnd$ICustomTabsService;->onMessageChannelReady:Lo/recycleViewsFromEnd;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->compassTabSelector:I

    invoke-virtual {v2, v3}, Lo/recycleViewsFromEnd;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/onChildrenLoaded;

    invoke-virtual {v1, v2}, Lo/MediaBrowserCompat$SubscriptionCallback;->ICustomTabsCallback(Lo/onChildrenLoaded;)V

    .line 16528
    invoke-virtual {v1, v5}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object v2

    iput v15, v2, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->RemoteActionCompatParcelizer:I

    const v2, 0x7f0b01dc

    .line 2256
    invoke-virtual {v1, v5, v10, v2, v10}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(IIII)V

    const v3, 0x7f0b085a

    .line 2257
    invoke-virtual {v1, v5, v9, v3, v9}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(IIII)V

    .line 16538
    invoke-virtual {v1, v14}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object v5

    iput v4, v5, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getSessionToken:F

    .line 17528
    invoke-virtual {v1, v13}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object v5

    const/16 v6, 0x8

    iput v6, v5, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->RemoteActionCompatParcelizer:I

    .line 17538
    invoke-virtual {v1, v12}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object v5

    iput v4, v5, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getSessionToken:F

    .line 18528
    invoke-virtual {v1, v11}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object v4

    iput v6, v4, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->RemoteActionCompatParcelizer:I

    .line 18538
    invoke-virtual {v1, v2}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object v2

    const v4, 0x3f4ccccd    # 0.8f

    iput v4, v2, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getSessionToken:F

    .line 19528
    invoke-virtual {v1, v3}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object v2

    iput v15, v2, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->RemoteActionCompatParcelizer:I

    .line 2268
    iget-object v2, v0, Lo/recycleViewsFromEnd$ICustomTabsService;->onMessageChannelReady:Lo/recycleViewsFromEnd;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->wishlistIcon:I

    invoke-virtual {v2, v3}, Lo/recycleViewsFromEnd;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/setMinimumHeight;

    invoke-virtual {v2, v15}, Lo/setMinimumHeight;->ICustomTabsCallback(I)V

    .line 2269
    iget-object v2, v0, Lo/recycleViewsFromEnd$ICustomTabsService;->onMessageChannelReady:Lo/recycleViewsFromEnd;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->mosiacIcon:I

    invoke-virtual {v2, v3}, Lo/recycleViewsFromEnd;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/setMinimumHeight;

    invoke-virtual {v2, v15}, Lo/setMinimumHeight;->ICustomTabsCallback(I)V

    .line 2270
    iget-object v2, v0, Lo/recycleViewsFromEnd$ICustomTabsService;->onMessageChannelReady:Lo/recycleViewsFromEnd;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->collectionIcon:I

    invoke-virtual {v2, v3}, Lo/recycleViewsFromEnd;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/setMinimumHeight;

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Lo/setMinimumHeight;->ICustomTabsCallback(I)V

    .line 2272
    iget-object v2, v0, Lo/recycleViewsFromEnd$ICustomTabsService;->onMessageChannelReady:Lo/recycleViewsFromEnd;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->compassTabSelector:I

    invoke-virtual {v2, v3}, Lo/recycleViewsFromEnd;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/onChildrenLoaded;

    iget-object v3, v0, Lo/recycleViewsFromEnd$ICustomTabsService;->onMessageChannelReady:Lo/recycleViewsFromEnd;

    invoke-static {v3}, Lo/recycleViewsFromEnd;->extraCallback(Lo/recycleViewsFromEnd;)Lo/sendQueueTitle;

    move-result-object v3

    check-cast v3, Lo/fromQueueItem;

    invoke-static {v2, v3}, Lo/MediaSessionCompat$QueueItem;->onPostMessage(Landroid/view/ViewGroup;Lo/fromQueueItem;)V

    .line 2273
    iget-object v2, v0, Lo/recycleViewsFromEnd$ICustomTabsService;->onMessageChannelReady:Lo/recycleViewsFromEnd;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->compassTabSelector:I

    invoke-virtual {v2, v3}, Lo/recycleViewsFromEnd;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/onChildrenLoaded;

    invoke-virtual {v1, v2}, Lo/MediaBrowserCompat$SubscriptionCallback;->onNavigationEvent(Lo/onChildrenLoaded;)V

    goto/16 :goto_0

    :cond_3
    const-string/jumbo v2, "wishlist_fragment"

    .line 2183
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2184
    iget-object v1, v0, Lo/recycleViewsFromEnd$ICustomTabsService;->onMessageChannelReady:Lo/recycleViewsFromEnd;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v1

    .line 2464
    new-instance v2, Lo/binderDied;

    invoke-direct {v2, v1}, Lo/binderDied;-><init>(Lo/requestExtraBinder;)V

    .line 2186
    iget-object v1, v0, Lo/recycleViewsFromEnd$ICustomTabsService;->onMessageChannelReady:Lo/recycleViewsFromEnd;

    invoke-static {v1}, Lo/recycleViewsFromEnd;->onMessageChannelReady(Lo/recycleViewsFromEnd;)Lo/onTargetFound;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/Fragment;

    const-string v3, "RewardWishlistFragment"

    .line 3343
    invoke-virtual {v2, v8, v1, v3, v7}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady(ILandroidx/fragment/app/Fragment;Ljava/lang/String;I)V

    .line 3778
    iput-boolean v6, v2, Lo/MediaControllerCompat$MediaControllerImplApi23;->mayLaunchUrl:Z

    .line 2190
    invoke-virtual {v2}, Lo/MediaControllerCompat$MediaControllerImplApi23;->onPostMessage()I

    .line 2191
    new-instance v1, Lo/MediaBrowserCompat$SubscriptionCallback;

    invoke-direct {v1}, Lo/MediaBrowserCompat$SubscriptionCallback;-><init>()V

    .line 2192
    iget-object v2, v0, Lo/recycleViewsFromEnd$ICustomTabsService;->onMessageChannelReady:Lo/recycleViewsFromEnd;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->compassTabSelector:I

    invoke-virtual {v2, v3}, Lo/recycleViewsFromEnd;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/onChildrenLoaded;

    invoke-virtual {v1, v2}, Lo/MediaBrowserCompat$SubscriptionCallback;->ICustomTabsCallback(Lo/onChildrenLoaded;)V

    .line 4528
    invoke-virtual {v1, v5}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object v2

    iput v15, v2, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->RemoteActionCompatParcelizer:I

    .line 2195
    invoke-virtual {v1, v5, v10, v14, v10}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(IIII)V

    .line 2196
    invoke-virtual {v1, v5, v9, v13, v9}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(IIII)V

    .line 4538
    invoke-virtual {v1, v14}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object v2

    const v3, 0x3f4ccccd    # 0.8f

    iput v3, v2, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getSessionToken:F

    .line 5528
    invoke-virtual {v1, v13}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object v2

    iput v15, v2, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->RemoteActionCompatParcelizer:I

    .line 5538
    invoke-virtual {v1, v12}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object v2

    iput v4, v2, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getSessionToken:F

    .line 6528
    invoke-virtual {v1, v11}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object v2

    const/16 v3, 0x8

    iput v3, v2, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->RemoteActionCompatParcelizer:I

    const v2, 0x7f0b01dc

    .line 6538
    invoke-virtual {v1, v2}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object v2

    iput v4, v2, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->getSessionToken:F

    const v2, 0x7f0b085a

    .line 7528
    invoke-virtual {v1, v2}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(I)Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;

    move-result-object v2

    iput v3, v2, Lo/MediaBrowserCompat$SubscriptionCallback$onPostMessage;->RemoteActionCompatParcelizer:I

    .line 2207
    iget-object v2, v0, Lo/recycleViewsFromEnd$ICustomTabsService;->onMessageChannelReady:Lo/recycleViewsFromEnd;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->wishlistIcon:I

    invoke-virtual {v2, v3}, Lo/recycleViewsFromEnd;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/setMinimumHeight;

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Lo/setMinimumHeight;->ICustomTabsCallback(I)V

    .line 2208
    iget-object v2, v0, Lo/recycleViewsFromEnd$ICustomTabsService;->onMessageChannelReady:Lo/recycleViewsFromEnd;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->mosiacIcon:I

    invoke-virtual {v2, v3}, Lo/recycleViewsFromEnd;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/setMinimumHeight;

    invoke-virtual {v2, v15}, Lo/setMinimumHeight;->ICustomTabsCallback(I)V

    .line 2209
    iget-object v2, v0, Lo/recycleViewsFromEnd$ICustomTabsService;->onMessageChannelReady:Lo/recycleViewsFromEnd;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->collectionIcon:I

    invoke-virtual {v2, v3}, Lo/recycleViewsFromEnd;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/setMinimumHeight;

    invoke-virtual {v2, v15}, Lo/setMinimumHeight;->ICustomTabsCallback(I)V

    .line 2211
    iget-object v2, v0, Lo/recycleViewsFromEnd$ICustomTabsService;->onMessageChannelReady:Lo/recycleViewsFromEnd;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->compassTabSelector:I

    invoke-virtual {v2, v3}, Lo/recycleViewsFromEnd;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/onChildrenLoaded;

    iget-object v3, v0, Lo/recycleViewsFromEnd$ICustomTabsService;->onMessageChannelReady:Lo/recycleViewsFromEnd;

    invoke-static {v3}, Lo/recycleViewsFromEnd;->extraCallback(Lo/recycleViewsFromEnd;)Lo/sendQueueTitle;

    move-result-object v3

    check-cast v3, Lo/fromQueueItem;

    invoke-static {v2, v3}, Lo/MediaSessionCompat$QueueItem;->onPostMessage(Landroid/view/ViewGroup;Lo/fromQueueItem;)V

    .line 2212
    iget-object v2, v0, Lo/recycleViewsFromEnd$ICustomTabsService;->onMessageChannelReady:Lo/recycleViewsFromEnd;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->compassTabSelector:I

    invoke-virtual {v2, v3}, Lo/recycleViewsFromEnd;->onMessageChannelReady(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lo/onChildrenLoaded;

    invoke-virtual {v1, v2}, Lo/MediaBrowserCompat$SubscriptionCallback;->onNavigationEvent(Lo/onChildrenLoaded;)V

    :cond_4
    :goto_0
    return-void
.end method
