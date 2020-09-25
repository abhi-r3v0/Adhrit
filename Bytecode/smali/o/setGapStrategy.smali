.class public Lo/setGapStrategy;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source ""


# annotations
.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0016\u0018\u00002\u00020\u0001B+\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0006\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0002\u0010\u0008J(\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0013\u001a\u00020\u0014H\u0016R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/dreamplug/utils/list/MarginItemDecorator;",
        "Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;",
        "orientation",
        "",
        "spanCount",
        "spacing",
        "Lcom/dreamplug/utils/list/Space;",
        "edgeSpace",
        "(IILcom/dreamplug/utils/list/Space;Lcom/dreamplug/utils/list/Space;)V",
        "noSeparateEdge",
        "",
        "getItemOffsets",
        "",
        "outRect",
        "Landroid/graphics/Rect;",
        "view",
        "Landroid/view/View;",
        "parent",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "state",
        "Landroidx/recyclerview/widget/RecyclerView$State;",
        "utils_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private final ICustomTabsCallback:I

.field private final extraCallback:I

.field private final onMessageChannelReady:Lo/getGapStrategy;

.field private final onNavigationEvent:Z

.field private final onPostMessage:Lo/getGapStrategy;


# direct methods
.method public constructor <init>(IILo/getGapStrategy;Lo/getGapStrategy;)V
    .locals 1

    const-string/jumbo v0, "spacing"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "edgeSpace"

    invoke-static {p4, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    iput p1, p0, Lo/setGapStrategy;->extraCallback:I

    iput p2, p0, Lo/setGapStrategy;->ICustomTabsCallback:I

    iput-object p3, p0, Lo/setGapStrategy;->onMessageChannelReady:Lo/getGapStrategy;

    iput-object p4, p0, Lo/setGapStrategy;->onPostMessage:Lo/getGapStrategy;

    .line 19
    invoke-static {p3, p4}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lo/setGapStrategy;->onNavigationEvent:Z

    return-void
.end method

.method public synthetic constructor <init>(IILo/getGapStrategy;Lo/getGapStrategy;I)V
    .locals 2

    and-int/lit8 v0, p5, 0x1

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    and-int/lit8 v0, p5, 0x2

    if-eqz v0, :cond_1

    const/4 p2, 0x1

    :cond_1
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_2

    move-object p4, p3

    .line 17
    :cond_2
    invoke-direct {p0, p1, p2, p3, p4}, Lo/setGapStrategy;-><init>(IILo/getGapStrategy;Lo/getGapStrategy;)V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 3

    const-string v0, "outRect"

    invoke-static {p1, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "view"

    invoke-static {p2, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p3, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "state"

    invoke-static {p4, v0}, Lo/access$3000;->onNavigationEvent(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p2

    .line 23
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object p3

    if-eqz p3, :cond_0

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 24
    :goto_0
    iget p4, p0, Lo/setGapStrategy;->ICustomTabsCallback:I

    rem-int v0, p2, p4

    .line 25
    iget-boolean v1, p0, Lo/setGapStrategy;->onNavigationEvent:Z

    if-eqz v1, :cond_1

    .line 26
    iget-object p2, p0, Lo/setGapStrategy;->onMessageChannelReady:Lo/getGapStrategy;

    .line 1096
    iget p2, p2, Lo/getGapStrategy;->ICustomTabsCallback:I

    .line 26
    iput p2, p1, Landroid/graphics/Rect;->top:I

    .line 27
    iget-object p2, p0, Lo/setGapStrategy;->onMessageChannelReady:Lo/getGapStrategy;

    .line 2096
    iget p2, p2, Lo/getGapStrategy;->extraCallback:I

    .line 27
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 28
    iget-object p2, p0, Lo/setGapStrategy;->onMessageChannelReady:Lo/getGapStrategy;

    .line 3096
    iget p2, p2, Lo/getGapStrategy;->onNavigationEvent:I

    .line 28
    iput p2, p1, Landroid/graphics/Rect;->left:I

    goto/16 :goto_9

    .line 30
    :cond_1
    iget v1, p0, Lo/setGapStrategy;->extraCallback:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    if-ge p2, p4, :cond_2

    .line 33
    iget-object p4, p0, Lo/setGapStrategy;->onPostMessage:Lo/getGapStrategy;

    .line 5096
    iget p4, p4, Lo/getGapStrategy;->ICustomTabsCallback:I

    .line 33
    iput p4, p1, Landroid/graphics/Rect;->top:I

    goto :goto_1

    .line 35
    :cond_2
    iget-object p4, p0, Lo/setGapStrategy;->onMessageChannelReady:Lo/getGapStrategy;

    .line 6096
    iget p4, p4, Lo/getGapStrategy;->ICustomTabsCallback:I

    .line 35
    iput p4, p1, Landroid/graphics/Rect;->top:I

    :goto_1
    if-nez v0, :cond_3

    .line 40
    iget-object p4, p0, Lo/setGapStrategy;->onPostMessage:Lo/getGapStrategy;

    .line 7096
    iget p4, p4, Lo/getGapStrategy;->onNavigationEvent:I

    .line 40
    iput p4, p1, Landroid/graphics/Rect;->left:I

    goto :goto_2

    .line 42
    :cond_3
    iget-object p4, p0, Lo/setGapStrategy;->onMessageChannelReady:Lo/getGapStrategy;

    .line 8096
    iget p4, p4, Lo/getGapStrategy;->onNavigationEvent:I

    .line 42
    iput p4, p1, Landroid/graphics/Rect;->left:I

    .line 45
    :goto_2
    iget p4, p0, Lo/setGapStrategy;->ICustomTabsCallback:I

    sub-int/2addr p4, v2

    if-ne v0, p4, :cond_4

    .line 47
    iget-object p4, p0, Lo/setGapStrategy;->onPostMessage:Lo/getGapStrategy;

    .line 9096
    iget p4, p4, Lo/getGapStrategy;->onMessageChannelReady:I

    .line 47
    iput p4, p1, Landroid/graphics/Rect;->right:I

    goto :goto_3

    .line 49
    :cond_4
    iget-object p4, p0, Lo/setGapStrategy;->onMessageChannelReady:Lo/getGapStrategy;

    .line 10096
    iget p4, p4, Lo/getGapStrategy;->onMessageChannelReady:I

    .line 49
    iput p4, p1, Landroid/graphics/Rect;->right:I

    .line 52
    :goto_3
    iget p4, p0, Lo/setGapStrategy;->ICustomTabsCallback:I

    rem-int v0, p3, p4

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    move p4, v0

    :goto_4
    sub-int/2addr p3, p2

    if-gt p3, p4, :cond_6

    .line 57
    iget-object p2, p0, Lo/setGapStrategy;->onPostMessage:Lo/getGapStrategy;

    .line 11096
    iget p2, p2, Lo/getGapStrategy;->extraCallback:I

    .line 57
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    return-void

    .line 59
    :cond_6
    iget-object p2, p0, Lo/setGapStrategy;->onMessageChannelReady:Lo/getGapStrategy;

    .line 12096
    iget p2, p2, Lo/getGapStrategy;->extraCallback:I

    .line 59
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    return-void

    :cond_7
    if-ge p2, p4, :cond_8

    .line 64
    iget-object p4, p0, Lo/setGapStrategy;->onPostMessage:Lo/getGapStrategy;

    .line 13096
    iget p4, p4, Lo/getGapStrategy;->onNavigationEvent:I

    .line 64
    iput p4, p1, Landroid/graphics/Rect;->left:I

    goto :goto_5

    .line 66
    :cond_8
    iget-object p4, p0, Lo/setGapStrategy;->onMessageChannelReady:Lo/getGapStrategy;

    .line 14096
    iget p4, p4, Lo/getGapStrategy;->onNavigationEvent:I

    .line 66
    iput p4, p1, Landroid/graphics/Rect;->left:I

    :goto_5
    if-nez v0, :cond_9

    .line 71
    iget-object p4, p0, Lo/setGapStrategy;->onPostMessage:Lo/getGapStrategy;

    .line 15096
    iget p4, p4, Lo/getGapStrategy;->ICustomTabsCallback:I

    .line 71
    iput p4, p1, Landroid/graphics/Rect;->top:I

    goto :goto_6

    .line 73
    :cond_9
    iget-object p4, p0, Lo/setGapStrategy;->onMessageChannelReady:Lo/getGapStrategy;

    .line 16096
    iget p4, p4, Lo/getGapStrategy;->ICustomTabsCallback:I

    .line 73
    iput p4, p1, Landroid/graphics/Rect;->top:I

    .line 76
    :goto_6
    iget p4, p0, Lo/setGapStrategy;->ICustomTabsCallback:I

    sub-int/2addr p4, v2

    if-ne v0, p4, :cond_a

    .line 78
    iget-object p4, p0, Lo/setGapStrategy;->onPostMessage:Lo/getGapStrategy;

    .line 17096
    iget p4, p4, Lo/getGapStrategy;->extraCallback:I

    .line 78
    iput p4, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_7

    .line 80
    :cond_a
    iget-object p4, p0, Lo/setGapStrategy;->onMessageChannelReady:Lo/getGapStrategy;

    .line 18096
    iget p4, p4, Lo/getGapStrategy;->extraCallback:I

    .line 80
    iput p4, p1, Landroid/graphics/Rect;->bottom:I

    .line 83
    :goto_7
    iget p4, p0, Lo/setGapStrategy;->ICustomTabsCallback:I

    rem-int v0, p3, p4

    if-nez v0, :cond_b

    goto :goto_8

    :cond_b
    move p4, v0

    :goto_8
    sub-int/2addr p3, p2

    if-gt p3, p4, :cond_c

    .line 88
    iget-object p2, p0, Lo/setGapStrategy;->onPostMessage:Lo/getGapStrategy;

    .line 19096
    iget p2, p2, Lo/getGapStrategy;->onMessageChannelReady:I

    .line 88
    iput p2, p1, Landroid/graphics/Rect;->right:I

    return-void

    .line 90
    :cond_c
    :goto_9
    iget-object p2, p0, Lo/setGapStrategy;->onMessageChannelReady:Lo/getGapStrategy;

    .line 20096
    iget p2, p2, Lo/getGapStrategy;->onMessageChannelReady:I

    .line 90
    iput p2, p1, Landroid/graphics/Rect;->right:I

    return-void
.end method
