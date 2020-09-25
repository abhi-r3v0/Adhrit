.class Lorg/npci/upi/security/pinactivitycomponent/y;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lorg/npci/upi/security/pinactivitycomponent/Keypad;


# direct methods
.method constructor <init>(Lorg/npci/upi/security/pinactivitycomponent/Keypad;I)V
    .locals 0

    iput-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/y;->b:Lorg/npci/upi/security/pinactivitycomponent/Keypad;

    iput p2, p0, Lorg/npci/upi/security/pinactivitycomponent/y;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/y;->b:Lorg/npci/upi/security/pinactivitycomponent/Keypad;

    invoke-static {v0}, Lorg/npci/upi/security/pinactivitycomponent/Keypad;->a(Lorg/npci/upi/security/pinactivitycomponent/Keypad;)Lorg/npci/upi/security/pinactivitycomponent/ac;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/y;->b:Lorg/npci/upi/security/pinactivitycomponent/Keypad;

    invoke-static {v0}, Lorg/npci/upi/security/pinactivitycomponent/Keypad;->a(Lorg/npci/upi/security/pinactivitycomponent/Keypad;)Lorg/npci/upi/security/pinactivitycomponent/ac;

    move-result-object v0

    iget v1, p0, Lorg/npci/upi/security/pinactivitycomponent/y;->a:I

    add-int/lit8 v1, v1, 0x7

    invoke-interface {v0, p1, v1}, Lorg/npci/upi/security/pinactivitycomponent/ac;->a(Landroid/view/View;I)V

    :cond_0
    return-void
.end method
