.class public Lorg/npci/upi/security/pinactivitycomponent/CLServerResultReceiver;
.super Landroid/os/ResultReceiver;


# instance fields
.field private a:Lorg/npci/upi/security/services/CLResultReceiver;


# direct methods
.method public constructor <init>(Lorg/npci/upi/security/services/CLResultReceiver;)V
    .locals 1

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/CLServerResultReceiver;->a:Lorg/npci/upi/security/services/CLResultReceiver;

    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/os/ResultReceiver;->onReceiveResult(ILandroid/os/Bundle;)V

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    :try_start_0
    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/CLServerResultReceiver;->a:Lorg/npci/upi/security/services/CLResultReceiver;

    invoke-interface {p1, p2}, Lorg/npci/upi/security/services/CLResultReceiver;->triggerOtp(Landroid/os/Bundle;)V

    return-void

    :cond_0
    iget-object p1, p0, Lorg/npci/upi/security/pinactivitycomponent/CLServerResultReceiver;->a:Lorg/npci/upi/security/services/CLResultReceiver;

    invoke-interface {p1, p2}, Lorg/npci/upi/security/services/CLResultReceiver;->sendCredential(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method
