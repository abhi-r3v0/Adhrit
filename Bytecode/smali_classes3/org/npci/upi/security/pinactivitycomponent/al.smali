.class Lorg/npci/upi/security/pinactivitycomponent/al;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lorg/npci/upi/security/pinactivitycomponent/ae;


# direct methods
.method constructor <init>(Lorg/npci/upi/security/pinactivitycomponent/ae;)V
    .locals 0

    iput-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/al;->a:Lorg/npci/upi/security/pinactivitycomponent/ae;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/al;->a:Lorg/npci/upi/security/pinactivitycomponent/ae;

    invoke-virtual {v0}, Lorg/npci/upi/security/pinactivitycomponent/ae;->c()V

    return-void
.end method
