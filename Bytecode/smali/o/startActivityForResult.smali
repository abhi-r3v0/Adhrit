.class public final Lo/startActivityForResult;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lo/startActivityForResult$onNavigationEvent;
    }
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001:\u0001\u001dB\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0018\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J\u0018\u0010\r\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u000cH\u0002J\"\u0010\u0011\u001a\u0004\u0018\u00010\u000c2\u0006\u0010\u000e\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0014\u001a\u00020\u0006H\u0002J\u0018\u0010\u0015\u001a\u00020\u000c2\u0006\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0012H\u0002J \u0010\u0017\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u0018\u001a\u00020\u000c2\u0006\u0010\u0019\u001a\u00020\u000cH\u0002J \u0010\u001a\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\n2\u0006\u0010\u000e\u001a\u00020\u00122\u0006\u0010\u001b\u001a\u00020\u001cH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/dreamplug/fabrik/helper/ui/StickHeaderItemDecoration;",
        "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;",
        "mListener",
        "Lcom/dreamplug/fabrik/helper/ui/StickHeaderItemDecoration$StickyHeaderInterface;",
        "(Lcom/dreamplug/fabrik/helper/ui/StickHeaderItemDecoration$StickyHeaderInterface;)V",
        "mStickyHeaderHeight",
        "",
        "drawHeader",
        "",
        "c",
        "Landroid/graphics/Canvas;",
        "header",
        "Landroid/view/View;",
        "fixLayoutSize",
        "parent",
        "Landroid/view/ViewGroup;",
        "view",
        "getChildInContact",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "contactPoint",
        "currentHeaderPos",
        "getHeaderViewForItem",
        "headerPosition",
        "moveHeader",
        "currentHeader",
        "nextHeader",
        "onDrawOver",
        "state",
        "Landroidx/recyclerview/widget/RecyclerView$State;",
        "StickyHeaderInterface",
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
.field private final onMessageChannelReady:Lo/startActivityForResult$onNavigationEvent;

.field private onPostMessage:I


# direct methods
.method public constructor <init>(Lo/startActivityForResult$onNavigationEvent;)V
    .locals 1

    const-string v0, "mListener"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    iput-object p1, p0, Lo/startActivityForResult;->onMessageChannelReady:Lo/startActivityForResult$onNavigationEvent;

    return-void
.end method


# virtual methods
.method public final onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 10

    const-string v0, "c"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "state"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    const/4 p3, 0x0

    .line 14
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 16
    :cond_0
    invoke-virtual {p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    return-void

    .line 21
    :cond_1
    iget-object v1, p0, Lo/startActivityForResult;->onMessageChannelReady:Lo/startActivityForResult$onNavigationEvent;

    invoke-interface {v1, v0}, Lo/startActivityForResult$onNavigationEvent;->onNavigationEvent(I)I

    move-result v0

    .line 1036
    iget-object v1, p0, Lo/startActivityForResult;->onMessageChannelReady:Lo/startActivityForResult$onNavigationEvent;

    invoke-interface {v1, p2}, Lo/startActivityForResult$onNavigationEvent;->onPostMessage(Landroidx/recyclerview/widget/RecyclerView;)Lo/createOrientationHelpers;

    move-result-object v1

    .line 1037
    iget-object v2, p0, Lo/startActivityForResult;->onMessageChannelReady:Lo/startActivityForResult$onNavigationEvent;

    invoke-interface {v2, v1, v0}, Lo/startActivityForResult$onNavigationEvent;->onPostMessage(Lo/createOrientationHelpers;I)V

    .line 1038
    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const-string v2, "holder.itemView"

    invoke-static {v1, v2}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    move-object v2, p2

    check-cast v2, Landroid/view/ViewGroup;

    .line 1095
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1096
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-static {v4, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 1099
    invoke-virtual {v2}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getPaddingRight()I

    move-result v6

    add-int/2addr v5, v6

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {v3, v5, v6}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v3

    .line 1100
    invoke-virtual {v2}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    add-int/2addr v5, v2

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iget v2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v4, v5, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    move-result v2

    .line 1102
    invoke-virtual {v1, v3, v2}, Landroid/view/View;->measure(II)V

    .line 1104
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    iput v2, p0, Lo/startActivityForResult;->onPostMessage:I

    .line 1105
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    invoke-virtual {v1, p3, p3, v2, v3}, Landroid/view/View;->layout(IIII)V

    .line 24
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v2

    const/4 v3, 0x0

    .line 2057
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_5

    .line 2059
    invoke-virtual {p2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    const-string v7, "child"

    if-eq v0, v5, :cond_2

    .line 2063
    iget-object v8, p0, Lo/startActivityForResult;->onMessageChannelReady:Lo/startActivityForResult$onNavigationEvent;

    invoke-virtual {p2, v6}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result v9

    invoke-interface {v8, v9}, Lo/startActivityForResult$onNavigationEvent;->ICustomTabsCallback(I)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 2065
    iget v8, p0, Lo/startActivityForResult;->onPostMessage:I

    invoke-static {v6, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v9

    sub-int/2addr v8, v9

    goto :goto_1

    :cond_2
    const/4 v8, 0x0

    .line 2071
    :goto_1
    invoke-static {v6, v7}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    if-lez v7, :cond_3

    .line 2072
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v7

    add-int/2addr v7, v8

    goto :goto_2

    .line 2074
    :cond_3
    invoke-virtual {v6}, Landroid/view/View;->getBottom()I

    move-result v7

    :goto_2
    if-le v7, v2, :cond_4

    .line 2078
    invoke-virtual {v6}, Landroid/view/View;->getTop()I

    move-result v7

    if-gt v7, v2, :cond_4

    move-object v3, v6

    goto :goto_3

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_5
    :goto_3
    const/4 p3, 0x0

    if-eqz v3, :cond_6

    .line 27
    iget-object v0, p0, Lo/startActivityForResult;->onMessageChannelReady:Lo/startActivityForResult$onNavigationEvent;

    invoke-virtual {p2, v3}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    invoke-interface {v0, p2}, Lo/startActivityForResult$onNavigationEvent;->ICustomTabsCallback(I)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 3049
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3050
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result p2

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    sub-int/2addr p2, v0

    int-to-float p2, p2

    invoke-virtual {p1, p3, p2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3051
    invoke-virtual {v1, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 3052
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    .line 4042
    :cond_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 4043
    invoke-virtual {p1, p3, p3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 4044
    invoke-virtual {v1, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 4045
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
