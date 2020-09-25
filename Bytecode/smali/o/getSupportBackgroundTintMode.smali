.class abstract Lo/getSupportBackgroundTintMode;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lo/setExpandActivityOverflowButtonDrawable;


# instance fields
.field private ICustomTabsCallback:Landroid/view/View;

.field private ICustomTabsCallback$Stub:Ljava/lang/Integer;

.field private asInterface:Landroid/view/View;

.field private extraCallback:Lo/generateOverflowButtonLayoutParams;

.field private onMessageChannelReady:Landroid/view/View;

.field private onNavigationEvent:Landroid/view/View;

.field onPostMessage:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field private onTransact:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lo/getSupportBackgroundTintMode;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 40
    new-instance v0, Lo/generateOverflowButtonLayoutParams;

    invoke-direct {v0, p1}, Lo/generateOverflowButtonLayoutParams;-><init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iput-object v0, p0, Lo/getSupportBackgroundTintMode;->extraCallback:Lo/generateOverflowButtonLayoutParams;

    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Landroid/view/View;)Z
    .locals 2

    .line 71
    invoke-virtual {p0, p1}, Lo/getSupportBackgroundTintMode;->onMessageChannelReady(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object p1

    .line 1077
    iget v0, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Lo/getSupportBackgroundTintMode;->onMessageChannelReady()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    .line 1078
    invoke-virtual {p0}, Lo/getSupportBackgroundTintMode;->onNavigationEvent()I

    move-result v1

    if-gt v0, v1, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->left:I

    .line 1079
    invoke-virtual {p0}, Lo/getSupportBackgroundTintMode;->ICustomTabsCallback()I

    move-result v1

    if-lt v0, v1, :cond_0

    iget p1, p1, Landroid/graphics/Rect;->right:I

    .line 1080
    invoke-virtual {p0}, Lo/getSupportBackgroundTintMode;->onPostMessage()I

    move-result v0

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final ICustomTabsCallback$Stub()Landroid/view/View;
    .locals 1

    .line 152
    iget-object v0, p0, Lo/getSupportBackgroundTintMode;->onMessageChannelReady:Landroid/view/View;

    return-object v0
.end method

.method public final asBinder()Ljava/lang/Integer;
    .locals 1

    .line 162
    iget-object v0, p0, Lo/getSupportBackgroundTintMode;->ICustomTabsCallback$Stub:Ljava/lang/Integer;

    return-object v0
.end method

.method public final asInterface()Landroid/view/View;
    .locals 1

    .line 157
    iget-object v0, p0, Lo/getSupportBackgroundTintMode;->asInterface:Landroid/view/View;

    return-object v0
.end method

.method public final extraCallback()V
    .locals 7

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lo/getSupportBackgroundTintMode;->onNavigationEvent:Landroid/view/View;

    .line 89
    iput-object v0, p0, Lo/getSupportBackgroundTintMode;->ICustomTabsCallback:Landroid/view/View;

    .line 90
    iput-object v0, p0, Lo/getSupportBackgroundTintMode;->onMessageChannelReady:Landroid/view/View;

    .line 91
    iput-object v0, p0, Lo/getSupportBackgroundTintMode;->asInterface:Landroid/view/View;

    const/4 v0, -0x1

    .line 92
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lo/getSupportBackgroundTintMode;->ICustomTabsCallback$Stub:Ljava/lang/Integer;

    .line 93
    iput-object v1, p0, Lo/getSupportBackgroundTintMode;->onTransact:Ljava/lang/Integer;

    .line 97
    iget-object v1, p0, Lo/getSupportBackgroundTintMode;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildCount()I

    move-result v1

    if-lez v1, :cond_8

    .line 98
    iget-object v1, p0, Lo/getSupportBackgroundTintMode;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 99
    iput-object v1, p0, Lo/getSupportBackgroundTintMode;->onNavigationEvent:Landroid/view/View;

    .line 100
    iput-object v1, p0, Lo/getSupportBackgroundTintMode;->ICustomTabsCallback:Landroid/view/View;

    .line 101
    iput-object v1, p0, Lo/getSupportBackgroundTintMode;->onMessageChannelReady:Landroid/view/View;

    .line 102
    iput-object v1, p0, Lo/getSupportBackgroundTintMode;->asInterface:Landroid/view/View;

    .line 104
    iget-object v1, p0, Lo/getSupportBackgroundTintMode;->extraCallback:Lo/generateOverflowButtonLayoutParams;

    invoke-virtual {v1}, Lo/generateOverflowButtonLayoutParams;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 105
    iget-object v3, p0, Lo/getSupportBackgroundTintMode;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPosition(Landroid/view/View;)I

    move-result v3

    .line 2066
    invoke-virtual {p0, v2}, Lo/getSupportBackgroundTintMode;->onMessageChannelReady(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {p0, v4}, Lo/getSupportBackgroundTintMode;->extraCallback(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 109
    iget-object v4, p0, Lo/getSupportBackgroundTintMode;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v4

    iget-object v5, p0, Lo/getSupportBackgroundTintMode;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v6, p0, Lo/getSupportBackgroundTintMode;->onNavigationEvent:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 110
    iput-object v2, p0, Lo/getSupportBackgroundTintMode;->onNavigationEvent:Landroid/view/View;

    .line 113
    :cond_1
    iget-object v4, p0, Lo/getSupportBackgroundTintMode;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v4

    iget-object v5, p0, Lo/getSupportBackgroundTintMode;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v6, p0, Lo/getSupportBackgroundTintMode;->ICustomTabsCallback:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result v5

    if-le v4, v5, :cond_2

    .line 114
    iput-object v2, p0, Lo/getSupportBackgroundTintMode;->ICustomTabsCallback:Landroid/view/View;

    .line 117
    :cond_2
    iget-object v4, p0, Lo/getSupportBackgroundTintMode;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v4

    iget-object v5, p0, Lo/getSupportBackgroundTintMode;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v6, p0, Lo/getSupportBackgroundTintMode;->onMessageChannelReady:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v5

    if-ge v4, v5, :cond_3

    .line 118
    iput-object v2, p0, Lo/getSupportBackgroundTintMode;->onMessageChannelReady:Landroid/view/View;

    .line 121
    :cond_3
    iget-object v4, p0, Lo/getSupportBackgroundTintMode;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v4

    iget-object v5, p0, Lo/getSupportBackgroundTintMode;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    iget-object v6, p0, Lo/getSupportBackgroundTintMode;->asInterface:Landroid/view/View;

    invoke-virtual {v5, v6}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v5

    if-le v4, v5, :cond_4

    .line 122
    iput-object v2, p0, Lo/getSupportBackgroundTintMode;->asInterface:Landroid/view/View;

    .line 125
    :cond_4
    iget-object v2, p0, Lo/getSupportBackgroundTintMode;->ICustomTabsCallback$Stub:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-eq v2, v0, :cond_5

    iget-object v2, p0, Lo/getSupportBackgroundTintMode;->ICustomTabsCallback$Stub:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-ge v3, v2, :cond_6

    .line 126
    :cond_5
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lo/getSupportBackgroundTintMode;->ICustomTabsCallback$Stub:Ljava/lang/Integer;

    .line 129
    :cond_6
    iget-object v2, p0, Lo/getSupportBackgroundTintMode;->onTransact:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-eq v2, v0, :cond_7

    iget-object v2, p0, Lo/getSupportBackgroundTintMode;->onTransact:Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    if-le v3, v2, :cond_0

    .line 130
    :cond_7
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, p0, Lo/getSupportBackgroundTintMode;->onTransact:Ljava/lang/Integer;

    goto/16 :goto_0

    :cond_8
    return-void
.end method

.method public final extraCallback(Landroid/graphics/Rect;)Z
    .locals 5

    .line 60
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 1045
    new-instance p1, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lo/getSupportBackgroundTintMode;->ICustomTabsCallback()I

    move-result v1

    invoke-virtual {p0}, Lo/getSupportBackgroundTintMode;->onMessageChannelReady()I

    move-result v2

    invoke-virtual {p0}, Lo/getSupportBackgroundTintMode;->onPostMessage()I

    move-result v3

    invoke-virtual {p0}, Lo/getSupportBackgroundTintMode;->onNavigationEvent()I

    move-result v4

    invoke-direct {p1, v1, v2, v3, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 61
    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result p1

    return p1
.end method

.method public final getInterfaceDescriptor()Ljava/lang/Integer;
    .locals 1

    .line 167
    iget-object v0, p0, Lo/getSupportBackgroundTintMode;->onTransact:Ljava/lang/Integer;

    return-object v0
.end method

.method public final onMessageChannelReady(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4

    .line 50
    iget-object v0, p0, Lo/getSupportBackgroundTintMode;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedLeft(Landroid/view/View;)I

    move-result v0

    .line 51
    iget-object v1, p0, Lo/getSupportBackgroundTintMode;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v1, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedTop(Landroid/view/View;)I

    move-result v1

    .line 52
    iget-object v2, p0, Lo/getSupportBackgroundTintMode;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v2, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedRight(Landroid/view/View;)I

    move-result v2

    .line 53
    iget-object v3, p0, Lo/getSupportBackgroundTintMode;->onPostMessage:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v3, p1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getDecoratedBottom(Landroid/view/View;)I

    move-result p1

    .line 54
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3, v0, v1, v2, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v3
.end method

.method public final onRelationshipValidationResult()Landroid/view/View;
    .locals 1

    .line 142
    iget-object v0, p0, Lo/getSupportBackgroundTintMode;->onNavigationEvent:Landroid/view/View;

    return-object v0
.end method

.method public final onTransact()Landroid/view/View;
    .locals 1

    .line 147
    iget-object v0, p0, Lo/getSupportBackgroundTintMode;->ICustomTabsCallback:Landroid/view/View;

    return-object v0
.end method
