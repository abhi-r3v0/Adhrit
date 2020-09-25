.class Lorg/npci/upi/security/pinactivitycomponent/widget/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field final synthetic a:Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;


# direct methods
.method constructor <init>(Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;)V
    .locals 0

    iput-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/e;->a:Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/e;->a:Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;

    invoke-static {p1}, Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;->c(Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;)Lorg/npci/upi/security/pinactivitycomponent/widget/i;

    move-result-object p1

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/widget/e;->a:Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemEditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/npci/upi/security/pinactivitycomponent/widget/i;->a(Ljava/lang/CharSequence;)V

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
