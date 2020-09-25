.class Lorg/npci/upi/security/pinactivitycomponent/s;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field final synthetic a:Lorg/npci/upi/security/pinactivitycomponent/GetCredential;


# direct methods
.method constructor <init>(Lorg/npci/upi/security/pinactivitycomponent/GetCredential;)V
    .locals 0

    iput-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/s;->a:Lorg/npci/upi/security/pinactivitycomponent/GetCredential;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/s;->a:Lorg/npci/upi/security/pinactivitycomponent/GetCredential;

    invoke-static {p1}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->access$300(Lorg/npci/upi/security/pinactivitycomponent/GetCredential;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/s;->a:Lorg/npci/upi/security/pinactivitycomponent/GetCredential;

    invoke-static {p1, p2}, Lorg/npci/upi/security/pinactivitycomponent/GetCredential;->access$400(Lorg/npci/upi/security/pinactivitycomponent/GetCredential;Z)V

    return v0

    :cond_0
    return p2
.end method
