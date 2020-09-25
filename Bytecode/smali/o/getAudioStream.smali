.class final Lo/getAudioStream;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/getAudioStream$extraCallback;,
        Lo/getAudioStream$ICustomTabsCallback;
    }
.end annotation


# static fields
.field private static final extraCallback:[I

.field private static final onNavigationEvent:Lo/getVolumeControl;

.field private static final onPostMessage:Lo/getVolumeControl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0xb

    new-array v0, v0, [I

    .line 47
    fill-array-data v0, :array_0

    sput-object v0, Lo/getAudioStream;->extraCallback:[I

    .line 76
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    new-instance v0, Lo/getPlaybackType;

    invoke-direct {v0}, Lo/getPlaybackType;-><init>()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-object v0, Lo/getAudioStream;->onNavigationEvent:Lo/getVolumeControl;

    .line 80
    invoke-static {}, Lo/getAudioStream;->onPostMessage()Lo/getVolumeControl;

    move-result-object v0

    sput-object v0, Lo/getAudioStream;->onPostMessage:Lo/getVolumeControl;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3
        0x0
        0x1
        0x5
        0x4
        0x7
        0x6
        0x9
        0x8
        0xa
    .end array-data
.end method

.method static ICustomTabsCallback(Lo/requestExtraBinder;Ljava/util/ArrayList;Ljava/util/ArrayList;IIZLo/getAudioStream$ICustomTabsCallback;)V
    .locals 42
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/requestExtraBinder;",
            "Ljava/util/ArrayList<",
            "Lo/binderDied;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;IIZ",
            "Lo/getAudioStream$ICustomTabsCallback;",
            ")V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    .line 124
    iget v6, v0, Lo/requestExtraBinder;->ICustomTabsCallback$Stub:I

    if-gtz v6, :cond_0

    return-void

    .line 128
    :cond_0
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    move/from16 v7, p3

    :goto_0
    if-ge v7, v3, :cond_2

    .line 131
    invoke-virtual {v1, v7}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lo/binderDied;

    .line 132
    invoke-virtual {v2, v7}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 134
    invoke-static {v8, v6, v4}, Lo/getAudioStream;->extraCallback(Lo/binderDied;Landroid/util/SparseArray;Z)V

    goto :goto_1

    .line 136
    :cond_1
    invoke-static {v8, v6, v4}, Lo/getAudioStream;->onMessageChannelReady(Lo/binderDied;Landroid/util/SparseArray;Z)V

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 140
    :cond_2
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-eqz v7, :cond_2d

    .line 141
    new-instance v7, Landroid/view/View;

    iget-object v8, v0, Lo/requestExtraBinder;->ICustomTabsService:Lo/postToHandler;

    .line 2200
    iget-object v8, v8, Lo/postToHandler;->onNavigationEvent:Landroid/content/Context;

    .line 141
    invoke-direct {v7, v8}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 142
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v15

    const/4 v13, 0x0

    :goto_2
    if-ge v13, v15, :cond_2d

    .line 144
    invoke-virtual {v6, v13}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    move/from16 v12, p3

    .line 145
    invoke-static {v8, v1, v2, v12, v3}, Lo/getAudioStream;->onPostMessage(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Lo/postOrRun;

    move-result-object v11

    .line 149
    invoke-virtual {v6, v13}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lo/getAudioStream$extraCallback;

    const/16 v21, 0x0

    if-eqz v4, :cond_19

    .line 2232
    iget-object v9, v0, Lo/requestExtraBinder;->newSession:Lo/MediaControllerCompat$MediaControllerExtraData;

    invoke-virtual {v9}, Lo/MediaControllerCompat$MediaControllerExtraData;->extraCallback()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 2233
    iget-object v9, v0, Lo/requestExtraBinder;->newSession:Lo/MediaControllerCompat$MediaControllerExtraData;

    invoke-virtual {v9, v8}, Lo/MediaControllerCompat$MediaControllerExtraData;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    goto :goto_3

    :cond_3
    move-object/from16 v8, v21

    :goto_3
    if-eqz v8, :cond_18

    .line 2238
    iget-object v9, v10, Lo/getAudioStream$extraCallback;->onPostMessage:Landroidx/fragment/app/Fragment;

    .line 2239
    iget-object v14, v10, Lo/getAudioStream$extraCallback;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    .line 2240
    invoke-static {v14, v9}, Lo/getAudioStream;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)Lo/getVolumeControl;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 2244
    iget-boolean v2, v10, Lo/getAudioStream$extraCallback;->ICustomTabsCallback:Z

    .line 2245
    iget-boolean v3, v10, Lo/getAudioStream$extraCallback;->onNavigationEvent:Z

    .line 2247
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v37, v6

    .line 2248
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    if-nez v9, :cond_4

    move-object/from16 v12, v21

    goto :goto_5

    :cond_4
    if-eqz v2, :cond_5

    .line 2567
    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object v16

    goto :goto_4

    .line 2568
    :cond_5
    invoke-virtual {v9}, Landroidx/fragment/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object v16

    :goto_4
    move-object/from16 v12, v16

    .line 2566
    invoke-virtual {v1, v12}, Lo/getVolumeControl;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    :goto_5
    if-nez v14, :cond_6

    move/from16 v38, v13

    move-object/from16 v3, v21

    goto :goto_7

    :cond_6
    if-eqz v3, :cond_7

    .line 2580
    invoke-virtual {v14}, Landroidx/fragment/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object v3

    goto :goto_6

    .line 2581
    :cond_7
    invoke-virtual {v14}, Landroidx/fragment/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object v3

    .line 2579
    :goto_6
    invoke-virtual {v1, v3}, Lo/getVolumeControl;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move/from16 v38, v13

    .line 2618
    :goto_7
    iget-object v13, v10, Lo/getAudioStream$extraCallback;->onPostMessage:Landroidx/fragment/app/Fragment;

    move/from16 v39, v15

    .line 2619
    iget-object v15, v10, Lo/getAudioStream$extraCallback;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    if-eqz v13, :cond_8

    .line 2621
    invoke-virtual {v13}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_8
    if-eqz v13, :cond_11

    if-nez v15, :cond_9

    goto/16 :goto_c

    .line 2627
    :cond_9
    iget-boolean v0, v10, Lo/getAudioStream$extraCallback;->ICustomTabsCallback:Z

    .line 2628
    invoke-virtual {v11}, Lo/fromMediaItemList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_a

    move/from16 v16, v2

    move-object/from16 v5, v21

    goto :goto_8

    .line 2629
    :cond_a
    invoke-static {v1, v13, v15, v0}, Lo/getAudioStream;->onNavigationEvent(Lo/getVolumeControl;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v5

    move/from16 v16, v2

    .line 2631
    :goto_8
    invoke-static {v1, v11, v5, v10}, Lo/getAudioStream;->extraCallback(Lo/getVolumeControl;Lo/postOrRun;Ljava/lang/Object;Lo/getAudioStream$extraCallback;)Lo/postOrRun;

    move-result-object v2

    move-object/from16 v17, v9

    .line 2634
    invoke-static {v1, v11, v5, v10}, Lo/getAudioStream;->onNavigationEvent(Lo/getVolumeControl;Lo/postOrRun;Ljava/lang/Object;Lo/getAudioStream$extraCallback;)Lo/postOrRun;

    move-result-object v9

    .line 2637
    invoke-virtual {v11}, Lo/fromMediaItemList;->isEmpty()Z

    move-result v18

    if-eqz v18, :cond_d

    if-eqz v2, :cond_b

    .line 2640
    invoke-virtual {v2}, Lo/fromMediaItemList;->clear()V

    :cond_b
    if-eqz v9, :cond_c

    .line 2643
    invoke-virtual {v9}, Lo/fromMediaItemList;->clear()V

    :cond_c
    move-object/from16 v5, v21

    goto :goto_9

    :cond_d
    move-object/from16 v18, v5

    .line 2647
    invoke-virtual {v11}, Lo/postOrRun;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 2646
    invoke-static {v6, v2, v5}, Lo/getAudioStream;->extraCallback(Ljava/util/ArrayList;Lo/postOrRun;Ljava/util/Collection;)V

    .line 2649
    invoke-virtual {v11}, Lo/postOrRun;->values()Ljava/util/Collection;

    move-result-object v5

    .line 2648
    invoke-static {v4, v9, v5}, Lo/getAudioStream;->extraCallback(Ljava/util/ArrayList;Lo/postOrRun;Ljava/util/Collection;)V

    move-object/from16 v5, v18

    :goto_9
    if-nez v12, :cond_e

    if-nez v3, :cond_e

    if-nez v5, :cond_e

    move-object/from16 v41, v4

    :goto_a
    move-object/from16 v40, v11

    goto :goto_d

    .line 2657
    :cond_e
    invoke-static {v13, v15, v0, v2}, Lo/getAudioStream;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLo/postOrRun;)V

    if-eqz v5, :cond_10

    .line 2662
    invoke-virtual {v4, v7}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 2663
    invoke-virtual {v1, v5, v7, v6}, Lo/getVolumeControl;->ICustomTabsCallback(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    move-object/from16 v40, v11

    .line 2665
    iget-boolean v11, v10, Lo/getAudioStream$extraCallback;->onNavigationEvent:Z

    move-object/from16 v41, v4

    .line 2666
    iget-object v4, v10, Lo/getAudioStream$extraCallback;->asInterface:Lo/binderDied;

    move-object/from16 v22, v1

    move-object/from16 v23, v5

    move-object/from16 v24, v3

    move-object/from16 v25, v2

    move/from16 v26, v11

    move-object/from16 v27, v4

    .line 2667
    invoke-static/range {v22 .. v27}, Lo/getAudioStream;->onNavigationEvent(Lo/getVolumeControl;Ljava/lang/Object;Ljava/lang/Object;Lo/postOrRun;ZLo/binderDied;)V

    .line 2669
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 2670
    invoke-static {v9, v10, v12, v0}, Lo/getAudioStream;->onMessageChannelReady(Lo/postOrRun;Lo/getAudioStream$extraCallback;Ljava/lang/Object;Z)Landroid/view/View;

    move-result-object v21

    if-eqz v21, :cond_f

    .line 2673
    invoke-virtual {v1, v12, v2}, Lo/getVolumeControl;->extraCallback(Ljava/lang/Object;Landroid/graphics/Rect;)V

    :cond_f
    move-object/from16 v36, v2

    move-object/from16 v34, v21

    goto :goto_b

    :cond_10
    move-object/from16 v41, v4

    move-object/from16 v40, v11

    move-object/from16 v34, v21

    move-object/from16 v36, v34

    .line 2680
    :goto_b
    new-instance v2, Lo/getAudioStream$2;

    move-object/from16 v29, v2

    move-object/from16 v30, v13

    move-object/from16 v31, v15

    move/from16 v32, v0

    move-object/from16 v33, v9

    move-object/from16 v35, v1

    invoke-direct/range {v29 .. v36}, Lo/getAudioStream$2;-><init>(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLo/postOrRun;Landroid/view/View;Lo/getVolumeControl;Landroid/graphics/Rect;)V

    invoke-static {v8, v2}, Lo/IMediaSession;->onNavigationEvent(Landroid/view/View;Ljava/lang/Runnable;)Lo/IMediaSession;

    goto :goto_e

    :cond_11
    :goto_c
    move/from16 v16, v2

    move-object/from16 v41, v4

    move-object/from16 v17, v9

    goto :goto_a

    :goto_d
    move-object/from16 v5, v21

    :goto_e
    if-nez v12, :cond_13

    if-nez v5, :cond_13

    if-eqz v3, :cond_12

    goto :goto_f

    :cond_12
    move-object/from16 v15, p6

    goto/16 :goto_11

    .line 2261
    :cond_13
    :goto_f
    invoke-static {v1, v3, v14, v6, v7}, Lo/getAudioStream;->onMessageChannelReady(Lo/getVolumeControl;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v0

    move-object/from16 v2, v17

    move-object/from16 v4, v41

    .line 2264
    invoke-static {v1, v12, v2, v4, v7}, Lo/getAudioStream;->onMessageChannelReady(Lo/getVolumeControl;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v9

    const/4 v10, 0x4

    .line 2267
    invoke-static {v9, v10}, Lo/getAudioStream;->onNavigationEvent(Ljava/util/ArrayList;I)V

    move-object/from16 v22, v1

    move-object/from16 v23, v12

    move-object/from16 v24, v3

    move-object/from16 v25, v5

    move-object/from16 v26, v2

    move/from16 v27, v16

    .line 2269
    invoke-static/range {v22 .. v27}, Lo/getAudioStream;->onMessageChannelReady(Lo/getVolumeControl;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v2

    if-eqz v14, :cond_15

    if-eqz v0, :cond_15

    .line 2273
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v10

    if-gtz v10, :cond_14

    invoke-virtual {v6}, Ljava/util/AbstractCollection;->size()I

    move-result v10

    if-lez v10, :cond_15

    .line 2274
    :cond_14
    new-instance v10, Lo/MediaMetadataCompatApi21;

    invoke-direct {v10}, Lo/MediaMetadataCompatApi21;-><init>()V

    move-object/from16 v15, p6

    .line 2275
    invoke-interface {v15, v14, v10}, Lo/getAudioStream$ICustomTabsCallback;->extraCallback(Landroidx/fragment/app/Fragment;Lo/MediaMetadataCompatApi21;)V

    .line 2276
    new-instance v11, Lo/getAudioStream$3;

    invoke-direct {v11, v15, v14, v10}, Lo/getAudioStream$3;-><init>(Lo/getAudioStream$ICustomTabsCallback;Landroidx/fragment/app/Fragment;Lo/MediaMetadataCompatApi21;)V

    invoke-virtual {v1, v14, v2, v10, v11}, Lo/getVolumeControl;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Ljava/lang/Object;Lo/MediaMetadataCompatApi21;Ljava/lang/Runnable;)V

    goto :goto_10

    :cond_15
    move-object/from16 v15, p6

    :goto_10
    if-eqz v2, :cond_17

    if-eqz v14, :cond_16

    if-eqz v3, :cond_16

    .line 3308
    iget-boolean v10, v14, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz v10, :cond_16

    iget-boolean v10, v14, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz v10, :cond_16

    iget-boolean v10, v14, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz v10, :cond_16

    const/4 v10, 0x1

    .line 3310
    invoke-virtual {v14, v10}, Landroidx/fragment/app/Fragment;->setHideReplaced(Z)V

    .line 3312
    invoke-virtual {v14}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v10

    .line 3311
    invoke-virtual {v1, v3, v10, v0}, Lo/getVolumeControl;->onPostMessage(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    .line 3328
    iget-object v10, v14, Landroidx/fragment/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    .line 3329
    new-instance v11, Lo/getAudioStream$1;

    invoke-direct {v11, v0}, Lo/getAudioStream$1;-><init>(Ljava/util/ArrayList;)V

    invoke-static {v10, v11}, Lo/IMediaSession;->onNavigationEvent(Landroid/view/View;Ljava/lang/Runnable;)Lo/IMediaSession;

    .line 2287
    :cond_16
    invoke-virtual {v1, v4}, Lo/getVolumeControl;->extraCallback(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v20

    move-object/from16 v29, v1

    move-object/from16 v30, v2

    move-object/from16 v31, v12

    move-object/from16 v32, v9

    move-object/from16 v33, v3

    move-object/from16 v34, v0

    move-object/from16 v35, v5

    move-object/from16 v36, v4

    .line 2288
    invoke-virtual/range {v29 .. v36}, Lo/getVolumeControl;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 2291
    invoke-virtual {v1, v8, v2}, Lo/getVolumeControl;->onMessageChannelReady(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    move-object/from16 v16, v1

    move-object/from16 v17, v8

    move-object/from16 v18, v6

    move-object/from16 v19, v4

    move-object/from16 v21, v40

    .line 2292
    invoke-virtual/range {v16 .. v21}, Lo/getVolumeControl;->onPostMessage(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/Map;)V

    const/4 v0, 0x0

    .line 2294
    invoke-static {v9, v0}, Lo/getAudioStream;->onNavigationEvent(Ljava/util/ArrayList;I)V

    .line 2295
    invoke-virtual {v1, v5, v6, v4}, Lo/getVolumeControl;->onMessageChannelReady(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto/16 :goto_1d

    :cond_17
    :goto_11
    const/4 v0, 0x0

    goto/16 :goto_1d

    :cond_18
    move-object/from16 v37, v6

    move/from16 v38, v13

    move/from16 v39, v15

    const/4 v0, 0x0

    move-object v15, v5

    goto/16 :goto_1d

    :cond_19
    move-object v1, v0

    move-object/from16 v37, v6

    move-object/from16 v40, v11

    move/from16 v38, v13

    move/from16 v39, v15

    const/4 v0, 0x0

    move-object v15, v5

    .line 3357
    iget-object v2, v1, Lo/requestExtraBinder;->newSession:Lo/MediaControllerCompat$MediaControllerExtraData;

    invoke-virtual {v2}, Lo/MediaControllerCompat$MediaControllerExtraData;->extraCallback()Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 3358
    iget-object v2, v1, Lo/requestExtraBinder;->newSession:Lo/MediaControllerCompat$MediaControllerExtraData;

    invoke-virtual {v2, v8}, Lo/MediaControllerCompat$MediaControllerExtraData;->onNavigationEvent(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    goto :goto_12

    :cond_1a
    move-object/from16 v2, v21

    :goto_12
    if-eqz v2, :cond_2b

    .line 3363
    iget-object v3, v10, Lo/getAudioStream$extraCallback;->onPostMessage:Landroidx/fragment/app/Fragment;

    .line 3364
    iget-object v4, v10, Lo/getAudioStream$extraCallback;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    .line 3365
    invoke-static {v4, v3}, Lo/getAudioStream;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)Lo/getVolumeControl;

    move-result-object v5

    if-eqz v5, :cond_2b

    .line 3369
    iget-boolean v6, v10, Lo/getAudioStream$extraCallback;->ICustomTabsCallback:Z

    .line 3370
    iget-boolean v8, v10, Lo/getAudioStream$extraCallback;->onNavigationEvent:Z

    if-nez v3, :cond_1b

    move-object/from16 v6, v21

    goto :goto_14

    :cond_1b
    if-eqz v6, :cond_1c

    .line 3567
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object v6

    goto :goto_13

    .line 3568
    :cond_1c
    invoke-virtual {v3}, Landroidx/fragment/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object v6

    .line 3566
    :goto_13
    invoke-virtual {v5, v6}, Lo/getVolumeControl;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    :goto_14
    if-nez v4, :cond_1d

    move-object/from16 v14, v21

    goto :goto_16

    :cond_1d
    if-eqz v8, :cond_1e

    .line 3580
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object v8

    goto :goto_15

    .line 3581
    :cond_1e
    invoke-virtual {v4}, Landroidx/fragment/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object v8

    .line 3579
    :goto_15
    invoke-virtual {v5, v8}, Lo/getVolumeControl;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    move-object v14, v8

    .line 3375
    :goto_16
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 3376
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 3747
    iget-object v11, v10, Lo/getAudioStream$extraCallback;->onPostMessage:Landroidx/fragment/app/Fragment;

    .line 3748
    iget-object v9, v10, Lo/getAudioStream$extraCallback;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    if-eqz v11, :cond_25

    if-nez v9, :cond_1f

    goto/16 :goto_1a

    .line 3754
    :cond_1f
    iget-boolean v8, v10, Lo/getAudioStream$extraCallback;->ICustomTabsCallback:Z

    .line 3755
    invoke-virtual/range {v40 .. v40}, Lo/fromMediaItemList;->isEmpty()Z

    move-result v16

    if-eqz v16, :cond_20

    move-object/from16 v16, v12

    move-object/from16 v0, v21

    move-object/from16 v1, v40

    goto :goto_17

    .line 3756
    :cond_20
    invoke-static {v5, v11, v9, v8}, Lo/getAudioStream;->onNavigationEvent(Lo/getVolumeControl;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, v40

    move-object/from16 v16, v12

    .line 3758
    :goto_17
    invoke-static {v5, v1, v0, v10}, Lo/getAudioStream;->extraCallback(Lo/getVolumeControl;Lo/postOrRun;Ljava/lang/Object;Lo/getAudioStream$extraCallback;)Lo/postOrRun;

    move-result-object v12

    .line 3761
    invoke-virtual {v1}, Lo/fromMediaItemList;->isEmpty()Z

    move-result v17

    if-eqz v17, :cond_21

    move-object/from16 v0, v21

    goto :goto_18

    :cond_21
    move-object/from16 v17, v0

    .line 3764
    invoke-virtual {v12}, Lo/postOrRun;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {v13, v0}, Ljava/util/AbstractCollection;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v0, v17

    :goto_18
    if-nez v6, :cond_22

    if-nez v14, :cond_22

    if-nez v0, :cond_22

    move-object/from16 v40, v1

    move-object/from16 v22, v10

    move-object/from16 v26, v13

    move-object v1, v14

    move-object/from16 v23, v16

    move-object/from16 v17, v21

    move/from16 v25, v38

    move/from16 v28, v39

    const/16 v27, 0x0

    goto/16 :goto_1b

    .line 3772
    :cond_22
    invoke-static {v11, v9, v8, v12}, Lo/getAudioStream;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLo/postOrRun;)V

    if-eqz v0, :cond_24

    move/from16 v17, v8

    .line 3776
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 3777
    invoke-virtual {v5, v0, v7, v13}, Lo/getVolumeControl;->ICustomTabsCallback(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V

    move-object/from16 v18, v9

    .line 3779
    iget-boolean v9, v10, Lo/getAudioStream$extraCallback;->onNavigationEvent:Z

    move-object/from16 v19, v11

    .line 3780
    iget-object v11, v10, Lo/getAudioStream$extraCallback;->asInterface:Lo/binderDied;

    move-object/from16 v22, v5

    move-object/from16 v23, v0

    move-object/from16 v24, v14

    move-object/from16 v25, v12

    move/from16 v26, v9

    move-object/from16 v27, v11

    .line 3781
    invoke-static/range {v22 .. v27}, Lo/getAudioStream;->onNavigationEvent(Lo/getVolumeControl;Ljava/lang/Object;Ljava/lang/Object;Lo/postOrRun;ZLo/binderDied;)V

    if-eqz v6, :cond_23

    .line 3784
    invoke-virtual {v5, v6, v8}, Lo/getVolumeControl;->extraCallback(Ljava/lang/Object;Landroid/graphics/Rect;)V

    :cond_23
    move-object/from16 v20, v8

    goto :goto_19

    :cond_24
    move/from16 v17, v8

    move-object/from16 v18, v9

    move-object/from16 v19, v11

    move-object/from16 v20, v21

    .line 3792
    :goto_19
    new-instance v12, Lo/getAudioStream$9;

    move-object v8, v12

    move-object v9, v5

    move-object v11, v10

    move-object v10, v1

    move-object/from16 v22, v11

    move-object v11, v0

    move-object/from16 v24, v0

    move-object v0, v12

    move-object/from16 v23, v16

    move-object/from16 v12, v22

    move-object/from16 v26, v13

    move/from16 v25, v38

    move-object/from16 v13, v23

    move-object/from16 v40, v1

    move-object v1, v14

    const/16 v27, 0x0

    move-object v14, v7

    move/from16 v28, v39

    move-object/from16 v15, v19

    move-object/from16 v16, v18

    move-object/from16 v18, v26

    move-object/from16 v19, v6

    invoke-direct/range {v8 .. v20}, Lo/getAudioStream$9;-><init>(Lo/getVolumeControl;Lo/postOrRun;Ljava/lang/Object;Lo/getAudioStream$extraCallback;Ljava/util/ArrayList;Landroid/view/View;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Landroid/graphics/Rect;)V

    invoke-static {v2, v0}, Lo/IMediaSession;->onNavigationEvent(Landroid/view/View;Ljava/lang/Runnable;)Lo/IMediaSession;

    move-object/from16 v17, v24

    goto :goto_1b

    :cond_25
    :goto_1a
    move-object/from16 v22, v10

    move-object/from16 v23, v12

    move-object/from16 v26, v13

    move-object v1, v14

    move/from16 v25, v38

    move/from16 v28, v39

    const/16 v27, 0x0

    move-object/from16 v17, v21

    :goto_1b
    if-nez v6, :cond_26

    if-nez v17, :cond_26

    if-eqz v1, :cond_2c

    :cond_26
    move-object/from16 v0, v26

    .line 3387
    invoke-static {v5, v1, v4, v0, v7}, Lo/getAudioStream;->onMessageChannelReady(Lo/getVolumeControl;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;

    move-result-object v19

    if-eqz v19, :cond_27

    .line 3390
    invoke-virtual/range {v19 .. v19}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_28

    :cond_27
    move-object/from16 v1, v21

    .line 3396
    :cond_28
    invoke-virtual {v5, v6, v7}, Lo/getVolumeControl;->ICustomTabsCallback(Ljava/lang/Object;Landroid/view/View;)V

    move-object/from16 v9, v22

    .line 3398
    iget-boolean v8, v9, Lo/getAudioStream$extraCallback;->ICustomTabsCallback:Z

    move-object v11, v5

    move-object v12, v6

    move-object v13, v1

    move-object/from16 v14, v17

    move-object v15, v3

    move/from16 v16, v8

    invoke-static/range {v11 .. v16}, Lo/getAudioStream;->onMessageChannelReady(Lo/getVolumeControl;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;

    move-result-object v10

    if-eqz v4, :cond_2a

    if-eqz v19, :cond_2a

    .line 3402
    invoke-virtual/range {v19 .. v19}, Ljava/util/AbstractCollection;->size()I

    move-result v8

    if-gtz v8, :cond_29

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    if-lez v0, :cond_2a

    .line 3403
    :cond_29
    new-instance v0, Lo/MediaMetadataCompatApi21;

    invoke-direct {v0}, Lo/MediaMetadataCompatApi21;-><init>()V

    move-object/from16 v9, p6

    .line 3404
    invoke-interface {v9, v4, v0}, Lo/getAudioStream$ICustomTabsCallback;->extraCallback(Landroidx/fragment/app/Fragment;Lo/MediaMetadataCompatApi21;)V

    .line 3405
    new-instance v8, Lo/getAudioStream$4;

    invoke-direct {v8, v9, v4, v0}, Lo/getAudioStream$4;-><init>(Lo/getAudioStream$ICustomTabsCallback;Landroidx/fragment/app/Fragment;Lo/MediaMetadataCompatApi21;)V

    invoke-virtual {v5, v4, v10, v0, v8}, Lo/getVolumeControl;->onMessageChannelReady(Landroidx/fragment/app/Fragment;Ljava/lang/Object;Lo/MediaMetadataCompatApi21;Ljava/lang/Runnable;)V

    goto :goto_1c

    :cond_2a
    move-object/from16 v9, p6

    :goto_1c
    if-eqz v10, :cond_2c

    .line 3414
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v11, v5

    move-object v12, v10

    move-object v13, v6

    move-object v14, v0

    move-object v15, v1

    move-object/from16 v16, v19

    move-object/from16 v18, v23

    .line 3415
    invoke-virtual/range {v11 .. v18}, Lo/getVolumeControl;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 4450
    new-instance v4, Lo/getAudioStream$5;

    move-object v8, v4

    move-object v9, v6

    move-object v6, v10

    move-object v10, v5

    move-object v11, v7

    move-object v12, v3

    move-object/from16 v13, v23

    move-object/from16 v15, v19

    move-object/from16 v16, v1

    invoke-direct/range {v8 .. v16}, Lo/getAudioStream$5;-><init>(Ljava/lang/Object;Lo/getVolumeControl;Landroid/view/View;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/Object;)V

    invoke-static {v2, v4}, Lo/IMediaSession;->onNavigationEvent(Landroid/view/View;Ljava/lang/Runnable;)Lo/IMediaSession;

    move-object/from16 v1, v23

    move-object/from16 v0, v40

    .line 3420
    invoke-virtual {v5, v2, v1, v0}, Lo/getVolumeControl;->onMessageChannelReady(Landroid/view/View;Ljava/util/ArrayList;Ljava/util/Map;)V

    .line 3422
    invoke-virtual {v5, v2, v6}, Lo/getVolumeControl;->onMessageChannelReady(Landroid/view/ViewGroup;Ljava/lang/Object;)V

    .line 3423
    invoke-virtual {v5, v2, v1, v0}, Lo/getVolumeControl;->onMessageChannelReady(Landroid/view/ViewGroup;Ljava/util/ArrayList;Ljava/util/Map;)V

    goto :goto_1e

    :cond_2b
    :goto_1d
    move/from16 v25, v38

    move/from16 v28, v39

    const/16 v27, 0x0

    :cond_2c
    :goto_1e
    add-int/lit8 v13, v25, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p4

    move/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v15, v28

    move-object/from16 v6, v37

    goto/16 :goto_2

    :cond_2d
    return-void
.end method

.method private static extraCallback(Lo/getVolumeControl;Lo/postOrRun;Ljava/lang/Object;Lo/getAudioStream$extraCallback;)Lo/postOrRun;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getVolumeControl;",
            "Lo/postOrRun<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Lo/getAudioStream$extraCallback;",
            ")",
            "Lo/postOrRun<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 840
    invoke-virtual {p1}, Lo/fromMediaItemList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    if-nez p2, :cond_0

    goto :goto_3

    .line 844
    :cond_0
    iget-object p2, p3, Lo/getAudioStream$extraCallback;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    .line 845
    new-instance v0, Lo/postOrRun;

    invoke-direct {v0}, Lo/postOrRun;-><init>()V

    .line 846
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->requireView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lo/getVolumeControl;->extraCallback(Ljava/util/Map;Landroid/view/View;)V

    .line 850
    iget-object p0, p3, Lo/getAudioStream$extraCallback;->asInterface:Lo/binderDied;

    .line 851
    iget-boolean p3, p3, Lo/getAudioStream$extraCallback;->onNavigationEvent:Z

    if-eqz p3, :cond_1

    .line 852
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Lo/build;

    move-result-object p2

    .line 853
    iget-object p0, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->postMessage:Ljava/util/ArrayList;

    goto :goto_0

    .line 855
    :cond_1
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Lo/build;

    move-result-object p2

    .line 856
    iget-object p0, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->updateVisuals:Ljava/util/ArrayList;

    :goto_0
    if-eqz p0, :cond_2

    .line 6164
    invoke-static {v0, p0}, Lo/MediaBrowserCompat$MediaItem;->onNavigationEvent(Ljava/util/Map;Ljava/util/Collection;)Z

    :cond_2
    if-eqz p2, :cond_5

    .line 864
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_1
    if-ltz p2, :cond_6

    .line 865
    invoke-virtual {p0, p2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 866
    invoke-virtual {v0, p3}, Lo/fromMediaItemList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_3

    .line 868
    invoke-virtual {p1, p3}, Lo/fromMediaItemList;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 869
    :cond_3
    invoke-static {v1}, Lo/unregisterCallbackListener;->requestPostMessageChannel(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 870
    invoke-virtual {p1, p3}, Lo/fromMediaItemList;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 871
    invoke-static {v1}, Lo/unregisterCallbackListener;->requestPostMessageChannel(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1, p3}, Lo/fromMediaItemList;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 875
    :cond_5
    invoke-virtual {v0}, Lo/postOrRun;->keySet()Ljava/util/Set;

    move-result-object p0

    .line 7164
    invoke-static {p1, p0}, Lo/MediaBrowserCompat$MediaItem;->onNavigationEvent(Ljava/util/Map;Ljava/util/Collection;)Z

    :cond_6
    return-object v0

    .line 841
    :cond_7
    :goto_3
    invoke-virtual {p1}, Lo/fromMediaItemList;->clear()V

    const/4 p0, 0x0

    return-object p0
.end method

.method private static extraCallback(Ljava/util/ArrayList;Lo/postOrRun;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Lo/postOrRun<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 704
    invoke-virtual {p1}, Lo/fromMediaItemList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 5399
    iget-object v1, p1, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    shl-int/lit8 v2, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    .line 705
    check-cast v1, Landroid/view/View;

    .line 706
    invoke-static {v1}, Lo/unregisterCallbackListener;->requestPostMessageChannel(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 707
    invoke-virtual {p0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static extraCallback(Lo/binderDied;Landroid/util/SparseArray;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/binderDied;",
            "Landroid/util/SparseArray<",
            "Lo/getAudioStream$extraCallback;",
            ">;Z)V"
        }
    .end annotation

    .line 1152
    iget-object v0, p0, Lo/binderDied;->onPostMessage:Lo/requestExtraBinder;

    iget-object v0, v0, Lo/requestExtraBinder;->newSession:Lo/MediaControllerCompat$MediaControllerExtraData;

    invoke-virtual {v0}, Lo/MediaControllerCompat$MediaControllerExtraData;->extraCallback()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1155
    :cond_0
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 1157
    iget-object v2, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;

    .line 1158
    invoke-static {p0, v2, p1, v1, p2}, Lo/getAudioStream;->extraCallback(Lo/binderDied;Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;Landroid/util/SparseArray;ZZ)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static extraCallback(Lo/binderDied;Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;Landroid/util/SparseArray;ZZ)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/binderDied;",
            "Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;",
            "Landroid/util/SparseArray<",
            "Lo/getAudioStream$extraCallback;",
            ">;ZZ)V"
        }
    .end annotation

    .line 1183
    iget-object v0, p1, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    if-nez v0, :cond_0

    return-void

    .line 1187
    :cond_0
    iget v1, v0, Landroidx/fragment/app/Fragment;->mContainerId:I

    if-nez v1, :cond_1

    return-void

    :cond_1
    if-eqz p3, :cond_2

    .line 1191
    sget-object v2, Lo/getAudioStream;->extraCallback:[I

    iget p1, p1, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->extraCallback:I

    aget p1, v2, p1

    goto :goto_0

    :cond_2
    iget p1, p1, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;->extraCallback:I

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_a

    const/4 v4, 0x3

    if-eq p1, v4, :cond_7

    const/4 v4, 0x4

    if-eq p1, v4, :cond_5

    const/4 v4, 0x5

    if-eq p1, v4, :cond_3

    const/4 v4, 0x6

    if-eq p1, v4, :cond_7

    const/4 v4, 0x7

    if-eq p1, v4, :cond_a

    const/4 p1, 0x0

    :goto_1
    const/4 v4, 0x0

    const/4 v5, 0x0

    goto/16 :goto_7

    :cond_3
    if-eqz p4, :cond_4

    .line 1199
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz p1, :cond_c

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez p1, :cond_c

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz p1, :cond_c

    goto :goto_5

    .line 1201
    :cond_4
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mHidden:Z

    goto :goto_6

    :cond_5
    if-eqz p4, :cond_6

    .line 1216
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mHiddenChanged:Z

    if-eqz p1, :cond_8

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz p1, :cond_8

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-eqz p1, :cond_8

    :goto_2
    goto :goto_3

    .line 1218
    :cond_6
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz p1, :cond_8

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez p1, :cond_8

    goto :goto_2

    :cond_7
    if-eqz p4, :cond_9

    .line 1225
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-nez p1, :cond_8

    iget-object p1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    if-eqz p1, :cond_8

    iget-object p1, v0, Landroidx/fragment/app/Fragment;->mView:Landroid/view/View;

    .line 1226
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_8

    iget p1, v0, Landroidx/fragment/app/Fragment;->mPostponedAlpha:F

    const/4 v4, 0x0

    cmpl-float p1, p1, v4

    if-ltz p1, :cond_8

    :goto_3
    const/4 p1, 0x1

    goto :goto_4

    :cond_8
    const/4 p1, 0x0

    goto :goto_4

    .line 1229
    :cond_9
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-eqz p1, :cond_8

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez p1, :cond_8

    goto :goto_3

    :goto_4
    move v5, p1

    const/4 p1, 0x0

    const/4 v4, 0x1

    goto :goto_7

    :cond_a
    if-eqz p4, :cond_b

    .line 1208
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mIsNewlyAdded:Z

    goto :goto_6

    .line 1210
    :cond_b
    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mAdded:Z

    if-nez p1, :cond_c

    iget-boolean p1, v0, Landroidx/fragment/app/Fragment;->mHidden:Z

    if-nez p1, :cond_c

    :goto_5
    const/4 p1, 0x1

    goto :goto_6

    :cond_c
    const/4 p1, 0x0

    :goto_6
    move v2, p1

    const/4 p1, 0x1

    goto :goto_1

    .line 1234
    :goto_7
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lo/getAudioStream$extraCallback;

    if-eqz v2, :cond_e

    if-nez v6, :cond_d

    .line 14281
    new-instance v6, Lo/getAudioStream$extraCallback;

    invoke-direct {v6}, Lo/getAudioStream$extraCallback;-><init>()V

    .line 14282
    invoke-virtual {p2, v1, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1238
    :cond_d
    iput-object v0, v6, Lo/getAudioStream$extraCallback;->onPostMessage:Landroidx/fragment/app/Fragment;

    .line 1239
    iput-boolean p3, v6, Lo/getAudioStream$extraCallback;->ICustomTabsCallback:Z

    .line 1240
    iput-object p0, v6, Lo/getAudioStream$extraCallback;->extraCallback:Lo/binderDied;

    :cond_e
    const/4 v2, 0x0

    if-nez p4, :cond_10

    if-eqz p1, :cond_10

    if-eqz v6, :cond_f

    .line 1243
    iget-object p1, v6, Lo/getAudioStream$extraCallback;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    if-ne p1, v0, :cond_f

    .line 1244
    iput-object v2, v6, Lo/getAudioStream$extraCallback;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    .line 1251
    :cond_f
    iget-object p1, p0, Lo/binderDied;->onPostMessage:Lo/requestExtraBinder;

    .line 1252
    iget v7, v0, Landroidx/fragment/app/Fragment;->mState:I

    if-gtz v7, :cond_10

    iget v7, p1, Lo/requestExtraBinder;->ICustomTabsCallback$Stub:I

    if-lez v7, :cond_10

    iget-boolean v7, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->mayLaunchUrl:Z

    if-nez v7, :cond_10

    .line 1254
    invoke-virtual {p1, v0}, Lo/requestExtraBinder;->getInterfaceDescriptor(Landroidx/fragment/app/Fragment;)V

    .line 1255
    invoke-virtual {p1, v0, v3}, Lo/requestExtraBinder;->onMessageChannelReady(Landroidx/fragment/app/Fragment;I)V

    :cond_10
    if-eqz v5, :cond_13

    if-eqz v6, :cond_11

    .line 1258
    iget-object p1, v6, Lo/getAudioStream$extraCallback;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    if-nez p1, :cond_13

    :cond_11
    if-nez v6, :cond_12

    .line 15281
    new-instance p1, Lo/getAudioStream$extraCallback;

    invoke-direct {p1}, Lo/getAudioStream$extraCallback;-><init>()V

    .line 15282
    invoke-virtual {p2, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v6, p1

    .line 1261
    :cond_12
    iput-object v0, v6, Lo/getAudioStream$extraCallback;->onMessageChannelReady:Landroidx/fragment/app/Fragment;

    .line 1262
    iput-boolean p3, v6, Lo/getAudioStream$extraCallback;->onNavigationEvent:Z

    .line 1263
    iput-object p0, v6, Lo/getAudioStream$extraCallback;->asInterface:Lo/binderDied;

    :cond_13
    if-nez p4, :cond_14

    if-eqz v4, :cond_14

    if-eqz v6, :cond_14

    .line 1266
    iget-object p0, v6, Lo/getAudioStream$extraCallback;->onPostMessage:Landroidx/fragment/app/Fragment;

    if-ne p0, v0, :cond_14

    .line 1268
    iput-object v2, v6, Lo/getAudioStream$extraCallback;->onPostMessage:Landroidx/fragment/app/Fragment;

    :cond_14
    return-void
.end method

.method static extraCallback()Z
    .locals 1

    .line 1163
    sget-object v0, Lo/getAudioStream;->onNavigationEvent:Lo/getVolumeControl;

    if-nez v0, :cond_1

    sget-object v0, Lo/getAudioStream;->onPostMessage:Lo/getVolumeControl;

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

.method static onMessageChannelReady(Lo/postOrRun;Lo/getAudioStream$extraCallback;Ljava/lang/Object;Z)Landroid/view/View;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/postOrRun<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;",
            "Lo/getAudioStream$extraCallback;",
            "Ljava/lang/Object;",
            "Z)",
            "Landroid/view/View;"
        }
    .end annotation

    .line 971
    iget-object p1, p1, Lo/getAudioStream$extraCallback;->extraCallback:Lo/binderDied;

    if-eqz p2, :cond_1

    if-eqz p0, :cond_1

    .line 972
    iget-object p2, p1, Lo/MediaControllerCompat$MediaControllerImplApi23;->updateVisuals:Ljava/util/ArrayList;

    if-eqz p2, :cond_1

    iget-object p2, p1, Lo/MediaControllerCompat$MediaControllerImplApi23;->updateVisuals:Ljava/util/ArrayList;

    .line 974
    invoke-virtual {p2}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_1

    const/4 p2, 0x0

    if-eqz p3, :cond_0

    .line 975
    iget-object p1, p1, Lo/MediaControllerCompat$MediaControllerImplApi23;->updateVisuals:Ljava/util/ArrayList;

    .line 976
    invoke-virtual {p1, p2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lo/MediaControllerCompat$MediaControllerImplApi23;->postMessage:Ljava/util/ArrayList;

    .line 977
    invoke-virtual {p1, p2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 978
    :goto_0
    invoke-virtual {p0, p1}, Lo/fromMediaItemList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static onMessageChannelReady(Lo/getVolumeControl;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-eqz p4, :cond_1

    if-eqz p5, :cond_0

    .line 1102
    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->getAllowReturnTransitionOverlap()Z

    move-result p4

    goto :goto_0

    .line 1103
    :cond_0
    invoke-virtual {p4}, Landroidx/fragment/app/Fragment;->getAllowEnterTransitionOverlap()Z

    move-result p4

    goto :goto_0

    :cond_1
    const/4 p4, 0x1

    :goto_0
    if-eqz p4, :cond_2

    .line 1113
    invoke-virtual {p0, p2, p1, p3}, Lo/getVolumeControl;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_1

    .line 1118
    :cond_2
    invoke-virtual {p0, p2, p1, p3}, Lo/getVolumeControl;->extraCallback(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method static onMessageChannelReady(Lo/getVolumeControl;Ljava/lang/Object;Landroidx/fragment/app/Fragment;Ljava/util/ArrayList;Landroid/view/View;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getVolumeControl;",
            "Ljava/lang/Object;",
            "Landroidx/fragment/app/Fragment;",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;",
            "Landroid/view/View;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1063
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1064
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 1066
    invoke-virtual {p0, v0, p2}, Lo/getVolumeControl;->ICustomTabsCallback(Ljava/util/ArrayList;Landroid/view/View;)V

    :cond_0
    if-eqz p3, :cond_1

    .line 1069
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    .line 1071
    :cond_1
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    .line 1072
    invoke-virtual {v0, p4}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 1073
    invoke-virtual {p0, p1, v0}, Lo/getVolumeControl;->onNavigationEvent(Ljava/lang/Object;Ljava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_0
    return-object v0
.end method

.method private static onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;)Lo/getVolumeControl;
    .locals 2

    .line 481
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_2

    .line 483
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 485
    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 487
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getReturnTransition()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 489
    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 491
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 493
    invoke-virtual {v0, p0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz p1, :cond_5

    .line 497
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 499
    invoke-virtual {v0, p0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 501
    :cond_3
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getReenterTransition()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_4

    .line 503
    invoke-virtual {v0, p0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 505
    :cond_4
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_5

    .line 507
    invoke-virtual {v0, p0}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 510
    :cond_5
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_6

    return-object p1

    .line 514
    :cond_6
    sget-object p0, Lo/getAudioStream;->onNavigationEvent:Lo/getVolumeControl;

    if-eqz p0, :cond_7

    invoke-static {p0, v0}, Lo/getAudioStream;->onPostMessage(Lo/getVolumeControl;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_7

    .line 515
    sget-object p0, Lo/getAudioStream;->onNavigationEvent:Lo/getVolumeControl;

    return-object p0

    .line 517
    :cond_7
    sget-object p0, Lo/getAudioStream;->onPostMessage:Lo/getVolumeControl;

    if-eqz p0, :cond_8

    invoke-static {p0, v0}, Lo/getAudioStream;->onPostMessage(Lo/getVolumeControl;Ljava/util/List;)Z

    move-result p0

    if-eqz p0, :cond_8

    .line 518
    sget-object p0, Lo/getAudioStream;->onPostMessage:Lo/getVolumeControl;

    return-object p0

    .line 520
    :cond_8
    sget-object p0, Lo/getAudioStream;->onNavigationEvent:Lo/getVolumeControl;

    if-nez p0, :cond_9

    sget-object p0, Lo/getAudioStream;->onPostMessage:Lo/getVolumeControl;

    if-nez p0, :cond_9

    return-object p1

    .line 521
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid Transition types"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static onMessageChannelReady(Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;ZLo/postOrRun;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/Fragment;",
            "Landroidx/fragment/app/Fragment;",
            "Z",
            "Lo/postOrRun<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1039
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Lo/build;

    move-result-object p0

    goto :goto_0

    .line 1040
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Lo/build;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_2

    .line 1042
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1043
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 p2, 0x0

    if-nez p3, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    .line 1044
    :cond_1
    invoke-virtual {p3}, Lo/fromMediaItemList;->size()I

    move-result v0

    :goto_1
    if-ge p2, v0, :cond_2

    .line 13390
    iget-object v1, p3, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    shl-int/lit8 v2, p2, 0x1

    aget-object v1, v1, v2

    .line 1046
    invoke-virtual {p1, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    .line 13399
    iget-object v1, p3, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    aget-object v1, v1, v2

    .line 1047
    invoke-virtual {p0, v1}, Ljava/util/AbstractCollection;->add(Ljava/lang/Object;)Z

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private static onMessageChannelReady(Lo/binderDied;Landroid/util/SparseArray;Z)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/binderDied;",
            "Landroid/util/SparseArray<",
            "Lo/getAudioStream$extraCallback;",
            ">;Z)V"
        }
    .end annotation

    .line 1135
    iget-object v0, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 1137
    iget-object v3, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->onMessageChannelReady:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;

    .line 1138
    invoke-static {p0, v3, p1, v1, p2}, Lo/getAudioStream;->extraCallback(Lo/binderDied;Lo/MediaControllerCompat$MediaControllerImplApi23$ICustomTabsCallback;Landroid/util/SparseArray;ZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static onNavigationEvent(Lo/getVolumeControl;Landroidx/fragment/app/Fragment;Landroidx/fragment/app/Fragment;Z)Ljava/lang/Object;
    .locals 0

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    if-eqz p3, :cond_1

    .line 553
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getSharedElementReturnTransition()Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    .line 554
    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object p1

    .line 552
    :goto_0
    invoke-virtual {p0, p1}, Lo/getVolumeControl;->ICustomTabsCallback(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 555
    invoke-virtual {p0, p1}, Lo/getVolumeControl;->onNavigationEvent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static onNavigationEvent(Lo/getVolumeControl;Lo/postOrRun;Ljava/lang/Object;Lo/getAudioStream$extraCallback;)Lo/postOrRun;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getVolumeControl;",
            "Lo/postOrRun<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/Object;",
            "Lo/getAudioStream$extraCallback;",
            ")",
            "Lo/postOrRun<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 898
    iget-object v0, p3, Lo/getAudioStream$extraCallback;->onPostMessage:Landroidx/fragment/app/Fragment;

    .line 899
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v1

    .line 900
    invoke-virtual {p1}, Lo/fromMediaItemList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    if-eqz p2, :cond_8

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 904
    :cond_0
    new-instance p2, Lo/postOrRun;

    invoke-direct {p2}, Lo/postOrRun;-><init>()V

    .line 905
    invoke-virtual {p0, p2, v1}, Lo/getVolumeControl;->extraCallback(Ljava/util/Map;Landroid/view/View;)V

    .line 909
    iget-object p0, p3, Lo/getAudioStream$extraCallback;->extraCallback:Lo/binderDied;

    .line 910
    iget-boolean p3, p3, Lo/getAudioStream$extraCallback;->ICustomTabsCallback:Z

    if-eqz p3, :cond_1

    .line 911
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getExitTransitionCallback()Lo/build;

    move-result-object p3

    .line 912
    iget-object p0, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->updateVisuals:Ljava/util/ArrayList;

    goto :goto_0

    .line 914
    :cond_1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getEnterTransitionCallback()Lo/build;

    move-result-object p3

    .line 915
    iget-object p0, p0, Lo/MediaControllerCompat$MediaControllerImplApi23;->postMessage:Ljava/util/ArrayList;

    :goto_0
    if-eqz p0, :cond_2

    .line 8164
    invoke-static {p2, p0}, Lo/MediaBrowserCompat$MediaItem;->onNavigationEvent(Ljava/util/Map;Ljava/util/Collection;)Z

    .line 920
    invoke-virtual {p1}, Lo/postOrRun;->values()Ljava/util/Collection;

    move-result-object v0

    .line 9164
    invoke-static {p2, v0}, Lo/MediaBrowserCompat$MediaItem;->onNavigationEvent(Ljava/util/Map;Ljava/util/Collection;)Z

    :cond_2
    if-eqz p3, :cond_5

    .line 924
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_1
    if-ltz p3, :cond_7

    .line 925
    invoke-virtual {p0, p3}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 926
    invoke-virtual {p2, v0}, Lo/fromMediaItemList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_3

    .line 928
    invoke-static {p1, v0}, Lo/getAudioStream;->onPostMessage(Lo/postOrRun;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 930
    invoke-virtual {p1, v0}, Lo/fromMediaItemList;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 932
    :cond_3
    invoke-static {v1}, Lo/unregisterCallbackListener;->requestPostMessageChannel(Landroid/view/View;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 933
    invoke-static {p1, v0}, Lo/getAudioStream;->onPostMessage(Lo/postOrRun;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 935
    invoke-static {v1}, Lo/unregisterCallbackListener;->requestPostMessageChannel(Landroid/view/View;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lo/fromMediaItemList;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_2
    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    .line 10016
    :cond_5
    invoke-virtual {p1}, Lo/fromMediaItemList;->size()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    :goto_3
    if-ltz p0, :cond_7

    .line 10399
    iget-object p3, p1, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    shl-int/lit8 v0, p0, 0x1

    add-int/lit8 v0, v0, 0x1

    aget-object p3, p3, v0

    .line 10017
    check-cast p3, Ljava/lang/String;

    .line 10018
    invoke-virtual {p2, p3}, Lo/fromMediaItemList;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_6

    .line 10019
    invoke-virtual {p1, p0}, Lo/fromMediaItemList;->extraCallback(I)Ljava/lang/Object;

    :cond_6
    add-int/lit8 p0, p0, -0x1

    goto :goto_3

    :cond_7
    return-object p2

    .line 901
    :cond_8
    :goto_4
    invoke-virtual {p1}, Lo/fromMediaItemList;->clear()V

    const/4 p0, 0x0

    return-object p0
.end method

.method static onNavigationEvent(Ljava/util/ArrayList;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    if-nez p0, :cond_0

    return-void

    .line 1087
    :cond_0
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 1088
    invoke-virtual {p0, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 1089
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private static onNavigationEvent(Lo/getVolumeControl;Ljava/lang/Object;Ljava/lang/Object;Lo/postOrRun;ZLo/binderDied;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getVolumeControl;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            "Lo/postOrRun<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;Z",
            "Lo/binderDied;",
            ")V"
        }
    .end annotation

    .line 995
    iget-object v0, p5, Lo/MediaControllerCompat$MediaControllerImplApi23;->updateVisuals:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p5, Lo/MediaControllerCompat$MediaControllerImplApi23;->updateVisuals:Ljava/util/ArrayList;

    .line 996
    invoke-virtual {v0}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    .line 997
    iget-object p4, p5, Lo/MediaControllerCompat$MediaControllerImplApi23;->postMessage:Ljava/util/ArrayList;

    .line 998
    invoke-virtual {p4, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object p4, p5, Lo/MediaControllerCompat$MediaControllerImplApi23;->updateVisuals:Ljava/util/ArrayList;

    .line 999
    invoke-virtual {p4, v0}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 1000
    :goto_0
    invoke-virtual {p3, p4}, Lo/fromMediaItemList;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/View;

    .line 1001
    invoke-virtual {p0, p1, p3}, Lo/getVolumeControl;->onNavigationEvent(Ljava/lang/Object;Landroid/view/View;)V

    if-eqz p2, :cond_1

    .line 1004
    invoke-virtual {p0, p2, p3}, Lo/getVolumeControl;->onNavigationEvent(Ljava/lang/Object;Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private static onPostMessage(Lo/postOrRun;Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/postOrRun<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 949
    invoke-virtual {p0}, Lo/fromMediaItemList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 11399
    iget-object v2, p0, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    shl-int/lit8 v3, v1, 0x1

    add-int/lit8 v4, v3, 0x1

    aget-object v2, v2, v4

    .line 951
    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 12390
    iget-object p0, p0, Lo/fromMediaItemList;->extraCallback:[Ljava/lang/Object;

    aget-object p0, p0, v3

    .line 952
    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static onPostMessage()Lo/getVolumeControl;
    .locals 3

    :try_start_0
    const-string v0, "o.sendExtras"

    .line 85
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Class;

    .line 87
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/getVolumeControl;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static onPostMessage(ILjava/util/ArrayList;Ljava/util/ArrayList;II)Lo/postOrRun;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList<",
            "Lo/binderDied;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;II)",
            "Lo/postOrRun<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 180
    new-instance v0, Lo/postOrRun;

    invoke-direct {v0}, Lo/postOrRun;-><init>()V

    :cond_0
    add-int/lit8 p4, p4, -0x1

    if-lt p4, p3, :cond_3

    .line 182
    invoke-virtual {p1, p4}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/binderDied;

    .line 183
    invoke-virtual {v1, p0}, Lo/binderDied;->onNavigationEvent(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 186
    invoke-virtual {p2, p4}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 187
    iget-object v3, v1, Lo/MediaControllerCompat$MediaControllerImplApi23;->updateVisuals:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 188
    iget-object v3, v1, Lo/MediaControllerCompat$MediaControllerImplApi23;->updateVisuals:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/AbstractCollection;->size()I

    move-result v3

    if-eqz v2, :cond_1

    .line 192
    iget-object v2, v1, Lo/MediaControllerCompat$MediaControllerImplApi23;->updateVisuals:Ljava/util/ArrayList;

    .line 193
    iget-object v1, v1, Lo/MediaControllerCompat$MediaControllerImplApi23;->postMessage:Ljava/util/ArrayList;

    goto :goto_0

    .line 195
    :cond_1
    iget-object v2, v1, Lo/MediaControllerCompat$MediaControllerImplApi23;->updateVisuals:Ljava/util/ArrayList;

    .line 196
    iget-object v1, v1, Lo/MediaControllerCompat$MediaControllerImplApi23;->postMessage:Ljava/util/ArrayList;

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    :goto_0
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_0

    .line 199
    invoke-virtual {v1, v4}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 200
    invoke-virtual {v2, v4}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 201
    invoke-virtual {v0, v6}, Lo/fromMediaItemList;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 203
    invoke-virtual {v0, v5, v7}, Lo/fromMediaItemList;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 205
    :cond_2
    invoke-virtual {v0, v5, v6}, Lo/fromMediaItemList;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    return-object v0
.end method

.method private static onPostMessage(Lo/getVolumeControl;Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/getVolumeControl;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 527
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    .line 528
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lo/getVolumeControl;->onPostMessage(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method
