.class Lorg/npci/upi/security/pinactivitycomponent/widget/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;


# direct methods
.method constructor <init>(Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;I)V
    .locals 0

    iput-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/f;->b:Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;

    iput p2, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/f;->b:Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;

    invoke-static {v0}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->d(Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;)[F

    move-result-object v0

    iget v1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/f;->a:I

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    aput p1, v0, v1

    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/f;->b:Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
