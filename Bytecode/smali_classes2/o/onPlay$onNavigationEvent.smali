.class Lo/onPlay$onNavigationEvent;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onPlay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "onNavigationEvent"
.end annotation


# instance fields
.field private ICustomTabsCallback:I

.field private onMessageChannelReady:Z

.field private onNavigationEvent:Landroid/graphics/drawable/Drawable;

.field final synthetic onPostMessage:Lo/onPlay;


# direct methods
.method constructor <init>(Lo/onPlay;)V
    .locals 0

    .line 784
    iput-object p1, p0, Lo/onPlay$onNavigationEvent;->onPostMessage:Lo/onPlay;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/4 p1, 0x1

    .line 782
    iput-boolean p1, p0, Lo/onPlay$onNavigationEvent;->onMessageChannelReady:Z

    return-void
.end method

.method private onNavigationEvent(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)Z
    .locals 4

    .line 813
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v0

    .line 814
    instance-of v1, v0, Lo/onPlayFromMediaId;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    check-cast v0, Lo/onPlayFromMediaId;

    .line 1105
    iget-boolean v0, v0, Lo/onPlayFromMediaId;->onPostMessage:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    return v2

    .line 819
    :cond_1
    iget-boolean v0, p0, Lo/onPlay$onNavigationEvent;->onMessageChannelReady:Z

    .line 820
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    .line 821
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    sub-int/2addr v1, v3

    if-ge p1, v1, :cond_3

    add-int/2addr p1, v3

    .line 822
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 823
    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p1

    .line 824
    instance-of p2, p1, Lo/onPlayFromMediaId;

    if-eqz p2, :cond_2

    check-cast p1, Lo/onPlayFromMediaId;

    .line 2081
    iget-boolean p1, p1, Lo/onPlayFromMediaId;->onNavigationEvent:Z

    if-eqz p1, :cond_2

    const/4 v2, 0x1

    :cond_2
    move v0, v2

    :cond_3
    return v0
.end method


# virtual methods
.method public extraCallback(Z)V
    .locals 0

    .line 846
    iput-boolean p1, p0, Lo/onPlay$onNavigationEvent;->onMessageChannelReady:Z

    return-void
.end method

.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 807
    invoke-direct {p0, p2, p3}, Lo/onPlay$onNavigationEvent;->onNavigationEvent(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 808
    iget p2, p0, Lo/onPlay$onNavigationEvent;->ICustomTabsCallback:I

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    :cond_0
    return-void
.end method

.method public onDrawOver(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 6

    .line 789
    iget-object p3, p0, Lo/onPlay$onNavigationEvent;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    if-nez p3, :cond_0

    return-void

    .line 792
    :cond_0
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p3

    .line 793
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, p3, :cond_2

    .line 795
    invoke-virtual {p2, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 796
    invoke-direct {p0, v3, p2}, Lo/onPlay$onNavigationEvent;->onNavigationEvent(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 797
    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    add-int/2addr v4, v3

    .line 798
    iget-object v3, p0, Lo/onPlay$onNavigationEvent;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    iget v5, p0, Lo/onPlay$onNavigationEvent;->ICustomTabsCallback:I

    add-int/2addr v5, v4

    invoke-virtual {v3, v1, v4, v0, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 799
    iget-object v3, p0, Lo/onPlay$onNavigationEvent;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onMessageChannelReady(I)V
    .locals 0

    .line 841
    iput p1, p0, Lo/onPlay$onNavigationEvent;->ICustomTabsCallback:I

    .line 842
    iget-object p1, p0, Lo/onPlay$onNavigationEvent;->onPostMessage:Lo/onPlay;

    iget-object p1, p1, Lo/onPlay;->ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    return-void
.end method

.method public onNavigationEvent(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 832
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lo/onPlay$onNavigationEvent;->ICustomTabsCallback:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 834
    iput v0, p0, Lo/onPlay$onNavigationEvent;->ICustomTabsCallback:I

    .line 836
    :goto_0
    iput-object p1, p0, Lo/onPlay$onNavigationEvent;->onNavigationEvent:Landroid/graphics/drawable/Drawable;

    .line 837
    iget-object p1, p0, Lo/onPlay$onNavigationEvent;->onPostMessage:Lo/onPlay;

    iget-object p1, p1, Lo/onPlay;->ICustomTabsCallback:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->invalidateItemDecorations()V

    return-void
.end method
