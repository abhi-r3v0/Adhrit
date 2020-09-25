.class Lorg/npci/upi/security/pinactivitycomponent/t;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:Lorg/npci/upi/security/pinactivitycomponent/GetCredential;


# direct methods
.method constructor <init>(Lorg/npci/upi/security/pinactivitycomponent/GetCredential;ZI)V
    .locals 0

    iput-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/t;->c:Lorg/npci/upi/security/pinactivitycomponent/GetCredential;

    iput-boolean p2, p0, Lorg/npci/upi/security/pinactivitycomponent/t;->a:Z

    iput p3, p0, Lorg/npci/upi/security/pinactivitycomponent/t;->b:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-boolean p1, p0, Lorg/npci/upi/security/pinactivitycomponent/t;->a:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/t;->c:Lorg/npci/upi/security/pinactivitycomponent/GetCredential;

    invoke-static {p1}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->access$600(Lorg/npci/upi/security/pinactivitycomponent/GetCredential;)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/t;->c:Lorg/npci/upi/security/pinactivitycomponent/GetCredential;

    invoke-static {p1}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->access$700(Lorg/npci/upi/security/pinactivitycomponent/GetCredential;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/t;->c:Lorg/npci/upi/security/pinactivitycomponent/GetCredential;

    invoke-static {p1}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->access$500(Lorg/npci/upi/security/pinactivitycomponent/GetCredential;)Landroid/graphics/drawable/TransitionDrawable;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-boolean p1, p0, Lorg/npci/upi/security/pinactivitycomponent/t;->a:Z

    const/16 v0, 0x12c

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/t;->c:Lorg/npci/upi/security/pinactivitycomponent/GetCredential;

    invoke-static {p1}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->access$500(Lorg/npci/upi/security/pinactivitycomponent/GetCredential;)Landroid/graphics/drawable/TransitionDrawable;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/t;->c:Lorg/npci/upi/security/pinactivitycomponent/GetCredential;

    invoke-static {p1}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->access$600(Lorg/npci/upi/security/pinactivitycomponent/GetCredential;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/t;->c:Lorg/npci/upi/security/pinactivitycomponent/GetCredential;

    invoke-static {p1}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->access$700(Lorg/npci/upi/security/pinactivitycomponent/GetCredential;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/t;->c:Lorg/npci/upi/security/pinactivitycomponent/GetCredential;

    invoke-static {p1}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->access$600(Lorg/npci/upi/security/pinactivitycomponent/GetCredential;)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lo/unregisterCallbackListener;->ICustomTabsService(Landroid/view/View;)F

    move-result p1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-nez p1, :cond_1

    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/t;->c:Lorg/npci/upi/security/pinactivitycomponent/GetCredential;

    invoke-static {p1}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->access$600(Lorg/npci/upi/security/pinactivitycomponent/GetCredential;)Landroid/view/View;

    move-result-object p1

    iget v0, p0, Lorg/npci/upi/security/pinactivitycomponent/t;->b:I

    mul-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setY(F)V

    return-void

    :cond_0
    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/t;->c:Lorg/npci/upi/security/pinactivitycomponent/GetCredential;

    invoke-static {p1}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->access$500(Lorg/npci/upi/security/pinactivitycomponent/GetCredential;)Landroid/graphics/drawable/TransitionDrawable;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/TransitionDrawable;->reverseTransition(I)V

    :cond_1
    return-void
.end method
