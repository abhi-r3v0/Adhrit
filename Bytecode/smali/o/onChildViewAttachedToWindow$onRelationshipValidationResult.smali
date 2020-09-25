.class final Lo/onChildViewAttachedToWindow$onRelationshipValidationResult;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/onChildViewAttachedToWindow;->onNavigationEvent(Z)V
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
        "\u0000 \n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0003\n\u0002\u0008\u0004\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n\u00a2\u0006\u0002\u0008\u0005\u00a8\u0006\u0007"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Landroid/animation/ValueAnimator;",
        "kotlin.jvm.PlatformType",
        "onAnimationUpdate",
        "com/dreamplug/fabrik/ui/lending/dialog/DateSelectorDialog$settleSeekBar$1$1$1",
        "com/dreamplug/fabrik/ui/lending/dialog/DateSelectorDialog$$special$$inlined$apply$lambda$1"
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

.field private synthetic onMessageChannelReady:I

.field private synthetic onNavigationEvent:Lo/onChildViewAttachedToWindow;

.field private synthetic onPostMessage:I


# direct methods
.method constructor <init>(Landroid/animation/ValueAnimator;IILo/onChildViewAttachedToWindow;)V
    .locals 0

    iput-object p1, p0, Lo/onChildViewAttachedToWindow$onRelationshipValidationResult;->ICustomTabsCallback:Landroid/animation/ValueAnimator;

    iput p2, p0, Lo/onChildViewAttachedToWindow$onRelationshipValidationResult;->onMessageChannelReady:I

    iput p3, p0, Lo/onChildViewAttachedToWindow$onRelationshipValidationResult;->onPostMessage:I

    iput-object p4, p0, Lo/onChildViewAttachedToWindow$onRelationshipValidationResult;->onNavigationEvent:Lo/onChildViewAttachedToWindow;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 204
    iget-object p1, p0, Lo/onChildViewAttachedToWindow$onRelationshipValidationResult;->onNavigationEvent:Lo/onChildViewAttachedToWindow;

    invoke-static {p1}, Lo/onChildViewAttachedToWindow;->onMessageChannelReady(Lo/onChildViewAttachedToWindow;)Lo/findFirstReferenceChildPosition;

    move-result-object p1

    iget-object v0, p0, Lo/onChildViewAttachedToWindow$onRelationshipValidationResult;->ICustomTabsCallback:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    iget v1, p0, Lo/onChildViewAttachedToWindow$onRelationshipValidationResult;->onMessageChannelReady:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    float-to-int v0, v0

    iget v1, p0, Lo/onChildViewAttachedToWindow$onRelationshipValidationResult;->onPostMessage:I

    add-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lo/findFirstReferenceChildPosition;->setProgress(I)V

    return-void
.end method
