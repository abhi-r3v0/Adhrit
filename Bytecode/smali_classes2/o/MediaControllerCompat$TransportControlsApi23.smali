.class public Lo/MediaControllerCompat$TransportControlsApi23;
.super Landroid/view/View;
.source ""


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, p1, v0}, Lo/MediaControllerCompat$TransportControlsApi23;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, p2, v0}, Lo/MediaControllerCompat$TransportControlsApi23;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 42
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x4

    .line 44
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method private static onPostMessage(II)I
    .locals 2

    .line 84
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 85
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move p0, p1

    goto :goto_0

    .line 92
    :cond_1
    invoke-static {p0, p1}, Ljava/lang/Math;->min(II)I

    move-result p0

    :goto_0
    return p0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 108
    invoke-virtual {p0}, Lo/MediaControllerCompat$TransportControlsApi23;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lo/MediaControllerCompat$TransportControlsApi23;->onPostMessage(II)I

    move-result p1

    .line 109
    invoke-virtual {p0}, Lo/MediaControllerCompat$TransportControlsApi23;->getSuggestedMinimumHeight()I

    move-result v0

    invoke-static {v0, p2}, Lo/MediaControllerCompat$TransportControlsApi23;->onPostMessage(II)I

    move-result p2

    .line 107
    invoke-virtual {p0, p1, p2}, Lo/MediaControllerCompat$TransportControlsApi23;->setMeasuredDimension(II)V

    return-void
.end method
