.class public final Lo/animateToVisibility;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/isOverflowMenuShowPending$onMessageChannelReady;
.implements Lo/onAnimationCancel;
.implements Lo/setForceShowIcon;


# instance fields
.field private final ICustomTabsCallback:Landroid/graphics/Path;

.field private ICustomTabsCallback$Stub:Z

.field private final asBinder:Lo/isOverflowMenuShowPending;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isOverflowMenuShowPending<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final asInterface:Lo/isOverflowMenuShowPending;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isOverflowMenuShowPending<",
            "*",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation
.end field

.field private final extraCallback:Landroid/graphics/RectF;

.field private final onMessageChannelReady:Lo/createCheckedTextView;

.field private final onNavigationEvent:Ljava/lang/String;

.field private final onPostMessage:Z

.field private onRelationshipValidationResult:Lo/MediaBrowserCompat$MediaBrowserImplApi21$7;

.field private final onTransact:Lo/isOverflowMenuShowPending;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo/isOverflowMenuShowPending<",
            "*",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lo/createCheckedTextView;Lo/setOverlayMode;Lo/getMediaId;)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lo/animateToVisibility;->ICustomTabsCallback:Landroid/graphics/Path;

    .line 25
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lo/animateToVisibility;->extraCallback:Landroid/graphics/RectF;

    .line 34
    new-instance v0, Lo/MediaBrowserCompat$MediaBrowserImplApi21$7;

    invoke-direct {v0}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$7;-><init>()V

    iput-object v0, p0, Lo/animateToVisibility;->onRelationshipValidationResult:Lo/MediaBrowserCompat$MediaBrowserImplApi21$7;

    .line 1030
    iget-object v0, p3, Lo/getMediaId;->ICustomTabsCallback:Ljava/lang/String;

    .line 38
    iput-object v0, p0, Lo/animateToVisibility;->onNavigationEvent:Ljava/lang/String;

    .line 1046
    iget-boolean v0, p3, Lo/getMediaId;->onNavigationEvent:Z

    .line 39
    iput-boolean v0, p0, Lo/animateToVisibility;->onPostMessage:Z

    .line 40
    iput-object p1, p0, Lo/animateToVisibility;->onMessageChannelReady:Lo/createCheckedTextView;

    .line 2042
    iget-object p1, p3, Lo/getMediaId;->extraCallback:Lo/onLayout;

    .line 41
    invoke-interface {p1}, Lo/onLayout;->onPostMessage()Lo/isOverflowMenuShowPending;

    move-result-object p1

    iput-object p1, p0, Lo/animateToVisibility;->asInterface:Lo/isOverflowMenuShowPending;

    .line 3038
    iget-object p1, p3, Lo/getMediaId;->onPostMessage:Lo/startActionModeForChild;

    .line 4017
    new-instance v0, Lo/isOverflowReserved;

    iget-object p1, p1, Lo/setCustomView;->onPostMessage:Ljava/util/List;

    invoke-direct {v0, p1}, Lo/isOverflowReserved;-><init>(Ljava/util/List;)V

    .line 42
    iput-object v0, p0, Lo/animateToVisibility;->asBinder:Lo/isOverflowMenuShowPending;

    .line 4034
    iget-object p1, p3, Lo/getMediaId;->onMessageChannelReady:Lo/setTransitioning;

    .line 5020
    new-instance p3, Lo/isOverflowMenuShowing;

    iget-object p1, p1, Lo/setCustomView;->onPostMessage:Ljava/util/List;

    invoke-direct {p3, p1}, Lo/isOverflowMenuShowing;-><init>(Ljava/util/List;)V

    .line 43
    iput-object p3, p0, Lo/animateToVisibility;->onTransact:Lo/isOverflowMenuShowPending;

    .line 45
    iget-object p1, p0, Lo/animateToVisibility;->asInterface:Lo/isOverflowMenuShowPending;

    if-eqz p1, :cond_0

    .line 5173
    iget-object p3, p2, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    :cond_0
    iget-object p1, p0, Lo/animateToVisibility;->asBinder:Lo/isOverflowMenuShowPending;

    if-eqz p1, :cond_1

    .line 6173
    iget-object p3, p2, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    :cond_1
    iget-object p1, p0, Lo/animateToVisibility;->onTransact:Lo/isOverflowMenuShowPending;

    if-eqz p1, :cond_2

    .line 7173
    iget-object p2, p2, Lo/setOverlayMode;->asInterface:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    :cond_2
    iget-object p1, p0, Lo/animateToVisibility;->asInterface:Lo/isOverflowMenuShowPending;

    .line 8045
    iget-object p1, p1, Lo/isOverflowMenuShowPending;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object p1, p0, Lo/animateToVisibility;->asBinder:Lo/isOverflowMenuShowPending;

    .line 9045
    iget-object p1, p1, Lo/isOverflowMenuShowPending;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object p1, p0, Lo/animateToVisibility;->onTransact:Lo/isOverflowMenuShowPending;

    .line 10045
    iget-object p1, p1, Lo/isOverflowMenuShowPending;->onMessageChannelReady:Ljava/util/List;

    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 1

    const/4 v0, 0x0

    .line 10065
    iput-boolean v0, p0, Lo/animateToVisibility;->ICustomTabsCallback$Stub:Z

    .line 10066
    iget-object v0, p0, Lo/animateToVisibility;->onMessageChannelReady:Lo/createCheckedTextView;

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

    .line 165
    sget-object v0, Lo/createRatingBar;->asInterface:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_0

    .line 166
    iget-object p1, p0, Lo/animateToVisibility;->asBinder:Lo/isOverflowMenuShowPending;

    invoke-virtual {p1, p2}, Lo/isOverflowMenuShowPending;->ICustomTabsCallback(Lo/onMeasureExactFormat;)V

    return-void

    .line 167
    :cond_0
    sget-object v0, Lo/createRatingBar;->ICustomTabsCallback$Stub:Landroid/graphics/PointF;

    if-ne p1, v0, :cond_1

    .line 168
    iget-object p1, p0, Lo/animateToVisibility;->asInterface:Lo/isOverflowMenuShowPending;

    invoke-virtual {p1, p2}, Lo/isOverflowMenuShowPending;->ICustomTabsCallback(Lo/onMeasureExactFormat;)V

    return-void

    .line 169
    :cond_1
    sget-object v0, Lo/createRatingBar;->onTransact:Ljava/lang/Float;

    if-ne p1, v0, :cond_2

    .line 170
    iget-object p1, p0, Lo/animateToVisibility;->onTransact:Lo/isOverflowMenuShowPending;

    invoke-virtual {p1, p2}, Lo/isOverflowMenuShowPending;->ICustomTabsCallback(Lo/onMeasureExactFormat;)V

    :cond_2
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

    .line 71
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 72
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lo/setPadding;

    .line 73
    instance-of v1, v0, Lo/setupAnimatorToVisibility;

    if-eqz v1, :cond_0

    check-cast v0, Lo/setupAnimatorToVisibility;

    .line 11056
    iget-object v1, v0, Lo/setupAnimatorToVisibility;->onMessageChannelReady:Lo/init$ICustomTabsCallback;

    .line 74
    sget-object v2, Lo/init$ICustomTabsCallback;->onPostMessage:Lo/init$ICustomTabsCallback;

    if-ne v1, v2, :cond_0

    .line 76
    iget-object v1, p0, Lo/animateToVisibility;->onRelationshipValidationResult:Lo/MediaBrowserCompat$MediaBrowserImplApi21$7;

    .line 12014
    iget-object v1, v1, Lo/MediaBrowserCompat$MediaBrowserImplApi21$7;->onPostMessage:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12052
    iget-object v0, v0, Lo/setupAnimatorToVisibility;->onPostMessage:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onMessageChannelReady()Landroid/graphics/Path;
    .locals 15

    .line 84
    iget-boolean v0, p0, Lo/animateToVisibility;->ICustomTabsCallback$Stub:Z

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lo/animateToVisibility;->ICustomTabsCallback:Landroid/graphics/Path;

    return-object v0

    .line 88
    :cond_0
    iget-object v0, p0, Lo/animateToVisibility;->ICustomTabsCallback:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 90
    iget-boolean v0, p0, Lo/animateToVisibility;->onPostMessage:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 91
    iput-boolean v1, p0, Lo/animateToVisibility;->ICustomTabsCallback$Stub:Z

    .line 92
    iget-object v0, p0, Lo/animateToVisibility;->ICustomTabsCallback:Landroid/graphics/Path;

    return-object v0

    .line 95
    :cond_1
    iget-object v0, p0, Lo/animateToVisibility;->asBinder:Lo/isOverflowMenuShowPending;

    invoke-virtual {v0}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    .line 96
    iget v2, v0, Landroid/graphics/PointF;->x:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    .line 97
    iget v0, v0, Landroid/graphics/PointF;->y:F

    div-float/2addr v0, v3

    .line 98
    iget-object v4, p0, Lo/animateToVisibility;->onTransact:Lo/isOverflowMenuShowPending;

    const/4 v5, 0x0

    if-nez v4, :cond_2

    const/4 v4, 0x0

    goto :goto_0

    .line 99
    :cond_2
    check-cast v4, Lo/isOverflowMenuShowing;

    invoke-virtual {v4}, Lo/isOverflowMenuShowing;->asInterface()F

    move-result v4

    .line 100
    :goto_0
    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v6

    cmpl-float v7, v4, v6

    if-lez v7, :cond_3

    move v4, v6

    .line 106
    :cond_3
    iget-object v6, p0, Lo/animateToVisibility;->asInterface:Lo/isOverflowMenuShowPending;

    invoke-virtual {v6}, Lo/isOverflowMenuShowPending;->asBinder()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    .line 108
    iget-object v7, p0, Lo/animateToVisibility;->ICustomTabsCallback:Landroid/graphics/Path;

    iget v8, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v8, v2

    iget v9, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v9, v0

    add-float/2addr v9, v4

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 110
    iget-object v7, p0, Lo/animateToVisibility;->ICustomTabsCallback:Landroid/graphics/Path;

    iget v8, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v8, v2

    iget v9, v6, Landroid/graphics/PointF;->y:F

    add-float/2addr v9, v0

    sub-float/2addr v9, v4

    invoke-virtual {v7, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    const/4 v7, 0x0

    const/high16 v8, 0x42b40000    # 90.0f

    cmpl-float v9, v4, v5

    if-lez v9, :cond_4

    .line 113
    iget-object v10, p0, Lo/animateToVisibility;->extraCallback:Landroid/graphics/RectF;

    iget v11, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v11, v2

    mul-float v12, v4, v3

    sub-float/2addr v11, v12

    iget v13, v6, Landroid/graphics/PointF;->y:F

    add-float/2addr v13, v0

    sub-float/2addr v13, v12

    iget v12, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v12, v2

    iget v14, v6, Landroid/graphics/PointF;->y:F

    add-float/2addr v14, v0

    invoke-virtual {v10, v11, v13, v12, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 117
    iget-object v10, p0, Lo/animateToVisibility;->ICustomTabsCallback:Landroid/graphics/Path;

    iget-object v11, p0, Lo/animateToVisibility;->extraCallback:Landroid/graphics/RectF;

    invoke-virtual {v10, v11, v5, v8, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 120
    :cond_4
    iget-object v5, p0, Lo/animateToVisibility;->ICustomTabsCallback:Landroid/graphics/Path;

    iget v10, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v10, v2

    add-float/2addr v10, v4

    iget v11, v6, Landroid/graphics/PointF;->y:F

    add-float/2addr v11, v0

    invoke-virtual {v5, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    if-lez v9, :cond_5

    .line 123
    iget-object v5, p0, Lo/animateToVisibility;->extraCallback:Landroid/graphics/RectF;

    iget v10, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v10, v2

    iget v11, v6, Landroid/graphics/PointF;->y:F

    add-float/2addr v11, v0

    mul-float v12, v4, v3

    sub-float/2addr v11, v12

    iget v13, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v13, v2

    add-float/2addr v13, v12

    iget v12, v6, Landroid/graphics/PointF;->y:F

    add-float/2addr v12, v0

    invoke-virtual {v5, v10, v11, v13, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 127
    iget-object v5, p0, Lo/animateToVisibility;->ICustomTabsCallback:Landroid/graphics/Path;

    iget-object v10, p0, Lo/animateToVisibility;->extraCallback:Landroid/graphics/RectF;

    invoke-virtual {v5, v10, v8, v8, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 130
    :cond_5
    iget-object v5, p0, Lo/animateToVisibility;->ICustomTabsCallback:Landroid/graphics/Path;

    iget v10, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v10, v2

    iget v11, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v11, v0

    add-float/2addr v11, v4

    invoke-virtual {v5, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    if-lez v9, :cond_6

    .line 133
    iget-object v5, p0, Lo/animateToVisibility;->extraCallback:Landroid/graphics/RectF;

    iget v10, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v10, v2

    iget v11, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v11, v0

    iget v12, v6, Landroid/graphics/PointF;->x:F

    sub-float/2addr v12, v2

    mul-float v13, v4, v3

    add-float/2addr v12, v13

    iget v14, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v14, v0

    add-float/2addr v14, v13

    invoke-virtual {v5, v10, v11, v12, v14}, Landroid/graphics/RectF;->set(FFFF)V

    .line 137
    iget-object v5, p0, Lo/animateToVisibility;->ICustomTabsCallback:Landroid/graphics/Path;

    iget-object v10, p0, Lo/animateToVisibility;->extraCallback:Landroid/graphics/RectF;

    const/high16 v11, 0x43340000    # 180.0f

    invoke-virtual {v5, v10, v11, v8, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 140
    :cond_6
    iget-object v5, p0, Lo/animateToVisibility;->ICustomTabsCallback:Landroid/graphics/Path;

    iget v10, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v10, v2

    sub-float/2addr v10, v4

    iget v11, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v11, v0

    invoke-virtual {v5, v10, v11}, Landroid/graphics/Path;->lineTo(FF)V

    if-lez v9, :cond_7

    .line 143
    iget-object v5, p0, Lo/animateToVisibility;->extraCallback:Landroid/graphics/RectF;

    iget v9, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v9, v2

    mul-float v4, v4, v3

    sub-float/2addr v9, v4

    iget v3, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v3, v0

    iget v10, v6, Landroid/graphics/PointF;->x:F

    add-float/2addr v10, v2

    iget v2, v6, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v0

    add-float/2addr v2, v4

    invoke-virtual {v5, v9, v3, v10, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 147
    iget-object v0, p0, Lo/animateToVisibility;->ICustomTabsCallback:Landroid/graphics/Path;

    iget-object v2, p0, Lo/animateToVisibility;->extraCallback:Landroid/graphics/RectF;

    const/high16 v3, 0x43870000    # 270.0f

    invoke-virtual {v0, v2, v3, v8, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    .line 149
    :cond_7
    iget-object v0, p0, Lo/animateToVisibility;->ICustomTabsCallback:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 151
    iget-object v0, p0, Lo/animateToVisibility;->onRelationshipValidationResult:Lo/MediaBrowserCompat$MediaBrowserImplApi21$7;

    iget-object v2, p0, Lo/animateToVisibility;->ICustomTabsCallback:Landroid/graphics/Path;

    invoke-virtual {v0, v2}, Lo/MediaBrowserCompat$MediaBrowserImplApi21$7;->ICustomTabsCallback(Landroid/graphics/Path;)V

    .line 153
    iput-boolean v1, p0, Lo/animateToVisibility;->ICustomTabsCallback$Stub:Z

    .line 154
    iget-object v0, p0, Lo/animateToVisibility;->ICustomTabsCallback:Landroid/graphics/Path;

    return-object v0
.end method

.method public final onNavigationEvent()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lo/animateToVisibility;->onNavigationEvent:Ljava/lang/String;

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

    .line 160
    invoke-static {p1, p2, p3, p4, p0}, Lo/onContentScrollStopped;->onPostMessage(Lo/ActionBarContainer;ILjava/util/List;Lo/ActionBarContainer;Lo/onAnimationCancel;)V

    return-void
.end method
