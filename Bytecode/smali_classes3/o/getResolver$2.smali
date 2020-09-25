.class final Lo/getResolver$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo/getResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic onMessageChannelReady:Lo/getResolver;


# direct methods
.method constructor <init>(Lo/getResolver;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lo/getResolver$2;->onMessageChannelReady:Lo/getResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 147
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    .line 148
    iget-object v0, p0, Lo/getResolver$2;->onMessageChannelReady:Lo/getResolver;

    iget-object v0, v0, Lo/FirebaseAuthWeakPasswordException;->onRelationshipValidationResult:Lo/addIdTokenListener;

    invoke-virtual {v0, p1}, Lo/addIdTokenListener;->setScaleX(F)V

    .line 149
    iget-object v0, p0, Lo/getResolver$2;->onMessageChannelReady:Lo/getResolver;

    iget-object v0, v0, Lo/FirebaseAuthWeakPasswordException;->onRelationshipValidationResult:Lo/addIdTokenListener;

    invoke-virtual {v0, p1}, Lo/addIdTokenListener;->setScaleY(F)V

    return-void
.end method
