.class public abstract Lo/aa$1;
.super Lo/cF;
.source ""

# interfaces
.implements Lo/createSocket;


# direct methods
.method public static onNavigationEvent(Landroid/os/IBinder;)Lo/createSocket;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.finsky.externalreferrer.IGetInstallReferrerService"

    .line 3
    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 4
    instance-of v1, v0, Lo/createSocket;

    if-eqz v1, :cond_1

    .line 5
    check-cast v0, Lo/createSocket;

    return-object v0

    .line 6
    :cond_1
    new-instance v0, Lo/fh;

    invoke-direct {v0, p0}, Lo/fh;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
