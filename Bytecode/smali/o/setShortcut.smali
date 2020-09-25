.class public final Lo/setShortcut;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setForceShowIcon;
.implements Lo/isOverflowMenuShowPending$onMessageChannelReady;
.implements Lo/onAnimationCancel;


# instance fields
.field private final ICustomTabsCallback:Lo/isOverflowMenuShowPending;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isOverflowMenuShowPending<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private asBinder:Z

.field private asInterface:Lo/MediaBrowserCompat$MediaBrowserImplApi21$7;

.field private final extraCallback:Lo/createCheckedTextView;

.field private final onMessageChannelReady:Ljava/lang/String;

.field private final onNavigationEvent:Lo/isOverflowMenuShowPending;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isOverflowMenuShowPending<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final onPostMessage:Landroid/graphics/Path;

.field private final onRelationshipValidationResult:Lo/isCurrent$ICustomTabsCallback;


# direct methods
.method public constructor <init>(Lo/createCheckedTextView;Lo/setOverlayMode;Lo/isCurrent$ICustomTabsCallback;)V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lo/setShortcut;->onPostMessage:Landroid/graphics/Path;

    .line 32
    new-instance v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$7;

    invoke-direct {v0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$7;-><init>()V

    iput-object v0, p0, Lo/setShortcut;->asInterface:Lo/MediaBrowserCompat$MediaBrowserImplApi21$7;

    .line 1033
    iget-object v0, p3, Lo/isCurrent$ICustomTabsCallback;->onPostMessage:Ljava/lang/String;

    .line 36
    iput-object v0, p0, Lo/setShortcut;->onMessageChannelReady:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lo/setShortcut;->extraCallback:Lo/createCheckedTextView;

    .line 1041
    iget-object p1, p3, Lo/isCurrent$ICustomTabsCallback;->ICustomTabsCallback:Lo/startActionModeForChild;

    .line 2017
    new-instance v0, Lo/isOverflowReserved;

    iget-object p1, p1, Lo/setCustomView;->onPostMessage:Ljava/util/List;

    invoke-direct {v0, p1}, Lo/isOverflowReserved;-><init>(Ljava/util/List;)V

    .line 38
    iput-object v0, p0, Lo/setShortcut;->ICustomTabsCallback:Lo/isOverflowMenuShowPending;

    .line 2037
    iget-object p1, p3, Lo/isCurrent$ICustomTabsCallback;->extraCallback:Lo/onLayout;

    .line 39
    invoke-interface {p1}, Lo/onLayout;->onPostMessage()Lo/isOverflowMenuShowPending;

    move-result-object p1

    iput-object p1, p0, Lo/setShortcut;->onNavigationEvent:Lo/isOverflowMenuShowPending;

    .line 40
    iput-object p3, p0, Lo/setShortcut;->onRelationshipValidationResult:Lo/isCurrent$ICustomTabsCallback;

    .line 42
    iget-object p1, p0, Lo/setShortcut;->ICustomTabsCallback:Lo/isOverflowMenuShowPending;

    if-eqz p1, :cond_0

    .line 2173
    iget-object p3, p2, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_0
    iget-object p1, p0, Lo/setShortcut;->onNavigationEvent:Lo/isOverflowMenuShowPending;

    if-eqz p1, :cond_1

    .line 3173
    iget-object p2, p2, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    :cond_1
    iget-object p1, p0, Lo/setShortcut;->ICustomTabsCallback:Lo/isOverflowMenuShowPending;

    .line 4045
    iget-object p1, p1, Lo/isOverflowMenuShowPending;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    iget-object p1, p0, Lo/setShortcut;->onNavigationEvent:Lo/isOverflowMenuShowPending;

    .line 5045
    iget-object p1, p1, Lo/isOverflowMenuShowPending;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 1

    const/4 v0, 0x0

    .line 5054
    iput-boolean v0, p0, Lo/setShortcut;->asBinder:Z

    .line 5055
    iget-object v0, p0, Lo/setShortcut;->extraCallback:Lo/createCheckedTextView;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public final extraCallback(Ljava/lang/Object;Lo/onMeasureExactFormat;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lo/onMeasureExactFormat<",
            "TT;>;)V"
        }
    .end annotation

    .line 127
    sget-object v0, Lo/createRatingBar;->asBinder:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_0

    .line 128
    iget-object p1, p0, Lo/setShortcut;->ICustomTabsCallback:Lo/isOverflowMenuShowPending;

    invoke-virtual {p1, p2}, Lo/isOverflowMenuShowPending;->ICustomTabsCallback(Lo/onMeasureExactFormat;)V

    return-void

    .line 129
    :cond_0
    sget-object v0, Lo/createRatingBar;->ICustomTabsCallback$Stub:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_1

    .line 130
    iget-object p1, p0, Lo/setShortcut;->onNavigationEvent:Lo/isOverflowMenuShowPending;

    invoke-virtual {p1, p2}, Lo/isOverflowMenuShowPending;->ICustomTabsCallback(Lo/onMeasureExactFormat;)V

    :cond_1
    return-void
.end method

.method public final extraCallback(Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lo/setPadding;",
            ">;",
            "Ljava/util/List<",
            "Lo/setPadding;",
            ">;)V"
        }
    .end annotation

    const/4 p2, 0x0

    .line 59
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 60
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setPadding;

    .line 61
    instance-of v1, v0, Lo/setupAnimatorToVisibility;

    if-eqz v1, :cond_0

    check-cast v0, Lo/setupAnimatorToVisibility;

    .line 6056
    iget-object v1, v0, Lo/setupAnimatorToVisibility;->onMessageChannelReady:Lo/init$ICustomTabsCallback;

    .line 61
    sget-object v2, Lo/init$ICustomTabsCallback;->onPostMessage:Lo/init$ICustomTabsCallback;

    if-ne v1, v2, :cond_0

    .line 63
    iget-object v1, p0, Lo/setShortcut;->asInterface:Lo/MediaBrowserCompat$MediaBrowserImplApi21$7;

    .line 7014
    iget-object v1, v1, Lo/MediaBrowserCompat$MediaBrowserImplApi21$7;->onPostMessage:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7052
    iget-object v0, v0, Lo/setupAnimatorToVisibility;->onPostMessage:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onMessageChannelReady()Landroid/graphics/Path;
    .locals 22

    move-object/from16 v0, p0

    .line 74
    iget-boolean v1, v0, Lo/setShortcut;->asBinder:Z

    if-eqz v1, :cond_0

    .line 75
    iget-object v1, v0, Lo/setShortcut;->onPostMessage:Landroid/graphics/Path;

    return-object v1

    .line 78
    :cond_0
    iget-object v1, v0, Lo/setShortcut;->onPostMessage:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 80
    iget-object v1, v0, Lo/setShortcut;->onRelationshipValidationResult:Lo/isCurrent$ICustomTabsCallback;

    .line 8049
    iget-boolean v1, v1, Lo/isCurrent$ICustomTabsCallback;->onMessageChannelReady:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 81
    iput-boolean v2, v0, Lo/setShortcut;->asBinder:Z

    .line 82
    iget-object v1, v0, Lo/setShortcut;->onPostMessage:Landroid/graphics/Path;

    return-object v1

    .line 85
    :cond_1
    iget-object v1, v0, Lo/setShortcut;->ICustomTabsCallback:Lo/isOverflowMenuShowPending;

    invoke-virtual {v1}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 86
    iget v3, v1, Landroid/graphics/PointF;->x:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    .line 87
    iget v1, v1, Landroid/graphics/PointF;->y:F

    div-float/2addr v1, v4

    const v4, 0x3f0d6239    # 0.55228f

    mul-float v12, v3, v4

    mul-float v4, v4, v1

    .line 93
    iget-object v5, v0, Lo/setShortcut;->onPostMessage:Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 94
    iget-object v5, v0, Lo/setShortcut;->onRelationshipValidationResult:Lo/isCurrent$ICustomTabsCallback;

    .line 9045
    iget-boolean v5, v5, Lo/isCurrent$ICustomTabsCallback;->onNavigationEvent:Z

    const/4 v13, 0x0

    if-eqz v5, :cond_2

    .line 95
    iget-object v5, v0, Lo/setShortcut;->onPostMessage:Landroid/graphics/Path;

    neg-float v11, v1

    invoke-virtual {v5, v13, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 96
    iget-object v14, v0, Lo/setShortcut;->onPostMessage:Landroid/graphics/Path;

    sub-float v8, v13, v12

    neg-float v6, v3

    sub-float v21, v13, v4

    const/16 v20, 0x0

    move v15, v8

    move/from16 v16, v11

    move/from16 v17, v6

    move/from16 v18, v21

    move/from16 v19, v6

    invoke-virtual/range {v14 .. v20}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 97
    iget-object v5, v0, Lo/setShortcut;->onPostMessage:Landroid/graphics/Path;

    add-float/2addr v4, v13

    const/4 v10, 0x0

    move v7, v4

    move v9, v1

    move v14, v11

    move v11, v1

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 98
    iget-object v5, v0, Lo/setShortcut;->onPostMessage:Landroid/graphics/Path;

    add-float/2addr v12, v13

    const/4 v11, 0x0

    move v6, v12

    move v7, v1

    move v8, v3

    move v9, v4

    move v10, v3

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 99
    iget-object v5, v0, Lo/setShortcut;->onPostMessage:Landroid/graphics/Path;

    const/4 v10, 0x0

    move v6, v3

    move/from16 v7, v21

    move v8, v12

    move v9, v14

    move v11, v14

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_0

    .line 101
    :cond_2
    iget-object v5, v0, Lo/setShortcut;->onPostMessage:Landroid/graphics/Path;

    neg-float v15, v1

    invoke-virtual {v5, v13, v15}, Landroid/graphics/Path;->moveTo(FF)V

    .line 102
    iget-object v5, v0, Lo/setShortcut;->onPostMessage:Landroid/graphics/Path;

    add-float v14, v12, v13

    sub-float v16, v13, v4

    const/4 v11, 0x0

    move v6, v14

    move v7, v15

    move v8, v3

    move/from16 v9, v16

    move v10, v3

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 103
    iget-object v5, v0, Lo/setShortcut;->onPostMessage:Landroid/graphics/Path;

    add-float/2addr v4, v13

    const/4 v10, 0x0

    move v6, v3

    move v7, v4

    move v8, v14

    move v9, v1

    move v11, v1

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 104
    iget-object v5, v0, Lo/setShortcut;->onPostMessage:Landroid/graphics/Path;

    sub-float v17, v13, v12

    neg-float v3, v3

    const/4 v11, 0x0

    move/from16 v6, v17

    move v7, v1

    move v8, v3

    move v9, v4

    move v10, v3

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 105
    iget-object v14, v0, Lo/setShortcut;->onPostMessage:Landroid/graphics/Path;

    const/16 v19, 0x0

    move v1, v15

    move v15, v3

    move/from16 v18, v1

    move/from16 v20, v1

    invoke-virtual/range {v14 .. v20}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 108
    :goto_0
    iget-object v1, v0, Lo/setShortcut;->onNavigationEvent:Lo/isOverflowMenuShowPending;

    invoke-virtual {v1}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/PointF;

    .line 109
    iget-object v3, v0, Lo/setShortcut;->onPostMessage:Landroid/graphics/Path;

    iget v4, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v3, v4, v1}, Landroid/graphics/Path;->offset(FF)V

    .line 111
    iget-object v1, v0, Lo/setShortcut;->onPostMessage:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 113
    iget-object v1, v0, Lo/setShortcut;->asInterface:Lo/MediaBrowserCompat$MediaBrowserImplApi21$7;

    iget-object v3, v0, Lo/setShortcut;->onPostMessage:Landroid/graphics/Path;

    invoke-virtual {v1, v3}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$7;->ICustomTabsCallback(Landroid/graphics/Path;)V

    .line 115
    iput-boolean v2, v0, Lo/setShortcut;->asBinder:Z

    .line 116
    iget-object v1, v0, Lo/setShortcut;->onPostMessage:Landroid/graphics/Path;

    return-object v1
.end method

.method public final onNavigationEvent()Ljava/lang/String;
    .locals 1

    .line 70
    iget-object v0, p0, Lo/setShortcut;->onMessageChannelReady:Ljava/lang/String;

    return-object v0
.end method

.method public final onPostMessage(Lo/ActionBarContainer;ILjava/util/List;Lo/ActionBarContainer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ActionBarContainer;",
            "I",
            "Ljava/util/List<",
            "Lo/ActionBarContainer;",
            ">;",
            "Lo/ActionBarContainer;",
            ")V"
        }
    .end annotation

    .line 121
    invoke-static {p1, p2, p3, p4, p0}, Lo/onContentScrollStopped;->onPostMessage(Lo/ActionBarContainer;ILjava/util/List;Lo/ActionBarContainer;Lo/onAnimationCancel;)V

    return-void
.end method
