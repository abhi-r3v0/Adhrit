.class final Landroidx/recyclerview/widget/DefaultItemAnimator$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/widget/DefaultItemAnimator;->runPendingAnimations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic onNavigationEvent:Landroidx/recyclerview/widget/DefaultItemAnimator;

.field final synthetic onPostMessage:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/DefaultItemAnimator;Ljava/util/ArrayList;)V
    .locals 0

    .line 121
    iput-object p1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$2;->onNavigationEvent:Landroidx/recyclerview/widget/DefaultItemAnimator;

    iput-object p2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$2;->onPostMessage:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 124
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$2;->onPostMessage:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/DefaultItemAnimator$onNavigationEvent;

    .line 125
    iget-object v2, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$2;->onNavigationEvent:Landroidx/recyclerview/widget/DefaultItemAnimator;

    iget-object v3, v1, Landroidx/recyclerview/widget/DefaultItemAnimator$onNavigationEvent;->extraCallback:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget v4, v1, Landroidx/recyclerview/widget/DefaultItemAnimator$onNavigationEvent;->onMessageChannelReady:I

    iget v5, v1, Landroidx/recyclerview/widget/DefaultItemAnimator$onNavigationEvent;->ICustomTabsCallback:I

    iget v6, v1, Landroidx/recyclerview/widget/DefaultItemAnimator$onNavigationEvent;->onPostMessage:I

    iget v7, v1, Landroidx/recyclerview/widget/DefaultItemAnimator$onNavigationEvent;->onNavigationEvent:I

    invoke-virtual/range {v2 .. v7}, Landroidx/recyclerview/widget/DefaultItemAnimator;->animateMoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V

    goto :goto_0

    .line 128
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$2;->onPostMessage:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/AbstractCollection;->clear()V

    .line 129
    iget-object v0, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$2;->onNavigationEvent:Landroidx/recyclerview/widget/DefaultItemAnimator;

    iget-object v0, v0, Landroidx/recyclerview/widget/DefaultItemAnimator;->mMovesList:Ljava/util/ArrayList;

    iget-object v1, p0, Landroidx/recyclerview/widget/DefaultItemAnimator$2;->onPostMessage:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/AbstractCollection;->remove(Ljava/lang/Object;)Z

    return-void
.end method
