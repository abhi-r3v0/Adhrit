.class final Lo/notifyDataSetChanged$onTransact;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setPlaybackToRemote;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/notifyDataSetChanged;->onCreate(Landroid/os/Bundle;)V
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
        "Lo/notifyItemRangeChanged;",
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
        "\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcom/dreamplug/fabrik/ui/main/FabState;",
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
.field private synthetic ICustomTabsCallback:Lo/notifyDataSetChanged;


# direct methods
.method constructor <init>(Lo/notifyDataSetChanged;)V
    .locals 0

    iput-object p1, p0, Lo/notifyDataSetChanged$onTransact;->ICustomTabsCallback:Lo/notifyDataSetChanged;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic onNavigationEvent(Ljava/lang/Object;)V
    .locals 19

    move-object/from16 v0, p0

    .line 78
    move-object/from16 v1, p1

    check-cast v1, Lo/notifyItemRangeChanged;

    .line 1309
    iget-object v2, v0, Lo/notifyDataSetChanged$onTransact;->ICustomTabsCallback:Lo/notifyDataSetChanged;

    invoke-virtual {v2}, Lo/onSessionEvent;->getSupportFragmentManager()Lo/requestExtraBinder;

    move-result-object v2

    const v3, 0x7f0b0541

    invoke-virtual {v2, v3}, Lo/requestExtraBinder;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v2

    instance-of v3, v2, Lo/getViewPosition;

    if-nez v3, :cond_0

    const/4 v2, 0x0

    :cond_0
    check-cast v2, Lo/getViewPosition;

    .line 1310
    iget-object v3, v0, Lo/notifyDataSetChanged$onTransact;->ICustomTabsCallback:Lo/notifyDataSetChanged;

    invoke-static {v3}, Lo/notifyDataSetChanged;->ICustomTabsCallback(Lo/notifyDataSetChanged;)Lo/setThreshold$onPostMessage;

    move-result-object v3

    if-eqz v2, :cond_1

    .line 1622
    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Lo/requestExtraBinder;

    move-result-object v2

    const v5, 0x7f0b0862

    invoke-virtual {v2, v5}, Lo/requestExtraBinder;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object v2

    .line 1623
    instance-of v5, v2, Lo/getViewLayoutPosition;

    if-eqz v5, :cond_1

    .line 1624
    check-cast v2, Lo/getViewLayoutPosition;

    .line 3000
    iget-object v2, v2, Lo/getViewLayoutPosition;->ICustomTabsCallback:Lo/isSameListener;

    invoke-interface {v2}, Lo/isSameListener;->onNavigationEvent()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/onDetach$RemoteActionCompatParcelizer;

    if-eqz v2, :cond_1

    .line 3019
    iget-object v2, v2, Lo/onDetach$RemoteActionCompatParcelizer;->extraCallback:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 3020
    :goto_0
    iput-object v2, v3, Lo/setThreshold$onPostMessage;->ICustomTabsCallback:Ljava/lang/String;

    .line 1311
    iget-object v2, v0, Lo/notifyDataSetChanged$onTransact;->ICustomTabsCallback:Lo/notifyDataSetChanged;

    invoke-static {v2}, Lo/notifyDataSetChanged;->ICustomTabsCallback(Lo/notifyDataSetChanged;)Lo/setThreshold$onPostMessage;

    move-result-object v2

    .line 3047
    iget-boolean v3, v1, Lo/notifyItemRangeChanged;->onMessageChannelReady:Z

    .line 4030
    iget-boolean v5, v2, Lo/setThreshold$onPostMessage;->onMessageChannelReady:Z

    const-wide/16 v6, 0xc8

    const/4 v8, 0x1

    if-eq v5, v3, :cond_3

    iget-boolean v5, v2, Lo/setThreshold$onPostMessage;->onNavigationEvent:Z

    if-eqz v5, :cond_3

    const/4 v5, 0x7

    const v9, 0x7f0b0567

    const-string v10, "Resources.getSystem()"

    if-eqz v3, :cond_2

    .line 4087
    iget-object v11, v2, Lo/setThreshold$onPostMessage;->onTransact:Lo/onChildrenLoaded;

    .line 4127
    new-instance v15, Lo/MediaBrowserCompat$SubscriptionCallback;

    invoke-direct {v15}, Lo/MediaBrowserCompat$SubscriptionCallback;-><init>()V

    .line 4128
    invoke-virtual {v15, v11}, Lo/MediaBrowserCompat$SubscriptionCallback;->ICustomTabsCallback(Lo/onChildrenLoaded;)V

    const v12, 0x7f0b055d

    .line 4088
    invoke-virtual {v15, v12, v5}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(II)V

    const v13, 0x7f0b055d

    const/4 v14, 0x7

    const v5, 0x7f0b0567

    const/16 v16, 0x6

    .line 5021
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    invoke-static {v12, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v12

    const/high16 v4, 0x40c00000    # 6.0f

    .line 5022
    invoke-static {v8, v4, v12}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    move-object v12, v15

    move-object/from16 v18, v15

    move v15, v5

    move/from16 v17, v4

    .line 4089
    invoke-virtual/range {v12 .. v17}, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady(IIIII)V

    const v13, 0x7f0b0800

    const v15, 0x7f0b055d

    .line 6021
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    const/4 v5, 0x0

    .line 6022
    invoke-static {v8, v5, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    move-object/from16 v12, v18

    move/from16 v17, v4

    .line 4090
    invoke-virtual/range {v12 .. v17}, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady(IIIII)V

    const/4 v4, 0x6

    move-object/from16 v5, v18

    .line 4091
    invoke-virtual {v5, v9, v4}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(II)V

    const v13, 0x7f0b0567

    const v15, 0x7f0b055e

    const/16 v16, 0x7

    .line 7021
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    const/high16 v9, 0x41400000    # 12.0f

    .line 7022
    invoke-static {v8, v9, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v4

    float-to-int v4, v4

    move-object v12, v5

    move/from16 v17, v4

    .line 4092
    invoke-virtual/range {v12 .. v17}, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady(IIIII)V

    .line 4130
    new-instance v4, Lo/sendQueueTitle;

    invoke-direct {v4}, Lo/sendQueueTitle;-><init>()V

    .line 4131
    invoke-virtual {v4, v6, v7}, Lo/fromQueueItem;->onPostMessage(J)Lo/fromQueueItem;

    .line 4132
    new-instance v9, Lo/RecyclerView$EdgeEffectFactory;

    invoke-direct {v9, v2}, Lo/RecyclerView$EdgeEffectFactory;-><init>(Lo/setThreshold$onPostMessage;)V

    check-cast v9, Lo/fromQueueItem$onMessageChannelReady;

    invoke-virtual {v4, v9}, Lo/fromQueueItem;->extraCallback(Lo/fromQueueItem$onMessageChannelReady;)Lo/fromQueueItem;

    .line 4141
    move-object v9, v11

    check-cast v9, Landroid/view/ViewGroup;

    check-cast v4, Lo/fromQueueItem;

    invoke-static {v9, v4}, Lo/MediaSessionCompat$QueueItem;->onPostMessage(Landroid/view/ViewGroup;Lo/fromQueueItem;)V

    .line 4142
    invoke-virtual {v5, v11}, Lo/MediaBrowserCompat$SubscriptionCallback;->onNavigationEvent(Lo/onChildrenLoaded;)V

    goto/16 :goto_1

    .line 7097
    :cond_2
    iget-object v4, v2, Lo/setThreshold$onPostMessage;->onTransact:Lo/onChildrenLoaded;

    .line 7145
    new-instance v15, Lo/MediaBrowserCompat$SubscriptionCallback;

    invoke-direct {v15}, Lo/MediaBrowserCompat$SubscriptionCallback;-><init>()V

    .line 7146
    invoke-virtual {v15, v4}, Lo/MediaBrowserCompat$SubscriptionCallback;->ICustomTabsCallback(Lo/onChildrenLoaded;)V

    const v12, 0x7f0b055d

    const/4 v13, 0x7

    const v14, 0x7f0b055e

    const/16 v16, 0x7

    .line 8021
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v11

    invoke-static {v11, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v11}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v11

    const/high16 v6, 0x41800000    # 16.0f

    .line 8022
    invoke-static {v8, v6, v11}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v6, v6

    move-object v11, v15

    move-object v7, v15

    move/from16 v15, v16

    move/from16 v16, v6

    .line 7098
    invoke-virtual/range {v11 .. v16}, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady(IIIII)V

    const v12, 0x7f0b0800

    const v14, 0x7f0b055d

    const/4 v15, 0x6

    .line 9021
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    const/high16 v11, 0x40800000    # 4.0f

    .line 9022
    invoke-static {v8, v11, v6}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v6

    float-to-int v6, v6

    move-object v11, v7

    move/from16 v16, v6

    .line 7099
    invoke-virtual/range {v11 .. v16}, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady(IIIII)V

    .line 7100
    invoke-virtual {v7, v9, v5}, Lo/MediaBrowserCompat$SubscriptionCallback;->extraCallback(II)V

    const v12, 0x7f0b0567

    const/4 v13, 0x6

    const v14, 0x7f0b055e

    const/4 v15, 0x7

    .line 10021
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v10}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    const/high16 v6, 0x41000000    # 8.0f

    .line 10022
    invoke-static {v8, v6, v5}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v5

    float-to-int v5, v5

    move/from16 v16, v5

    .line 7101
    invoke-virtual/range {v11 .. v16}, Lo/MediaBrowserCompat$SubscriptionCallback;->onMessageChannelReady(IIIII)V

    .line 7148
    new-instance v5, Lo/sendQueueTitle;

    invoke-direct {v5}, Lo/sendQueueTitle;-><init>()V

    const-wide/16 v9, 0xc8

    .line 7149
    invoke-virtual {v5, v9, v10}, Lo/fromQueueItem;->onPostMessage(J)Lo/fromQueueItem;

    .line 7150
    new-instance v6, Lo/onItemRangeInserted;

    invoke-direct {v6, v2}, Lo/onItemRangeInserted;-><init>(Lo/setThreshold$onPostMessage;)V

    check-cast v6, Lo/fromQueueItem$onMessageChannelReady;

    invoke-virtual {v5, v6}, Lo/fromQueueItem;->extraCallback(Lo/fromQueueItem$onMessageChannelReady;)Lo/fromQueueItem;

    .line 7159
    move-object v6, v4

    check-cast v6, Landroid/view/ViewGroup;

    check-cast v5, Lo/fromQueueItem;

    invoke-static {v6, v5}, Lo/MediaSessionCompat$QueueItem;->onPostMessage(Landroid/view/ViewGroup;Lo/fromQueueItem;)V

    .line 7160
    invoke-virtual {v7, v4}, Lo/MediaBrowserCompat$SubscriptionCallback;->onNavigationEvent(Lo/onChildrenLoaded;)V

    .line 4036
    :goto_1
    iput-boolean v3, v2, Lo/setThreshold$onPostMessage;->onMessageChannelReady:Z

    .line 10048
    :cond_3
    iget-object v2, v1, Lo/notifyItemRangeChanged;->onPostMessage:Lo/throwIfInMutationOperation;

    if-eqz v2, :cond_5

    .line 11011
    iget-boolean v3, v2, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    if-eqz v3, :cond_4

    const/4 v4, 0x0

    goto :goto_2

    .line 11015
    :cond_4
    iput-boolean v8, v2, Lo/throwIfInMutationOperation;->onMessageChannelReady:Z

    .line 11016
    iget-object v4, v2, Lo/throwIfInMutationOperation;->onPostMessage:Ljava/lang/Object;

    .line 1312
    :goto_2
    check-cast v4, Ljava/lang/Boolean;

    goto :goto_3

    :cond_5
    const/4 v4, 0x0

    :goto_3
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v4, v2}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_6

    .line 1313
    iget-object v2, v0, Lo/notifyDataSetChanged$onTransact;->ICustomTabsCallback:Lo/notifyDataSetChanged;

    invoke-static {v2}, Lo/notifyDataSetChanged;->ICustomTabsCallback(Lo/notifyDataSetChanged;)Lo/setThreshold$onPostMessage;

    move-result-object v2

    .line 11040
    iget-boolean v2, v2, Lo/setThreshold$onPostMessage;->onNavigationEvent:Z

    .line 11049
    iget-boolean v4, v1, Lo/notifyItemRangeChanged;->ICustomTabsCallback:Z

    if-ne v2, v4, :cond_6

    .line 1314
    iget-object v2, v0, Lo/notifyDataSetChanged$onTransact;->ICustomTabsCallback:Lo/notifyDataSetChanged;

    invoke-static {v2}, Lo/notifyDataSetChanged;->ICustomTabsCallback(Lo/notifyDataSetChanged;)Lo/setThreshold$onPostMessage;

    move-result-object v2

    .line 11053
    iget-boolean v4, v2, Lo/setThreshold$onPostMessage;->ICustomTabsCallback$Stub:Z

    if-nez v4, :cond_6

    iget-boolean v4, v2, Lo/setThreshold$onPostMessage;->onNavigationEvent:Z

    if-eqz v4, :cond_6

    new-array v4, v3, [F

    .line 11054
    fill-array-data v4, :array_0

    invoke-static {v4}, Landroid/animation/ObjectAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    .line 11055
    new-instance v5, Lo/RecyclerView$ItemAnimator;

    invoke-direct {v5, v2}, Lo/RecyclerView$ItemAnimator;-><init>(Lo/setThreshold$onPostMessage;)V

    check-cast v5, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 11058
    new-instance v2, Landroid/view/animation/CycleInterpolator;

    const/high16 v5, 0x3f000000    # 0.5f

    invoke-direct {v2, v5}, Landroid/view/animation/CycleInterpolator;-><init>(F)V

    check-cast v2, Landroid/animation/TimeInterpolator;

    invoke-virtual {v4, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v5, 0x12c

    .line 11059
    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 11060
    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 1317
    :cond_6
    iget-object v2, v0, Lo/notifyDataSetChanged$onTransact;->ICustomTabsCallback:Lo/notifyDataSetChanged;

    invoke-static {v2}, Lo/notifyDataSetChanged;->ICustomTabsCallback(Lo/notifyDataSetChanged;)Lo/setThreshold$onPostMessage;

    move-result-object v2

    .line 12049
    iget-boolean v1, v1, Lo/notifyItemRangeChanged;->ICustomTabsCallback:Z

    const/4 v4, 0x0

    if-eqz v1, :cond_7

    .line 1317
    iget-object v1, v0, Lo/notifyDataSetChanged$onTransact;->ICustomTabsCallback:Lo/notifyDataSetChanged;

    invoke-static {v1}, Lo/notifyDataSetChanged;->onPostMessage(Lo/notifyDataSetChanged;)Z

    move-result v1

    if-eqz v1, :cond_7

    const/4 v1, 0x1

    goto :goto_4

    :cond_7
    const/4 v1, 0x0

    .line 13042
    :goto_4
    iget-boolean v5, v2, Lo/setThreshold$onPostMessage;->onNavigationEvent:Z

    if-eq v5, v1, :cond_9

    if-eqz v1, :cond_8

    new-array v5, v3, [Lo/addWrite;

    .line 13075
    iget-object v6, v2, Lo/setThreshold$onPostMessage;->onPostMessage:Lo/createFullSpanItemFromEnd;

    invoke-virtual {v6}, Lo/createFullSpanItemFromEnd;->toString()Ljava/lang/String;

    move-result-object v6

    .line 14043
    new-instance v7, Lo/addWrite;

    const-string v9, "icon_text"

    invoke-direct {v7, v9, v6}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v5, v4

    .line 13076
    iget-object v4, v2, Lo/setThreshold$onPostMessage;->ICustomTabsCallback:Ljava/lang/String;

    .line 15043
    new-instance v6, Lo/addWrite;

    const-string/jumbo v7, "section"

    invoke-direct {v6, v7, v4}, Lo/addWrite;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v5, v8

    const-string v4, "pairs"

    .line 13074
    invoke-static {v5, v4}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15088
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-static {v3}, Lo/lambda$onError$1;->onNavigationEvent(I)I

    move-result v6

    invoke-direct {v4, v6}, Ljava/util/LinkedHashMap;-><init>(I)V

    check-cast v4, Ljava/util/Map;

    invoke-static {v4, v5}, Lo/lambda$onError$1;->extraCallback(Ljava/util/Map;[Lo/addWrite;)V

    const-string v5, "fab_icon_visible"

    .line 13074
    invoke-static {v5, v4}, Lo/getTrackTintMode;->onNavigationEvent(Ljava/lang/String;Ljava/util/Map;)Lo/onSupportContentChanged;

    new-array v3, v3, [F

    .line 13078
    fill-array-data v3, :array_1

    invoke-static {v3}, Landroid/animation/ObjectAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 13079
    new-instance v4, Lo/createEdgeEffect;

    invoke-direct {v4, v2}, Lo/createEdgeEffect;-><init>(Lo/setThreshold$onPostMessage;)V

    check-cast v4, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    const-wide/16 v4, 0xc8

    .line 13082
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 13083
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_5

    :cond_8
    const-wide/16 v4, 0xc8

    new-array v3, v3, [F

    .line 16065
    fill-array-data v3, :array_2

    invoke-static {v3}, Landroid/animation/ObjectAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    .line 16066
    move-object v6, v2

    check-cast v6, Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 16069
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 16070
    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    .line 13048
    :goto_5
    iput-boolean v1, v2, Lo/setThreshold$onPostMessage;->onNavigationEvent:Z

    :cond_9
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
