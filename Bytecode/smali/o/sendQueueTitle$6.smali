.class final Lo/sendQueueTitle$6;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/sendQueueTitle;->onNavigationEvent(Landroid/view/ViewGroup;Lo/MediaSessionCompat$ResultReceiverWrapper;Lo/MediaSessionCompat$ResultReceiverWrapper;)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic ICustomTabsCallback:I

.field private ICustomTabsCallback$Stub:Z

.field final synthetic asBinder:Lo/sendQueueTitle;

.field final synthetic extraCallback:I

.field final synthetic onMessageChannelReady:Landroid/graphics/Rect;

.field final synthetic onNavigationEvent:Landroid/view/View;

.field final synthetic onPostMessage:I

.field final synthetic onRelationshipValidationResult:I


# direct methods
.method constructor <init>(Lo/sendQueueTitle;Landroid/view/View;Landroid/graphics/Rect;IIII)V
    .locals 0

    .line 370
    iput-object p1, p0, Lo/sendQueueTitle$6;->asBinder:Lo/sendQueueTitle;

    iput-object p2, p0, Lo/sendQueueTitle$6;->onNavigationEvent:Landroid/view/View;

    iput-object p3, p0, Lo/sendQueueTitle$6;->onMessageChannelReady:Landroid/graphics/Rect;

    iput p4, p0, Lo/sendQueueTitle$6;->ICustomTabsCallback:I

    iput p5, p0, Lo/sendQueueTitle$6;->extraCallback:I

    iput p6, p0, Lo/sendQueueTitle$6;->onPostMessage:I

    iput p7, p0, Lo/sendQueueTitle$6;->onRelationshipValidationResult:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    const/4 p1, 0x1

    .line 375
    iput-boolean p1, p0, Lo/sendQueueTitle$6;->ICustomTabsCallback$Stub:Z

    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 380
    iget-boolean p1, p0, Lo/sendQueueTitle$6;->ICustomTabsCallback$Stub:Z

    if-nez p1, :cond_0

    .line 381
    iget-object p1, p0, Lo/sendQueueTitle$6;->onNavigationEvent:Landroid/view/View;

    iget-object v0, p0, Lo/sendQueueTitle$6;->onMessageChannelReady:Landroid/graphics/Rect;

    invoke-static {p1, v0}, Lo/unregisterCallbackListener;->ICustomTabsCallback(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 382
    iget-object p1, p0, Lo/sendQueueTitle$6;->onNavigationEvent:Landroid/view/View;

    iget v0, p0, Lo/sendQueueTitle$6;->ICustomTabsCallback:I

    iget v1, p0, Lo/sendQueueTitle$6;->extraCallback:I

    iget v2, p0, Lo/sendQueueTitle$6;->onPostMessage:I

    iget v3, p0, Lo/sendQueueTitle$6;->onRelationshipValidationResult:I

    invoke-static {p1, v0, v1, v2, v3}, Lo/equals;->extraCallback(Landroid/view/View;IIII)V

    :cond_0
    return-void
.end method
