.class Lorg/npci/upi/security/pinactivitycomponent/widget/g;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic a:Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;


# direct methods
.method constructor <init>(Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;)V
    .locals 0

    iput-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/g;->a:Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/g;->a:Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;

    invoke-static {v0}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->b(Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method
