.class public final Lo/MediaSessionCompat$MediaSessionImplBase$MessageHandler;
.super Lo/createSession;
.source ""


# instance fields
.field private extraCallback:F

.field onNavigationEvent:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Lo/createSession;-><init>()V

    const/high16 v0, 0x40400000    # 3.0f

    .line 36
    iput v0, p0, Lo/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->extraCallback:F

    const/16 v0, 0x50

    .line 37
    iput v0, p0, Lo/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->onNavigationEvent:I

    return-void
.end method


# virtual methods
.method public final onPostMessage(Landroid/view/ViewGroup;Lo/fromQueueItem;Lo/MediaSessionCompat$ResultReceiverWrapper;Lo/MediaSessionCompat$ResultReceiverWrapper;)J
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const-wide/16 v3, 0x0

    if-nez v2, :cond_0

    if-nez p4, :cond_0

    return-wide v3

    .line 3146
    :cond_0
    iget-object v5, v1, Lo/fromQueueItem;->ICustomTabsCallback$Stub:Lo/fromQueueItem$extraCallback;

    if-nez v5, :cond_1

    const/4 v5, 0x0

    goto :goto_0

    .line 3149
    :cond_1
    iget-object v5, v1, Lo/fromQueueItem;->ICustomTabsCallback$Stub:Lo/fromQueueItem$extraCallback;

    invoke-virtual {v5}, Lo/fromQueueItem$extraCallback;->extraCallback()Landroid/graphics/Rect;

    move-result-object v5

    :goto_0
    const/4 v6, 0x1

    if-eqz p4, :cond_5

    const/16 v7, 0x8

    if-nez v2, :cond_2

    goto :goto_1

    .line 4076
    :cond_2
    iget-object v8, v2, Lo/MediaSessionCompat$ResultReceiverWrapper;->onNavigationEvent:Ljava/util/Map;

    const-string v9, "android:visibilityPropagation:visibility"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    if-nez v8, :cond_3

    goto :goto_1

    .line 4080
    :cond_3
    invoke-virtual {v8}, Ljava/lang/Number;->intValue()I

    move-result v7

    :goto_1
    if-nez v7, :cond_4

    goto :goto_2

    :cond_4
    move-object/from16 v2, p4

    const/4 v7, 0x1

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v7, -0x1

    .line 89
    :goto_3
    invoke-static {v2}, Lo/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->onNavigationEvent(Lo/MediaSessionCompat$ResultReceiverWrapper;)I

    move-result v8

    .line 90
    invoke-static {v2}, Lo/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->ICustomTabsCallback(Lo/MediaSessionCompat$ResultReceiverWrapper;)I

    move-result v2

    const/4 v9, 0x2

    new-array v10, v9, [I

    move-object/from16 v11, p1

    .line 93
    invoke-virtual {v11, v10}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v12, 0x0

    .line 94
    aget v13, v10, v12

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getTranslationX()F

    move-result v14

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    add-int/2addr v13, v14

    .line 95
    aget v10, v10, v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/ViewGroup;->getTranslationY()F

    move-result v14

    invoke-static {v14}, Ljava/lang/Math;->round(F)I

    move-result v14

    add-int/2addr v10, v14

    .line 96
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v14

    add-int/2addr v14, v13

    .line 97
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v15

    add-int/2addr v15, v10

    if-eqz v5, :cond_6

    .line 102
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    .line 103
    invoke-virtual {v5}, Landroid/graphics/Rect;->centerY()I

    move-result v5

    goto :goto_4

    :cond_6
    add-int v5, v13, v14

    .line 105
    div-int/2addr v5, v9

    add-int v16, v10, v15

    .line 106
    div-int/lit8 v9, v16, 0x2

    move/from16 v17, v9

    move v9, v5

    move/from16 v5, v17

    .line 4125
    :goto_4
    iget v12, v0, Lo/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->onNavigationEvent:I

    const v4, 0x800003

    const/4 v3, 0x3

    if-ne v12, v4, :cond_a

    .line 4126
    invoke-static/range {p1 .. p1}, Lo/unregisterCallbackListener;->ICustomTabsCallback$Stub(Landroid/view/View;)I

    move-result v12

    if-ne v12, v6, :cond_7

    goto :goto_5

    :cond_7
    const/4 v6, 0x0

    :goto_5
    if-eqz v6, :cond_9

    :cond_8
    const/4 v12, 0x5

    goto :goto_8

    :cond_9
    :goto_6
    const/4 v12, 0x3

    goto :goto_8

    :cond_a
    const v4, 0x800005

    if-ne v12, v4, :cond_c

    .line 4130
    invoke-static/range {p1 .. p1}, Lo/unregisterCallbackListener;->ICustomTabsCallback$Stub(Landroid/view/View;)I

    move-result v4

    if-ne v4, v6, :cond_b

    goto :goto_7

    :cond_b
    const/4 v6, 0x0

    :goto_7
    if-eqz v6, :cond_8

    goto :goto_6

    :cond_c
    :goto_8
    if-eq v12, v3, :cond_10

    const/4 v4, 0x5

    if-eq v12, v4, :cond_f

    const/16 v4, 0x30

    if-eq v12, v4, :cond_e

    const/16 v4, 0x50

    if-eq v12, v4, :cond_d

    const/4 v12, 0x0

    goto :goto_9

    :cond_d
    sub-int/2addr v2, v10

    sub-int/2addr v9, v8

    .line 4148
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v4

    add-int v12, v2, v4

    goto :goto_9

    :cond_e
    sub-int/2addr v15, v2

    sub-int/2addr v9, v8

    .line 4142
    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int v12, v15, v2

    goto :goto_9

    :cond_f
    sub-int/2addr v8, v13

    sub-int/2addr v5, v2

    .line 4145
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int v12, v8, v2

    goto :goto_9

    :cond_10
    sub-int/2addr v14, v8

    sub-int/2addr v5, v2

    .line 4139
    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v2

    add-int v12, v14, v2

    :goto_9
    int-to-float v2, v12

    .line 4155
    iget v4, v0, Lo/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->onNavigationEvent:I

    if-eq v4, v3, :cond_11

    const/4 v3, 0x5

    if-eq v4, v3, :cond_11

    const v3, 0x800003

    if-eq v4, v3, :cond_11

    const v3, 0x800005

    if-eq v4, v3, :cond_11

    .line 4162
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v3

    goto :goto_a

    .line 4160
    :cond_11
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v3

    :goto_a
    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 4357
    iget-wide v3, v1, Lo/fromQueueItem;->onNavigationEvent:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-gez v1, :cond_12

    const-wide/16 v3, 0x12c

    :cond_12
    int-to-long v5, v7

    mul-long v3, v3, v5

    long-to-float v1, v3

    .line 119
    iget v3, v0, Lo/MediaSessionCompat$MediaSessionImplBase$MessageHandler;->extraCallback:F

    div-float/2addr v1, v3

    mul-float v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-long v1, v1

    return-wide v1
.end method
