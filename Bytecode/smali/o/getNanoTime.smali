.class public final Lo/getNanoTime;
.super Lo/dispatchChildDetached;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u00a2\u0006\u0002\u0010\u0007J0\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u0005H\u0016J\u0018\u0010\u001a\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u0016H\u0002J\u0018\u0010\u001d\u001a\u00020\u00052\u0006\u0010\u001b\u001a\u00020\u00052\u0006\u0010\u001c\u001a\u00020\u0016H\u0002J\u0008\u0010\u001e\u001a\u00020\u0005H\u0002J\u0008\u0010\u001f\u001a\u00020\u0005H\u0002J\u0008\u0010 \u001a\u00020\u0005H\u0002J\u0008\u0010!\u001a\u00020\u0011H\u0016R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/DefaultLayout;",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayout;",
        "scrollOrientation",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$ScrollOrientation;",
        "visibleCount",
        "",
        "perItemOffset",
        "(Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$ScrollOrientation;II)V",
        "mHasMeasureItemSize",
        "",
        "mHeight",
        "mHeightSpace",
        "mScrollOffset",
        "mStartMargin",
        "mWidth",
        "mWidthSpace",
        "doLayout",
        "",
        "stackLayoutManager",
        "Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager;",
        "scrollOffset",
        "firstMovePercent",
        "",
        "itemView",
        "Landroid/view/View;",
        "position",
        "getAfterFirstVisibleItemLeft",
        "visiblePosition",
        "movePercent",
        "getAfterFirstVisibleItemTop",
        "getFirstVisibleItemLeft",
        "getFirstVisibleItemTop",
        "getStartMargin",
        "requestLayout",
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
.field private ICustomTabsCallback:I

.field private ICustomTabsCallback$Stub:I

.field private asBinder:I

.field private extraCallback:I

.field private onMessageChannelReady:Z

.field private onNavigationEvent:I

.field private onPostMessage:I


# direct methods
.method public constructor <init>(Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;II)V
    .locals 1

    const-string/jumbo v0, "scrollOrientation"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, p1, p2, p3}, Lo/dispatchChildDetached;-><init>(Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;II)V

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback()V
    .locals 1

    const/4 v0, 0x0

    .line 45
    iput-boolean v0, p0, Lo/getNanoTime;->onMessageChannelReady:Z

    return-void
.end method

