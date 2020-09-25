.class Lorg/npci/upi/security/pinactivitycomponent/af;
.super Ljava/util/TimerTask;


# instance fields
.field a:J

.field final synthetic b:Lorg/npci/upi/security/pinactivitycomponent/an;

.field final synthetic c:I

.field final synthetic d:Lorg/npci/upi/security/pinactivitycomponent/ae;


# direct methods
.method constructor <init>(Lorg/npci/upi/security/pinactivitycomponent/ae;Lorg/npci/upi/security/pinactivitycomponent/an;I)V
    .locals 2

    iput-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/af;->d:Lorg/npci/upi/security/pinactivitycomponent/ae;

    iput-object p2, p0, Lorg/npci/upi/security/pinactivitycomponent/af;->b:Lorg/npci/upi/security/pinactivitycomponent/an;

    iput p3, p0, Lorg/npci/upi/security/pinactivitycomponent/af;->c:I

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide/32 v0, 0xafc8

    sub-long/2addr p1, v0

    iput-wide p1, p0, Lorg/npci/upi/security/pinactivitycomponent/af;->a:J

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lorg/npci/upi/security/pinactivitycomponent/af;->b:Lorg/npci/upi/security/pinactivitycomponent/an;

    iget v1, p0, Lorg/npci/upi/security/pinactivitycomponent/af;->c:I

    iget-wide v2, p0, Lorg/npci/upi/security/pinactivitycomponent/af;->a:J

    const-wide/16 v4, 0x7d0

    sub-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/npci/upi/security/pinactivitycomponent/an;->a(IJ)Lorg/npci/upi/security/pinactivitycomponent/am;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lorg/npci/upi/security/pinactivitycomponent/ag;

    invoke-direct {v2, p0, v0}, Lorg/npci/upi/security/pinactivitycomponent/ag;-><init>(Lorg/npci/upi/security/pinactivitycomponent/af;Lorg/npci/upi/security/pinactivitycomponent/am;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lorg/npci/upi/security/pinactivitycomponent/af;->a:J

    return-void
.end method
