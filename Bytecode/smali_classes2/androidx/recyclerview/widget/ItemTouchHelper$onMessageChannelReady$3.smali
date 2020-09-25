.class final Landroidx/recyclerview/widget/ItemTouchHelper$onMessageChannelReady$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/recyclerview/widget/ItemTouchHelper$onMessageChannelReady;-><init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIFFFF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:Landroidx/recyclerview/widget/ItemTouchHelper$onMessageChannelReady;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/ItemTouchHelper$onMessageChannelReady;)V
    .locals 0

    .line 2411
    iput-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$onMessageChannelReady$3;->ICustomTabsCallback:Landroidx/recyclerview/widget/ItemTouchHelper$onMessageChannelReady;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 2414
    iget-object v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$onMessageChannelReady$3;->ICustomTabsCallback:Landroidx/recyclerview/widget/ItemTouchHelper$onMessageChannelReady;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 3436
    iput p1, v0, Landroidx/recyclerview/widget/ItemTouchHelper$onMessageChannelReady;->requestPostMessageChannel:F

    return-void
.end method
