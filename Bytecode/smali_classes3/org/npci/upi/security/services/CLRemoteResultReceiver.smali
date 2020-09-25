.class public Lorg/npci/upi/security/services/CLRemoteResultReceiver;
.super Landroid/app/Service;
.source ""


# instance fields
.field private a:Landroid/os/ResultReceiver;

.field private b:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/ResultReceiver;)V
    .locals 1

    .line 17
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 21
    new-instance v0, Lorg/npci/upi/security/services/CLRemoteResultReceiver$1;

    invoke-direct {v0, p0}, Lorg/npci/upi/security/services/CLRemoteResultReceiver$1;-><init>(Lorg/npci/upi/security/services/CLRemoteResultReceiver;)V

    iput-object v0, p0, Lorg/npci/upi/security/services/CLRemoteResultReceiver;->b:Landroid/os/IBinder;

    .line 18
    iput-object p1, p0, Lorg/npci/upi/security/services/CLRemoteResultReceiver;->a:Landroid/os/ResultReceiver;

    return-void
.end method

.method static synthetic a(Lorg/npci/upi/security/services/CLRemoteResultReceiver;)Landroid/os/ResultReceiver;
    .locals 0

    .line 13
    iget-object p0, p0, Lorg/npci/upi/security/services/CLRemoteResultReceiver;->a:Landroid/os/ResultReceiver;

    return-object p0
.end method


# virtual methods
.method public a()Landroid/os/IBinder;
    .locals 1

    .line 34
    iget-object v0, p0, Lorg/npci/upi/security/services/CLRemoteResultReceiver;->b:Landroid/os/IBinder;

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 30
    iget-object p1, p0, Lorg/npci/upi/security/services/CLRemoteResultReceiver;->b:Landroid/os/IBinder;

    return-object p1
.end method
