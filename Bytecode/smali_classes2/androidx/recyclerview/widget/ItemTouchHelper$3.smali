.class final Landroidx/recyclerview/widget/ItemTouchHelper$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/widget/ItemTouchHelper;->postDispatchSwipe(Landroidx/recyclerview/widget/ItemTouchHelper$onMessageChannelReady;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Landroidx/recyclerview/widget/ItemTouchHelper$onMessageChannelReady;

.field final synthetic extraCallback:I

.field final synthetic onPostMessage:Landroidx/recyclerview/widget/ItemTouchHelper;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/ItemTouchHelper;Landroidx/recyclerview/widget/ItemTouchHelper$onMessageChannelReady;I)V
    .locals 0

    .line 700
    iput-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$3;->onPostMessage:Landroidx/recyclerview/widget/ItemTouchHelper;

    iput-object p2, p0, Landroidx/recyclerview/widget/ItemTouchHelper$3;->ICustomTabsCallback:Landroidx/recyclerview/widget/ItemTouchHelper$onMessageChannelReady;

    iput p3, p0, Landroidx/recyclerview/widget/ItemTouchHelper$3;->extraCallback:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 703
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$3;->onPostMessage:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$3;->onPostMessage:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$3;->ICustomTabsCallback:Landroidx/recyclerview/widget/ItemTouchHelper$onMessageChannelReady;

    iget-boolean v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper$onMessageChannelReady;->getInterfaceDescriptor:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$3;->ICustomTabsCallback:Landroidx/recyclerview/widget/ItemTouchHelper$onMessageChannelReady;

    iget-object v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper$onMessageChannelReady;->ICustomTabsCallback$Stub:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 705
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    .line 706
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$3;->onPostMessage:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 710
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->isRunning(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$3;->onPostMessage:Landroidx/recyclerview/widget/ItemTouchHelper;

    .line 711
    invoke-virtual {v0}, Landroidx/recyclerview/widget/ItemTouchHelper;->hasRunningRecoverAnim()Z

    move-result v0

    if-nez v0, :cond_1

    .line 712
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$3;->onPostMessage:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mCallback:Landroidx/recyclerview/widget/ItemTouchHelper$Callback;

    iget-object v1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$3;->ICustomTabsCallback:Landroidx/recyclerview/widget/ItemTouchHelper$onMessageChannelReady;

    iget-object v1, v1, Landroidx/recyclerview/widget/ItemTouchHelper$onMessageChannelReady;->ICustomTabsCallback$Stub:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget v2, p0, Landroidx/recyclerview/widget/ItemTouchHelper$3;->extraCallback:I

    invoke-virtual {v0, v1, v2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void

    .line 714
    :cond_1
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$3;->onPostMessage:Landroidx/recyclerview/widget/ItemTouchHelper;

    iget-object v0, v0, Landroidx/recyclerview/widget/ItemTouchHelper;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method
