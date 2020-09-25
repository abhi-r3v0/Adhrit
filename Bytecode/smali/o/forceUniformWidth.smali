.class public final Lo/forceUniformWidth;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source ""

# interfaces
.implements Lo/getDataModel;


# instance fields
.field private ICustomTabsCallback:I

.field private asBinder:Ljava/lang/Integer;

.field private asInterface:I

.field private extraCallback:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field private onMessageChannelReady:I

.field private onNavigationEvent:Z

.field private onPostMessage:Z

.field private onRelationshipValidationResult:I

.field private onTransact:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .locals 2

    .line 38
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lo/forceUniformWidth;->asBinder:Ljava/lang/Integer;

    const/4 v1, 0x0

    .line 25
    iput v1, p0, Lo/forceUniformWidth;->asInterface:I

    .line 30
    iput-object v0, p0, Lo/forceUniformWidth;->onTransact:Ljava/lang/Integer;

    .line 36
    iput v1, p0, Lo/forceUniformWidth;->onRelationshipValidationResult:I

    .line 39
    iput-object p1, p0, Lo/forceUniformWidth;->extraCallback:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    return-void
.end method

.method static synthetic extraCallback(Lo/forceUniformWidth;)Z
    .locals 1

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lo/forceUniformWidth;->onPostMessage:Z

    return v0
.end method

.method static synthetic onPostMessage(Lo/forceUniformWidth;)Landroidx/recyclerview/widget/RecyclerView$LayoutManager;
    .locals 0

    .line 6
    iget-object p0, p0, Lo/forceUniformWidth;->extraCallback:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    return-object p0
.end method


# virtual methods
.method public final ICustomTabsCallback()I
    .locals 1

    .line 63
    iget v0, p0, Lo/forceUniformWidth;->ICustomTabsCallback:I

    return v0
.end method

.method public final ICustomTabsCallback(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 95
    iget-object v0, p0, Lo/forceUniformWidth;->extraCallback:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    new-instance v1, Lo/forceUniformWidth$2;

    invoke-direct {v1, p0, p1}, Lo/forceUniformWidth$2;-><init>(Lo/forceUniformWidth;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final extraCallback()I
    .locals 1

    .line 54
    iget v0, p0, Lo/forceUniformWidth;->onMessageChannelReady:I

    return v0
.end method

.method public final onItemRangeRemoved(II)V
    .locals 0

    .line 124
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;->onItemRangeRemoved(II)V

    const/4 p1, 0x1

    .line 128
    iput-boolean p1, p0, Lo/forceUniformWidth;->onPostMessage:Z

    .line 130
    iget p1, p0, Lo/forceUniformWidth;->asInterface:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lo/forceUniformWidth;->asBinder:Ljava/lang/Integer;

    .line 131
    iget p1, p0, Lo/forceUniformWidth;->onRelationshipValidationResult:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lo/forceUniformWidth;->onTransact:Ljava/lang/Integer;

    return-void
.end method

.method public final onMessageChannelReady(II)V
    .locals 1

    .line 1049
    iget-boolean v0, p0, Lo/forceUniformWidth;->onPostMessage:Z

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lo/forceUniformWidth;->asBinder:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1058
    iput p1, p0, Lo/forceUniformWidth;->onMessageChannelReady:I

    .line 85
    iget-object p1, p0, Lo/forceUniformWidth;->onTransact:Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1077
    iput p1, p0, Lo/forceUniformWidth;->ICustomTabsCallback:I

    return-void

    .line 2058
    :cond_0
    iput p1, p0, Lo/forceUniformWidth;->onMessageChannelReady:I

    .line 2077
    iput p2, p0, Lo/forceUniformWidth;->ICustomTabsCallback:I

    return-void
.end method

.method public final onMessageChannelReady()Z
    .locals 1

    .line 68
    iget-boolean v0, p0, Lo/forceUniformWidth;->onNavigationEvent:Z

    return v0
.end method

.method public final onPostMessage()V
    .locals 1

    .line 44
    iget-object v0, p0, Lo/forceUniformWidth;->extraCallback:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getWidth()I

    move-result v0

    iput v0, p0, Lo/forceUniformWidth;->asInterface:I

    .line 45
    iget-object v0, p0, Lo/forceUniformWidth;->extraCallback:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getHeight()I

    move-result v0

    iput v0, p0, Lo/forceUniformWidth;->onRelationshipValidationResult:I

    return-void
.end method

.method public final onPostMessage(Z)V
    .locals 0

    .line 73
    iput-boolean p1, p0, Lo/forceUniformWidth;->onNavigationEvent:Z

    return-void
.end method
