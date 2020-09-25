.class Lorg/npci/upi/security/pinactivitycomponent/ah;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lorg/npci/upi/security/pinactivitycomponent/ae;


# direct methods
.method constructor <init>(Lorg/npci/upi/security/pinactivitycomponent/ae;)V
    .locals 0

    iput-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/ah;->a:Lorg/npci/upi/security/pinactivitycomponent/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/ah;->a:Lorg/npci/upi/security/pinactivitycomponent/ae;

    iget-object p1, p1, Lorg/npci/upi/security/pinactivitycomponent/ae;->h:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
