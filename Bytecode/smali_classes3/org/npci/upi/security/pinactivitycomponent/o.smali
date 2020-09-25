.class Lorg/npci/upi/security/pinactivitycomponent/o;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/npci/upi/security/pinactivitycomponent/ac;


# instance fields
.field final synthetic a:Lorg/npci/upi/security/pinactivitycomponent/GetCredential;


# direct methods
.method constructor <init>(Lorg/npci/upi/security/pinactivitycomponent/GetCredential;)V
    .locals 0

    iput-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/o;->a:Lorg/npci/upi/security/pinactivitycomponent/GetCredential;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;I)V
    .locals 2

    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/o;->a:Lorg/npci/upi/security/pinactivitycomponent/GetCredential;

    new-instance v0, Landroid/view/KeyEvent;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    const/16 p1, 0x42

    if-ne p2, p1, :cond_0

    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/o;->a:Lorg/npci/upi/security/pinactivitycomponent/GetCredential;

    invoke-static {p1}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->access$200(Lorg/npci/upi/security/pinactivitycomponent/GetCredential;)Lorg/npci/upi/security/pinactivitycomponent/ae;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/o;->a:Lorg/npci/upi/security/pinactivitycomponent/GetCredential;

    invoke-static {p1}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->access$200(Lorg/npci/upi/security/pinactivitycomponent/GetCredential;)Lorg/npci/upi/security/pinactivitycomponent/ae;

    move-result-object p1

    invoke-virtual {p1}, Lorg/npci/upi/security/pinactivitycomponent/ae;->a()V

    :cond_0
    return-void
.end method
