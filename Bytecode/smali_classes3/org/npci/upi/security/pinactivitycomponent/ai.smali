.class Lorg/npci/upi/security/pinactivitycomponent/ai;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/npci/upi/security/pinactivitycomponent/ae;


# direct methods
.method constructor <init>(Lorg/npci/upi/security/pinactivitycomponent/ae;)V
    .locals 0

    iput-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/ai;->a:Lorg/npci/upi/security/pinactivitycomponent/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/ai;->a:Lorg/npci/upi/security/pinactivitycomponent/ae;

    iget-object v0, v0, Lorg/npci/upi/security/pinactivitycomponent/ae;->h:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
