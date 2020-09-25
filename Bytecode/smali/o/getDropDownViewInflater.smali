.class public final Lo/getDropDownViewInflater;
.super Lo/getTheme;
.source ""


# instance fields
.field private final ICustomTabsCallback$Stub:Lo/onPrimaryNavigationFragmentChanged;

.field private final asBinder:Lo/onPrimaryNavigationFragmentChanged;

.field private final asInterface:Lo/onChildrenLoaded;

.field private onRelationshipValidationResult:J


# direct methods
.method public constructor <init>(Lo/rateWithExtras;Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x7

    .line 31
    invoke-static {p1, p2, v1, v0, v0}, Lo/getDropDownViewInflater;->ICustomTabsCallback(Lo/rateWithExtras;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$onMessageChannelReady;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lo/getDropDownViewInflater;-><init>(Lo/rateWithExtras;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Lo/rateWithExtras;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 8

    const/4 v0, 0x2

    .line 34
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Lo/onPrimaryNavigationFragmentChanged;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroidx/cardview/widget/CardView;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroidx/cardview/widget/CardView;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroidx/cardview/widget/CardView;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v7}, Lo/getTheme;-><init>(Ljava/lang/Object;Landroid/view/View;Lo/onPrimaryNavigationFragmentChanged;Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;Landroidx/cardview/widget/CardView;)V

    const-wide/16 v0, -0x1

    .line 349
    iput-wide v0, p0, Lo/getDropDownViewInflater;->onRelationshipValidationResult:J

    .line 40
    iget-object p1, p0, Lo/getTheme;->extraCallback:Lo/onPrimaryNavigationFragmentChanged;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 41
    iget-object p1, p0, Lo/getTheme;->onNavigationEvent:Landroidx/cardview/widget/CardView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 42
    aget-object p1, p3, p1

    check-cast p1, Lo/onChildrenLoaded;

    iput-object p1, p0, Lo/getDropDownViewInflater;->asInterface:Lo/onChildrenLoaded;

    .line 43
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x4

    .line 44
    aget-object p1, p3, p1

    check-cast p1, Lo/onPrimaryNavigationFragmentChanged;

    iput-object p1, p0, Lo/getDropDownViewInflater;->asBinder:Lo/onPrimaryNavigationFragmentChanged;

    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x6

    .line 46
    aget-object p1, p3, p1

    check-cast p1, Lo/onPrimaryNavigationFragmentChanged;

    iput-object p1, p0, Lo/getDropDownViewInflater;->ICustomTabsCallback$Stub:Lo/onPrimaryNavigationFragmentChanged;

    .line 47
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 48
    iget-object p1, p0, Lo/getTheme;->onPostMessage:Landroidx/cardview/widget/CardView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 49
    iget-object p1, p0, Lo/getTheme;->onMessageChannelReady:Landroidx/cardview/widget/CardView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1324
    sget p1, Lo/getSessionToken2Bundle$onMessageChannelReady;->dataBinding:I

    invoke-virtual {p2, p1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 2057
    monitor-enter p0

    const-wide/16 p1, 0x100

    .line 2058
    :try_start_0
    iput-wide p1, p0, Lo/getDropDownViewInflater;->onRelationshipValidationResult:J

    .line 2059
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2060
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->asBinder()V

    return-void

    :catchall_0
    move-exception p1

    .line 2059
    monitor-exit p0

    throw p1
.end method

.method private ICustomTabsCallback(I)Z
    .locals 4

    if-nez p1, :cond_0

    .line 116
    monitor-enter p0

    .line 117
    :try_start_0
    iget-wide v0, p0, Lo/getDropDownViewInflater;->onRelationshipValidationResult:J

    const-wide/16 v2, 0x1

    or-long/2addr v0, v2

    iput-wide v0, p0, Lo/getDropDownViewInflater;->onRelationshipValidationResult:J

    .line 118
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private ICustomTabsCallback$Stub(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 170
    monitor-enter p0

    .line 171
    :try_start_0
    iget-wide v0, p0, Lo/getDropDownViewInflater;->onRelationshipValidationResult:J

    const-wide/16 v2, 0x40

    or-long/2addr v0, v2

    iput-wide v0, p0, Lo/getDropDownViewInflater;->onRelationshipValidationResult:J

    .line 172
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private extraCallback(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 134
    monitor-enter p0

    .line 135
    :try_start_0
    iget-wide v0, p0, Lo/getDropDownViewInflater;->onRelationshipValidationResult:J

    const-wide/16 v2, 0x4

    or-long/2addr v0, v2

    iput-wide v0, p0, Lo/getDropDownViewInflater;->onRelationshipValidationResult:J

    .line 136
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onMessageChannelReady(I)Z
    .locals 4

    if-nez p1, :cond_0

    .line 152
    monitor-enter p0

    .line 153
    :try_start_0
    iget-wide v0, p0, Lo/getDropDownViewInflater;->onRelationshipValidationResult:J

    const-wide/16 v2, 0x10

    or-long/2addr v0, v2

    iput-wide v0, p0, Lo/getDropDownViewInflater;->onRelationshipValidationResult:J

    .line 154
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onNavigationEvent(I)Z
    .locals 4

    if-nez p1, :cond_0

    .line 143
    monitor-enter p0

    .line 144
    :try_start_0
    iget-wide v0, p0, Lo/getDropDownViewInflater;->onRelationshipValidationResult:J

    const-wide/16 v2, 0x8

    or-long/2addr v0, v2

    iput-wide v0, p0, Lo/getDropDownViewInflater;->onRelationshipValidationResult:J

    .line 145
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onPostMessage(I)Z
    .locals 4

    if-nez p1, :cond_0

    .line 125
    monitor-enter p0

    .line 126
    :try_start_0
    iget-wide v0, p0, Lo/getDropDownViewInflater;->onRelationshipValidationResult:J

    const-wide/16 v2, 0x2

    or-long/2addr v0, v2

    iput-wide v0, p0, Lo/getDropDownViewInflater;->onRelationshipValidationResult:J

    .line 127
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private onTransact(I)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)Z"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 161
    monitor-enter p0

    .line 162
    :try_start_0
    iget-wide v0, p0, Lo/getDropDownViewInflater;->onRelationshipValidationResult:J

    const-wide/16 v2, 0x20

    or-long/2addr v0, v2

    iput-wide v0, p0, Lo/getDropDownViewInflater;->onRelationshipValidationResult:J

    .line 163
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public final ICustomTabsCallback(Ljava/lang/Object;)Z
    .locals 0

    .line 77
    check-cast p1, Lo/setStateAfterAnimating;

    invoke-virtual {p0, p1}, Lo/getTheme;->extraCallback(Lo/setStateAfterAnimating;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final extraCallback(Lo/setStateAfterAnimating;)V
    .locals 4

    .line 86
    iput-object p1, p0, Lo/getTheme;->onTransact:Lo/setStateAfterAnimating;

    .line 87
    monitor-enter p0

    .line 88
    :try_start_0
    iget-wide v0, p0, Lo/getDropDownViewInflater;->onRelationshipValidationResult:J

    const-wide/16 v2, 0x80

    or-long/2addr v0, v2

    iput-wide v0, p0, Lo/getDropDownViewInflater;->onRelationshipValidationResult:J

    .line 89
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    invoke-virtual {p0}, Lo/rewind;->ICustomTabsCallback()V

    .line 91
    invoke-super {p0}, Lo/getTheme;->asBinder()V

    return-void

    :catchall_0
    move-exception p1

    .line 89
    monitor-exit p0

    throw p1
.end method

.method public final onMessageChannelReady()V
    .locals 31

    move-object/from16 v1, p0

    .line 181
    monitor-enter p0

    .line 182
    :try_start_0
    iget-wide v2, v1, Lo/getDropDownViewInflater;->onRelationshipValidationResult:J

    const-wide/16 v4, 0x0

    .line 183
    iput-wide v4, v1, Lo/getDropDownViewInflater;->onRelationshipValidationResult:J

    .line 184
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 193
    iget-object v0, v1, Lo/getTheme;->onTransact:Lo/setStateAfterAnimating;

    const-wide/16 v6, 0x1ff

    and-long/2addr v6, v2

    const-wide/16 v10, 0x188

    const-wide/16 v12, 0x190

    const-wide/16 v14, 0x184

    const-wide/16 v16, 0x1a0

    const-wide/16 v18, 0x181

    const-wide/16 v20, 0x182

    const/4 v8, 0x0

    cmp-long v24, v6, v4

    if-eqz v24, :cond_e

    and-long v6, v2, v18

    cmp-long v24, v6, v4

    if-eqz v24, :cond_1

    if-eqz v0, :cond_0

    .line 3061
    iget-object v6, v0, Lo/setStateAfterAnimating;->updateVisuals:Lo/IMediaSession$Stub;

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 210
    :goto_0
    invoke-virtual {v1, v8, v6}, Lo/getDropDownViewInflater;->ICustomTabsCallback(ILo/MediaControllerCompat;)Z

    if-eqz v6, :cond_1

    .line 3078
    iget v6, v6, Lo/IMediaSession$Stub;->onMessageChannelReady:I

    goto :goto_1

    :cond_1
    const/4 v6, 0x0

    :goto_1
    and-long v24, v2, v20

    cmp-long v7, v24, v4

    if-eqz v7, :cond_3

    if-eqz v0, :cond_2

    .line 4068
    iget-object v7, v0, Lo/setStateAfterAnimating;->postMessage:Lo/IMediaSession$Stub;

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    :goto_2
    const/4 v8, 0x1

    .line 224
    invoke-virtual {v1, v8, v7}, Lo/getDropDownViewInflater;->ICustomTabsCallback(ILo/MediaControllerCompat;)Z

    if-eqz v7, :cond_3

    .line 4078
    iget v7, v7, Lo/IMediaSession$Stub;->onMessageChannelReady:I

    goto :goto_3

    :cond_3
    const/4 v7, 0x0

    :goto_3
    and-long v25, v2, v14

    cmp-long v8, v25, v4

    if-eqz v8, :cond_5

    if-eqz v0, :cond_4

    .line 5056
    iget-object v8, v0, Lo/setStateAfterAnimating;->newSession:Lo/getMediaController;

    goto :goto_4

    :cond_4
    const/4 v8, 0x0

    :goto_4
    const/4 v9, 0x2

    .line 238
    invoke-virtual {v1, v9, v8}, Lo/getDropDownViewInflater;->ICustomTabsCallback(ILo/MediaControllerCompat;)Z

    if-eqz v8, :cond_5

    .line 5081
    iget-object v8, v8, Lo/getMediaController;->onPostMessage:Ljava/lang/Object;

    .line 243
    check-cast v8, Lcom/dreamplug/fabrik/ui/control/CardDetails;

    goto :goto_5

    :cond_5
    const/4 v8, 0x0

    :goto_5
    and-long v26, v2, v10

    cmp-long v9, v26, v4

    if-eqz v9, :cond_7

    if-eqz v0, :cond_6

    .line 6060
    iget-object v9, v0, Lo/setStateAfterAnimating;->ICustomTabsCallback$Stub$Proxy:Lo/IMediaSession$Stub;

    goto :goto_6

    :cond_6
    const/4 v9, 0x0

    :goto_6
    const/4 v10, 0x3

    .line 252
    invoke-virtual {v1, v10, v9}, Lo/getDropDownViewInflater;->ICustomTabsCallback(ILo/MediaControllerCompat;)Z

    if-eqz v9, :cond_7

    .line 6078
    iget v9, v9, Lo/IMediaSession$Stub;->onMessageChannelReady:I

    goto :goto_7

    :cond_7
    const/4 v9, 0x0

    :goto_7
    and-long v10, v2, v12

    cmp-long v28, v10, v4

    if-eqz v28, :cond_9

    if-eqz v0, :cond_8

    .line 7059
    iget-object v10, v0, Lo/setStateAfterAnimating;->warmup:Lo/IMediaSession$Stub;

    goto :goto_8

    :cond_8
    const/4 v10, 0x0

    :goto_8
    const/4 v11, 0x4

    .line 266
    invoke-virtual {v1, v11, v10}, Lo/getDropDownViewInflater;->ICustomTabsCallback(ILo/MediaControllerCompat;)Z

    if-eqz v10, :cond_9

    .line 7078
    iget v10, v10, Lo/IMediaSession$Stub;->onMessageChannelReady:I

    move/from16 v24, v10

    goto :goto_9

    :cond_9
    const/16 v24, 0x0

    :goto_9
    and-long v10, v2, v16

    cmp-long v28, v10, v4

    if-eqz v28, :cond_b

    if-eqz v0, :cond_a

    .line 8057
    iget-object v10, v0, Lo/setStateAfterAnimating;->getInterfaceDescriptor:Lo/getMediaController;

    goto :goto_a

    :cond_a
    const/4 v10, 0x0

    :goto_a
    const/4 v11, 0x5

    .line 280
    invoke-virtual {v1, v11, v10}, Lo/getDropDownViewInflater;->ICustomTabsCallback(ILo/MediaControllerCompat;)Z

    if-eqz v10, :cond_b

    .line 8081
    iget-object v10, v10, Lo/getMediaController;->onPostMessage:Ljava/lang/Object;

    .line 285
    check-cast v10, Lcom/dreamplug/fabrik/ui/control/CardDetails;

    goto :goto_b

    :cond_b
    const/4 v10, 0x0

    :goto_b
    const-wide/16 v22, 0x1c0

    and-long v28, v2, v22

    cmp-long v11, v28, v4

    if-eqz v11, :cond_d

    if-eqz v0, :cond_c

    .line 9055
    iget-object v0, v0, Lo/setStateAfterAnimating;->ICustomTabsService:Lo/getMediaController;

    goto :goto_c

    :cond_c
    const/4 v0, 0x0

    :goto_c
    const/4 v11, 0x6

    .line 294
    invoke-virtual {v1, v11, v0}, Lo/getDropDownViewInflater;->ICustomTabsCallback(ILo/MediaControllerCompat;)Z

    if-eqz v0, :cond_d

    .line 9081
    iget-object v0, v0, Lo/getMediaController;->onPostMessage:Ljava/lang/Object;

    .line 299
    check-cast v0, Lcom/dreamplug/fabrik/ui/control/CardDetails;

    move-object v11, v0

    move/from16 v0, v24

    goto :goto_d

    :cond_d
    move/from16 v0, v24

    const/4 v11, 0x0

    :goto_d
    move-object/from16 v30, v8

    move v8, v7

    move-object/from16 v7, v30

    goto :goto_e

    :cond_e
    const/4 v0, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_e
    and-long v20, v2, v20

    cmp-long v24, v20, v4

    if-eqz v24, :cond_f

    .line 307
    iget-object v14, v1, Lo/getTheme;->extraCallback:Lo/onPrimaryNavigationFragmentChanged;

    invoke-virtual {v14, v8}, Lo/onPrimaryNavigationFragmentChanged;->setTotalCardCount(I)V

    :cond_f
    const-wide/16 v14, 0x100

    and-long/2addr v14, v2

    cmp-long v8, v14, v4

    if-eqz v8, :cond_10

    .line 312
    iget-object v8, v1, Lo/getTheme;->extraCallback:Lo/onPrimaryNavigationFragmentChanged;

    iget-object v14, v1, Lo/getTheme;->extraCallback:Lo/onPrimaryNavigationFragmentChanged;

    invoke-virtual {v14}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0700a0

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    invoke-virtual {v8, v14}, Lo/onPrimaryNavigationFragmentChanged;->setBankNameTopMargin(F)V

    .line 313
    iget-object v8, v1, Lo/getDropDownViewInflater;->asBinder:Lo/onPrimaryNavigationFragmentChanged;

    invoke-virtual {v8}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0700a6

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    invoke-virtual {v8, v14}, Lo/onPrimaryNavigationFragmentChanged;->setBankNameTopMargin(F)V

    :cond_10
    and-long v14, v2, v16

    cmp-long v8, v14, v4

    if-eqz v8, :cond_11

    .line 318
    iget-object v8, v1, Lo/getTheme;->extraCallback:Lo/onPrimaryNavigationFragmentChanged;

    invoke-virtual {v8, v10}, Lo/onPrimaryNavigationFragmentChanged;->setCardTemplate(Lcom/dreamplug/fabrik/ui/control/CardDetails;)V

    :cond_11
    and-long/2addr v12, v2

    cmp-long v8, v12, v4

    if-eqz v8, :cond_12

    .line 323
    iget-object v8, v1, Lo/getTheme;->onNavigationEvent:Landroidx/cardview/widget/CardView;

    invoke-virtual {v8, v0}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    :cond_12
    const-wide/16 v12, 0x184

    and-long/2addr v12, v2

    cmp-long v0, v12, v4

    if-eqz v0, :cond_13

    .line 328
    iget-object v0, v1, Lo/getDropDownViewInflater;->asBinder:Lo/onPrimaryNavigationFragmentChanged;

    invoke-virtual {v0, v7}, Lo/onPrimaryNavigationFragmentChanged;->setCardTemplate(Lcom/dreamplug/fabrik/ui/control/CardDetails;)V

    :cond_13
    const-wide/16 v7, 0x1c0

    and-long/2addr v7, v2

    cmp-long v0, v7, v4

    if-eqz v0, :cond_14

    .line 333
    iget-object v0, v1, Lo/getDropDownViewInflater;->ICustomTabsCallback$Stub:Lo/onPrimaryNavigationFragmentChanged;

    invoke-virtual {v0, v11}, Lo/onPrimaryNavigationFragmentChanged;->setCardTemplate(Lcom/dreamplug/fabrik/ui/control/CardDetails;)V

    :cond_14
    const-wide/16 v7, 0x188

    and-long/2addr v7, v2

    cmp-long v0, v7, v4

    if-eqz v0, :cond_15

    .line 338
    iget-object v0, v1, Lo/getTheme;->onPostMessage:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, v9}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    :cond_15
    and-long v2, v2, v18

    cmp-long v0, v2, v4

    if-eqz v0, :cond_16

    .line 343
    iget-object v0, v1, Lo/getTheme;->onMessageChannelReady:Landroidx/cardview/widget/CardView;

    invoke-virtual {v0, v6}, Landroidx/cardview/widget/CardView;->setCardBackgroundColor(I)V

    :cond_16
    return-void

    :catchall_0
    move-exception v0

    .line 184
    monitor-exit p0

    throw v0
.end method

.method public final onMessageChannelReady(II)Z
    .locals 0

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return p1

    .line 110
    :pswitch_0
    invoke-direct {p0, p2}, Lo/getDropDownViewInflater;->ICustomTabsCallback$Stub(I)Z

    move-result p1

    return p1

    .line 108
    :pswitch_1
    invoke-direct {p0, p2}, Lo/getDropDownViewInflater;->onTransact(I)Z

    move-result p1

    return p1

    .line 106
    :pswitch_2
    invoke-direct {p0, p2}, Lo/getDropDownViewInflater;->onMessageChannelReady(I)Z

    move-result p1

    return p1

    .line 104
    :pswitch_3
    invoke-direct {p0, p2}, Lo/getDropDownViewInflater;->onNavigationEvent(I)Z

    move-result p1

    return p1

    .line 102
    :pswitch_4
    invoke-direct {p0, p2}, Lo/getDropDownViewInflater;->extraCallback(I)Z

    move-result p1

    return p1

    .line 100
    :pswitch_5
    invoke-direct {p0, p2}, Lo/getDropDownViewInflater;->onPostMessage(I)Z

    move-result p1

    return p1

    .line 98
    :pswitch_6
    invoke-direct {p0, p2}, Lo/getDropDownViewInflater;->ICustomTabsCallback(I)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onNavigationEvent()V
    .locals 2

    .line 57
    monitor-enter p0

    const-wide/16 v0, 0x100

    .line 58
    :try_start_0
    iput-wide v0, p0, Lo/getDropDownViewInflater;->onRelationshipValidationResult:J

    .line 59
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->asBinder()V

    return-void

    :catchall_0
    move-exception v0

    .line 59
    monitor-exit p0

    throw v0
.end method

.method public final onRelationshipValidationResult()Z
    .locals 5

    .line 65
    monitor-enter p0

    .line 66
    :try_start_0
    iget-wide v0, p0, Lo/getDropDownViewInflater;->onRelationshipValidationResult:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    .line 67
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    .line 69
    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
