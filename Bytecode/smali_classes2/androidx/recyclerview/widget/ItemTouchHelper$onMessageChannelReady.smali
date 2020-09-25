.class Landroidx/recyclerview/widget/ItemTouchHelper$onMessageChannelReady;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/ItemTouchHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "onMessageChannelReady"
.end annotation


# instance fields
.field final ICustomTabsCallback$Stub:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field ICustomTabsCallback$Stub$Proxy:F

.field ICustomTabsService:F

.field final asBinder:F

.field final asInterface:I

.field final extraCallback:F

.field getInterfaceDescriptor:Z

.field newSession:Z

.field final onPostMessage:F

.field final onRelationshipValidationResult:F

.field final onTransact:Landroid/animation/ValueAnimator;

.field requestPostMessageChannel:F

.field updateVisuals:Z

.field final warmup:I


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIFFFF)V
    .locals 1

    .line 2401
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2394
    iput-boolean v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$onMessageChannelReady;->getInterfaceDescriptor:Z

    .line 2396
    iput-boolean v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$onMessageChannelReady;->updateVisuals:Z

    .line 2402
    iput p3, p0, Landroidx/recyclerview/widget/ItemTouchHelper$onMessageChannelReady;->asInterface:I

    .line 2403
    iput p2, p0, Landroidx/recyclerview/widget/ItemTouchHelper$onMessageChannelReady;->warmup:I

    .line 2404
    iput-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$onMessageChannelReady;->ICustomTabsCallback$Stub:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 2405
    iput p4, p0, Landroidx/recyclerview/widget/ItemTouchHelper$onMessageChannelReady;->onPostMessage:F

    .line 2406
    iput p5, p0, Landroidx/recyclerview/widget/ItemTouchHelper$onMessageChannelReady;->extraCallback:F

    .line 2407
    iput p6, p0, Landroidx/recyclerview/widget/ItemTouchHelper$onMessageChannelReady;->asBinder:F

    .line 2408
    iput p7, p0, Landroidx/recyclerview/widget/ItemTouchHelper$onMessageChannelReady;->onRelationshipValidationResult:F

    const/4 p2, 0x2

    new-array p2, p2, [F

    .line 2409
    fill-array-data p2, :array_0

    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p2

    iput-object p2, p0, Landroidx/recyclerview/widget/ItemTouchHelper$onMessageChannelReady;->onTransact:Landroid/animation/ValueAnimator;

    .line 2410
    new-instance p3, Landroidx/recyclerview/widget/ItemTouchHelper$onMessageChannelReady$3;

    invoke-direct {p3, p0}, Landroidx/recyclerview/widget/ItemTouchHelper$onMessageChannelReady$3;-><init>(Landroidx/recyclerview/widget/ItemTouchHelper$onMessageChannelReady;)V

    invoke-virtual {p2, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 2417
    iget-object p2, p0, Landroidx/recyclerview/widget/ItemTouchHelper$onMessageChannelReady;->onTransact:Landroid/animation/ValueAnimator;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/animation/ValueAnimator;->setTarget(Ljava/lang/Object;)V

    .line 2418
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$onMessageChannelReady;->onTransact:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    const/4 p1, 0x0

    .line 3436
    iput p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$onMessageChannelReady;->requestPostMessageChannel:F

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/high16 p1, 0x3f800000    # 1.0f

    .line 4436
    iput p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$onMessageChannelReady;->requestPostMessageChannel:F

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 2463
    iget-boolean p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$onMessageChannelReady;->updateVisuals:Z

    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 2464
    iget-object p1, p0, Landroidx/recyclerview/widget/ItemTouchHelper$onMessageChannelReady;->ICustomTabsCallback$Stub:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->setIsRecyclable(Z)V

    .line 2466
    :cond_0
    iput-boolean v0, p0, Landroidx/recyclerview/widget/ItemTouchHelper$onMessageChannelReady;->updateVisuals:Z

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
