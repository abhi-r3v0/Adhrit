.class Lorg/npci/upi/security/pinactivitycomponent/ag;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lorg/npci/upi/security/pinactivitycomponent/am;

.field final synthetic b:Lorg/npci/upi/security/pinactivitycomponent/af;


# direct methods
.method constructor <init>(Lorg/npci/upi/security/pinactivitycomponent/af;Lorg/npci/upi/security/pinactivitycomponent/am;)V
    .locals 0

    iput-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/ag;->b:Lorg/npci/upi/security/pinactivitycomponent/af;

    iput-object p2, p0, Lorg/npci/upi/security/pinactivitycomponent/ag;->a:Lorg/npci/upi/security/pinactivitycomponent/am;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/ag;->b:Lorg/npci/upi/security/pinactivitycomponent/af;

    iget-object v0, v0, Lorg/npci/upi/security/pinactivitycomponent/af;->d:Lorg/npci/upi/security/pinactivitycomponent/ae;

    iget-object v1, p0, Lorg/npci/upi/security/pinactivitycomponent/ag;->a:Lorg/npci/upi/security/pinactivitycomponent/am;

    invoke-virtual {v0, v1}, Lorg/npci/upi/security/pinactivitycomponent/ae;->a(Lorg/npci/upi/security/pinactivitycomponent/am;)V

    return-void
.end method
