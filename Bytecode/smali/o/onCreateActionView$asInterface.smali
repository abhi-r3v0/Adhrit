.class final Lo/onCreateActionView$asInterface;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/onCreateActionView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lo/createEvent;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005\u00a8\u0006\u0006"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/animation/ValueAnimator;",
        "kotlin.jvm.PlatformType",
        "onAnimationUpdate",
        "com/dodola/bubblecloud/BubbleCloudView$flingIfRequired$1$1"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0x10
    }
.end annotation


# instance fields
.field private synthetic ICustomTabsCallback:Landroid/animation/ValueAnimator;

.field private synthetic asInterface:I

.field private synthetic extraCallback:Lo/toDebugString$onMessageChannelReady;

.field private synthetic onMessageChannelReady:Lo/onCreateActionView;

.field private synthetic onNavigationEvent:Lo/toDebugString$onMessageChannelReady;

.field private synthetic onPostMessage:I


# direct methods
.method constructor <init>(Landroid/animation/ValueAnimator;Lo/toDebugString$onMessageChannelReady;Lo/toDebugString$onMessageChannelReady;Lo/onCreateActionView;II)V
    .locals 0

    iput-object p1, p0, Lo/onCreateActionView$asInterface;->ICustomTabsCallback:Landroid/animation/ValueAnimator;

    iput-object p2, p0, Lo/onCreateActionView$asInterface;->onNavigationEvent:Lo/toDebugString$onMessageChannelReady;

    iput-object p3, p0, Lo/onCreateActionView$asInterface;->extraCallback:Lo/toDebugString$onMessageChannelReady;

    iput-object p4, p0, Lo/onCreateActionView$asInterface;->onMessageChannelReady:Lo/onCreateActionView;

    iput p5, p0, Lo/onCreateActionView$asInterface;->onPostMessage:I

    iput p6, p0, Lo/onCreateActionView$asInterface;->asInterface:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 278
    iget-object p1, p0, Lo/onCreateActionView$asInterface;->ICustomTabsCallback:Landroid/animation/ValueAnimator;

    const-string/jumbo v0, "this"

    invoke-static {p1, v0}, Lo/access$3000;->onPostMessage(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_6

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    float-to-double v0, p1

    const-wide v2, 0x3fe999999999999aL    # 0.8

    sub-double/2addr v2, v0

    .line 279
    iget-object p1, p0, Lo/onCreateActionView$asInterface;->onMessageChannelReady:Lo/onCreateActionView;

    invoke-static {p1}, Lo/onCreateActionView;->onNavigationEvent(Lo/onCreateActionView;)I

    move-result p1

    int-to-double v0, p1

    iget p1, p0, Lo/onCreateActionView$asInterface;->onPostMessage:I

    int-to-double v4, p1

    mul-double v4, v4, v2

    add-double/2addr v0, v4

    double-to-int p1, v0

    .line 280
    iget-object v0, p0, Lo/onCreateActionView$asInterface;->onMessageChannelReady:Lo/onCreateActionView;

    invoke-static {v0}, Lo/onCreateActionView;->onPostMessage(Lo/onCreateActionView;)I

    move-result v0

    int-to-double v0, v0

    iget v4, p0, Lo/onCreateActionView$asInterface;->asInterface:I

    int-to-double v4, v4

    mul-double v4, v4, v2

    add-double/2addr v0, v4

    double-to-int v0, v0

    .line 283
    iget-object v1, p0, Lo/onCreateActionView$asInterface;->onMessageChannelReady:Lo/onCreateActionView;

    invoke-static {v1}, Lo/onCreateActionView;->onRelationshipValidationResult(Lo/onCreateActionView;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    .line 284
    iget-object v2, p0, Lo/onCreateActionView$asInterface;->onMessageChannelReady:Lo/onCreateActionView;

    invoke-static {v2}, Lo/onCreateActionView;->onRelationshipValidationResult(Lo/onCreateActionView;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    .line 285
    iget-object v3, p0, Lo/onCreateActionView$asInterface;->onNavigationEvent:Lo/toDebugString$onMessageChannelReady;

    iget-boolean v3, v3, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    const/4 v4, 0x1

    if-nez v3, :cond_0

    if-gt p1, v1, :cond_0

    neg-int v1, v1

    if-ge p1, v1, :cond_1

    .line 286
    :cond_0
    iget-object p1, p0, Lo/onCreateActionView$asInterface;->onMessageChannelReady:Lo/onCreateActionView;

    invoke-static {p1}, Lo/onCreateActionView;->onNavigationEvent(Lo/onCreateActionView;)I

    move-result p1

    .line 287
    iget-object v1, p0, Lo/onCreateActionView$asInterface;->onNavigationEvent:Lo/toDebugString$onMessageChannelReady;

    iput-boolean v4, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 289
    :cond_1
    iget-object v1, p0, Lo/onCreateActionView$asInterface;->extraCallback:Lo/toDebugString$onMessageChannelReady;

    iget-boolean v1, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lo/onCreateActionView$asInterface;->onMessageChannelReady:Lo/onCreateActionView;

    invoke-static {v1}, Lo/onCreateActionView;->onTransact(Lo/onCreateActionView;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_2

    neg-int v1, v2

    iget-object v2, p0, Lo/onCreateActionView$asInterface;->onMessageChannelReady:Lo/onCreateActionView;

    invoke-static {v2}, Lo/onCreateActionView;->onTransact(Lo/onCreateActionView;)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_3

    .line 290
    :cond_2
    iget-object v0, p0, Lo/onCreateActionView$asInterface;->onMessageChannelReady:Lo/onCreateActionView;

    invoke-static {v0}, Lo/onCreateActionView;->onPostMessage(Lo/onCreateActionView;)I

    move-result v0

    .line 291
    iget-object v1, p0, Lo/onCreateActionView$asInterface;->extraCallback:Lo/toDebugString$onMessageChannelReady;

    iput-boolean v4, v1, Lo/toDebugString$onMessageChannelReady;->ICustomTabsCallback:Z

    .line 294
    :cond_3
    iget-object v1, p0, Lo/onCreateActionView$asInterface;->onMessageChannelReady:Lo/onCreateActionView;

    invoke-static {v1}, Lo/onCreateActionView;->onPostMessage(Lo/onCreateActionView;)I

    move-result v1

    if-ne v0, v1, :cond_4

    iget-object v1, p0, Lo/onCreateActionView$asInterface;->onMessageChannelReady:Lo/onCreateActionView;

    invoke-static {v1}, Lo/onCreateActionView;->onNavigationEvent(Lo/onCreateActionView;)I

    move-result v1

    if-eq p1, v1, :cond_5

    .line 295
    :cond_4
    iget-object v1, p0, Lo/onCreateActionView$asInterface;->onMessageChannelReady:Lo/onCreateActionView;

    invoke-static {v1, p1}, Lo/onCreateActionView;->onNavigationEvent(Lo/onCreateActionView;I)V

    .line 296
    iget-object p1, p0, Lo/onCreateActionView$asInterface;->onMessageChannelReady:Lo/onCreateActionView;

    invoke-static {p1, v0}, Lo/onCreateActionView;->onPostMessage(Lo/onCreateActionView;I)V

    .line 298
    iget-object p1, p0, Lo/onCreateActionView$asInterface;->onMessageChannelReady:Lo/onCreateActionView;

    invoke-static {p1}, Lo/onCreateActionView;->onNavigationEvent(Lo/onCreateActionView;)I

    move-result v0

    invoke-static {p1, v0}, Lo/onCreateActionView;->extraCallback(Lo/onCreateActionView;I)V

    .line 299
    iget-object p1, p0, Lo/onCreateActionView$asInterface;->onMessageChannelReady:Lo/onCreateActionView;

    invoke-static {p1}, Lo/onCreateActionView;->onPostMessage(Lo/onCreateActionView;)I

    move-result v0

    invoke-static {p1, v0}, Lo/onCreateActionView;->onMessageChannelReady(Lo/onCreateActionView;I)V

    .line 301
    iget-object p1, p0, Lo/onCreateActionView$asInterface;->onMessageChannelReady:Lo/onCreateActionView;

    invoke-static {p1}, Lo/onCreateActionView;->extraCallback(Lo/onCreateActionView;)F

    move-result v0

    .line 302
    iget-object v1, p0, Lo/onCreateActionView$asInterface;->onMessageChannelReady:Lo/onCreateActionView;

    invoke-static {v1}, Lo/onCreateActionView;->ICustomTabsCallback(Lo/onCreateActionView;)I

    move-result v1

    int-to-float v1, v1

    .line 303
    iget-object v2, p0, Lo/onCreateActionView$asInterface;->onMessageChannelReady:Lo/onCreateActionView;

    invoke-static {v2}, Lo/onCreateActionView;->onMessageChannelReady(Lo/onCreateActionView;)I

    move-result v2

    int-to-float v2, v2

    .line 301
    invoke-static {p1, v0, v1, v2}, Lo/onCreateActionView;->onPostMessage(Lo/onCreateActionView;FFF)V

    .line 305
    iget-object p1, p0, Lo/onCreateActionView$asInterface;->onMessageChannelReady:Lo/onCreateActionView;

    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    :cond_5
    return-void

    .line 278
    :cond_6
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type kotlin.Float"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
