.class public abstract Lo/getCode;
.super Lo/MoshiColorMapAdapter;

# interfaces
.implements Lo/getBanks;


# direct methods
.method public static onMessageChannelReady(Landroid/os/IBinder;)Lo/getBanks;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.gms.ads.identifier.internal.IAdvertisingIdService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lo/getBanks;

    if-eqz v1, :cond_1

    check-cast v0, Lo/getBanks;

    return-object v0

    :cond_1
    new-instance v0, Lo/BaseResponseJsonAdapter;

    invoke-direct {v0, p0}, Lo/BaseResponseJsonAdapter;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
