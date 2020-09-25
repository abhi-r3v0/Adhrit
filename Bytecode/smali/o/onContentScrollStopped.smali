.class public final Lo/onContentScrollStopped;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static onMessageChannelReady:Landroid/graphics/PointF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    sput-object v0, Lo/onContentScrollStopped;->onMessageChannelReady:Landroid/graphics/PointF;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static ICustomTabsCallback(FF)I
    .locals 3

    float-to-int p0, p0

    float-to-int p1, p1

    .line 4071
    div-int v0, p0, p1

    xor-int v1, p0, p1

    if-ltz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4073
    :goto_0
    rem-int v2, p0, p1

    if-nez v1, :cond_1

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    mul-int p1, p1, v0

    sub-int/2addr p0, p1

    return p0
.end method

.method public static ICustomTabsCallback(I)I
    .locals 1

    const/16 v0, 0xff

    .line 81
    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    const/4 v0, 0x0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    return p0
.end method

.method public static ICustomTabsCallback(Lo/MediaDescriptionCompat;Landroid/graphics/Path;)V
    .locals 11

    .line 22
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    .line 1036
    iget-object v0, p0, Lo/MediaDescriptionCompat;->onMessageChannelReady:Landroid/graphics/PointF;

    .line 24
    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v2, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 25
    sget-object v1, Lo/onContentScrollStopped;->onMessageChannelReady:Landroid/graphics/PointF;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v2, v0}, Landroid/graphics/PointF;->set(FF)V

    const/4 v0, 0x0

    .line 1044
    :goto_0
    iget-object v1, p0, Lo/MediaDescriptionCompat;->onPostMessage:Ljava/util/List;

    .line 26
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2044
    iget-object v1, p0, Lo/MediaDescriptionCompat;->onPostMessage:Ljava/util/List;

    .line 27
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo/isCurrent;

    .line 3031
    iget-object v2, v1, Lo/isCurrent;->onMessageChannelReady:Landroid/graphics/PointF;

    .line 3039
    iget-object v3, v1, Lo/isCurrent;->onPostMessage:Landroid/graphics/PointF;

    .line 3047
    iget-object v1, v1, Lo/isCurrent;->onNavigationEvent:Landroid/graphics/PointF;

    .line 32
    sget-object v4, Lo/onContentScrollStopped;->onMessageChannelReady:Landroid/graphics/PointF;

    invoke-virtual {v2, v4}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v1}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 39
    iget v2, v1, Landroid/graphics/PointF;->x:F

    iget v3, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    .line 41
    :cond_0
    iget v5, v2, Landroid/graphics/PointF;->x:F

    iget v6, v2, Landroid/graphics/PointF;->y:F

    iget v7, v3, Landroid/graphics/PointF;->x:F

    iget v8, v3, Landroid/graphics/PointF;->y:F

    iget v9, v1, Landroid/graphics/PointF;->x:F

    iget v10, v1, Landroid/graphics/PointF;->y:F

    move-object v4, p1

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 43
    :goto_1
    sget-object v2, Lo/onContentScrollStopped;->onMessageChannelReady:Landroid/graphics/PointF;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3, v1}, Landroid/graphics/PointF;->set(FF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4040
    :cond_1
    iget-boolean p0, p0, Lo/MediaDescriptionCompat;->extraCallback:Z

    if-eqz p0, :cond_2

    .line 46
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    :cond_2
    return-void
.end method

.method public static extraCallback(Landroid/graphics/PointF;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 3

    .line 18
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p0, Landroid/graphics/PointF;->x:F

    iget v2, p1, Landroid/graphics/PointF;->x:F

    add-float/2addr v1, v2

    iget p0, p0, Landroid/graphics/PointF;->y:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    add-float/2addr p0, p1

    invoke-direct {v0, v1, p0}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public static extraCallback(FFF)Z
    .locals 0

    cmpl-float p1, p0, p1

    if-ltz p1, :cond_0

    cmpg-float p0, p0, p2

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static onMessageChannelReady(FFF)F
    .locals 0

    sub-float/2addr p1, p0

    mul-float p2, p2, p1

    add-float/2addr p0, p2

    return p0
.end method

.method public static onPostMessage(DDD)D
    .locals 0

    sub-double/2addr p2, p0

    mul-double p4, p4, p2

    add-double/2addr p0, p4

    return-wide p0
.end method

.method public static onPostMessage(FFF)F
    .locals 0

    .line 85
    invoke-static {p2, p0}, Ljava/lang/Math;->min(FF)F

    move-result p0

    invoke-static {p1, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public static onPostMessage(IIF)I
    .locals 1

    int-to-float v0, p0

    sub-int/2addr p1, p0

    int-to-float p0, p1

    mul-float p2, p2, p0

    add-float/2addr v0, p2

    float-to-int p0, v0

    return p0
.end method

.method public static onPostMessage(Lo/ActionBarContainer;ILjava/util/List;Lo/ActionBarContainer;Lo/onAnimationCancel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo/ActionBarContainer;",
            "I",
            "Ljava/util/List<",
            "Lo/ActionBarContainer;",
            ">;",
            "Lo/ActionBarContainer;",
            "Lo/onAnimationCancel;",
            ")V"
        }
    .end annotation

    .line 102
    invoke-interface {p4}, Lo/onAnimationCancel;->onNavigationEvent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lo/ActionBarContainer;->onNavigationEvent(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 103
    invoke-interface {p4}, Lo/onAnimationCancel;->onNavigationEvent()Ljava/lang/String;

    move-result-object p0

    .line 4078
    new-instance p1, Lo/ActionBarContainer;

    invoke-direct {p1, p3}, Lo/ActionBarContainer;-><init>(Lo/ActionBarContainer;)V

    .line 4079
    iget-object p3, p1, Lo/ActionBarContainer;->ICustomTabsCallback:Ljava/util/List;

    invoke-interface {p3, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4088
    new-instance p0, Lo/ActionBarContainer;

    invoke-direct {p0, p1}, Lo/ActionBarContainer;-><init>(Lo/ActionBarContainer;)V

    .line 4089
    iput-object p4, p0, Lo/ActionBarContainer;->onPostMessage:Lo/onAnimationCancel;

    .line 104
    invoke-interface {p2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
