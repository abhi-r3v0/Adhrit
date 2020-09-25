.class final Lo/fromQueueItemList$extraCallback;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""

# interfaces
.implements Lo/fromQueueItem$onMessageChannelReady;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/fromQueueItemList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "extraCallback"
.end annotation


# instance fields
.field private final ICustomTabsCallback:Landroid/view/View;

.field private ICustomTabsCallback$Stub:F

.field private asBinder:F

.field private final extraCallback:I

.field private final onMessageChannelReady:I

.field private onNavigationEvent:[I

.field private final onPostMessage:Landroid/view/View;

.field private final onRelationshipValidationResult:F

.field private final onTransact:F


# direct methods
.method constructor <init>(Landroid/view/View;Landroid/view/View;IIFF)V
    .locals 0

    .line 99
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 100
    iput-object p1, p0, Lo/fromQueueItemList$extraCallback;->ICustomTabsCallback:Landroid/view/View;

    .line 101
    iput-object p2, p0, Lo/fromQueueItemList$extraCallback;->onPostMessage:Landroid/view/View;

    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    sub-int/2addr p3, p1

    iput p3, p0, Lo/fromQueueItemList$extraCallback;->onMessageChannelReady:I

    .line 103
    iget-object p1, p0, Lo/fromQueueItemList$extraCallback;->ICustomTabsCallback:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    sub-int/2addr p4, p1

    iput p4, p0, Lo/fromQueueItemList$extraCallback;->extraCallback:I

    .line 104
    iput p5, p0, Lo/fromQueueItemList$extraCallback;->onTransact:F

    .line 105
    iput p6, p0, Lo/fromQueueItemList$extraCallback;->onRelationshipValidationResult:F

    .line 106
    iget-object p1, p0, Lo/fromQueueItemList$extraCallback;->onPostMessage:Landroid/view/View;

    sget p2, Lo/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub$extraCallback;->transition_position:I

    invoke-virtual {p1, p2}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    iput-object p1, p0, Lo/fromQueueItemList$extraCallback;->onNavigationEvent:[I

    if-eqz p1, :cond_0

    .line 108
    iget-object p1, p0, Lo/fromQueueItemList$extraCallback;->onPostMessage:Landroid/view/View;

    sget p2, Lo/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub$extraCallback;->transition_position:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final ICustomTabsCallback(Lo/fromQueueItem;)V
    .locals 2

    .line 142
    iget-object v0, p0, Lo/fromQueueItemList$extraCallback;->ICustomTabsCallback:Landroid/view/View;

    iget v1, p0, Lo/fromQueueItemList$extraCallback;->onTransact:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 143
    iget-object v0, p0, Lo/fromQueueItemList$extraCallback;->ICustomTabsCallback:Landroid/view/View;

    iget v1, p0, Lo/fromQueueItemList$extraCallback;->onRelationshipValidationResult:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    .line 144
    invoke-virtual {p1, p0}, Lo/fromQueueItem;->onMessageChannelReady(Lo/fromQueueItem$onMessageChannelReady;)Lo/fromQueueItem;

    return-void
.end method

.method public final extraCallback(Lo/fromQueueItem;)V
    .locals 0

    return-void
.end method

.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3

    .line 114
    iget-object p1, p0, Lo/fromQueueItemList$extraCallback;->onNavigationEvent:[I

    if-nez p1, :cond_0

    const/4 p1, 0x2

    new-array p1, p1, [I

    .line 115
    iput-object p1, p0, Lo/fromQueueItemList$extraCallback;->onNavigationEvent:[I

    .line 117
    :cond_0
    iget-object p1, p0, Lo/fromQueueItemList$extraCallback;->onNavigationEvent:[I

    const/4 v0, 0x0

    iget v1, p0, Lo/fromQueueItemList$extraCallback;->onMessageChannelReady:I

    int-to-float v1, v1

    iget-object v2, p0, Lo/fromQueueItemList$extraCallback;->ICustomTabsCallback:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    aput v1, p1, v0

    .line 118
    iget-object p1, p0, Lo/fromQueueItemList$extraCallback;->onNavigationEvent:[I

    const/4 v0, 0x1

    iget v1, p0, Lo/fromQueueItemList$extraCallback;->extraCallback:I

    int-to-float v1, v1

    iget-object v2, p0, Lo/fromQueueItemList$extraCallback;->ICustomTabsCallback:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    aput v1, p1, v0

    .line 119
    iget-object p1, p0, Lo/fromQueueItemList$extraCallback;->onPostMessage:Landroid/view/View;

    sget v0, Lo/MediaSessionCompat$MediaSessionImplBase$MediaSessionStub$extraCallback;->transition_position:I

    iget-object v1, p0, Lo/fromQueueItemList$extraCallback;->onNavigationEvent:[I

    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public final onAnimationPause(Landroid/animation/Animator;)V
    .locals 1

    .line 124
    iget-object p1, p0, Lo/fromQueueItemList$extraCallback;->ICustomTabsCallback:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    move-result p1

    iput p1, p0, Lo/fromQueueItemList$extraCallback;->asBinder:F

    .line 125
    iget-object p1, p0, Lo/fromQueueItemList$extraCallback;->ICustomTabsCallback:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    move-result p1

    iput p1, p0, Lo/fromQueueItemList$extraCallback;->ICustomTabsCallback$Stub:F

    .line 126
    iget-object p1, p0, Lo/fromQueueItemList$extraCallback;->ICustomTabsCallback:Landroid/view/View;

    iget v0, p0, Lo/fromQueueItemList$extraCallback;->onTransact:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 127
    iget-object p1, p0, Lo/fromQueueItemList$extraCallback;->ICustomTabsCallback:Landroid/view/View;

    iget v0, p0, Lo/fromQueueItemList$extraCallback;->onRelationshipValidationResult:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public final onAnimationResume(Landroid/animation/Animator;)V
    .locals 1

    .line 132
    iget-object p1, p0, Lo/fromQueueItemList$extraCallback;->ICustomTabsCallback:Landroid/view/View;

    iget v0, p0, Lo/fromQueueItemList$extraCallback;->asBinder:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 133
    iget-object p1, p0, Lo/fromQueueItemList$extraCallback;->ICustomTabsCallback:Landroid/view/View;

    iget v0, p0, Lo/fromQueueItemList$extraCallback;->ICustomTabsCallback$Stub:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method public final onMessageChannelReady(Lo/fromQueueItem;)V
    .locals 0

    return-void
.end method

.method public final onNavigationEvent(Lo/fromQueueItem;)V
    .locals 0

    return-void
.end method

.method public final onPostMessage(Lo/fromQueueItem;)V
    .locals 0

    return-void
.end method
