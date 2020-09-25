.class public final Lo/clearNestedRecyclerViewIfNotNested;
.super Lo/setChildImportantForAccessibilityInternal;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\r\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0006J \u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\t2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u0005H\u0016J\u0006\u0010\u0011\u001a\u00020\tJ\u0006\u0010\u0012\u001a\u00020\u0005J\u0006\u0010\u0013\u001a\u00020\tJ \u0010\u0014\u001a\u00020\u000c2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u000f2\u0006\u0010\u0016\u001a\u00020\tH\u0002J\u0018\u0010\u0017\u001a\u00020\u000c2\u0006\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u000fH\u0002J\u000e\u0010\u0018\u001a\u00020\u000c2\u0006\u0010\u0019\u001a\u00020\tJ\u000e\u0010\u001a\u001a\u00020\u000c2\u0006\u0010\u0016\u001a\u00020\u0005J\u000e\u0010\u001b\u001a\u00020\u000c2\u0006\u0010\u0019\u001a\u00020\tR\u000e\u0010\u0007\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/DefaultAnimation;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackAnimation;",
        "scrollOrientation",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$ScrollOrientation;",
        "visibleCount",
        "",
        "(Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$ScrollOrientation;I)V",
        "mOutRotation",
        "mOutScale",
        "",
        "mScale",
        "doAnimation",
        "",
        "firstMovePercent",
        "itemView",
        "Landroid/view/View;",
        "position",
        "getItemScaleRate",
        "getOutRotation",
        "getOutScale",
        "rotationFirstVisibleItem",
        "view",
        "rotation",
        "setItemPivotXY",
        "setItemScaleRate",
        "scale",
        "setOutRotation",
        "setOutScale",
        "app_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private extraCallback:F

.field private onMessageChannelReady:F

.field private onPostMessage:I


# direct methods
.method public constructor <init>(Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;I)V
    .locals 1

    const-string/jumbo v0, "scrollOrientation"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, p1, p2}, Lo/setChildImportantForAccessibilityInternal;-><init>(Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;I)V

    const p2, 0x3f733333    # 0.95f

    .line 8
    iput p2, p0, Lo/clearNestedRecyclerViewIfNotNested;->extraCallback:F

    const p2, 0x3f4ccccd    # 0.8f

    .line 9
    iput p2, p0, Lo/clearNestedRecyclerViewIfNotNested;->onMessageChannelReady:F

    .line 13
    sget-object p2, Lo/dispatchChildAttached;->extraCallback:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p2, p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_0

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0xa

    :goto_0
    iput p1, p0, Lo/clearNestedRecyclerViewIfNotNested;->onPostMessage:I

    return-void
.end method


# virtual methods
.method public final onMessageChannelReady(FLandroid/view/View;I)V
    .locals 8

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    if-nez p3, :cond_0

    .line 54
    iget p3, p0, Lo/clearNestedRecyclerViewIfNotNested;->onMessageChannelReady:F

    sub-float p3, v1, p3

    mul-float p3, p3, p1

    sub-float p3, v1, p3

    .line 55
    iget v2, p0, Lo/clearNestedRecyclerViewIfNotNested;->onPostMessage:I

    int-to-float v2, v2

    mul-float v2, v2, p1

    goto :goto_1

    .line 57
    :cond_0
    iget v2, p0, Lo/clearNestedRecyclerViewIfNotNested;->extraCallback:F

    float-to-double v2, v2

    int-to-double v4, p3

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    .line 58
    iget v3, p0, Lo/clearNestedRecyclerViewIfNotNested;->extraCallback:F

    float-to-double v3, v3

    add-int/lit8 v5, p3, -0x1

    int-to-double v5, v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    sub-float/2addr v3, v2

    mul-float v3, v3, p1

    add-float/2addr v2, v3

    .line 60
    invoke-virtual {p0}, Lo/clearNestedRecyclerViewIfNotNested;->onMessageChannelReady()I

    move-result v3

    if-ne p3, v3, :cond_1

    goto :goto_0

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_0
    move v1, p1

    move p3, v2

    const/4 v2, 0x0

    .line 66
    :goto_1
    invoke-virtual {p0}, Lo/clearNestedRecyclerViewIfNotNested;->onPostMessage()Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;

    move-result-object p1

    .line 1074
    sget-object v3, Lo/dispatchChildAttached;->onMessageChannelReady:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v3, p1

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x1

    const/high16 v7, 0x40000000    # 2.0f

    if-eq p1, v6, :cond_5

    if-eq p1, v5, :cond_4

    if-eq p1, v4, :cond_3

    if-eq p1, v3, :cond_2

    goto :goto_2

    .line 1088
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v7

    invoke-virtual {p2, p1}, Landroid/view/View;->setPivotX(F)V

    .line 1089
    invoke-virtual {p2, v0}, Landroid/view/View;->setPivotY(F)V

    goto :goto_2

    .line 1084
    :cond_3
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v7

    invoke-virtual {p2, p1}, Landroid/view/View;->setPivotX(F)V

    .line 1085
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setPivotY(F)V

    goto :goto_2

    .line 1080
    :cond_4
    invoke-virtual {p2, v0}, Landroid/view/View;->setPivotX(F)V

    .line 1081
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v7

    invoke-virtual {p2, p1}, Landroid/view/View;->setPivotY(F)V

    goto :goto_2

    .line 1076
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setPivotX(F)V

    .line 1077
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v7

    invoke-virtual {p2, p1}, Landroid/view/View;->setPivotY(F)V

    .line 67
    :goto_2
    invoke-virtual {p0}, Lo/clearNestedRecyclerViewIfNotNested;->onPostMessage()Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;

    move-result-object p1

    .line 1095
    sget-object v0, Lo/dispatchChildAttached;->onNavigationEvent:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    if-eq p1, v6, :cond_9

    if-eq p1, v5, :cond_8

    if-eq p1, v4, :cond_7

    if-eq p1, v3, :cond_6

    goto :goto_3

    .line 1099
    :cond_6
    invoke-virtual {p2, v2}, Landroid/view/View;->setRotationX(F)V

    goto :goto_3

    :cond_7
    neg-float p1, v2

    .line 1098
    invoke-virtual {p2, p1}, Landroid/view/View;->setRotationX(F)V

    goto :goto_3

    :cond_8
    neg-float p1, v2

    .line 1097
    invoke-virtual {p2, p1}, Landroid/view/View;->setRotationY(F)V

    goto :goto_3

    .line 1096
    :cond_9
    invoke-virtual {p2, v2}, Landroid/view/View;->setRotationY(F)V

    .line 68
    :goto_3
    invoke-virtual {p2, p3}, Landroid/view/View;->setScaleX(F)V

    .line 69
    invoke-virtual {p2, p3}, Landroid/view/View;->setScaleY(F)V

    .line 70
    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
