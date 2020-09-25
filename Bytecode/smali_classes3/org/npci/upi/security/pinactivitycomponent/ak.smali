.class Lorg/npci/upi/security/pinactivitycomponent/ak;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;

.field final synthetic b:Lorg/npci/upi/security/pinactivitycomponent/aj;


# direct methods
.method constructor <init>(Lorg/npci/upi/security/pinactivitycomponent/aj;Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;)V
    .locals 0

    iput-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/ak;->b:Lorg/npci/upi/security/pinactivitycomponent/aj;

    iput-object p2, p0, Lorg/npci/upi/security/pinactivitycomponent/ak;->a:Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/ak;->b:Lorg/npci/upi/security/pinactivitycomponent/aj;

    iget-object p1, p1, Lorg/npci/upi/security/pinactivitycomponent/aj;->a:Lorg/npci/upi/security/pinactivitycomponent/ae;

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/ak;->a:Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;

    invoke-virtual {p1, v0}, Lorg/npci/upi/security/pinactivitycomponent/ae;->a(Lorg/npci/upi/security/pinactivitycomponent/widget/FormItemView;)V

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "action"

    const-string v1, "TRIGGER_OTP"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/ak;->b:Lorg/npci/upi/security/pinactivitycomponent/aj;

    iget-object v0, v0, Lorg/npci/upi/security/pinactivitycomponent/aj;->a:Lorg/npci/upi/security/pinactivitycomponent/ae;

    iget-object v0, v0, Lorg/npci/upi/security/pinactivitycomponent/ae;->p:Landroid/content/Context;

    check-cast v0, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;

    invoke-virtual {v0}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->getCLContext()Lorg/npci/upi/security/pinactivitycomponent/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/npci/upi/security/pinactivitycomponent/c;->d()Landroid/os/ResultReceiver;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void
.end method
