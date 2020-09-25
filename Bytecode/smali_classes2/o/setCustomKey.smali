.class public abstract Lo/setCustomKey;
.super Lo/CrashlyticsRegistrar;

# interfaces
.implements Lo/recordException;


# direct methods
.method public static onPostMessage(Landroid/os/IBinder;)Lo/recordException;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.google.android.play.core.assetpacks.protocol.IAssetModuleService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    instance-of v1, v0, Lo/recordException;

    if-eqz v1, :cond_1

    check-cast v0, Lo/recordException;

    return-object v0

    :cond_1
    new-instance v0, Lo/checkForUnsentReports;

    invoke-direct {v0, p0}, Lo/checkForUnsentReports;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method
