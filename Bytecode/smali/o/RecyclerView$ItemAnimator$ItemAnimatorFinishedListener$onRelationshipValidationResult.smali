.class public final Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$onRelationshipValidationResult;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0008\u0010\u0002\u001a\u00020\u0003H\u0016\u00a8\u0006\u0004"
    }
    d2 = {
        "com/dreamplug/fabrik/ui/max/MaxLandingFragment$layoutListener$1",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "onGlobalLayout",
        "",
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
.field private synthetic extraCallback:Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;


# direct methods
.method constructor <init>(Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 55
    iput-object p1, p0, Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$onRelationshipValidationResult;->extraCallback:Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 5

    .line 57
    iget-object v0, p0, Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$onRelationshipValidationResult;->extraCallback:Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->recyclerView:I

    invoke-virtual {v0, v1}, Lo/getReenterTransition;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/startActivity;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iget-object v2, p0, Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$onRelationshipValidationResult;->extraCallback:Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

    sget v3, Lo/getSwitchMinWidth$onPostMessage;->container:I

    invoke-virtual {v2, v3}, Lo/getReenterTransition;->extraCallback(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :cond_1
    invoke-static {v0, v1}, Lo/access$3000;->onMessageChannelReady(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_4

    .line 58
    iget-object v0, p0, Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$onRelationshipValidationResult;->extraCallback:Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->container:I

    invoke-virtual {v0, v1}, Lo/getReenterTransition;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_2

    move-object v1, p0

    check-cast v1, Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 59
    :cond_2
    iget-object v0, p0, Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$onRelationshipValidationResult;->extraCallback:Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

    sget v1, Lo/getSwitchMinWidth$onPostMessage;->recyclerView:I

    invoke-virtual {v0, v1}, Lo/getReenterTransition;->extraCallback(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lo/startActivity;

    if-eqz v0, :cond_4

    check-cast v0, Landroid/view/View;

    .line 258
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_3

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    check-cast v1, Landroid/view/ViewGroup$LayoutParams;

    .line 259
    move-object v2, v1

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 60
    iget-object v3, p0, Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener$onRelationshipValidationResult;->extraCallback:Lo/RecyclerView$ItemAnimator$ItemAnimatorFinishedListener;

    sget v4, Lo/getSwitchMinWidth$onPostMessage;->container:I

    invoke-virtual {v3, v4}, Lo/getReenterTransition;->extraCallback(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    const-string v4, "container"

    invoke-static {v3, v4}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 260
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 258
    :cond_3
    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type android.widget.FrameLayout.LayoutParams"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    return-void
.end method
