.class public abstract Lo/access$lambda$0;
.super Lo/CrashlyticsRegistrar;

# interfaces
.implements Lo/CrashlyticsRegistrar$$Lambda$1;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.play.core.appupdate.protocol.IAppUpdateServiceCallback"

    invoke-direct {p0, v0}, Lo/CrashlyticsRegistrar;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final extraCallback(ILandroid/os/Parcel;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1000
    :cond_0
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 2000
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/os/Parcelable;

    :goto_0
    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {p0, v1}, Lo/access$lambda$0;->ICustomTabsCallback(Landroid/os/Bundle;)V

    goto :goto_2

    .line 0
    :cond_2
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1000
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/os/Parcelable;

    :goto_1
    check-cast v1, Landroid/os/Bundle;

    invoke-virtual {p0, v1}, Lo/access$lambda$0;->onMessageChannelReady(Landroid/os/Bundle;)V

    :goto_2
    const/4 p1, 0x1

    return p1
.end method
