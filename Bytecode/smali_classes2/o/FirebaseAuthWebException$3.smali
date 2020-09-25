.class final Lo/FirebaseAuthWebException$3;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo/FirebaseAuthWebException;->onMessageChannelReady(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onNavigationEvent:Lo/FirebaseAuthWebException;


# direct methods
.method constructor <init>(Lo/FirebaseAuthWebException;)V
    .locals 0

    .line 3251
    iput-object p1, p0, Lo/FirebaseAuthWebException$3;->onNavigationEvent:Lo/FirebaseAuthWebException;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 3254
    iget-object v0, p0, Lo/FirebaseAuthWebException$3;->onNavigationEvent:Lo/FirebaseAuthWebException;

    iget-object v0, v0, Lo/FirebaseAuthWebException;->postMessage:Lo/removeIdTokenListener;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lo/removeIdTokenListener;->onMessageChannelReady(F)V

    return-void
.end method
