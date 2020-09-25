.class public abstract Lo/deleteUnsentReports;
.super Lo/CrashlyticsRegistrar;

# interfaces
.implements Lo/didCrashOnPreviousExecution;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "com.google.android.play.core.assetpacks.protocol.IAssetPackExtractionService"

    invoke-direct {p0, v0}, Lo/CrashlyticsRegistrar;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected final extraCallback(ILandroid/os/Parcel;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x2

    const-string v1, "com.google.android.play.core.assetpacks.protocol.IAssetPackExtractionServiceCallback"

    const/4 v2, 0x0

    if-eq p1, v0, :cond_4

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

    if-eqz v0, :cond_1

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-interface {p1, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of v0, p2, Lo/FirebaseCrashlytics$1;

    if-eqz v0, :cond_3

    move-object v2, p2

    check-cast v2, Lo/FirebaseCrashlytics$1;

    goto :goto_0

    :cond_3
    new-instance v2, Lo/sendUnsentReports;

    invoke-direct {v2, p1}, Lo/sendUnsentReports;-><init>(Landroid/os/IBinder;)V

    :goto_0
    invoke-virtual {p0, v2}, Lo/deleteUnsentReports;->onPostMessage(Lo/FirebaseCrashlytics$1;)V

    goto :goto_3

    .line 0
    :cond_4
    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 1000
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_5

    move-object p1, v2

    goto :goto_1

    :cond_5
    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;

    :goto_1
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p2

    if-nez p2, :cond_6

    goto :goto_2

    :cond_6
    invoke-interface {p2, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lo/FirebaseCrashlytics$1;

    if-eqz v1, :cond_7

    move-object v2, v0

    check-cast v2, Lo/FirebaseCrashlytics$1;

    goto :goto_2

    :cond_7
    new-instance v2, Lo/sendUnsentReports;

    invoke-direct {v2, p2}, Lo/sendUnsentReports;-><init>(Landroid/os/IBinder;)V

    :goto_2
    invoke-virtual {p0, p1, v2}, Lo/deleteUnsentReports;->onNavigationEvent(Landroid/os/Bundle;Lo/FirebaseCrashlytics$1;)V

    :goto_3
    const/4 p1, 0x1

    return p1
.end method