.method public final extraCallback(Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager;IFLandroid/view/View;I)V
    .locals 6

    const-string/jumbo v0, "stackLayoutManager"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p4, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    iput v0, p0, Lo/getNanoTime;->onPostMessage:I

    .line 20
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    iput v0, p0, Lo/getNanoTime;->asBinder:I

    .line 21
    iput p2, p0, Lo/getNanoTime;->ICustomTabsCallback$Stub:I

    .line 22
    iget-boolean p2, p0, Lo/getNanoTime;->onMessageChannelReady:Z

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-nez p2, :cond_1

    .line 23
    iget p2, p0, Lo/getNanoTime;->onPostMessage:I

    invoke-virtual {p1, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result v2

    sub-int/2addr p2, v2

    iput p2, p0, Lo/getNanoTime;->ICustomTabsCallback:I

    .line 24
    iget p2, p0, Lo/getNanoTime;->asBinder:I

    invoke-virtual {p1, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result v2

    sub-int/2addr p2, v2

    iput p2, p0, Lo/getNanoTime;->onNavigationEvent:I

    .line 1093
    invoke-virtual {p0}, Lo/getNanoTime;->extraCallback()Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;

    move-result-object p2

    sget-object v2, Lo/dispatchPendingImportantForAccessibilityChanges;->onPostMessage:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v2, p2

    if-eq p2, v0, :cond_0

    if-eq p2, v1, :cond_0

    .line 1095
    iget p2, p0, Lo/getNanoTime;->onNavigationEvent:I

    div-int/2addr p2, v1

    goto :goto_0

    .line 1094
    :cond_0
    iget p2, p0, Lo/getNanoTime;->ICustomTabsCallback:I

    div-int/2addr p2, v1

    .line 25
    :goto_0
    iput p2, p0, Lo/getNanoTime;->extraCallback:I

    .line 26
    iput-boolean v0, p0, Lo/getNanoTime;->onMessageChannelReady:Z

    :cond_1
    if-nez p5, :cond_8

    .line 2049
    invoke-virtual {p0}, Lo/getNanoTime;->extraCallback()Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;

    move-result-object p2

    sget-object p3, Lo/dispatchPendingImportantForAccessibilityChanges;->extraCallback:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, p3, p2

    if-eq p2, v0, :cond_4

    if-eq p2, v1, :cond_2

    .line 2058
    iget p2, p0, Lo/getNanoTime;->ICustomTabsCallback:I

    div-int/2addr p2, v1

    goto :goto_1

    .line 2052
    :cond_2
    iget p2, p0, Lo/getNanoTime;->ICustomTabsCallback$Stub:I

    iget p3, p0, Lo/getNanoTime;->onPostMessage:I

    rem-int p5, p2, p3

    if-nez p5, :cond_3

    .line 2053
    iget p2, p0, Lo/getNanoTime;->extraCallback:I

    goto :goto_1

    .line 2055
    :cond_3
    iget p5, p0, Lo/getNanoTime;->extraCallback:I

    rem-int/2addr p2, p3

    sub-int/2addr p3, p2

    add-int p2, p5, p3

    goto :goto_1

    .line 2050
    :cond_4
    iget p2, p0, Lo/getNanoTime;->extraCallback:I

    iget p3, p0, Lo/getNanoTime;->ICustomTabsCallback$Stub:I

    iget p5, p0, Lo/getNanoTime;->onPostMessage:I

    rem-int/2addr p3, p5

    sub-int/2addr p2, p3

    .line 2063
    :goto_1
    invoke-virtual {p0}, Lo/getNanoTime;->extraCallback()Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;

    move-result-object p3

    sget-object p5, Lo/dispatchPendingImportantForAccessibilityChanges;->onMessageChannelReady:[I

    invoke-virtual {p3}, Ljava/lang/Enum;->ordinal()I

    move-result p3

    aget p3, p5, p3

    if-eq p3, v0, :cond_7

    if-eq p3, v1, :cond_5

    .line 2072
    iget p3, p0, Lo/getNanoTime;->onNavigationEvent:I

    div-int/2addr p3, v1

    goto/16 :goto_5

    .line 2066
    :cond_5
    iget p3, p0, Lo/getNanoTime;->ICustomTabsCallback$Stub:I

    iget p5, p0, Lo/getNanoTime;->asBinder:I

    rem-int v0, p3, p5

    if-nez v0, :cond_6

    .line 2067
    iget p3, p0, Lo/getNanoTime;->extraCallback:I

    goto/16 :goto_5

    .line 2069
    :cond_6
    iget v0, p0, Lo/getNanoTime;->extraCallback:I

    rem-int/2addr p3, p5

    sub-int/2addr p5, p3

    add-int p3, v0, p5

    goto :goto_5

    .line 2064
    :cond_7
    iget p3, p0, Lo/getNanoTime;->extraCallback:I

    iget p5, p0, Lo/getNanoTime;->ICustomTabsCallback$Stub:I

    iget v0, p0, Lo/getNanoTime;->asBinder:I

    rem-int/2addr p5, v0

    sub-int/2addr p3, p5

    goto :goto_5

    .line 2077
    :cond_8
    invoke-virtual {p0}, Lo/getNanoTime;->extraCallback()Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;

    move-result-object p2

    sget-object v2, Lo/dispatchPendingImportantForAccessibilityChanges;->onNavigationEvent:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v2, p2

    if-eq p2, v0, :cond_a

    if-eq p2, v1, :cond_9

    .line 2080
    iget p2, p0, Lo/getNanoTime;->ICustomTabsCallback:I

    div-int/2addr p2, v1

    goto :goto_3

    .line 2079
    :cond_9
    iget p2, p0, Lo/getNanoTime;->extraCallback:I

    int-to-float p2, p2

    invoke-virtual {p0}, Lo/getNanoTime;->onMessageChannelReady()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, p5

    sub-float/2addr v3, p3

    mul-float v2, v2, v3

    sub-float/2addr p2, v2

    goto :goto_2

    .line 2078
    :cond_a
    iget p2, p0, Lo/getNanoTime;->extraCallback:I

    int-to-float p2, p2

    invoke-virtual {p0}, Lo/getNanoTime;->onMessageChannelReady()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, p5

    sub-float/2addr v3, p3

    mul-float v2, v2, v3

    add-float/2addr p2, v2

    :goto_2
    float-to-int p2, p2

    .line 2085
    :goto_3
    invoke-virtual {p0}, Lo/getNanoTime;->extraCallback()Lcom/dreamplug/fabrik/ui/lifestyle/win/ticket/layoutmanager/StackLayoutManager$extraCallback;

    move-result-object v2

    sget-object v3, Lo/dispatchPendingImportantForAccessibilityChanges;->ICustomTabsCallback:[I

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v2, v3, v2

    if-eq v2, v0, :cond_c

    if-eq v2, v1, :cond_b

    .line 2088
    iget p3, p0, Lo/getNanoTime;->onNavigationEvent:I

    div-int/2addr p3, v1

    goto :goto_5

    .line 2087
    :cond_b
    iget v0, p0, Lo/getNanoTime;->extraCallback:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lo/getNanoTime;->onMessageChannelReady()I

    move-result v1

    int-to-float v1, v1

    int-to-float p5, p5

    sub-float/2addr p5, p3

    mul-float v1, v1, p5

    sub-float/2addr v0, v1

    goto :goto_4

    .line 2086
    :cond_c
    iget v0, p0, Lo/getNanoTime;->extraCallback:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lo/getNanoTime;->onMessageChannelReady()I

    move-result v1

    int-to-float v1, v1

    int-to-float p5, p5

    sub-float/2addr p5, p3

    mul-float v1, v1, p5

    add-float/2addr v0, v1

    :goto_4
    float-to-int p3, v0

    :goto_5
    move v2, p2

    move v3, p3

    .line 38
    invoke-virtual {p1, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredWidth(Landroid/view/View;)I

    move-result p2

    add-int v4, v2, p2

    .line 39
    invoke-virtual {p1, p4}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedMeasuredHeight(Landroid/view/View;)I

    move-result p2

    add-int v5, v3, p2

    move-object v0, p1

    move-object v1, p4

    .line 41
    invoke-virtual/range {v0 .. v5}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->layoutDecorated(Landroid/view/View;IIII)V

    return-void
.end method
